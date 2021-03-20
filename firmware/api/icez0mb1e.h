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

#ifndef __ICEZOMB1E_H
#define __ICEZOMB1E_H

#include <stdint.h>

#define SYS_XTAL_FREQ   12E6

#define SYS_ROM_ADDR    0x0000
#define SYS_ROM_SIZE    0x2000

#define SYS_RAM_ADDR    0x8000
#define SYS_RAM_SIZE    0x2000

__sfr __at 0x18 uart_status;
__sfr __at 0x19 uart_baudlow;
__sfr __at 0x1a uart_baudhigh;
__sfr __at 0x1b uart_cmd;
__sfr __at 0x1c uart_dat_in;
__sfr __at 0x1d uart_dat_out;

__sfr __at 0x40 port_a;
__sfr __at 0x41 port_b;
__sfr __at 0x42 port_cfg;

__sfr __at 0x50 i2c_status;
__sfr __at 0x52 i2c_clkdiv;
__sfr __at 0x53 i2c_cmd;
__sfr __at 0x54 i2c_dat_in;
__sfr __at 0x55 i2c_dat_out;

__sfr __at 0x60 spi_status;
__sfr __at 0x61 spi_cfg;
__sfr __at 0x62 spi_clkdiv;
__sfr __at 0x63 spi_cmd;
__sfr __at 0x64 spi_dat_in;
__sfr __at 0x65 spi_dat_out;

#endif
