;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay
	.globl _i2c_config
	.globl _i2c_wait_req
	.globl _i2c_addr
	.globl _i2c_write
	.globl _i2c_read
	.globl _i2c_read_buf
	.globl _i2c_write_buf
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
;api/i2c.c:44: void i2c_config(uint8_t clock_div)
;	---------------------------------
; Function i2c_config
; ---------------------------------
_i2c_config::
;api/i2c.c:46: i2c_cmd = 0x00;
	ld	a, #0x00
	out	(_i2c_cmd), a
;api/i2c.c:47: i2c_clkdiv = clock_div/2;
	ld	iy, #2
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
	out	(_i2c_clkdiv), a
;api/i2c.c:48: }
	ret
;api/i2c.c:50: void i2c_wait_req()
;	---------------------------------
; Function i2c_wait_req
; ---------------------------------
_i2c_wait_req::
;api/i2c.c:52: while((i2c_status & I2C_STAT_REQ) == 0);
00101$:
	in	a, (_i2c_status)
	rrca
	jr	NC,00101$
;api/i2c.c:53: }
	ret
;api/i2c.c:55: void i2c_addr(uint8_t addr, uint8_t mode)
;	---------------------------------
; Function i2c_addr
; ---------------------------------
_i2c_addr::
;api/i2c.c:57: i2c_dat_out = (addr << 1) | mode;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	ld	hl, #3+0
	add	hl, sp
	or	a, (hl)
	out	(_i2c_dat_out), a
;api/i2c.c:58: delay(30); //HACK
	ld	hl, #0x001e
	push	hl
	call	_delay
	pop	af
;api/i2c.c:59: i2c_cmd = I2C_CMD_ACK_Z | I2C_CMD_WR | I2C_CMD_START;
	ld	a, #0x11
	out	(_i2c_cmd), a
;api/i2c.c:60: i2c_wait_req();
;api/i2c.c:61: }
	jp  _i2c_wait_req
;api/i2c.c:63: void i2c_write(uint8_t value, uint8_t mode )
;	---------------------------------
; Function i2c_write
; ---------------------------------
_i2c_write::
;api/i2c.c:65: i2c_dat_out = value;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	out	(_i2c_dat_out), a
;api/i2c.c:66: delay(30); //HACK
	ld	hl, #0x001e
	push	hl
	call	_delay
	pop	af
;api/i2c.c:67: i2c_cmd = I2C_CMD_WR | I2C_CMD_START | mode;
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	or	a, #0x01
	out	(_i2c_cmd), a
;api/i2c.c:68: i2c_wait_req();
;api/i2c.c:69: }
	jp  _i2c_wait_req
;api/i2c.c:71: uint8_t i2c_read(uint8_t mode)
;	---------------------------------
; Function i2c_read
; ---------------------------------
_i2c_read::
;api/i2c.c:73: i2c_cmd = I2C_CMD_RD | I2C_CMD_START | mode;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	or	a, #0x09
	out	(_i2c_cmd), a
;api/i2c.c:74: i2c_wait_req();
	call	_i2c_wait_req
;api/i2c.c:75: return i2c_dat_in;
	in	a, (_i2c_dat_in)
	ld	l, a
;api/i2c.c:76: }
	ret
;api/i2c.c:78: void i2c_read_buf(uint8_t addr, uint8_t *buf, uint16_t size)
;	---------------------------------
; Function i2c_read_buf
; ---------------------------------
_i2c_read_buf::
	call	___sdcc_enter_ix
	push	af
;api/i2c.c:82: i2c_addr(addr, I2C_ADDR_WR);
	xor	a, a
	push	af
	inc	sp
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_i2c_addr
;api/i2c.c:84: i2c_write(0x00, I2C_CMD_ACK_Z | I2C_CMD_STOP);
	ld	h,#0x14
	ex	(sp),hl
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_i2c_write
;api/i2c.c:86: i2c_addr(addr, I2C_ADDR_RD);
	ld	h,#0x01
	ex	(sp),hl
	inc	sp
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_i2c_addr
	pop	af
;api/i2c.c:88: for(i=0; i < size; i++)
	ld	a, 7 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, 8 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	de, #0x0000
00106$:
	ld	a, e
	sub	a, 7 (ix)
	ld	a, d
	sbc	a, 8 (ix)
	jr	NC,00108$
;api/i2c.c:92: buf[i] = i2c_read(I2C_CMD_ACK_Z | I2C_CMD_STOP);
	ld	a, 5 (ix)
	add	a, e
	ld	c, a
	ld	a, 6 (ix)
	adc	a, d
	ld	b, a
;api/i2c.c:90: if(i == (size-1))
	ld	a, -2 (ix)
	sub	a, e
	jr	NZ,00102$
	ld	a, -1 (ix)
	sub	a, d
	jr	NZ,00102$
;api/i2c.c:92: buf[i] = i2c_read(I2C_CMD_ACK_Z | I2C_CMD_STOP);
	push	bc
	push	de
	ld	a, #0x14
	push	af
	inc	sp
	call	_i2c_read
	inc	sp
	ld	a, l
	pop	de
	pop	bc
	ld	(bc), a
	jr	00107$
00102$:
;api/i2c.c:96: buf[i] = i2c_read(I2C_CMD_ACK_L);
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	call	_i2c_read
	inc	sp
	ld	a, l
	pop	de
	pop	bc
	ld	(bc), a
00107$:
;api/i2c.c:88: for(i=0; i < size; i++)
	inc	de
	jr	00106$
00108$:
;api/i2c.c:99: }
	pop	af
	pop	ix
	ret
;api/i2c.c:101: void i2c_write_buf(uint8_t addr, uint8_t* buf, uint16_t size )
;	---------------------------------
; Function i2c_write_buf
; ---------------------------------
_i2c_write_buf::
	call	___sdcc_enter_ix
	push	af
;api/i2c.c:105: i2c_addr(addr, I2C_ADDR_WR);
	xor	a, a
	push	af
	inc	sp
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_i2c_addr
	pop	af
;api/i2c.c:107: for(i=0; i < size; i++)
	ld	a, 7 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, 8 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	bc, #0x0000
00106$:
	ld	a, c
	sub	a, 7 (ix)
	ld	a, b
	sbc	a, 8 (ix)
	jr	NC,00108$
;api/i2c.c:111: i2c_write(buf[i], I2C_CMD_ACK_Z | I2C_CMD_STOP);
	ld	l, 5 (ix)
	ld	h, 6 (ix)
	add	hl, bc
	ld	d, (hl)
;api/i2c.c:109: if(i == (size-1))
	ld	a, -2 (ix)
	sub	a, c
	jr	NZ,00102$
	ld	a, -1 (ix)
	sub	a, b
	jr	NZ,00102$
;api/i2c.c:111: i2c_write(buf[i], I2C_CMD_ACK_Z | I2C_CMD_STOP);
	push	bc
	ld	a, #0x14
	push	af
	inc	sp
	push	de
	inc	sp
	call	_i2c_write
	pop	af
	pop	bc
	jr	00107$
00102$:
;api/i2c.c:115: i2c_write(buf[i], I2C_CMD_ACK_Z);
	push	bc
	ld	a, #0x10
	push	af
	inc	sp
	push	de
	inc	sp
	call	_i2c_write
	pop	af
	pop	bc
00107$:
;api/i2c.c:107: for(i=0; i < size; i++)
	inc	bc
	jr	00106$
00108$:
;api/i2c.c:118: }
	pop	af
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
