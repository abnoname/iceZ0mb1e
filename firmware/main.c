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

#include <stdio.h>
#include "register.h"
#include "ioport.h"

volatile char start = 0;
volatile unsigned char *addr;
volatile char buffer[128];
volatile unsigned int last_usable_addr = 0;
volatile char free = 0;

void putchar(char cin)
{
    while ((in(uart_lsr) & (1 << 6)) == 0);
    out(uart_thr, cin);
}

char getchar()
{
    while ((in(uart_lsr) & (1 << 0)) == 0);
    return in(uart_rbr);
}

void out_string(char *str)
{
    while (*str != 0)
    {
        putchar(*str++);
    }
}

void Initialize_16450()
{
    // set divisor div = 12MHz / (9600 * 16) = 78
    out(uart_lcr, 0x80); /* SET DLAB ON */
    out(uart_dm0, 78);
    out(uart_dm1, 0);

    out(uart_lcr, 0x03); /* 8 Bits, No Parity, 1 Stop Bit */
    out(uart_mcr, 0x00);
}

void main ()
{
    char uart_rx = 0;

    Initialize_16450();

    out_string("iceZ0mb1e SoC by abnoname\r\n");

    out(port_a, in(port_a) | 0x01);
    out(port_b, 0x54);    
    sprintf(buffer, "Readback port_a = 0x%X, port_b = 0x%X \n\r", 
        in(port_a), in(port_b)
    ); 
    out_string(buffer);

	last_usable_addr = 0;
    addr = &free;
    while((unsigned int)addr < 0xFFFF)
    {
        *(addr) = 0x55;
        *(addr) = 0xAA;
        if(*(addr) != 0xAA)
        {
            last_usable_addr = (int)addr;
            break;
        }
        addr += 1;
    }

    sprintf(buffer, "ready, start = 0x%X, last usable = 0x%X, ramsize = %u\n\r", 
        (int)&start, last_usable_addr, last_usable_addr-(int)&start
    );
    out_string(buffer);

    out(port_a, 0x02);
    while(1)
    {
        uart_rx = getchar();
        out(port_a, uart_rx);
        putchar(uart_rx);
    }

__asm
    halt
__endasm;
}
