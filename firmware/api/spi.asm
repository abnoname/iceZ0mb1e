;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module spi
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spi_config
	.globl _spi_xfer_single
	.globl _spi_xfer
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
;api/spi.c:38: void spi_config(uint8_t mode, uint8_t clock_div)
;	---------------------------------
; Function spi_config
; ---------------------------------
_spi_config::
;api/spi.c:45: spi_cmd = 0x00;
	ld	a, #0x00
	out	(_spi_cmd), a
;api/spi.c:46: spi_cfg = mode;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	out	(_spi_cfg), a
;api/spi.c:47: spi_clkdiv = clock_div/2;
	ld	iy, #3
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, #0x00
	ld	c, l
	ld	e, h
	bit	7, h
	jr	Z,00103$
	inc	hl
	ld	c, l
	ld	e, h
00103$:
	sra	e
	rr	c
	ld	a, c
	out	(_spi_clkdiv), a
;api/spi.c:48: }
	ret
;api/spi.c:50: uint8_t spi_xfer_single(uint8_t cmd)
;	---------------------------------
; Function spi_xfer_single
; ---------------------------------
_spi_xfer_single::
;api/spi.c:52: spi_dat_out = cmd;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	out	(_spi_dat_out), a
;api/spi.c:53: spi_cmd = SPI_CMD_FINISH | SPI_CMD_START;
	ld	a, #0x03
	out	(_spi_cmd), a
;api/spi.c:54: while((spi_status & SPI_STAT_REQ) == 0);
00101$:
	in	a, (_spi_status)
	rrca
	jr	NC,00101$
;api/spi.c:56: return spi_dat_in;
	in	a, (_spi_dat_in)
	ld	l, a
;api/spi.c:57: }
	ret
;api/spi.c:59: void spi_xfer(uint8_t *tx, uint8_t *rx, uint16_t tx_len, uint16_t rx_len)
;	---------------------------------
; Function spi_xfer
; ---------------------------------
_spi_xfer::
	call	___sdcc_enter_ix
	push	af
;api/spi.c:62: uint16_t len = rx_len;
	ld	c, 10 (ix)
	ld	b, 11 (ix)
;api/spi.c:64: if( tx_len >= rx_len )
	ld	a, 8 (ix)
	sub	a, c
	ld	a, 9 (ix)
	sbc	a, b
	jr	C,00125$
;api/spi.c:66: len = tx_len;
	ld	c, 8 (ix)
	ld	b, 9 (ix)
;api/spi.c:69: for(i = 0; i < len; i++)
00125$:
	ld	a, c
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-1 (ix), a
	ld	de, #0x0000
00110$:
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC,00112$
;api/spi.c:71: spi_dat_out = (i < tx_len) ? tx[i] : 0x00;
	ld	a, e
	sub	a, 8 (ix)
	ld	a, d
	sbc	a, 9 (ix)
	jr	NC,00114$
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	add	hl, de
	ld	l, (hl)
	jr	00115$
00114$:
	ld	hl, #0x0000
00115$:
	ld	a, l
	out	(_spi_dat_out), a
;api/spi.c:72: spi_cmd = (i == (len-1)) ? SPI_CMD_FINISH | SPI_CMD_START : SPI_CMD_START;
	ld	a, -2 (ix)
	sub	a, e
	jr	NZ,00116$
	ld	a, -1 (ix)
	sub	a, d
	jr	NZ,00116$
	ld	hl, #0x0003
	jr	00117$
00116$:
	ld	hl, #0x0001
00117$:
	ld	a, l
	out	(_spi_cmd), a
;api/spi.c:73: while((spi_status & SPI_STAT_REQ) == 0);
00103$:
	in	a, (_spi_status)
	rrca
	jr	NC,00103$
;api/spi.c:75: if(i < rx_len)
	ld	a, e
	sub	a, 10 (ix)
	ld	a, d
	sbc	a, 11 (ix)
	jr	NC,00111$
;api/spi.c:77: rx[i] = spi_dat_in;
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	add	hl, de
	in	a, (_spi_dat_in)
	ld	(hl), a
00111$:
;api/spi.c:69: for(i = 0; i < len; i++)
	inc	de
	jr	00110$
00112$:
;api/spi.c:80: }
	pop	af
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
