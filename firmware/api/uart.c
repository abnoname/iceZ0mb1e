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
#include "cpu.h"
#include "uart.h"

#define UART_CMD_TRANSMIT           0x01

#define UART_STATUS_RECEIVED        0x01
#define UART_STATUS_READY           0x02

#if defined(__SDCC) && __SDCC_REVISION < 9624
void putchar(char c)
{
    uart_cmd = 0;
    while ((uart_status & UART_STATUS_READY) == 0);
    uart_dat_out = c;
    uart_cmd |= UART_CMD_TRANSMIT;
}
#else
int putchar(int c)
{
    uart_cmd = 0;
    while ((uart_status & UART_STATUS_READY) == 0);
    uart_dat_out = c;
    uart_cmd |= UART_CMD_TRANSMIT;
    return c;
}
#endif

#if defined(__SDCC) && __SDCC_REVISION < 9989
char getchar()
#else
int getchar()
#endif
{
    while ((uart_status & UART_STATUS_RECEIVED) == 0);
    return uart_dat_in;
}

void uart_write(char *str)
{
    uint16_t i = 0;

    for(i = 0; str[i] != 0; i++)
    {
        putchar(str[i]);
    }
}

void uart_initialize(uint16_t baud)
{
    // set divisor div = 12MHz / (9600 * 16) = 78
    uint32_t div = (uint32_t)SYS_XTAL_FREQ / (uint32_t)baud;

    uart_baudlow = (uint8_t)(div & 0xFF);
    uart_baudhigh = (uint8_t)(div >> 8);
}
