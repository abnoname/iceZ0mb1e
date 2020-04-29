;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module ssd1306
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SSD1306_FBPIXCLR
	.globl _SSD1306_FBPIXSET
	.globl _i2c_write_buf
	.globl _mini_strlen
	.globl _mini_memset
	.globl _ssd1306_fb
	.globl _ssd1306_fbdata
	.globl _ssd1306_i2c_addr
	.globl _fontData
	.globl _ssd1306_initialize
	.globl _ssd1306_addr
	.globl _ssd1306_clear
	.globl _ssd1306_update
	.globl _ssd1306_setPixel
	.globl _ssd1306_write
	.globl _ssd1306_abs
	.globl _ssd1306_line
	.globl _ssd1306_box
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ssd1306_i2c_addr::
	.ds 1
_ssd1306_fbdata::
	.ds 1025
_ssd1306_fb::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;ssd1306/ssd1306.c:142: void ssd1306_initialize(uint8_t address)
;	---------------------------------
; Function ssd1306_initialize
; ---------------------------------
_ssd1306_initialize::
	call	___sdcc_enter_ix
	ld	hl, #-26
	add	hl, sp
	ld	sp, hl
;ssd1306/ssd1306.c:144: const uint8_t command[] = {
	ld	hl, #0x0000
	add	hl, sp
	ex	de, hl
	xor	a, a
	ld	(de), a
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl), #0xae
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl), #0xd5
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x80
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0xa8
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0x3f
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0xd3
	ld	hl, #0x0007
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x0008
	add	hl, de
	ld	(hl), #0x40
	ld	hl, #0x0009
	add	hl, de
	ld	(hl), #0x8d
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), #0x14
	ld	hl, #0x000b
	add	hl, de
	ld	(hl), #0x20
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x000d
	add	hl, de
	ld	(hl), #0xa1
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0xc8
	ld	hl, #0x000f
	add	hl, de
	ld	(hl), #0xda
	ld	hl, #0x0010
	add	hl, de
	ld	(hl), #0x12
	ld	hl, #0x0011
	add	hl, de
	ld	(hl), #0x81
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0xcf
	ld	hl, #0x0013
	add	hl, de
	ld	(hl), #0xd9
	ld	hl, #0x0014
	add	hl, de
	ld	(hl), #0xf1
	ld	hl, #0x0015
	add	hl, de
	ld	(hl), #0xdb
	ld	hl, #0x0016
	add	hl, de
	ld	(hl), #0x40
	ld	hl, #0x0017
	add	hl, de
	ld	(hl), #0xa4
	ld	hl, #0x0018
	add	hl, de
	ld	(hl), #0xa6
	ld	hl, #0x0019
	add	hl, de
	ld	(hl), #0xaf
;ssd1306/ssd1306.c:173: ssd1306_i2c_addr = address;
	ld	a, 4 (ix)
	ld	(#_ssd1306_i2c_addr + 0),a
;ssd1306/ssd1306.c:176: ssd1306_fbdata[0] = SSD1306_DATA_MODE;
	ld	hl, #_ssd1306_fbdata+0
	ld	(hl), #0x40
;ssd1306/ssd1306.c:177: ssd1306_fb = &(ssd1306_fbdata[1]);
	inc	hl
	ld	(_ssd1306_fb), hl
;ssd1306/ssd1306.c:180: i2c_write_buf(ssd1306_i2c_addr, command, sizeof(command) );
	ld	hl, #0x001a
	push	hl
	push	de
	ld	a, (_ssd1306_i2c_addr)
	push	af
	inc	sp
	call	_i2c_write_buf
;ssd1306/ssd1306.c:181: }
	ld	sp,ix
	pop	ix
	ret
_fontData:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x22	; 34
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xac	; 172
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7d	; 125
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x7d	; 125
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x7f	; 127
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x36	; 54	'6'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
;ssd1306/ssd1306.c:183: void ssd1306_addr(uint8_t c, uint8_t p)
;	---------------------------------
; Function ssd1306_addr
; ---------------------------------
_ssd1306_addr::
	push	af
	push	af
	push	af
	dec	sp
