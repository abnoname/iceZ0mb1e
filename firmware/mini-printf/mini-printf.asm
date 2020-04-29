;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module mini_printf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mini_vsnprintf
	.globl _mini_snprintf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
;mini-printf/mini-printf.c:47: mini_strlen(const char *s)
;	---------------------------------
; Function mini_strlen
; ---------------------------------
_mini_strlen:
;mini-printf/mini-printf.c:50: while (s[len] != '\0') len++;
	ld	bc, #0x0000
00101$:
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	Z,00103$
	inc	bc
	jr	00101$
00103$:
;mini-printf/mini-printf.c:51: return len;
	ld	l, c
	ld	h, b
;mini-printf/mini-printf.c:52: }
	ret
;mini-printf/mini-printf.c:55: mini_itoa(int value, unsigned int radix, unsigned int uppercase, unsigned int unsig,
;	---------------------------------
; Function mini_itoa
; ---------------------------------
_mini_itoa:
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
;mini-printf/mini-printf.c:58: char	*pbuffer = buffer;
	ld	c, 12 (ix)
	ld	b, 13 (ix)
;mini-printf/mini-printf.c:59: int	negative = 0;
	ld	de, #0x0000
;mini-printf/mini-printf.c:63: if (radix > 16)
	ld	a, #0x10
	cp	a, 6 (ix)
	ld	a, #0x00
	sbc	a, 7 (ix)
	jr	NC,00102$
;mini-printf/mini-printf.c:64: return 0;
	ld	hl, #0x0000
	jp	00119$
00102$:
;mini-printf/mini-printf.c:66: if (value < 0 && !unsig) {
	bit	7, 5 (ix)
	jr	Z,00130$
	ld	a, 11 (ix)
	or	a, 10 (ix)
	jr	NZ,00130$
;mini-printf/mini-printf.c:67: negative = 1;
	ld	de, #0x0001
;mini-printf/mini-printf.c:68: value = -value;
	xor	a, a
	sub	a, 4 (ix)
	ld	4 (ix), a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	5 (ix), a
;mini-printf/mini-printf.c:72: do {
00130$:
00106$:
;mini-printf/mini-printf.c:73: int digit = value % radix;
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	push	bc
	push	de
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	de
	pop	bc
;mini-printf/mini-printf.c:74: *(pbuffer++) = (digit < 10 ? '0' + digit : (uppercase ? 'A' : 'a') + digit - 10);
	ld	-5 (ix), c
	ld	-4 (ix), b
	inc	bc
	ld	-8 (ix), l
	ld	a, l
	sub	a, #0x0a
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00121$
	ld	a, -8 (ix)
	add	a, #0x30
	jr	00122$
00121$:
	ld	a, 9 (ix)
	or	a, 8 (ix)
	jr	Z,00123$
	ld	hl, #0x0041
	jr	00124$
00123$:
	ld	hl, #0x0061
00124$:
	ld	a, l
	add	a, -8 (ix)
	add	a, #0xf6
00122$:
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;mini-printf/mini-printf.c:75: value /= radix;
	push	bc
	push	de
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	pop	de
	pop	bc
	ld	4 (ix), l
	ld	5 (ix), h
;mini-printf/mini-printf.c:76: } while (value > 0);
	xor	a, a
	cp	a, 4 (ix)
	sbc	a, 5 (ix)
	jp	PO, 00188$
	xor	a, #0x80
00188$:
	jp	M, 00106$
;mini-printf/mini-printf.c:78: for (i = (pbuffer - buffer); i < zero_pad; i++)
	ld	a, c
	sub	a, 12 (ix)
	ld	-5 (ix), a
	ld	a, b
	sbc	a, 13 (ix)
	ld	-4 (ix), a
00114$:
;mini-printf/mini-printf.c:79: *(pbuffer++) = '0';
	ld	hl, #0x0001
	add	hl, bc
	ld	-7 (ix), l
	ld	-6 (ix), h
;mini-printf/mini-printf.c:78: for (i = (pbuffer - buffer); i < zero_pad; i++)
	ld	a, -5 (ix)
	sub	a, 14 (ix)
	ld	a, -4 (ix)
	sbc	a, 15 (ix)
	jr	NC,00138$
;mini-printf/mini-printf.c:79: *(pbuffer++) = '0';
	ld	a, #0x30
	ld	(bc), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;mini-printf/mini-printf.c:78: for (i = (pbuffer - buffer); i < zero_pad; i++)
	inc	-5 (ix)
	jr	NZ,00114$
	inc	-4 (ix)
	jr	00114$
00138$:
	ld	l, c
	ld	h, b
;mini-printf/mini-printf.c:81: if (negative)
	ld	a, d
	or	a, e
	jr	Z,00111$
;mini-printf/mini-printf.c:82: *(pbuffer++) = '-';
	ld	a, #0x2d
	ld	(bc), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
00111$:
;mini-printf/mini-printf.c:84: *(pbuffer) = '\0';
	ld	(hl), #0x00
;mini-printf/mini-printf.c:88: len = (pbuffer - buffer);
	ld	a, l
	sub	a, 12 (ix)
	ld	c, a
	ld	a, h
	sbc	a, 13 (ix)
	ld	b, a
	ld	-3 (ix), c
	ld	-2 (ix), b
;mini-printf/mini-printf.c:89: for (i = 0; i < len / 2; i++) {
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	srl	-4 (ix)
	rr	-5 (ix)
	ld	bc, #0x0000
00117$:
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	NC,00112$
;mini-printf/mini-printf.c:90: char j = buffer[i];
	ld	a, 12 (ix)
	add	a, c
	ld	-7 (ix), a
	ld	a, 13 (ix)
	adc	a, b
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
;mini-printf/mini-printf.c:91: buffer[i] = buffer[len-i-1];
	ld	a, -3 (ix)
	sub	a, c
	ld	e, a
	ld	a, -2 (ix)
	sbc	a, b
	ld	d, a
	dec	de
	ld	a, 12 (ix)
	add	a, e
	ld	e, a
	ld	a, 13 (ix)
	adc	a, d
	ld	d, a
	ld	a, (de)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
;mini-printf/mini-printf.c:92: buffer[len-i-1] = j;
	ld	a, -1 (ix)
	ld	(de), a
;mini-printf/mini-printf.c:89: for (i = 0; i < len / 2; i++) {
	inc	bc
	jr	00117$
00112$:
;mini-printf/mini-printf.c:95: return len;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
00119$:
;mini-printf/mini-printf.c:96: }
	ld	sp, ix
	pop	ix
	ret
;mini-printf/mini-printf.c:104: _putc(int ch, struct mini_buff *b)
;	---------------------------------
; Function _putc
; ---------------------------------
__putc:
	call	___sdcc_enter_ix
	push	af
;mini-printf/mini-printf.c:106: if ((unsigned int)((b->pbuffer - b->buffer) + 1) >= b->buffer_len)
	ld	e, 6 (ix)
	ld	d, 7 (ix)
	push	de
	pop	iy
	inc	iy
	inc	iy
	ld	c, 0 (iy)
	ld	b, 1 (iy)
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, c
	sub	a, l
	ld	l, a
	ld	a, b
	sbc	a, h
	ld	h, a
	inc	hl
	inc	sp
	inc	sp
	push	hl
	ex	de,hl
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -2 (ix)
	sub	a, e
	ld	a, -1 (ix)
	sbc	a, d
	jr	C,00102$
;mini-printf/mini-printf.c:107: return 0;
	ld	hl, #0x0000
	jr	00103$
00102$:
;mini-printf/mini-printf.c:108: *(b->pbuffer++) = ch;
	ld	e, c
	ld	d, b
	inc	de
	ld	0 (iy), e
	ld	1 (iy), d
	ld	a, 4 (ix)
	ld	(bc), a
;mini-printf/mini-printf.c:109: *(b->pbuffer) = '\0';
	xor	a, a
	ld	(de), a
;mini-printf/mini-printf.c:110: return 1;
	ld	hl, #0x0001
00103$:
;mini-printf/mini-printf.c:111: }
	pop	af
	pop	ix
	ret
;mini-printf/mini-printf.c:114: _puts(char *s, unsigned int len, struct mini_buff *b)
;	---------------------------------
; Function _puts
; ---------------------------------
__puts:
	call	___sdcc_enter_ix
	push	af
	push	af
;mini-printf/mini-printf.c:118: if (b->buffer_len - (b->pbuffer - b->buffer) - 1 < len)
	ld	e, 8 (ix)
	ld	d, 9 (ix)
	push	de
	pop	iy
	ld	a, 4 (iy)
	ld	-2 (ix), a
	ld	a, 5 (iy)
	ld	-1 (ix), a
	ld	hl, #0x0002
	add	hl, de
	ex	(sp), hl
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	a, -2 (ix)
	sub	a, c
	ld	c, a
	ld	a, -1 (ix)
	sbc	a, b
	ld	b, a
	dec	bc
	ld	a, c
	sub	a, 6 (ix)
	ld	a, b
	sbc	a, 7 (ix)
	jr	NC,00111$
;mini-printf/mini-printf.c:119: len = b->buffer_len - (b->pbuffer - b->buffer) - 1;
	ld	6 (ix), c
	ld	7 (ix), b
;mini-printf/mini-printf.c:122: for (i = 0; i < len; i++)
00111$:
	ld	de, #0x0000
00105$:
;mini-printf/mini-printf.c:118: if (b->buffer_len - (b->pbuffer - b->buffer) - 1 < len)
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;mini-printf/mini-printf.c:122: for (i = 0; i < len; i++)
	ld	a, e
	sub	a, 6 (ix)
	ld	a, d
	sbc	a, 7 (ix)
	jr	NC,00103$
;mini-printf/mini-printf.c:123: *(b->pbuffer++) = s[i];
	ld	hl, #0x0001
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	hl
	push	hl
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	add	hl, de
	ld	a, (hl)
	ld	(bc), a
;mini-printf/mini-printf.c:122: for (i = 0; i < len; i++)
	inc	de
	jr	00105$
00103$:
;mini-printf/mini-printf.c:124: *(b->pbuffer) = '\0';
	xor	a, a
	ld	(bc), a
;mini-printf/mini-printf.c:126: return len;
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;mini-printf/mini-printf.c:127: }
	ld	sp, ix
	pop	ix
	ret
;mini-printf/mini-printf.c:130: mini_vsnprintf(char *buffer, unsigned int buffer_len, const char *fmt, va_list va)
;	---------------------------------
; Function mini_vsnprintf
; ---------------------------------
_mini_vsnprintf::
	call	___sdcc_enter_ix
	ld	hl, #-63
	add	hl, sp
	ld	sp, hl
;mini-printf/mini-printf.c:136: b.buffer = buffer;
	ld	hl, #0x0018
	add	hl, sp
	ld	a, 4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 5 (ix)
	ld	(hl), a
;mini-printf/mini-printf.c:137: b.pbuffer = buffer;
	ld	hl, #0x0018
	add	hl, sp
	ld	-12 (ix), l
	ld	-11 (ix), h
	ld	a, -12 (ix)
	add	a, #0x02
	ld	-16 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, 4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 5 (ix)
	ld	(hl), a
;mini-printf/mini-printf.c:138: b.buffer_len = buffer_len;
	ld	a, -12 (ix)
	add	a, #0x04
	ld	-22 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-21 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;mini-printf/mini-printf.c:140: while ((ch=*(fmt++))) {
	ld	a, -12 (ix)
	ld	-31 (ix), a
	ld	a, -11 (ix)
	ld	-30 (ix), a
	ld	hl, #0x0000
	add	hl, sp
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	a, -12 (ix)
	ld	-33 (ix), a
	ld	a, -11 (ix)
	ld	-32 (ix), a
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	ld	-27 (ix), a
	ld	a, -9 (ix)
	ld	-26 (ix), a
	ld	a, -12 (ix)
	ld	-29 (ix), a
	ld	a, -11 (ix)
	ld	-28 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	ld	-6 (ix), a
	ld	a, -11 (ix)
	ld	-5 (ix), a
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, -11 (ix)
	ld	-1 (ix), a
	ld	a, -12 (ix)
	ld	-18 (ix), a
	ld	a, -11 (ix)
	ld	-17 (ix), a
00122$:
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	ld	c, (hl)
	inc	hl
	ld	8 (ix), l
	ld	9 (ix), h
	ld	-25 (ix), c
;mini-printf/mini-printf.c:141: if ((unsigned int)((b.pbuffer - b.buffer) + 1) >= b.buffer_len)
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	d, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	sub	a, d
	ld	-14 (ix), a
	ld	a, e
	sbc	a, l
	ld	-13 (ix), a
;mini-printf/mini-printf.c:140: while ((ch=*(fmt++))) {
	ld	a, c
	or	a, a
	jp	Z, 00125$
;mini-printf/mini-printf.c:141: if ((unsigned int)((b.pbuffer - b.buffer) + 1) >= b.buffer_len)
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	inc	bc
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	NC, 00125$
;mini-printf/mini-printf.c:143: if (ch!='%')
	ld	a, -25 (ix)
	sub	a, #0x25
	jr	Z,00120$
;mini-printf/mini-printf.c:144: _putc(ch, &b);
	ld	a, -31 (ix)
	ld	-20 (ix), a
	ld	a, -30 (ix)
	ld	-19 (ix), a
	ld	a, -25 (ix)
	ld	-24 (ix), a
	ld	-23 (ix), #0x00
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	push	hl
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	push	hl
	call	__putc
	pop	af
	pop	af
	jr	00122$
00120$:
;mini-printf/mini-printf.c:146: char zero_pad = 0;
	ld	e, #0x00
;mini-printf/mini-printf.c:150: ch=*(fmt++);
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	ld	c, (hl)
	inc	hl
	ld	8 (ix), l
	ld	9 (ix), h
;mini-printf/mini-printf.c:153: if (ch=='0') {
	ld	a, c
	sub	a, #0x30
	jr	NZ,00109$
;mini-printf/mini-printf.c:154: ch=*(fmt++);
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	ld	b, (hl)
	inc	hl
	ld	8 (ix), l
	ld	9 (ix), h
;mini-printf/mini-printf.c:155: if (ch == '\0')
	ld	a, b
	or	a, a
	jp	Z, 00125$
;mini-printf/mini-printf.c:157: if (ch >= '0' && ch <= '9')
	ld	a, b
	sub	a, #0x30
	jr	C,00106$
	ld	a, #0x39
	sub	a, b
	jr	C,00106$
;mini-printf/mini-printf.c:158: zero_pad = ch - '0';
	ld	a, b
	add	a, #0xd0
	ld	e, a
00106$:
;mini-printf/mini-printf.c:159: ch=*(fmt++);
	ld	l, 8 (ix)
	ld	h, 9 (ix)
	ld	c, (hl)
	inc	hl
	ld	8 (ix), l
	ld	9 (ix), h
00109$:
;mini-printf/mini-printf.c:162: switch (ch) {
	ld	a, c
	or	a, a
	jp	Z,00125$
	ld	a, c
	sub	a, #0x58
	jr	NZ, 00207$
	ld	a, #0x01
	.db	#0x20
00207$:
	xor	a, a
00208$:
	ld	b, a
;mini-printf/mini-printf.c:168: len = mini_itoa(va_arg(va, unsigned int), 10, 0, (ch=='u'), bf, zero_pad);
	ld	-24 (ix), e
	ld	-23 (ix), #0x00
	ld	l, 10 (ix)
	ld	h, 11 (ix)
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	dec	de
	dec	de
	ld	-20 (ix), e
	ld	-19 (ix), d
;mini-printf/mini-printf.c:162: switch (ch) {
	ld	a, b
	or	a, a
	jp	NZ, 00114$
	ld	a,c
	cp	a,#0x63
	jp	Z,00115$
	sub	a, #0x75
	jr	NZ, 00210$
	ld	a, #0x01
	.db	#0x20
00210$:
	xor	a, a
00211$:
	ld	-25 (ix), a
	ld	a,c
	cp	a,#0x64
	jr	Z,00112$
	sub	a, #0x73
	jp	Z,00116$
	ld	a, -25 (ix)
	or	a, a
	jr	NZ,00112$
	ld	a, c
	sub	a, #0x78
	jr	Z,00114$
	jp	00117$
;mini-printf/mini-printf.c:167: case 'd':
00112$:
;mini-printf/mini-printf.c:168: len = mini_itoa(va_arg(va, unsigned int), 10, 0, (ch=='u'), bf, zero_pad);
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	push	bc
	pop	iy
	ld	c, -25 (ix)
	ld	b, #0x00
	ld	10 (ix), l
	ld	11 (ix), h
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	push	hl
	push	iy
	push	bc
	ld	hl, #0x0000
	push	hl
	ld	l, #0x0a
	push	hl
	push	de
	call	_mini_itoa
	ld	iy, #12
	add	iy, sp
	ld	sp, iy
;mini-printf/mini-printf.c:169: _puts(bf, len, &b);
	ld	c, -33 (ix)
	ld	b, -32 (ix)
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	push	bc
	push	hl
	push	de
	call	__puts
	pop	af
	pop	af
	pop	af
;mini-printf/mini-printf.c:170: break;
	jp	00122$
;mini-printf/mini-printf.c:173: case 'X':
00114$:
;mini-printf/mini-printf.c:174: len = mini_itoa(va_arg(va, unsigned int), 16, (ch=='X'), 1, bf, zero_pad);
	ld	e, -27 (ix)
	ld	d, -26 (ix)
	push	de
	pop	iy
	ld	c, b
	ld	b, #0x00
	ld	10 (ix), l
	ld	11 (ix), h
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	push	hl
	push	iy
	ld	hl, #0x0001
	push	hl
	push	bc
	ld	l, #0x10
	push	hl
	push	de
	call	_mini_itoa
	ld	iy, #12
	add	iy, sp
	ld	sp, iy
;mini-printf/mini-printf.c:175: _puts(bf, len, &b);
	ld	c, -29 (ix)
	ld	b, -28 (ix)
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	push	bc
	push	hl
	push	de
	call	__puts
	pop	af
	pop	af
	pop	af
;mini-printf/mini-printf.c:176: break;
	jp	00122$
;mini-printf/mini-printf.c:178: case 'c' :
00115$:
;mini-printf/mini-printf.c:179: _putc((char)(va_arg(va, int)), &b);
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	10 (ix), l
	ld	11 (ix), h
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	push	bc
	push	de
	call	__putc
	pop	af
	pop	af
;mini-printf/mini-printf.c:180: break;
	jp	00122$
;mini-printf/mini-printf.c:182: case 's' :
00116$:
;mini-printf/mini-printf.c:183: ptr = va_arg(va, char*);
	ld	10 (ix), l
	ld	11 (ix), h
	ex	de,hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;mini-printf/mini-printf.c:184: _puts(ptr, mini_strlen(ptr), &b);
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	push	bc
	push	de
	push	bc
	call	_mini_strlen
	pop	af
	pop	de
	pop	bc
	push	de
	push	hl
	push	bc
	call	__puts
	pop	af
	pop	af
	pop	af
;mini-printf/mini-printf.c:185: break;
	jp	00122$
;mini-printf/mini-printf.c:187: default:
00117$:
;mini-printf/mini-printf.c:188: _putc(ch, &b);
	ld	e, -18 (ix)
	ld	d, -17 (ix)
	ld	b, #0x00
	push	de
	push	bc
	call	__putc
	pop	af
	pop	af
;mini-printf/mini-printf.c:190: }
	jp	00122$
;mini-printf/mini-printf.c:193: end:
00125$:
;mini-printf/mini-printf.c:194: return b.pbuffer - b.buffer;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;mini-printf/mini-printf.c:195: }
	ld	sp, ix
	pop	ix
	ret
;mini-printf/mini-printf.c:199: mini_snprintf(char* buffer, unsigned int buffer_len, const char *fmt, ...)
;	---------------------------------
; Function mini_snprintf
; ---------------------------------
_mini_snprintf::
;mini-printf/mini-printf.c:203: va_start(va, fmt);
	ld	hl,#0x0006+1+1
	add	hl,sp
;mini-printf/mini-printf.c:204: ret = mini_vsnprintf(buffer, buffer_len, fmt, va);
	push	hl
	ld	hl, #8
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #8
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #8
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_mini_vsnprintf
	pop	af
	pop	af
	pop	af
	pop	af
;mini-printf/mini-printf.c:207: return ret;
;mini-printf/mini-printf.c:208: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
