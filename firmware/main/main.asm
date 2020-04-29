;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _View_Memory
	.globl _oled_reset
	.globl _Read_SPI_25L008A
	.globl _ssd1306_box
	.globl _ssd1306_line
	.globl _ssd1306_write
	.globl _ssd1306_update
	.globl _ssd1306_clear
	.globl _ssd1306_initialize
	.globl _spi_xfer
	.globl _spi_config
	.globl _i2c_read_buf
	.globl _i2c_config
	.globl _uart_initialize
	.globl _uart_write
	.globl _getchar
	.globl _putchar
	.globl _delay
	.globl _cpu_reset
	.globl _mini_snprintf
	.globl _free
	.globl _last_usable_addr
	.globl _start
	.globl _strbuf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_uart_dm0	=	0x0018
_uart_thr	=	0x0018
_uart_rbr	=	0x0018
_uart_dm1	=	0x0019
_uart_ier	=	0x0019
_uart_iir	=	0x001a
_uart_lcr	=	0x001b
_uart_mcr	=	0x001c
_uart_lsr	=	0x001d
_uart_msr	=	0x001e
_uart_scr	=	0x001f
_port_a	=	0x0040
_port_b	=	0x0041
_port_cfg	=	0x0042
_i2c_status	=	0x0050
_i2c_clkdiv	=	0x0052
_i2c_cmd	=	0x0053
_i2c_dat_in	=	0x0054
_i2c_dat_out	=	0x0055
_spi_status	=	0x0060
_spi_cfg	=	0x0061
_spi_clkdiv	=	0x0062
_spi_cmd	=	0x0063
_spi_dat_in	=	0x0064
_spi_dat_out	=	0x0065
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_strbuf::
	.ds 80
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_start::
	.ds 1
_last_usable_addr::
	.ds 2
_free::
	.ds 1
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
;main/main.c:40: void Read_SPI_25L008A(uint8_t *buffer, uint16_t len)
;	---------------------------------
; Function Read_SPI_25L008A
; ---------------------------------
_Read_SPI_25L008A::
	push	af
	push	af
;main/main.c:42: uint8_t spi_send[4] = {0x3, 0x00, 0x00, 0x00};
	ld	hl, #0x0000
	add	hl, sp
	ex	de, hl
	ld	a, #0x03
	ld	(de), a
	ld	c, e
	ld	b, d
	inc	bc
	xor	a, a
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc), a
;main/main.c:44: spi_xfer(spi_send, buffer, 4, len);
	ld	hl, #8
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #0x0004
	push	hl
	ld	hl, #10
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	push	de
	call	_spi_xfer
	pop	af
	pop	af
	pop	af
	pop	af
;main/main.c:45: }
	pop	af
	pop	af
	ret
;main/main.c:47: void oled_reset()
;	---------------------------------
; Function oled_reset
; ---------------------------------
_oled_reset::
;main/main.c:49: port_b = 0x00;
	ld	a, #0x00
	out	(_port_b), a
;main/main.c:50: delay(50000);
	ld	hl, #0xc350
	push	hl
	call	_delay
	pop	af
;main/main.c:51: port_b = 0x01;
	ld	a, #0x01
	out	(_port_b), a
;main/main.c:52: delay(50000);
	ld	hl, #0xc350
	push	hl
	call	_delay
	pop	af
;main/main.c:53: port_b = 0x00;
	ld	a, #0x00
	out	(_port_b), a
;main/main.c:54: delay(50000);
	ld	hl, #0xc350
	push	hl
	call	_delay
	pop	af
;main/main.c:55: port_b = 0x01;
	ld	a, #0x01
	out	(_port_b), a
;main/main.c:56: delay(50000);
	ld	hl, #0xc350
	push	hl
	call	_delay
	pop	af
;main/main.c:57: }
	ret
;main/main.c:59: void View_Memory(uint8_t *mem, uint16_t len)
;	---------------------------------
; Function View_Memory
; ---------------------------------
_View_Memory::
	call	___sdcc_enter_ix
;main/main.c:63: for(x = 0; x < len; x++)
	ld	bc, #0x0000
00105$:
	ld	a, c
	sub	a, 6 (ix)
	ld	a, b
	sbc	a, 7 (ix)
	jr	NC,00103$