;ssd1306/ssd1306.c:185: uint8_t command[] = {
	ld	hl, #0x0000
	add	hl, sp
	ex	de, hl
	xor	a, a
	ld	(de), a
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl), #0x21
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	hl, #9+0
	add	hl, sp
	ld	a, (hl)
	ld	(bc), a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x7f
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x22
	ld	hl, #0x0005
	add	hl, de
	ld	iy, #10
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0x07
;ssd1306/ssd1306.c:190: i2c_write_buf(ssd1306_i2c_addr, command, sizeof(command));
	ld	hl, #0x0007
	push	hl
	push	de
	ld	a, (_ssd1306_i2c_addr)
	push	af
	inc	sp
	call	_i2c_write_buf
	pop	af
	pop	af
	inc	sp
;ssd1306/ssd1306.c:191: }
	pop	af
	pop	af
	pop	af
	inc	sp
	ret
;ssd1306/ssd1306.c:195: void SSD1306_FBPIXSET(uint8_t x, uint8_t y)
;	---------------------------------
; Function SSD1306_FBPIXSET
; ---------------------------------
_SSD1306_FBPIXSET::
	call	___sdcc_enter_ix
	push	af
	push	af
	dec	sp
;ssd1306/ssd1306.c:197: ssd1306_fb[SSD1306_FBADDR(x,y)] |= (1 << (y % 8));
	ld	e, 5 (ix)
	ld	d, #0x00
	ld	c, e
	ld	a,d
	ld	b,a
	rlca
	and	a,#0x01
	ld	-3 (ix), a
	ld	hl, #0x0007
	add	hl, de
	ex	(sp), hl
	ld	a, -3 (ix)
	or	a, a
	jr	Z,00103$
	pop	bc
	push	bc
00103$:
	ld	l, c
	ld	h, b
	ld	b, #0x03
00115$:
	sra	h
	rr	l
	djnz	00115$
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, 4 (ix)
	ld	b, #0x00
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	iy, #_ssd1306_fb
	ld	a, 0 (iy)
	add	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, 1 (iy)
	adc	a, -1 (ix)
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	ld	a, -3 (ix)
	or	a, a
	jr	Z,00104$
	pop	hl
	push	hl
00104$:
	ld	a, #0x03
00116$:
	sra	h
	rr	l
	dec	a
	jr	NZ,00116$
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	iy, (_ssd1306_fb)
	add	iy, bc
	ld	b, 0 (iy)
	push	bc
	ld	hl, #0x0008
	push	hl
	push	de
	call	__modsint
	pop	af
	pop	af
	pop	bc
	ld	c, #0x01
	inc	l
	jr	00118$
00117$:
	sla	c
00118$:
	dec	l
	jr	NZ,00117$
	ld	a, b
	or	a, c
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), a
;ssd1306/ssd1306.c:198: }
	ld	sp, ix
	pop	ix
	ret
;ssd1306/ssd1306.c:202: void SSD1306_FBPIXCLR(uint8_t x, uint8_t y)
;	---------------------------------
; Function SSD1306_FBPIXCLR
; ---------------------------------
_SSD1306_FBPIXCLR::
	call	___sdcc_enter_ix
	push	af
	push	af
	dec	sp
;ssd1306/ssd1306.c:204: ssd1306_fb[SSD1306_FBADDR(x,y)] &=~ (1 << (y % 8));
	ld	e, 5 (ix)
	ld	d, #0x00
	ld	c, e
	ld	a,d
	ld	b,a
	rlca
	and	a,#0x01
	ld	-1 (ix), a
	ld	hl, #0x0007
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00103$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
00103$:
	ld	l, c
	ld	h, b
	ld	b, #0x03
00115$:
	sra	h
	rr	l
	djnz	00115$
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, 4 (ix)
	ld	b, #0x00
	add	hl, bc
	ex	(sp), hl
	ld	iy, #_ssd1306_fb
	ld	a, 0 (iy)
	add	a, -5 (ix)
	ld	-5 (ix), a
	ld	a, 1 (iy)
	adc	a, -4 (ix)
	ld	-4 (ix), a
	ld	l, e
	ld	h, d
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00104$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
00104$:
	ld	a, #0x03
00116$:
	sra	h
	rr	l
	dec	a
	jr	NZ,00116$
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	iy, (_ssd1306_fb)
	add	iy, bc
	ld	c, 0 (iy)
	push	bc
	ld	hl, #0x0008
	push	hl
	push	de
	call	__modsint
	pop	af
	pop	af
	pop	bc
	ld	b, #0x01
	inc	l
	jr	00118$
