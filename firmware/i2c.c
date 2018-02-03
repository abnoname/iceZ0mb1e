//
// iceZ0mb1e - FPGA 8-Bit TV80 SoC for Lattice iCE40
// with complete open-source toolchain flow using yosys and SDCC
//
// Copyright (c) 2018 Franz Neumann (netinside2000@gmx.de)
//
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included 
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#include <stdint.h>
#include "ioport.h"
#include "register.h"
#include "i2c.h"

uint8_t i2c_read(uint8_t addr, uint8_t cmd)
{
    out(i2c_addr, addr);
    out(i2c_byte_count_l, 2);
    out(i2c_byte_count_h, 0);

    out(i2c_dat_out, cmd);
    out(i2c_cmd, 0x0 | 0x0 | 0x1); //WR=0, Start 0->1
    out(i2c_cmd, 0); //WR=aktive
    while((in(i2c_status) & 0x02) == 0); //req_next_byte

    out(i2c_cmd, 0x4 | 0x2 | 0x1); //RD=1, restart, Start 0->1
    out(i2c_cmd, 0x4); //RD=aktive
    while((in(i2c_status) & 0x01) == 0); //xfer_ready

    return in(i2c_dat_in);
}

void i2c_write_buf(uint8_t addr, uint8_t* buf, uint16_t size )
{
    uint16_t i;

    out(i2c_addr, addr);
    out(i2c_byte_count_l, size & 0xFF);
    out(i2c_byte_count_h, size >> 8);

    for(i=0; i < size; i++)
    {
        out(i2c_dat_out, buf[i]);
        out(i2c_cmd, 0x00 | 0x1); //WR=0, Start 0->1
        out(i2c_cmd, 0); //Reset
        while((in(i2c_status) & 0x03) == 0); //req_next_byte or xfer_ready
    }
}
