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
#include "i2c.h"
#include "spi.h"
#include "ssd1306.h"

int8_t start = 0;
uint8_t *addr;
uint16_t last_usable_addr = 0;
int8_t free = 0;

void delay(uint16_t t)
{
    uint16_t i;
    for(i = 0; i < t; i++);
}

void Read_SPI_25L008A(uint8_t *buffer, uint16_t len)
{
    uint8_t spi_send[4] = {0x3, 0x00, 0x00, 0x00};

    spi_config(0);
    spi_xfer(spi_send, buffer, 4, 64);
}

void Read_I2C_PCF8523(uint8_t *buffer, uint16_t len)
{
    i2c_write(0x68, 0x00);
    i2c_read_buf(0x68, buffer, len);
}

void main ()
{
    uint8_t buffer[64];

    int8_t uart_rx = 0;
    int16_t x, y;

    //UART Test
    Initialize_16450(9600);
    printf("iceZ0mb1e SoC by abnoname\r\n");

    //SPI Test
    Read_SPI_25L008A(buffer, 64);
    for(x = 0; x < 64; x++)
    {
        printf("0x%X ", buffer[x]);
    }
    printf("\r\n");

    //I2C Test
    Read_I2C_PCF8523(buffer, 20);
    for(x = 0; x < 20; x++)
    {
        printf("0x%X ", buffer[x]);
    }
    printf("\r\n");

    //I2C OLED display test:
    ssd1306_initialize(0x3C);
    ssd1306_clear();
    ssd1306_write(0, 0, "iceZ0mb1e SoC");
    ssd1306_write(2, 0, "by abnoname");
    ssd1306_write(3, 0, "0123456789 Test");

    //LED IO
    out(port_cfg, 0x00); //mode = output
    out(port_a, 0x01);
    out(port_b, 0x54);
    printf("Readback port_a = 0x%X, port_b = 0x%X \n\r",
        in(port_a), in(port_b)
    );

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

    out(port_a, 0x02);

    //UART Terminal
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
