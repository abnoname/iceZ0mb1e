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

#define I2C_ADDR_WR     0x00
#define I2C_ADDR_RD     0x01

#define I2C_CMD_START   0x01
#define I2C_CMD_RESTART 0x02
#define I2C_CMD_STOP    0x04
#define I2C_CMD_WR      0x00
#define I2C_CMD_RD      0x08
#define I2C_CMD_ACK_L   0x00
#define I2C_CMD_ACK_Z   0x10
#define I2C_CMD_RESET   0x80

#define I2C_STAT_REQ    0x01

uint8_t i2c_read(uint8_t addr)
{
    out(i2c_cmd, 0x00);

    out(i2c_dat_out, (addr << 1) | I2C_ADDR_RD);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_START);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR);
    while((in(i2c_status) & I2C_STAT_REQ) == 0);

    out(i2c_cmd, I2C_CMD_ACK_L | I2C_CMD_RD | I2C_CMD_START);
    out(i2c_cmd, I2C_CMD_ACK_L | I2C_CMD_RD | I2C_CMD_STOP);
    while((in(i2c_status) & I2C_STAT_REQ) == 0);

    return in(i2c_dat_in);
}

uint8_t i2c_write(uint8_t addr, uint8_t cmd)
{
    out(i2c_cmd, 0x00);

    out(i2c_dat_out, (addr << 1) | I2C_ADDR_WR);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_START);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR);
    while((in(i2c_status) & I2C_STAT_REQ) == 0);

    out(i2c_dat_out, cmd);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_START);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_STOP);
    while((in(i2c_status) & I2C_STAT_REQ) == 0);

    return in(i2c_dat_in);
}

uint8_t i2c_read_buf(uint8_t addr, uint8_t *buf, uint16_t size)
{
    uint16_t i;

    out(i2c_cmd, 0x00);

    out(i2c_dat_out, (addr << 1) | I2C_ADDR_RD);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_START);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR);
    while((in(i2c_status) & I2C_STAT_REQ) == 0);

    for(i=0; i < size; i++)
    {
        out(i2c_cmd, I2C_CMD_ACK_L | I2C_CMD_RD | I2C_CMD_START);
        if(i == (size-1))
        {
            out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_STOP | I2C_CMD_RD); //last Byte NAK
        }
        else
        {
            out(i2c_cmd, I2C_CMD_ACK_L | I2C_CMD_RD);
        }
        while((in(i2c_status) & I2C_STAT_REQ) == 0);

        buf[i] = in(i2c_dat_in);
    }
}

void i2c_write_buf(uint8_t addr, uint8_t* buf, uint16_t size )
{
    uint16_t i;

    out(i2c_cmd, 0x00);

    out(i2c_dat_out, (addr << 1) | I2C_ADDR_WR);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_START);
    out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR);
    while((in(i2c_status) & I2C_STAT_REQ) == 0);

    for(i=0; i < size; i++)
    {
        out(i2c_dat_out, buf[i]);
        out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_START);
        if(i == (size-1))
        {
            out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_STOP | I2C_CMD_WR); //last Byte
        }
        else
        {
            out(i2c_cmd, I2C_CMD_ACK_Z | I2C_CMD_WR);
        }
        while((in(i2c_status) & I2C_STAT_REQ) == 0);
    }
}