;main/main.c:65: if((x%16) == 0)
	ld	a, c
	and	a, #0x0f
	jr	NZ,00102$
;main/main.c:67: snprintf(strbuf, sizeof(strbuf), "\r\n%04X: ", x);
	push	bc
	push	bc
	ld	hl, #___str_0
	push	hl
	ld	hl, #0x0050
	push	hl
	ld	hl, #_strbuf
	push	hl
	call	_mini_snprintf
	pop	af
	pop	af
	pop	af
	ld	hl, #_strbuf
	ex	(sp),hl
	call	_uart_write
	pop	af
	pop	bc
00102$:
;main/main.c:70: snprintf(strbuf, sizeof(strbuf), "%02X", mem[x]);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	add	hl, bc
	ld	e, (hl)
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_1
	push	hl
	ld	hl, #0x0050
	push	hl
	ld	hl, #_strbuf
	push	hl
	call	_mini_snprintf
	pop	af
	pop	af
	pop	af
	ld	hl, #_strbuf
	ex	(sp),hl
	call	_uart_write
	pop	af
	pop	bc
;main/main.c:63: for(x = 0; x < len; x++)
	inc	bc
	jr	00105$
00103$:
;main/main.c:74: snprintf(strbuf, sizeof(strbuf), "\r\n");
	ld	hl, #___str_2
	push	hl
	ld	hl, #0x0050
	push	hl
	ld	hl, #_strbuf
	push	hl
	call	_mini_snprintf
	pop	af
	pop	af
;main/main.c:75: uart_write(strbuf);
	ld	hl, #_strbuf
	ex	(sp),hl
	call	_uart_write
	pop	af
;main/main.c:76: }
	pop	ix
	ret
___str_0:
	.db 0x0d
	.db 0x0a
	.ascii "%04X: "
	.db 0x00
___str_1:
	.ascii "%02X"
	.db 0x00
___str_2:
	.db 0x0d
	.db 0x0a
	.db 0x00
;main/main.c:78: void main ()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	call	___sdcc_enter_ix
	ld	hl, #-64
	add	hl, sp
	ld	sp, hl
;main/main.c:86: port_cfg = 0x00;
	ld	a, #0x00
	out	(_port_cfg), a
;main/main.c:89: uart_initialize(9600);
	ld	hl, #0x2580
	push	hl
	call	_uart_initialize
;main/main.c:90: spi_config(0, 12); //1MHz
	ld	h,#0x0c
	ex	(sp),hl
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_spi_config
;main/main.c:91: i2c_config(120); //100kHz
	ld	h,#0x78
	ex	(sp),hl
	inc	sp
	call	_i2c_config
	inc	sp
;main/main.c:94: i2c_read_buf(0x5C, buffer, 5);
	ld	hl, #0x0000
	add	hl, sp
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	push	bc
	ld	a, #0x5c
	push	af
	inc	sp
	call	_i2c_read_buf
	pop	af
	pop	af
	inc	sp
	pop	hl
;main/main.c:95: View_Memory(buffer, 5);
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0005
	push	de
	push	bc
	call	_View_Memory
	pop	af
	pop	af
	pop	hl
;main/main.c:96: i2c_read_buf(0x68, buffer, 20);
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0014
	push	de
	push	bc
	ld	a, #0x68
	push	af
	inc	sp
	call	_i2c_read_buf
	pop	af
	pop	af
	inc	sp
	pop	hl
;main/main.c:97: View_Memory(buffer, 20);
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0014
	push	de
	push	bc
	call	_View_Memory
	pop	af
	pop	af
	pop	hl
;main/main.c:100: Read_SPI_25L008A(buffer, 64);
	ld	c, l
	ld	b, h
	push	hl
	ld	de, #0x0040
	push	de
	push	bc
	call	_Read_SPI_25L008A
	pop	af
	pop	af
	pop	hl
;main/main.c:101: View_Memory(buffer, 64);
	ld	bc, #0x0040
	push	bc
	push	hl
	call	_View_Memory
	pop	af
	pop	af
;main/main.c:104: oled_reset();
	call	_oled_reset
;main/main.c:105: ssd1306_initialize(0x3C);
	ld	a, #0x3c
	push	af
	inc	sp
	call	_ssd1306_initialize
	inc	sp
