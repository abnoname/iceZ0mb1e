
// iceZ0mb1e - FPGA 8-Bit TV80 SoC for Lattice iCE40
// with complete open-source toolchain flow using yosys and SDCC

// Copyright (c) 2018 Franz Neumann (netinside2000@gmx.de)

// ============================================
// I2Cdev library collection - SSD1308 I2C device class header file
// Based on Solomon Systech SSD1308 datasheet, rev. 1, 10/2008
// 8/25/2011 by Andrew Schamp <schamp@gmail.com>

// This I2C device library is using (and submitted as a part of) Jeff Rowberg's I2Cdevlib library,
// which should (hopefully) always be available at https://github.com/jrowberg/i2cdevlib

// Changelog:
//     2011-08-25 - initial release
// ============================================
// I2Cdev device library code is placed under the MIT license
// Copyright (c) 2011 Andrew Schamp

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
// ===============================================

#ifndef H_SSD1306_h_
#define H_SSD1306_h_

#include <stdint.h>

#define SSD1306_ROWS 64
#define SSD1306_COLUMNS 128
#define SSD1306_PAGES 8
#define SSD1306_PAGE_WIDTH (SSD1306_ROWS / 8)
#define SSD1306_FONT_WIDTH 8
#define SSD1306_CHARS (SSD1306_COLUMNS / SSD1306_FONT_WIDTH)
#define SSD1306_MAX_PAGE (SSD1306_PAGES - 1)
#define SSD1306_MAX_COL (SSD1306_COLUMNS - 1)

#define SSD1306_SETCONTRAST 0x81
#define SSD1306_DISPLAYALLON_RESUME 0xA4
#define SSD1306_DISPLAYALLON 0xA5
#define SSD1306_NORMALDISPLAY 0xA6
#define SSD1306_INVERTDISPLAY 0xA7
#define SSD1306_DISPLAYOFF 0xAE
#define SSD1306_DISPLAYON 0xAF
#define SSD1306_SETDISPLAYOFFSET 0xD3
#define SSD1306_SETCOMPINS 0xDA
#define SSD1306_SETVCOMDETECT 0xDB
#define SSD1306_SETDISPLAYCLOCKDIV 0xD5
#define SSD1306_SETPRECHARGE 0xD9
#define SSD1306_SETMULTIPLEX 0xA8
#define SSD1306_SETLOWCOLUMN 0x00
#define SSD1306_SETHIGHCOLUMN 0x10
#define SSD1306_SETSTARTLINE 0x40
#define SSD1306_MEMORYMODE 0x20
#define SSD1306_COLUMNADDR 0x21
#define SSD1306_PAGEADDR 0x22
#define SSD1306_COMSCANINC 0xC0
#define SSD1306_COMSCANDEC 0xC8
#define SSD1306_SEGREMAP 0xA0
#define SSD1306_CHARGEPUMP 0x8D
#define SSD1306_EXTERNALVCC 0x1
#define SSD1306_SWITCHCAPVCC 0x2
#define SSD1306_ACTIVATE_SCROLL 0x2F
#define SSD1306_DEACTIVATE_SCROLL 0x2E

#define SSD1306_COMMAND_MODE 0x80
#define SSD1306_DATA_MODE 0x40

void ssd1306_initialize(uint8_t address);
void ssd1306_clear();
void ssd1306_putc(char chr);
void ssd1306_writeString(uint8_t y, uint8_t x, uint16_t len, const char * text);
void ssd1306_setPageAddress(uint8_t start, uint8_t end);
void ssd1306_setColumnAddress(uint8_t start, uint8_t end);

#endif