00117$:
	sla	b
00118$:
	dec	l
	jr	NZ,00117$
	ld	a, b
	cpl
	and	a, c
	pop	hl
	push	hl
	ld	(hl), a
;ssd1306/ssd1306.c:205: }
	ld	sp, ix
	pop	ix
	ret
;ssd1306/ssd1306.c:208: void ssd1306_clear()
;	---------------------------------
; Function ssd1306_clear
; ---------------------------------
_ssd1306_clear::
;ssd1306/ssd1306.c:210: memset(ssd1306_fb, 0, SSD1306_FBSIZE);
	ld	hl, #0x0400
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	hl, (_ssd1306_fb)
	push	hl
	call	_mini_memset
	pop	af
	pop	af
	inc	sp
;ssd1306/ssd1306.c:211: }
	ret
;ssd1306/ssd1306.c:213: void ssd1306_update()
;	---------------------------------
; Function ssd1306_update
; ---------------------------------
_ssd1306_update::
;ssd1306/ssd1306.c:215: ssd1306_addr(0, 0);
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_ssd1306_addr
;ssd1306/ssd1306.c:217: i2c_write_buf(ssd1306_i2c_addr, ssd1306_fbdata, sizeof(ssd1306_fbdata));
	ld	hl, #0x0401
	ex	(sp),hl
	ld	hl, #_ssd1306_fbdata
	push	hl
	ld	a, (_ssd1306_i2c_addr)
	push	af
	inc	sp
	call	_i2c_write_buf
	pop	af
	pop	af
	inc	sp
;ssd1306/ssd1306.c:218: }
	ret
;ssd1306/ssd1306.c:220: void ssd1306_setPixel(int16_t x, int16_t y, uint8_t color)
;	---------------------------------
; Function ssd1306_setPixel
; ---------------------------------
_ssd1306_setPixel::
;ssd1306/ssd1306.c:224: SSD1306_FBPIXCLR(x,y);
	ld	hl, #4+0
	add	hl, sp
	ld	b, (hl)
	ld	hl, #2+0
	add	hl, sp
	ld	d, (hl)
;ssd1306/ssd1306.c:222: if(color == 0)
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;ssd1306/ssd1306.c:224: SSD1306_FBPIXCLR(x,y);
	ld	c, d
	push	bc
	call	_SSD1306_FBPIXCLR
	pop	af
	ret
00102$:
;ssd1306/ssd1306.c:228: SSD1306_FBPIXSET(x,y);
	ld	c, d
	push	bc
	call	_SSD1306_FBPIXSET
	pop	af
;ssd1306/ssd1306.c:230: }
	ret
;ssd1306/ssd1306.c:232: void ssd1306_write(uint8_t row, uint8_t col, char *buf)
;	---------------------------------
; Function ssd1306_write
; ---------------------------------
_ssd1306_write::
	call	___sdcc_enter_ix
	push	af
	push	af
;ssd1306/ssd1306.c:234: uint16_t i, len = strlen(buf);
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	_mini_strlen
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
;ssd1306/ssd1306.c:236: uint8_t *data = &(ssd1306_fb[SSD1306_FBADDR(SSD1306_FONT_WIDTH*col,SSD1306_PAGES*row)]);
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c,l
	ld	b,h
	bit	7, b
	jr	Z,00110$
	ld	hl, #0x0007
	add	hl, bc
00110$:
	ld	b, #0x03
00138$:
	sra	h
	rr	l
	djnz	00138$
	xor	a, a
	rr	h
	ld	b, l
	rr	b
	rra
	ld	c, a
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, (_ssd1306_fb)
	add	hl, de
	ld	c, l
	ld	b, h
;ssd1306/ssd1306.c:238: for(i = 0; i < len; i++)
	ld	de, #0x0000
00106$:
	ld	a, e
	sub	a, -2 (ix)
	ld	a, d
	sbc	a, -1 (ix)
	jr	NC,00108$
;ssd1306/ssd1306.c:240: for (p = 0; p < SSD1306_FONT_WIDTH; p++)
	push	hl
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	pop	iy
	pop	hl
	add	iy, de
	ld	-3 (ix), #0x00