;main/main.c:106: ssd1306_clear();
	call	_ssd1306_clear
;main/main.c:107: ssd1306_write(0, 0, "iceZ0mb1e SoC");
	ld	hl, #___str_3
	push	hl
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_ssd1306_write
	pop	af
;main/main.c:108: ssd1306_write(2, 0, "by abnoname");
	ld	hl, #___str_4
	ex	(sp),hl
	xor	a, a
	ld	d,a
	ld	e,#0x02
	push	de
	call	_ssd1306_write
	pop	af
;main/main.c:109: ssd1306_write(3, 0, "0123456789 Test");
	ld	hl, #___str_5
	ex	(sp),hl
	xor	a, a
	ld	d,a
	ld	e,#0x03
	push	de
	call	_ssd1306_write
	pop	af
;main/main.c:110: ssd1306_write(4, 0, "Framebuffer On");
	ld	hl, #___str_6
	ex	(sp),hl
	xor	a, a
	ld	d,a
	ld	e,#0x04
	push	de
	call	_ssd1306_write
	pop	af
	pop	af
;main/main.c:112: ssd1306_update();
	call	_ssd1306_update
;main/main.c:115: ssd1306_line(0, 48, 127, 63, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #0x003f
	push	hl
	ld	l, #0x7f
	push	hl
	ld	l, #0x30
	push	hl
	ld	l, #0x00
	push	hl
	call	_ssd1306_line
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;main/main.c:116: ssd1306_box(0, 127, 48, 63, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #0x003f
	push	hl
	ld	l, #0x30
	push	hl
	ld	l, #0x7f
	push	hl
	ld	l, #0x00
	push	hl
	call	_ssd1306_box
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;main/main.c:117: ssd1306_update();
	call	_ssd1306_update
;main/main.c:121: port_a = 0x02;
	ld	a, #0x02
	out	(_port_a), a
;main/main.c:124: snprintf(strbuf, sizeof(strbuf), "iceZ0mb1e SoC by abnoname\r\n");
	ld	hl, #___str_7
	push	hl
	ld	hl, #0x0050
	push	hl
	ld	hl, #_strbuf
	push	hl
	call	_mini_snprintf
	pop	af
	pop	af
;main/main.c:125: uart_write(strbuf);
	ld	hl, #_strbuf
	ex	(sp),hl
	call	_uart_write
	pop	af
;main/main.c:128: while(1)
00115$:
;main/main.c:130: uart_rx = getchar();
	call	_getchar
	ld	c, l
;main/main.c:132: switch(uart_rx)
	ld	a,c
	cp	a,#0x61
	jr	Z,00101$
	cp	a,#0x62
	jr	Z,00102$
	cp	a,#0x63
	jr	Z,00104$
	cp	a,#0x6d
	jr	Z,00105$
	cp	a,#0x72
	jr	Z,00103$
	sub	a, #0x74
	jr	Z,00106$
	jp	00112$
;main/main.c:134: case 'a':
00101$:
;main/main.c:135: port_a = getchar();
	call	_getchar
	ld	a, l
	out	(_port_a), a
;main/main.c:136: snprintf(strbuf, sizeof(strbuf), "port_a = 0x%X\n\r", port_a);
	in	a, (_port_a)
	ld	c, a
	ld	b, #0x00
	push	bc
	ld	hl, #___str_8
	push	hl
	ld	hl, #0x0050
	push	hl
	ld	hl, #_strbuf
	push	hl
	call	_mini_snprintf
	pop	af
	pop	af
	pop	af
;main/main.c:137: uart_write(strbuf);
	ld	hl, #_strbuf
	ex	(sp),hl
	call	_uart_write
	pop	af
;main/main.c:138: break;
	jr	00115$
;main/main.c:139: case 'b':
00102$:
;main/main.c:140: port_b = getchar();
	call	_getchar
	ld	a, l
	out	(_port_b), a
;main/main.c:141: snprintf(strbuf, sizeof(strbuf), "port_b = 0x%X\n\r", port_b);
	in	a, (_port_b)
	ld	c, a
	ld	b, #0x00
	push	bc
	ld	hl, #___str_9
	push	hl
	ld	hl, #0x0050
	push	hl
	ld	hl, #_strbuf
	push	hl
	call	_mini_snprintf
	pop	af
	pop	af
	pop	af
;main/main.c:142: uart_write(strbuf);
	ld	hl, #_strbuf
	ex	(sp),hl
	call	_uart_write
	pop	af
;main/main.c:143: break;
	jr	00115$
;main/main.c:144: case 'r':
00103$:
;main/main.c:145: cpu_reset();
	call	_cpu_reset
;main/main.c:146: break;
	jr	00115$
;main/main.c:147: case 'c':
00104$:
;main/main.c:148: View_Memory((uint8_t*)0x0000, 0x2000);
	ld	hl, #0x2000
	push	hl
	ld	h, #0x00
	push	hl
	call	_View_Memory
	pop	af
	pop	af
;main/main.c:149: break;
	jp	00115$
;main/main.c:150: case 'm':
00105$:
;main/main.c:151: View_Memory((uint8_t*)0x8000, 0x2000);
	ld	hl, #0x2000
	push	hl
	ld	h, #0x80
	push	hl
	call	_View_Memory
	pop	af
	pop	af
;main/main.c:152: break;
	jp	00115$
;main/main.c:153: case 't':
00106$:
;main/main.c:155: last_usable_addr = 0;
	ld	hl, #0x0000
	ld	(_last_usable_addr), hl
;main/main.c:156: addr = &free;
	ld	bc, #_free+0
;main/main.c:157: while((uint16_t)addr < 0xFFFF)
00109$:
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0xff
	ld	a, d
	sbc	a, #0xff
	jr	NC,00111$
;main/main.c:159: *(addr) = 0x55;
	ld	a, #0x55
	ld	(bc), a
;main/main.c:160: *(addr) = 0xAA;
	ld	a, #0xaa
	ld	(bc), a
;main/main.c:161: if(*(addr) != 0xAA)
	ld	a, (bc)
	sub	a, #0xaa
	jr	NZ,00111$
;main/main.c:165: last_usable_addr = (uint16_t)addr;
	ld	(_last_usable_addr), de
;main/main.c:166: addr += 1;
	inc	bc
	jr	00109$
00111$:
;main/main.c:170: );
	ld	bc, #_start+0
	ld	e, c
	ld	d, b
	ld	iy, #_last_usable_addr
	ld	a, 0 (iy)
	sub	a, e
	ld	e, a
	ld	a, 1 (iy)
	sbc	a, d
	ld	d, a
;main/main.c:169: (uint16_t)&start, last_usable_addr, last_usable_addr-(uint16_t)&start
;main/main.c:168: snprintf(strbuf, sizeof(strbuf), "RAM: start = 0x%X, last usable = 0x%X, ramsize = %u\n\r",
	push	de
	ld	hl, (_last_usable_addr)
	push	hl
	push	bc
	ld	hl, #___str_10
	push	hl
	ld	hl, #0x0050
	push	hl
	ld	hl, #_strbuf
	push	hl
	call	_mini_snprintf
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;main/main.c:171: uart_write(strbuf);
	ld	hl, #_strbuf
	push	hl
	call	_uart_write
	pop	af
;main/main.c:172: break;
	jp	00115$
;main/main.c:173: default:
00112$:
;main/main.c:174: putchar(uart_rx);
	ld	a, c
	rla
	sbc	a, a
	ld	b, a
	push	bc
	call	_putchar
	pop	af
;main/main.c:176: }
;main/main.c:178: }
	jp	00115$
___str_3:
	.ascii "iceZ0mb1e SoC"
	.db 0x00
___str_4:
	.ascii "by abnoname"
	.db 0x00
___str_5:
	.ascii "0123456789 Test"
	.db 0x00
___str_6:
	.ascii "Framebuffer On"
	.db 0x00
___str_7:
	.ascii "iceZ0mb1e SoC by abnoname"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "port_a = 0x%X"
	.db 0x0a
	.db 0x0d
	.db 0x00
___str_9:
	.ascii "port_b = 0x%X"
	.db 0x0a
	.db 0x0d
	.db 0x00
___str_10:
	.ascii "RAM: start = 0x%X, last usable = 0x%X, ramsize = %u"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__start:
	.db #0x00	;  0
__xinit__last_usable_addr:
	.dw #0x0000
__xinit__free:
	.db #0x00	;  0
	.area _CABS (ABS)
