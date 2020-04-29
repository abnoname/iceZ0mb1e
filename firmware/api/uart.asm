;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module uart
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _getchar
	.globl _uart_write
	.globl _uart_initialize
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
;api/uart.c:38: int putchar(int c)
;	---------------------------------
; Function putchar
; ---------------------------------
_putchar::
;api/uart.c:40: uart_thr = c;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	out	(_uart_thr), a
;api/uart.c:41: while ((uart_lsr & SBIT_THRE) == 0);
00101$:
	in	a, (_uart_lsr)
	bit	5, a
	jr	Z,00101$
;api/uart.c:42: return c;
	pop	bc
	pop	hl
	push	hl
	push	bc
;api/uart.c:43: }
	ret
;api/uart.c:49: int getchar()
;	---------------------------------
; Function getchar
; ---------------------------------
_getchar::
;api/uart.c:52: while ((uart_lsr & SBIT_DR) == 0);
00101$:
	in	a, (_uart_lsr)
	rrca
	jr	NC,00101$
;api/uart.c:53: return uart_rbr;
	in	a, (_uart_rbr)
	ld	l, a
	ld	h, #0x00
;api/uart.c:54: }
	ret
;api/uart.c:56: void uart_write(char *str)
;	---------------------------------
; Function uart_write
; ---------------------------------
_uart_write::
;api/uart.c:60: for(i = 0; str[i] != 0; i++)
	ld	bc, #0x0000
00103$:
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	a, (hl)
	or	a, a
	ret	Z
;api/uart.c:62: putchar(str[i]);
	ld	e, a
	ld	d, #0x00
	push	bc
	push	de
	call	_putchar
	pop	af
	pop	bc
;api/uart.c:60: for(i = 0; str[i] != 0; i++)
	inc	bc
;api/uart.c:64: }
	jr	00103$
;api/uart.c:66: void uart_initialize(uint16_t baud)
;	---------------------------------
; Function uart_initialize
; ---------------------------------
_uart_initialize::
	call	___sdcc_enter_ix
;api/uart.c:69: uint32_t div = (uint32_t)XTAL_FREQ / ((uint32_t)baud * (uint32_t)16);
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	hl, #0x0000
	ld	b, #0x04
00103$:
	sla	e
	rl	d
	adc	hl, hl
	djnz	00103$
	push	hl
	push	de
	ld	hl, #0x00b7
	push	hl
	ld	hl, #0x1b00
	push	hl
	call	__divulong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;api/uart.c:71: uart_lcr = 0x80; /* SET DLAB ON */
	ld	a, #0x80
	out	(_uart_lcr), a
;api/uart.c:72: uart_dm0 = (uint8_t)(div & 0xFF);
	ld	a, c
	out	(_uart_dm0), a
;api/uart.c:73: uart_dm1 = (uint8_t)(div >> 8);
	ld	a, b
	out	(_uart_dm1), a
;api/uart.c:75: uart_lcr = 0x03; /* 8 Bits, No Parity, 1 Stop Bit */
	ld	a, #0x03
	out	(_uart_lcr), a
;api/uart.c:76: uart_mcr = 0x00;
	ld	a, #0x00
	out	(_uart_mcr), a
;api/uart.c:77: }
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