00103$:
;ssd1306/ssd1306.c:242: data[0] |= fontData[buf[i] - 0x20][p];
	ld	a, (bc)
	ld	-4 (ix), a
	ld	a, 0 (iy)
	ld	h, #0x00
	add	a, #0xe0
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_fontData
	add	hl, de
	pop	de
	ld	a, l
	add	a, -3 (ix)
	ld	l, a
	jr	NC,00139$
	inc	h
00139$:
	ld	a, (hl)
	or	a, -4 (ix)
	ld	(bc), a
;ssd1306/ssd1306.c:243: data++;
	inc	bc
;ssd1306/ssd1306.c:240: for (p = 0; p < SSD1306_FONT_WIDTH; p++)
	inc	-3 (ix)
	ld	a, -3 (ix)
	sub	a, #0x08
	jr	C,00103$
;ssd1306/ssd1306.c:238: for(i = 0; i < len; i++)
	inc	de
	jr	00106$
00108$:
;ssd1306/ssd1306.c:246: }
	ld	sp, ix
	pop	ix
	ret
;ssd1306/ssd1306.c:249: int16_t ssd1306_abs(int16_t x)
;	---------------------------------
; Function ssd1306_abs
; ---------------------------------
_ssd1306_abs::
;ssd1306/ssd1306.c:251: if( x < 0 )
	ld	hl, #2+1
	add	hl, sp
	bit	7, (hl)
	jr	Z,00102$
;ssd1306/ssd1306.c:252: return -1 * x;
	ld	hl, #2
	add	hl, sp
	xor	a, a
	sub	a, (hl)
	ld	c, a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	b, a
	ld	l, c
	ld	h, b
	ret
00102$:
;ssd1306/ssd1306.c:254: return x;
	pop	bc
	pop	hl
	push	hl
	push	bc
;ssd1306/ssd1306.c:255: }
	ret
;ssd1306/ssd1306.c:257: void ssd1306_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint8_t color)
;	---------------------------------
; Function ssd1306_line
; ---------------------------------
_ssd1306_line::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
;ssd1306/ssd1306.c:262: int16_t dx =  ssd1306_abs(x1 - x0);
	ld	a, 8 (ix)
	sub	a, 4 (ix)
	ld	c, a
	ld	a, 9 (ix)
	sbc	a, 5 (ix)
	ld	b, a
	push	bc
	call	_ssd1306_abs
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
;ssd1306/ssd1306.c:263: int16_t sx = (x0 < x1) ? 1 : -1;
	ld	a, 4 (ix)
	sub	a, 8 (ix)
	ld	a, 5 (ix)
	sbc	a, 9 (ix)
	jp	PO, 00155$
	xor	a, #0x80
00155$:
	jp	P, 00116$
	ld	bc, #0x0001
	jr	00117$
00116$:
	ld	bc, #0xffff
00117$:
	ld	-4 (ix), c
	ld	-3 (ix), b
;ssd1306/ssd1306.c:264: int16_t dy = -1 * ssd1306_abs(y1 - y0);
	ld	a, 10 (ix)
	sub	a, 6 (ix)
	ld	c, a
	ld	a, 11 (ix)
	sbc	a, 7 (ix)
	ld	b, a
	push	bc
	call	_ssd1306_abs
	pop	af
	xor	a, a
	sub	a, l
	ld	c, a
	ld	a, #0x00
	sbc	a, h
	ld	b, a
	ld	-6 (ix), c
	ld	-5 (ix), b
;ssd1306/ssd1306.c:265: int16_t sy = (y0 < y1) ? 1 : -1;
	ld	a, 6 (ix)
	sub	a, 10 (ix)
	ld	a, 7 (ix)
	sbc	a, 11 (ix)
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	P, 00118$
	ld	bc, #0x0001
	jr	00119$
00118$:
	ld	bc, #0xffff
00119$:
	inc	sp
	inc	sp
	push	bc
;ssd1306/ssd1306.c:266: int16_t err = dx + dy;
	ld	a, -2 (ix)
	add	a, -6 (ix)
	ld	c, a
	ld	a, -1 (ix)
	adc	a, -5 (ix)
	ld	b, a
