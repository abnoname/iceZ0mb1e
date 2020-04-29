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
#include "icez0mb1e.h"
#include "spi.h"

#define SPI_CFG_CPHA    0x01
#define SPI_CFG_CPOL    0x02

#define SPI_CMD_START   0x01
#define SPI_CMD_FINISH  0x02

#define SPI_STAT_REQ    0x01

void spi_config(uint8_t mode, uint8_t clock_div)
{
    // Mode    CPOL    CPHA
    // 0       0       0
    // 1       0       1
    // 2       1       0
    // 3       1       1
    spi_cmd = 0x00;
    spi_cfg = mode;
    spi_clkdiv = clock_div/2;
}

uint8_t spi_xfer_single(uint8_t cmd)
{
    spi_dat_out = cmd;
    spi_cmd = SPI_CMD_FINISH | SPI_CMD_START;
    while((spi_status & SPI_STAT_REQ) == 0);

    return spi_dat_in;
}

void spi_xfer(uint8_t *tx, uint8_t *rx, uint16_t tx_len, uint16_t rx_len)
{
    uint16_t i = 0;
    uint16_t len = rx_len;

    if( tx_len >= rx_len )
    {
        len = tx_len;
    }

    for(i = 0; i < len; i++)
    {
        spi_dat_out = (i < tx_len) ? tx[i] : 0x00;
        spi_cmd = (i == (len-1)) ? SPI_CMD_FINISH | SPI_CMD_START : SPI_CMD_START;
        while((spi_status & SPI_STAT_REQ) == 0);

        if(i < rx_len)
        {
            rx[i] = spi_dat_in;
        }
    }
}

