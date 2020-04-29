;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module cpu
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpu_reset
	.globl _cpu_nop
	.globl _delay
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
;api/cpu.c:29: void cpu_reset()
;	---------------------------------
; Function cpu_reset
; ---------------------------------
_cpu_reset::
;api/cpu.c:33: __endasm;
	jp	0x0000
;api/cpu.c:34: }
	ret
;api/cpu.c:36: void cpu_nop()
;	---------------------------------
; Function cpu_nop
; ---------------------------------
_cpu_nop::
;api/cpu.c:40: __endasm;
	nop
;api/cpu.c:41: }
	ret
;api/cpu.c:43: void delay(uint16_t t)
;	---------------------------------
; Function delay
; ---------------------------------
_delay::
;api/cpu.c:46: for(i = 0; i < t; i++)
	ld	bc, #0x0000
00103$:
	ld	hl, #2
	add	hl, sp
	ld	a, c
	sub	a, (hl)
	ld	a, b
	inc	hl
	sbc	a, (hl)
	ret	NC
;api/cpu.c:50: __endasm;
	nop
;api/cpu.c:46: for(i = 0; i < t; i++)
	inc	bc
;api/cpu.c:52: }
	jr	00103$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