;ssd1306/ssd1306.c:269: while(1)
00112$:
;ssd1306/ssd1306.c:273: SSD1306_FBPIXCLR(x0, y0);
	ld	e, 6 (ix)
	ld	d, 4 (ix)
;ssd1306/ssd1306.c:271: if(color == 0)
	ld	a, 12 (ix)
	or	a, a
	jr	NZ,00102$
;ssd1306/ssd1306.c:273: SSD1306_FBPIXCLR(x0, y0);
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_SSD1306_FBPIXCLR
	pop	af
	pop	bc
	jr	00103$
00102$:
;ssd1306/ssd1306.c:277: SSD1306_FBPIXSET(x0, y0);
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_SSD1306_FBPIXSET
	pop	af
	pop	bc
00103$:
;ssd1306/ssd1306.c:279: if ((x0 == x1) && (y0 == y1))
	ld	a, 4 (ix)
	sub	a, 8 (ix)
	jr	NZ,00105$
	ld	a, 5 (ix)
	sub	a, 9 (ix)
	jr	NZ,00105$
	ld	a, 6 (ix)
	sub	a, 10 (ix)
	jr	NZ,00159$
	ld	a, 7 (ix)
	sub	a, 11 (ix)
	jr	Z,00114$
00159$:
;ssd1306/ssd1306.c:281: break;
00105$:
;ssd1306/ssd1306.c:283: e2 = 2 * err;
	ld	l, c
	ld	h, b
	add	hl, hl
;ssd1306/ssd1306.c:284: if (e2 > dy)
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	P, 00108$
;ssd1306/ssd1306.c:286: err += dy;
	ld	a, c
	add	a, -6 (ix)
	ld	c, a
	ld	a, b
	adc	a, -5 (ix)
	ld	b, a
;ssd1306/ssd1306.c:287: x0 += sx;
	ld	a, 4 (ix)
	add	a, -4 (ix)
	ld	4 (ix), a
	ld	a, 5 (ix)
	adc	a, -3 (ix)
	ld	5 (ix), a
00108$:
;ssd1306/ssd1306.c:289: if (e2 < dx)
	ld	a, l
	sub	a, -2 (ix)
	ld	a, h
	sbc	a, -1 (ix)
	jp	PO, 00161$
	xor	a, #0x80
00161$:
	jp	P, 00112$
;ssd1306/ssd1306.c:291: err += dx;
	ld	a, c
	add	a, -2 (ix)
	ld	c, a
	ld	a, b
	adc	a, -1 (ix)
	ld	b, a
;ssd1306/ssd1306.c:292: y0 += sy;
	ld	a, 6 (ix)
	add	a, -8 (ix)
	ld	6 (ix), a
	ld	a, 7 (ix)
	adc	a, -7 (ix)
	ld	7 (ix), a
	jp	00112$
00114$:
;ssd1306/ssd1306.c:295: }
	ld	sp, ix
	pop	ix
	ret
;ssd1306/ssd1306.c:297: void ssd1306_box(int16_t x0, int16_t x1, int16_t y0, int16_t y1, uint8_t color)
;	---------------------------------
; Function ssd1306_box
; ---------------------------------
_ssd1306_box::
	call	___sdcc_enter_ix
;ssd1306/ssd1306.c:299: ssd1306_line(x0, y1, x1, y1, color);
	ld	a, 12 (ix)
	push	af
	inc	sp
	ld	l, 10 (ix)
	ld	h, 11 (ix)
	push	hl
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	l, 10 (ix)
	ld	h, 11 (ix)
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_ssd1306_line
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;ssd1306/ssd1306.c:300: ssd1306_line(x1, y1, x1, y0, color);
	ld	a, 12 (ix)
	push	af
	inc	sp
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	push	hl
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	l, 10 (ix)
	ld	h, 11 (ix)
	push	hl
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	_ssd1306_line
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;ssd1306/ssd1306.c:301: ssd1306_line(x1, y0, x0, y0, color);
	ld	a, 12 (ix)
	push	af
	inc	sp
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	push	hl
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	_ssd1306_line
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;ssd1306/ssd1306.c:302: ssd1306_line(x0, y0, x0, y1, color);
	ld	a, 12 (ix)
	push	af
	inc	sp
	ld	l, 10 (ix)
	ld	h, 11 (ix)
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_ssd1306_line
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;ssd1306/ssd1306.c:303: }
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
