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
#include <stdio.h>
#include "register.h"
#include "ioport.h"
#include "uart.h"

int8_t start = 0;
uint16_t last_usable_addr = 0;
int8_t free = 0;

void delay(uint16_t t)
{
    uint16_t i;
    for(i = 0; i < t; i++);
}

void main ()
{
    uint8_t *addr;
    uint8_t x;

    //GPIO mode = output
    out(port_cfg, 0x00);

    //UART Test
    Initialize_16450(9600);
    printf("iceZ0mb1e SoC by abnoname\r\n");

    out(port_a, 0xFF);

    //RAM Test
	last_usable_addr = 0;
    addr = &free;
    while((uint16_t)addr < 0xFFFF)
    {
        *(addr) = 0x55;
        *(addr) = 0xAA;
        if(*(addr) != 0xAA)
        {
            break;
        }
        last_usable_addr = (uint16_t)addr;
        addr += 1;
    }
    printf("ready, start = 0x%X, last usable = 0x%X, ramsize = %u\n\r",
        (uint16_t)&start, last_usable_addr, last_usable_addr-(uint16_t)&start
    );

    //ROM View
    for(addr = 0; addr < 0x2000; addr++)
    {
        if(((uint8_t)addr % 16) == 0)
        {
            printf("\r\n");
        }
        printf("%02X", *(addr));
    }

    while(1)
    {
        out(port_a, x);
        x++;
        delay(5000);
    }
}
