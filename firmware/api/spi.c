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
#include "spi.h"

#define SPI_CFG_CPHA    0x01
#define SPI_CFG_CPOL    0x02

#define SPI_CMD_START   0x01
#define SPI_CMD_STOP    0x02
#define SPI_CMD_RESET   0x80

#define SPI_STAT_REQ    0x01

uint8_t spi_config(uint8_t mode)
{
    // Mode    CPOL    CPHA
    // 0       0       0
    // 1       0       1
    // 2       1       0
    // 3       1       1
    out(spi_cfg, mode);
}

uint8_t spi_xfer_1(uint8_t cmd)
{
    out(spi_cmd, 0x00);

    out(spi_dat_out, cmd);
    out(spi_cmd, SPI_CMD_STOP | SPI_CMD_START);
    out(spi_cmd, 0);
    while((in(spi_status) & SPI_STAT_REQ) == 0);

    return in(spi_dat_in);
}

uint8_t spi_xfer_2(uint8_t cmd)
{
    out(spi_cmd, 0x00);

    out(spi_dat_out, cmd);
    out(spi_cmd, SPI_CMD_START);
    out(spi_cmd, 0);
    while((in(spi_status) & SPI_STAT_REQ) == 0);

    out(spi_dat_out, 0x00);
    out(spi_cmd, SPI_CMD_STOP | SPI_CMD_START);
    out(spi_cmd, 0);
    while((in(spi_status) & SPI_STAT_REQ) == 0);

    return in(spi_dat_in);
}

// uint8_t spi_write(uint8_t addr, uint8_t cmd)
// {
//     out(spi_cmd, 0x00);

//     out(spi_dat_out, (addr << 1) | SPI_ADDR_WR);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR | SPI_CMD_START);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR);
//     while((in(spi_status) & SPI_STAT_REQ) == 0);

//     out(spi_dat_out, cmd);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR | SPI_CMD_START);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR | SPI_CMD_STOP);
//     while((in(spi_status) & SPI_STAT_REQ) == 0);

//     return in(spi_dat_in);
// }

// uint8_t spi_read_buf(uint8_t addr, uint8_t *buf, uint16_t size)
// {
//     uint16_t i;

//     out(spi_cmd, 0x00);

//     out(spi_dat_out, (addr << 1) | SPI_ADDR_RD);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR | SPI_CMD_START);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR);
//     while((in(spi_status) & SPI_STAT_REQ) == 0);

//     for(i=0; i < size; i++)
//     {
//         out(spi_cmd, SPI_CMD_ACK_L | SPI_CMD_RD | SPI_CMD_START);
//         if(i == (size-1))
//         {
//             out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_STOP | SPI_CMD_RD); //last Byte NAK
//         }
//         else
//         {
//             out(spi_cmd, SPI_CMD_ACK_L | SPI_CMD_RD);
//         }
//         while((in(spi_status) & SPI_STAT_REQ) == 0);

//         buf[i] = in(spi_dat_in);
//     }
// }

// void spi_write_buf(uint8_t addr, uint8_t* buf, uint16_t size )
// {
//     uint16_t i;

//     out(spi_cmd, 0x00);

//     out(spi_dat_out, (addr << 1) | SPI_ADDR_WR);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR | SPI_CMD_START);
//     out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR);
//     while((in(spi_status) & SPI_STAT_REQ) == 0);

//     for(i=0; i < size; i++)
//     {
//         out(spi_dat_out, buf[i]);
//         out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR | SPI_CMD_START);
//         if(i == (size-1))
//         {
//             out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_STOP | SPI_CMD_WR); //last Byte
//         }
//         else
//         {
//             out(spi_cmd, SPI_CMD_ACK_Z | SPI_CMD_WR);
//         }
//         while((in(spi_status) & SPI_STAT_REQ) == 0);
//     }
// }
