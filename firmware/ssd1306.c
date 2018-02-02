/*

SSD1306 OLED - I2C driver

Derk Steggewentz, 3/2015 
This is a I2C driver for SSD1306 OLED displays including graphics library.

Franz Neumann (abnoname) 09/2016
Modified for simplicity using uGUI as gfx lib

No license restrictions on my part, do whatever you want as long as you follow the inherited
license requirements (applying to the Adafruit graphics library part).


===== derived license (for graphics library) ======

Copyright (c) 2013 Adafruit Industries. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
- Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.
- Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

*/

#include <string.h>
#include <stdint.h>
#include "ioport.h"
#include "register.h"
#include "ssd1306.h"

uint8_t ssd1306_i2c_addr;

// display memory buffer ( === MUST INCLUDE === the preceding I2C 0x40 control byte for the display)
uint8_t ssd1306_buffer[SSD1306_HEIGHT * SSD1306_WIDTH / 8 + 1] = { 0x40 };
// pointer to actual display memory buffer
uint8_t* ssd1306_displaybuf = ssd1306_buffer+1;
uint16_t ssd1306_displaybuf_size = sizeof(ssd1306_buffer) - 1;

// see data sheet page 25 for Graphic Display Data RAM organization
// 8 pages, each page a row of ssd1306_WIDTH bytes
// start address of of row: y/8*ssd1306_WIDTH
// x pos in row: == x
#define SSD1306_GDDRAM_ADDRESS(X,Y) ((ssd1306_displaybuf)+((Y)/8)*(SSD1306_WIDTH)+(X))

// lower 3 bit of y determine vertical pixel position (pos 0...7) in GDDRAM byte
// (y&0x07) == position of pixel on row (page). LSB is top, MSB bottom
#define SSD1306_GDDRAM_PIXMASK(Y) (1 << ((Y)&0x07))

#define SSD1306_PIXEL_ON(X,Y) (*SSD1306_GDDRAM_ADDRESS(x,y) |= SSD1306_GDDRAM_PIXMASK(y))
#define SSD1306_PIXEL_OFF(X,Y) (*SSD1306_GDDRAM_ADDRESS(x,y) &= ~SSD1306_GDDRAM_PIXMASK(y))
#define SSD1306_PIXEL_TOGGLE(X,Y) (*SSD1306_GDDRAM_ADDRESS(x,y) ^= SSD1306_GDDRAM_PIXMASK(y))

// call before first use of other functions
void ssd1306_init( uint8_t i2caddr )
{
    uint8_t cmdbuf[] = {
        0x00,
        SSD1306_DISPLAYOFF,
        SSD1306_SETDISPLAYCLOCKDIV,
        0x80,
        SSD1306_SETMULTIPLEX,
        0x3f,
        SSD1306_SETDISPLAYOFFSET,
        0x00,
        SSD1306_SETSTARTLINE | 0x0,
        SSD1306_CHARGEPUMP,
        0x14,
        SSD1306_MEMORYMODE,
        0x00,
        SSD1306_SEGREMAP | 0x1,
        SSD1306_COMSCANDEC,
        SSD1306_SETCOMPINS,
        0x12,
        SSD1306_SETCONTRAST,
        0xcf,
        SSD1306_SETPRECHARGE,
        0xf1,
        SSD1306_SETVCOMDETECT,
        0x40,
        SSD1306_DISPLAYALLON_RESUME,
        SSD1306_NORMALDISPLAY,
        SSD1306_DISPLAYON
    };

    ssd1306_i2c_addr = i2caddr;

    ssd1306_write_buf( cmdbuf, sizeof(cmdbuf) );
}

void ssd1306_update(void)
{
    uint8_t cmdbuf[] = {
        0x00,
        SSD1306_COLUMNADDR,
        0,                      // start
        SSD1306_WIDTH-1, // end
        SSD1306_PAGEADDR,
        0,                      // start
        7                       // end
    };
    ssd1306_write_buf( cmdbuf, sizeof(cmdbuf) );
    ssd1306_write_buf( ssd1306_buffer, sizeof(ssd1306_buffer) );
}

uint32_t ssd1306_write_buf( uint8_t* buf, uint16_t size )
{
    // for submitting command sequences buf[0] must be 0x00
    // for submitting bulk data (writing to display RAM) buf[0] must be 0x40
    uint16_t i;

    out(i2c_addr, ssd1306_i2c_addr); // 0x3C);
    out(i2c_byte_count_l, size & 0xFF);
    out(i2c_byte_count_h, size >> 8);

    for(i=0; i < size; i++)
    {
        out(i2c_dat_out, buf[i]);
        out(i2c_cmd, 0x00 | 0x1); //WR=0, Start
        out(i2c_cmd, 0); //Reset
        while((in(i2c_status) & 0x02) == 0); //req_next_byte
    }

    while((in(i2c_status) & 0x01) == 0); //xfer_ready

    return 0;
}

void ssd1306_setPixel( int16_t x, int16_t y, uint32_t color )
{
    if( (x < 0) || (x >= SSD1306_WIDTH) || (y < 0) || (y >= SSD1306_HEIGHT) )
        return;

    if(color == 0)
    {
        SSD1306_PIXEL_OFF(x,y);
    }
    else
    {
        SSD1306_PIXEL_ON(x,y);
    }
}

void ssd1306_clear(void)
{
    memset( ssd1306_displaybuf, 0, ssd1306_displaybuf_size );
    ssd1306_buffer[0] = 0x40;

    ssd1306_update();
}

void ssd1306_contrast( uint8_t contrast )
{
    uint8_t cmdbuf[] = { 0x00, SSD1306_SETCONTRAST, contrast };

    ssd1306_write_buf( cmdbuf, sizeof(cmdbuf) );

    ssd1306_update();
}

void ssd1306_invert( uint8_t invert )
{
    uint8_t cmdbuf[] = { 0x00, 0 };

    cmdbuf[1] = invert ? SSD1306_INVERTDISPLAY : SSD1306_NORMALDISPLAY;
    ssd1306_write_buf( cmdbuf, sizeof(cmdbuf) );

    ssd1306_update();
}
