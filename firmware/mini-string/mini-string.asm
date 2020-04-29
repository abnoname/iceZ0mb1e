;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module mini_string
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mini_memset
	.globl _mini_strlen
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
;mini-string/mini-string.c:29: void mini_memset(uint8_t *ptr, uint8_t value, uint16_t len )
;	---------------------------------
; Function mini_memset
; ---------------------------------
_mini_memset::
;mini-string/mini-string.c:33: for(i = 0; i < len; i++)
	ld	bc, #0x0000
00103$:
	ld	hl, #5
	add	hl, sp
	ld	a, c
	sub	a, (hl)
	ld	a, b
	inc	hl
	sbc	a, (hl)
	ret	NC
;mini-string/mini-string.c:35: ptr[i] = value;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
;mini-string/mini-string.c:33: for(i = 0; i < len; i++)
	inc	bc
;mini-string/mini-string.c:37: }
	jr	00103$
;mini-string/mini-string.c:39: uint16_t mini_strlen(char *ptr)
;	---------------------------------
; Function mini_strlen
; ---------------------------------
_mini_strlen::
	call	___sdcc_enter_ix
;mini-string/mini-string.c:43: for(i = 0; i < 0xFFFF; i++)
	ld	bc, #0x0000
	ld	de, #0x0000
00104$:
;mini-string/mini-string.c:45: if( ptr[i] == 0 )
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	NZ,00105$
;mini-string/mini-string.c:47: return i;
	ld	l, c
	ld	h, b
	jr	00106$
00105$:
;mini-string/mini-string.c:43: for(i = 0; i < 0xFFFF; i++)
	inc	de
	ld	c, e
	ld	b, d
	ld	a, e
	sub	a, #0xff
	ld	a, d
	sbc	a, #0xff
	jr	C,00104$
;mini-string/mini-string.c:51: return 0;
	ld	hl, #0x0000
00106$:
;mini-string/mini-string.c:52: }
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
