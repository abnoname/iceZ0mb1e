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
#include "mini-printf.h"
#include "icez0mb1e.h"
#include "cpu.h"
#include "uart.h"
#include "i2c.h"
#include "spi.h"
#include "ssd1306.h"

int8_t start = 0;
uint16_t last_usable_addr = 0;
int8_t free = 0;
char strbuf[80];

void Read_SPI_25L008A(uint8_t *buffer, uint16_t len)
{
    uint8_t spi_send[4] = {0x3, 0x00, 0x00, 0x00};

    spi_xfer(spi_send, buffer, 4, len);
}

void oled_reset()
{
    port_b = 0x00;
    delay(50000);
    port_b = 0x01;
    delay(50000);
    port_b = 0x00;
    delay(50000);
    port_b = 0x01;
    delay(50000);
}

void View_Memory(uint8_t *mem, uint16_t len)
{
    uint16_t x;

    for(x = 0; x < len; x++)
    {
        if((x%16) == 0)
        {
            snprintf(strbuf, sizeof(strbuf), "\r\n%04X: ", x);
            uart_write(strbuf);
        }
        snprintf(strbuf, sizeof(strbuf), "%02X", mem[x]);
        uart_write(strbuf);
    }

    snprintf(strbuf, sizeof(strbuf), "\r\n");
    uart_write(strbuf);
}

void main ()
{
    uint16_t *addr;
    uint8_t buffer[64];
    int8_t uart_rx = 0;
    int16_t x;

    //GPIO mode = output
    port_cfg = 0x00;

    //Initialize:
    uart_initialize(9600);
    uart_write("BOOT\n");

    spi_config(0, 12); //1MHz
    i2c_config(120); //100kHz

    //i2c Test:
    i2c_read_buf(0x5C, buffer, 5); // DHT12
    View_Memory(buffer, 5);
    i2c_read_buf(0x68, buffer, 20); // PCF8523
    View_Memory(buffer, 20);

    //SPI Test
    Read_SPI_25L008A(buffer, 64); // 25L008A
    View_Memory(buffer, 64);

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
    port_a = 0x02;

    //UART Test
    snprintf(strbuf, sizeof(strbuf), "iceZ0mb1e SoC by abnoname\r\n");
    uart_write(strbuf);

    //UART Terminal
    while(1)
    {
        uart_rx = getchar();

        switch(uart_rx)
        {
            case 'a':
                port_a = getchar();
                snprintf(strbuf, sizeof(strbuf), "port_a = 0x%X\n\r", port_a);
                uart_write(strbuf);
                break;
            case 'b':
                port_b = getchar();
                snprintf(strbuf, sizeof(strbuf), "port_b = 0x%X\n\r", port_b);
                uart_write(strbuf);
                break;
            case 'r':
                cpu_reset();
                break;
            case 'c':
                View_Memory((uint8_t*)SYS_ROM_ADDR, SYS_ROM_SIZE);
                break;
            case 'm':
                View_Memory((uint8_t*)SYS_RAM_ADDR, SYS_RAM_SIZE);
                break;
            case 't':
                //RAM Test
                last_usable_addr = 0;
                addr = &free;
                while((uint16_t)addr < (SYS_RAM_ADDR+SYS_RAM_SIZE))
                {
                    *(addr) = (uint16_t)addr;
                    if(*(addr) != addr)
                    {
                        break;
                    }
                    last_usable_addr = (uint16_t)addr;
                    addr++;
                }
                snprintf(strbuf, sizeof(strbuf), "RAM: start = 0x%X, last usable = 0x%X, ramsize = %u\n\r",
                    (uint16_t)&start, last_usable_addr, last_usable_addr-(uint16_t)&start
                );
                uart_write(strbuf);
                break;
            default:
                putchar(uart_rx);
                break;
        }
    }
}
