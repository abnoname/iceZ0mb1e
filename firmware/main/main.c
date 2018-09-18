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
#include "cpu.h"
#include "register.h"
#include "ioport.h"
#include "uart.h"
#include "i2c.h"
#include "spi.h"
#include "ssd1306.h"

void delay(uint16_t t)
{
    uint16_t i;
    for(i = 0; i < t; i++);
}

void Read_SPI_25L008A(uint8_t *buffer, uint16_t len)
{
    uint8_t spi_send[4] = {0x3, 0x00, 0x00, 0x00};

    spi_config(0);
    spi_xfer(spi_send, buffer, 4, len);
}

void Read_I2C_PCF8523(uint8_t *buffer, uint16_t len)
{
    i2c_write(0x68, 0x00);
    i2c_read_buf(0x68, buffer, len);
}

void oled_reset()
{
    out(port_b, 0x00);
    delay(50000);
    out(port_b, 0x01);
    delay(50000);
    out(port_b, 0x00);
    delay(50000);
    out(port_b, 0x01);
    delay(50000);
}

void View_Memory(uint8_t *mem, uint16_t len)
{
    uint16_t x;

    for(x = 0; x < len; x++)
    {
        if((x%16) == 0)
        {
            printf("\r\n%04X: ", x);
        }
        printf("%02X", mem[x]);
    }

    printf("\r\n");
}

void main ()
{
    uint8_t buffer[64];

    int8_t uart_rx = 0;
    int16_t x;

    //GPIO mode = output
    out(port_cfg, 0x00);

    //UART Test
    Initialize_16450(9600);
    printf("iceZ0mb1e SoC by abnoname\r\n");

    //SPI Test
    Read_SPI_25L008A(buffer, 64);
    View_Memory(buffer, 64);

    //I2C Test
    Read_I2C_PCF8523(buffer, 20);
    View_Memory(buffer, 20);

    //I2C OLED display test:
    oled_reset();
    ssd1306_initialize(0x3C);
    ssd1306_clear();
    ssd1306_write(0, 0, "iceZ0mb1e SoC");
    ssd1306_write(2, 0, "by abnoname");
    ssd1306_write(3, 0, "0123456789 Test");
    ssd1306_write(4, 0, "Framebuffer On");
#ifdef SSD1306_ENABLE_FRAMEBUFFER
    ssd1306_update();
#endif
#ifdef SSD1306_ENABLE_GRAPHIC
    ssd1306_line(0, 48, 127, 63, 1);
    ssd1306_box(0, 127, 48, 63, 1);
    ssd1306_update();
#endif

    //Port test
    out(port_a, 0x02);

    //UART Terminal
    while(1)
    {
        uart_rx = getchar();

        switch(uart_rx)
        {
            case 'a':
                out(port_a, getchar());
                printf("port_a = 0x%X\n\r", in(port_a));
                break;
            case 'b':
                out(port_b, getchar());
                printf("port_b = 0x%X\n\r", in(port_b));
                break;
            case 'r':
                cpu_reset();
                break;
            case 'c':
                View_Memory((uint8_t*)0x0000, 0x2000);
                break;
            case 'm':
                View_Memory((uint8_t*)0x8000, 0x2000);
                break;
            default:
                putchar(uart_rx);
                out(port_a, uart_rx);
                break;
        }
    }
}
