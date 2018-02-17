;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sat Feb 17 14:25:58 2018
;--------------------------------------------------------
	.module ugui
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __UG_SendObjectPostrenderEvent
	.globl __UG_SendObjectPrerenderEvent
	.globl __UG_DrawObjectFrame
	.globl __UG_HandleEvents
	.globl __UG_UpdateObjects
	.globl __UG_ProcessTouchData
	.globl __UG_DeleteObject
	.globl __UG_SearchObject
	.globl __UG_GetFreeObject
	.globl __UG_PutText
	.globl _pal_checkbox_released
	.globl _pal_checkbox_pressed
	.globl _pal_button_released
	.globl _pal_button_pressed
	.globl _pal_window
	.globl _FONT_5X8
	.globl _font_5x8
	.globl _UG_Init
	.globl _UG_SelectGUI
	.globl _UG_FontSelect
	.globl _UG_FillScreen
	.globl _UG_FillFrame
	.globl _UG_FillRoundFrame
	.globl _UG_DrawMesh
	.globl _UG_DrawFrame
	.globl _UG_DrawRoundFrame
	.globl _UG_DrawPixel
	.globl _UG_DrawCircle
	.globl _UG_FillCircle
	.globl _UG_DrawArc
	.globl _UG_DrawLine
	.globl _UG_PutString
	.globl _UG_PutChar
	.globl _UG_ConsolePutString
	.globl _UG_ConsoleSetArea
	.globl _UG_ConsoleSetForecolor
	.globl _UG_ConsoleSetBackcolor
	.globl _UG_SetForecolor
	.globl _UG_SetBackcolor
	.globl _UG_GetXDim
	.globl _UG_GetYDim
	.globl _UG_FontSetHSpace
	.globl _UG_FontSetVSpace
	.globl __UG_PutChar
	.globl _UG_DriverRegister
	.globl _UG_DriverEnable
	.globl _UG_DriverDisable
	.globl _UG_Update
	.globl _UG_WaitForUpdate
	.globl _UG_DrawBMP
	.globl _UG_TouchUpdate
	.globl _UG_WindowCreate
	.globl _UG_WindowDelete
	.globl _UG_WindowShow
	.globl _UG_WindowHide
	.globl _UG_WindowResize
	.globl _UG_WindowAlert
	.globl _UG_WindowSetForeColor
	.globl _UG_WindowSetBackColor
	.globl _UG_WindowSetTitleTextColor
	.globl _UG_WindowSetTitleColor
	.globl _UG_WindowSetTitleInactiveTextColor
	.globl _UG_WindowSetTitleInactiveColor
	.globl _UG_WindowSetTitleText
	.globl _UG_WindowSetTitleTextFont
	.globl _UG_WindowSetTitleTextHSpace
	.globl _UG_WindowSetTitleTextVSpace
	.globl _UG_WindowSetTitleTextAlignment
	.globl _UG_WindowSetTitleHeight
	.globl _UG_WindowSetXStart
	.globl _UG_WindowSetYStart
	.globl _UG_WindowSetXEnd
	.globl _UG_WindowSetYEnd
	.globl _UG_WindowSetStyle
	.globl _UG_WindowGetForeColor
	.globl _UG_WindowGetBackColor
	.globl _UG_WindowGetTitleTextColor
	.globl _UG_WindowGetTitleColor
	.globl _UG_WindowGetTitleInactiveTextColor
	.globl _UG_WindowGetTitleInactiveColor
	.globl _UG_WindowGetTitleText
	.globl _UG_WindowGetTitleTextFont
	.globl _UG_WindowGetTitleTextHSpace
	.globl _UG_WindowGetTitleTextVSpace
	.globl _UG_WindowGetTitleTextAlignment
	.globl _UG_WindowGetTitleHeight
	.globl _UG_WindowGetXStart
	.globl _UG_WindowGetYStart
	.globl _UG_WindowGetXEnd
	.globl _UG_WindowGetYEnd
	.globl _UG_WindowGetStyle
	.globl _UG_WindowGetArea
	.globl _UG_WindowGetInnerWidth
	.globl _UG_WindowGetOuterWidth
	.globl _UG_WindowGetInnerHeight
	.globl _UG_WindowGetOuterHeight
	.globl __UG_WindowDrawTitle
	.globl __UG_WindowUpdate
	.globl __UG_WindowClear
	.globl _UG_ButtonCreate
	.globl _UG_ButtonDelete
	.globl _UG_ButtonShow
	.globl _UG_ButtonHide
	.globl _UG_ButtonSetForeColor
	.globl _UG_ButtonSetBackColor
	.globl _UG_ButtonSetAlternateForeColor
	.globl _UG_ButtonSetAlternateBackColor
	.globl _UG_ButtonSetText
	.globl _UG_ButtonSetFont
	.globl _UG_ButtonSetStyle
	.globl _UG_ButtonSetHSpace
	.globl _UG_ButtonSetVSpace
	.globl _UG_ButtonSetAlignment
	.globl _UG_ButtonGetForeColor
	.globl _UG_ButtonGetBackColor
	.globl _UG_ButtonGetAlternateForeColor
	.globl _UG_ButtonGetAlternateBackColor
	.globl _UG_ButtonGetText
	.globl _UG_ButtonGetFont
	.globl _UG_ButtonGetStyle
	.globl _UG_ButtonGetHSpace
	.globl _UG_ButtonGetVSpace
	.globl _UG_ButtonGetAlignment
	.globl __UG_ButtonUpdate
	.globl _UG_CheckboxCreate
	.globl _UG_CheckboxDelete
	.globl _UG_CheckboxShow
	.globl _UG_CheckboxHide
	.globl _UG_CheckboxSetCheched
	.globl _UG_CheckboxSetForeColor
	.globl _UG_CheckboxSetBackColor
	.globl _UG_CheckboxSetAlternateForeColor
	.globl _UG_CheckboxSetAlternateBackColor
	.globl _UG_CheckboxSetText
	.globl _UG_CheckboxSetFont
	.globl _UG_CheckboxSetStyle
	.globl _UG_CheckboxSetHSpace
	.globl _UG_CheckboxSetVSpace
	.globl _UG_CheckboxSetAlignment
	.globl _UG_CheckboxGetChecked
	.globl _UG_CheckboxGetForeColor
	.globl _UG_CheckboxGetBackColor
	.globl _UG_CheckboxGetAlternateForeColor
	.globl _UG_CheckboxGetAlternateBackColor
	.globl _UG_CheckboxGetText
	.globl _UG_CheckboxGetFont
	.globl _UG_CheckboxGetStyle
	.globl _UG_CheckboxGetHSpace
	.globl _UG_CheckboxGetVSpace
	.globl _UG_CheckboxGetAlignment
	.globl __UG_CheckboxUpdate
	.globl _UG_TextboxCreate
	.globl _UG_TextboxDelete
	.globl _UG_TextboxShow
	.globl _UG_TextboxHide
	.globl _UG_TextboxSetForeColor
	.globl _UG_TextboxSetBackColor
	.globl _UG_TextboxSetText
	.globl _UG_TextboxSetFont
	.globl _UG_TextboxSetHSpace
	.globl _UG_TextboxSetVSpace
	.globl _UG_TextboxSetAlignment
	.globl _UG_TextboxGetForeColor
	.globl _UG_TextboxGetBackColor
	.globl _UG_TextboxGetText
	.globl _UG_TextboxGetFont
	.globl _UG_TextboxGetHSpace
	.globl _UG_TextboxGetVSpace
	.globl _UG_TextboxGetAlignment
	.globl __UG_TextboxUpdate
	.globl _UG_ImageCreate
	.globl _UG_ImageDelete
	.globl _UG_ImageShow
	.globl _UG_ImageHide
	.globl _UG_ImageSetBMP
	.globl __UG_ImageUpdate
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_gui:
	.ds 2
__UG_HandleEvents_msg_1_350:
	.ds 6
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
;ugui/ugui.c:4558: UG_S16 UG_Init( UG_GUI* g, void (*p)(UG_S16,UG_S16,UG_COLOR), UG_S16 x, UG_S16 y )
;	---------------------------------
; Function UG_Init
; ---------------------------------
_UG_Init::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4562: g->pset = (void(*)(UG_S16,UG_S16,UG_COLOR))p;
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	l, e
	ld	h, d
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:4563: g->x_dim = x;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,8 (ix)
	ld	(hl),a
	inc	hl
	ld	a,9 (ix)
	ld	(hl),a
;ugui/ugui.c:4564: g->y_dim = y;
	ld	hl,#0x0004
	add	hl,de
	ld	a,10 (ix)
	ld	(hl),a
	inc	hl
	ld	a,11 (ix)
	ld	(hl),a
;ugui/ugui.c:4565: g->console.x_start = 4;
	ld	hl,#0x0011
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	hl,#0x0015
	add	hl,de
	ld	c,l
	ld	b,h
	ld	(hl),#0x04
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4566: g->console.y_start = 4;
	ld	hl,#0x0017
	add	hl,de
	ld	(hl),#0x04
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4567: g->console.x_end = g->x_dim - g->console.x_start-1;
	ld	hl,#0x0019
	add	hl,de
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,8 (ix)
	sub	a, l
	ld	l,a
	ld	a,9 (ix)
	sbc	a, h
	ld	h,a
	ld	a,l
	add	a,#0xFF
	ld	-6 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-5 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
;ugui/ugui.c:4568: g->console.y_end = g->y_dim - g->console.x_start-1;
	ld	hl,#0x001B
	add	hl,de
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	l, c
	ld	h, b
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,10 (ix)
	sub	a, b
	ld	c,a
	ld	a,11 (ix)
	sbc	a, h
	ld	b,a
	dec	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:4569: g->console.x_pos = g->console.x_end;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
;ugui/ugui.c:4570: g->console.y_pos = g->console.y_end;
	ld	hl,#0x0013
	add	hl,de
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:4571: g->char_h_space = 1;
	ld	hl,#0x0032
	add	hl,de
	ld	(hl),#0x01
;ugui/ugui.c:4572: g->char_v_space = 1;
	ld	hl,#0x0033
	add	hl,de
	ld	(hl),#0x01
;ugui/ugui.c:4573: g->font.p = NULL;
	ld	hl,#0x0025
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4574: g->font.char_height = 0;
	ld	hl,#0x002A
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4575: g->font.char_width = 0;
	ld	hl,#0x0028
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4576: g->font.start_char = 0;
	ld	hl,#0x002C
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4577: g->font.end_char = 0;
	ld	hl,#0x002E
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4578: g->font.widths = NULL;
	ld	hl,#0x0030
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4580: g->desktop_color = 0x5E8BEf;
	ld	hl,#0x003C
	add	hl,de
	ld	(hl),#0xEF
	inc	hl
	ld	(hl),#0x8B
	inc	hl
	ld	(hl),#0x5E
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4585: g->fore_color = C_WHITE;
	ld	hl,#0x0034
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4586: g->back_color = C_BLACK;
	ld	hl,#0x0038
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4587: g->next_window = NULL;
	ld	hl,#0x000B
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4588: g->active_window = NULL;
	ld	hl,#0x000D
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4589: g->last_window = NULL;
	ld	hl,#0x000F
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4592: for(i=0;i<NUMBER_OF_DRIVERS;i++)
	ld	hl,#0x0041
	add	hl,de
	ex	(sp), hl
	ld	bc,#0x0000
00102$:
;ugui/ugui.c:4594: g->driver[i].driver = NULL;
	ld	a,c
	add	a, -6 (ix)
	ld	l,a
	ld	a,#0x00
	adc	a, -5 (ix)
	ld	h,a
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	dec	hl
;ugui/ugui.c:4595: g->driver[i].state = 0;
	inc	hl
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:4592: for(i=0;i<NUMBER_OF_DRIVERS;i++)
	inc	c
	inc	c
	inc	c
	inc	b
	ld	a,b
	sub	a, #0x03
	jr	C,00102$
;ugui/ugui.c:4598: gui = g;
	ld	(_gui),de
;ugui/ugui.c:4599: return 1;
	ld	hl,#0x0001
	ld	sp, ix
	pop	ix
	ret
_font_5x8:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x1B	; 27
	.db #0x11	; 17
	.db #0x1F	; 31
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x15	; 21
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x1F	; 31
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x1F	; 31
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x1F	; 31
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x0E	; 14
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x1E	; 30
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1A	; 26
	.db #0x1B	; 27
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x0E	; 14
	.db #0x1B	; 27
	.db #0x0E	; 14
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x1F	; 31
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x1C	; 28
	.db #0x1F	; 31
	.db #0x1C	; 28
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0B	; 11
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1E	; 30
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x1E	; 30
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
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
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x1F	; 31
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x15	; 21
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x0A	; 10
	.db #0x1E	; 30
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1C	; 28
	.db #0x10	; 16
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x19	; 25
	.db #0x15	; 21
	.db #0x1D	; 29
	.db #0x01	; 1
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1C	; 28
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1C	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1C	; 28
	.db #0x02	; 2
	.db #0x1A	; 26
	.db #0x12	; 18
	.db #0x1C	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1E	; 30
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x0A	; 10
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x1B	; 27
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x16	; 22
	.db #0x1A	; 26
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x0A	; 10
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x10	; 16
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x1E	; 30
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1C	; 28
	.db #0x12	; 18
	.db #0x1E	; 30
	.db #0x10	; 16
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0A	; 10
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x0A	; 10
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x1F	; 31
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0E	; 14
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x1E	; 30
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1A	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x0E	; 14
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1C	; 28
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1C	; 28
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1A	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0B	; 11
	.db #0x1C	; 28
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1C	; 28
	.db #0x0A	; 10
	.db #0x1A	; 26
	.db #0x0F	; 15
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1A	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1A	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x0C	; 12
	.db #0x1A	; 26
	.db #0x16	; 22
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x0E	; 14
	.db #0x19	; 25
	.db #0x15	; 21
	.db #0x13	; 19
	.db #0x0E	; 14
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1A	; 26
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x12	; 18
	.db #0x16	; 22
	.db #0x1A	; 26
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x1D	; 29
	.db #0x1D	; 29
	.db #0x15	; 21
	.db #0x1D	; 29
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x0A	; 10
	.db #0x1E	; 30
	.db #0x14	; 20
	.db #0x0A	; 10
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x14	; 20
	.db #0x1A	; 26
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0A	; 10
	.db #0x14	; 20
	.db #0x0A	; 10
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x0A	; 10
	.db #0x15	; 21
	.db #0x0A	; 10
	.db #0x15	; 21
	.db #0x0A	; 10
	.db #0x15	; 21
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x15	; 21
	.db #0x1F	; 31
	.db #0x15	; 21
	.db #0x1F	; 31
	.db #0x15	; 21
	.db #0x1F	; 31
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x1D	; 29
	.db #0x15	; 21
	.db #0x1D	; 29
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0x08	; 8
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0x08	; 8
	.db #0x0F	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1C	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1C	; 28
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1F	; 31
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x16	; 22
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x1F	; 31
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1A	; 26
	.db #0x02	; 2
	.db #0x1E	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x02	; 2
	.db #0x1A	; 26
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1B	; 27
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x1B	; 27
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1A	; 26
	.db #0x02	; 2
	.db #0x1A	; 26
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x1B	; 27
	.db #0x00	; 0
	.db #0x1B	; 27
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x17	; 23
	.db #0x12	; 18
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1C	; 28
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x12	; 18
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x09	; 9
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1A	; 26
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x0E	; 14
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x13	; 19
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x17	; 23
	.db #0x1A	; 26
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x0B	; 11
	.db #0x0B	; 11
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x0C	; 12
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x0A	; 10
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0C	; 12
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0C	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0A	; 10
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
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0E	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
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
_FONT_5X8:
	.dw _font_5x8
	.db #0x00	; 0
	.dw #0x0005
	.dw #0x0008
	.dw #0x0000
	.dw #0x00FF
	.dw #0x0000
;ugui/ugui.c:4602: UG_S16 UG_SelectGUI( UG_GUI* g )
;	---------------------------------
; Function UG_SelectGUI
; ---------------------------------
_UG_SelectGUI::
;ugui/ugui.c:4604: gui = g;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_gui + 0),a
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	ld	(#_gui + 1),a
;ugui/ugui.c:4605: return 1;
	ld	hl,#0x0001
	ret
;ugui/ugui.c:4608: void UG_FontSelect( const UG_FONT* font )
;	---------------------------------
; Function UG_FontSelect
; ---------------------------------
_UG_FontSelect::
;ugui/ugui.c:4611: memcpy(&(gui->font), font, sizeof(gui->font));
	ld	hl,(_gui)
	ld	bc,#0x0025
	add	hl,bc
	pop	bc
	pop	de
	push	de
	push	bc
	ex	de, hl
	ld	bc,#0x000D
	ldir
	ret
;ugui/ugui.c:4614: void UG_FillScreen( UG_COLOR c )
;	---------------------------------
; Function UG_FillScreen
; ---------------------------------
_UG_FillScreen::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:4616: UG_FillFrame(0,0,gui->x_dim-1,gui->y_dim-1,c);
	ld	de,(_gui)
	push	de
	pop	iy
	ld	c,4 (iy)
	ld	b,5 (iy)
	dec	bc
	ex	de,hl
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	ix
	ret
;ugui/ugui.c:4619: void UG_FillFrame( UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_COLOR c )
;	---------------------------------
; Function UG_FillFrame
; ---------------------------------
_UG_FillFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:4623: if ( x2 < x1 )
	ld	a,8 (ix)
	sub	a, 4 (ix)
	ld	a,9 (ix)
	sbc	a, 5 (ix)
	jp	PO, 00153$
	xor	a, #0x80
00153$:
	jp	P,00102$
;ugui/ugui.c:4625: n = x2;
	ld	h,8 (ix)
	ld	l,9 (ix)
;ugui/ugui.c:4626: x2 = x1;
	ld	a,4 (ix)
	ld	8 (ix),a
	ld	a,5 (ix)
	ld	9 (ix),a
;ugui/ugui.c:4627: x1 = n;
	ld	4 (ix),h
	ld	5 (ix),l
00102$:
;ugui/ugui.c:4629: if ( y2 < y1 )
	ld	a,10 (ix)
	sub	a, 6 (ix)
	ld	a,11 (ix)
	sbc	a, 7 (ix)
	jp	PO, 00154$
	xor	a, #0x80
00154$:
	jp	P,00104$
;ugui/ugui.c:4631: n = y2;
	ld	h,10 (ix)
	ld	l,11 (ix)
;ugui/ugui.c:4632: y2 = y1;
	ld	a,6 (ix)
	ld	10 (ix),a
	ld	a,7 (ix)
	ld	11 (ix),a
;ugui/ugui.c:4633: y1 = n;
	ld	6 (ix),h
	ld	7 (ix),l
00104$:
;ugui/ugui.c:4637: if ( gui->driver[DRIVER_FILL_FRAME].state & DRIVER_ENABLED )
	ld	bc,(_gui)
	push	bc
	pop	iy
	bit	1,70 (iy)
	jr	Z,00108$
;ugui/ugui.c:4639: if( ((UG_RESULT(*)(UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_COLOR c))gui->driver[DRIVER_FILL_FRAME].driver)(x1,y1,x2,y2,c) == UG_RESULT_OK ) return;
	push	bc
	pop	iy
	ld	e,68 (iy)
	ld	d,69 (iy)
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ex	de,hl
	call	___sdcc_call_hl
	ld	iy,#12
	add	iy,sp
	ld	sp,iy
	ld	a,l
	or	a, a
	jr	Z,00117$
00108$:
;ugui/ugui.c:4642: for( m=y1; m<=y2; m++ )
	ld	e,6 (ix)
	ld	d,7 (ix)
00115$:
	ld	a,10 (ix)
	sub	a, e
	ld	a,11 (ix)
	sbc	a, d
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	M,00117$
;ugui/ugui.c:4644: for( n=x1; n<=x2; n++ )
	ld	c,4 (ix)
	ld	b,5 (ix)
00112$:
	ld	a,8 (ix)
	sub	a, c
	ld	a,9 (ix)
	sbc	a, b
	jp	PO, 00157$
	xor	a, #0x80
00157$:
	jp	M,00116$
;ugui/ugui.c:4646: gui->pset(n,m,c);
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	push	bc
	push	de
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	push	de
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4644: for( n=x1; n<=x2; n++ )
	inc	bc
	jr	00112$
00116$:
;ugui/ugui.c:4642: for( m=y1; m<=y2; m++ )
	inc	de
	jr	00115$
00117$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4651: void UG_FillRoundFrame( UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_S16 r, UG_COLOR c )
;	---------------------------------
; Function UG_FillRoundFrame
; ---------------------------------
_UG_FillRoundFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4655: if ( x2 < x1 )
	ld	a,8 (ix)
	sub	a, 4 (ix)
	ld	a,9 (ix)
	sbc	a, 5 (ix)
	jp	PO, 00152$
	xor	a, #0x80
00152$:
	jp	P,00102$
;ugui/ugui.c:4657: x = x2;
	ld	h,8 (ix)
	ld	l,9 (ix)
;ugui/ugui.c:4658: x2 = x1;
	ld	a,4 (ix)
	ld	8 (ix),a
	ld	a,5 (ix)
	ld	9 (ix),a
;ugui/ugui.c:4659: x1 = x;
	ld	4 (ix),h
	ld	5 (ix),l
00102$:
;ugui/ugui.c:4661: if ( y2 < y1 )
	ld	a,10 (ix)
	sub	a, 6 (ix)
	ld	a,11 (ix)
	sbc	a, 7 (ix)
	jp	PO, 00153$
	xor	a, #0x80
00153$:
	jp	P,00104$
;ugui/ugui.c:4663: y = y2;
	ld	h,10 (ix)
	ld	l,11 (ix)
;ugui/ugui.c:4664: y2 = y1;
	ld	a,6 (ix)
	ld	10 (ix),a
	ld	a,7 (ix)
	ld	11 (ix),a
;ugui/ugui.c:4665: y1 = y;
	ld	6 (ix),h
	ld	7 (ix),l
00104$:
;ugui/ugui.c:4668: if ( r<=0 ) return;
	xor	a, a
	cp	a, 12 (ix)
	sbc	a, 13 (ix)
	jp	PO, 00154$
	xor	a, #0x80
00154$:
	jp	M,00106$
	jp	00117$
00106$:
;ugui/ugui.c:4670: xd = 3 - (r << 1);
	ld	l,12 (ix)
	ld	h,13 (ix)
	add	hl, hl
	ld	a,#0x03
	sub	a, l
	ld	-8 (ix),a
	ld	a,#0x00
	sbc	a, h
	ld	-7 (ix),a
;ugui/ugui.c:4672: y = r;
	ld	e,12 (ix)
	ld	d,13 (ix)
;ugui/ugui.c:4674: UG_FillFrame(x1 + r, y1, x2 - r, y2, c);
	ld	a,8 (ix)
	sub	a, e
	ld	c,a
	ld	a,9 (ix)
	sbc	a, d
	ld	b,a
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	add	iy, de
	push	de
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	push	bc
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	push	iy
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4676: while ( x <= y )
	ld	-2 (ix),e
	ld	-1 (ix),d
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
00114$:
	ld	a,-2 (ix)
	sub	a, -6 (ix)
	ld	a,-1 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00155$
	xor	a, #0x80
00155$:
	jp	M,00117$
;ugui/ugui.c:4678: if( y > 0 )
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	P,00108$
;ugui/ugui.c:4680: UG_DrawLine(x2 + x - r, y1 - y + r, x2+ x - r, y + y2 - r, c);
	ld	a,-2 (ix)
	add	a, 10 (ix)
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a, 11 (ix)
	ld	-3 (ix),a
	ld	a,-4 (ix)
	sub	a, 12 (ix)
	ld	-4 (ix),a
	ld	a,-3 (ix)
	sbc	a, 13 (ix)
	ld	-3 (ix),a
	ld	a,8 (ix)
	add	a, -6 (ix)
	ld	l,a
	ld	a,9 (ix)
	adc	a, -5 (ix)
	ld	h,a
	ld	a,l
	sub	a, 12 (ix)
	ld	e,a
	ld	a,h
	sbc	a, 13 (ix)
	ld	d,a
	ld	a,6 (ix)
	sub	a, -2 (ix)
	ld	c,a
	ld	a,7 (ix)
	sbc	a, -1 (ix)
	ld	b,a
	ld	a,12 (ix)
	add	a, c
	ld	c,a
	ld	a,13 (ix)
	adc	a, b
	ld	b,a
	push	bc
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	push	bc
	push	de
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	bc
;ugui/ugui.c:4681: UG_DrawLine(x1 - x + r, y1 - y + r, x1- x + r, y + y2 - r, c);
	ld	a,4 (ix)
	sub	a, -6 (ix)
	ld	e,a
	ld	a,5 (ix)
	sbc	a, -5 (ix)
	ld	d,a
	ld	a,12 (ix)
	add	a, e
	ld	e,a
	ld	a,13 (ix)
	adc	a, d
	ld	d,a
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	push	bc
	push	de
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00108$:
;ugui/ugui.c:4683: if( x > 0 )
	xor	a, a
	cp	a, -6 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00157$
	xor	a, #0x80
00157$:
	jp	P,00110$
;ugui/ugui.c:4685: UG_DrawLine(x1 - y + r, y1 - x + r, x1 - y + r, x + y2 - r, c);
	ld	a,-6 (ix)
	add	a, 10 (ix)
	ld	l,a
	ld	a,-5 (ix)
	adc	a, 11 (ix)
	ld	h,a
	ld	a,l
	sub	a, 12 (ix)
	ld	-4 (ix),a
	ld	a,h
	sbc	a, 13 (ix)
	ld	-3 (ix),a
	ld	a,4 (ix)
	sub	a, -2 (ix)
	ld	e,a
	ld	a,5 (ix)
	sbc	a, -1 (ix)
	ld	d,a
	ld	a,12 (ix)
	add	a, e
	ld	e,a
	ld	a,13 (ix)
	adc	a, d
	ld	d,a
	ld	a,6 (ix)
	sub	a, -6 (ix)
	ld	c,a
	ld	a,7 (ix)
	sbc	a, -5 (ix)
	ld	b,a
	ld	a,12 (ix)
	add	a, c
	ld	c,a
	ld	a,13 (ix)
	adc	a, b
	ld	b,a
	push	bc
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	push	bc
	push	de
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	bc
;ugui/ugui.c:4686: UG_DrawLine(x2 + y - r, y1 - x + r, x2 + y - r, x + y2 - r, c);
	ld	a,8 (ix)
	add	a, -2 (ix)
	ld	h,a
	ld	a,9 (ix)
	adc	a, -1 (ix)
	ld	l,a
	ld	a,h
	sub	a, 12 (ix)
	ld	e,a
	ld	a,l
	sbc	a, 13 (ix)
	ld	d,a
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	push	bc
	push	de
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00110$:
;ugui/ugui.c:4688: if ( xd < 0 )
	bit	7, -7 (ix)
	jr	Z,00112$
;ugui/ugui.c:4690: xd += (x << 2) + 6;
	pop	bc
	pop	hl
	push	hl
	push	bc
	add	hl, hl
	add	hl, hl
	ld	bc,#0x0006
	add	hl,bc
	ld	a,-8 (ix)
	add	a, l
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, h
	ld	-7 (ix),a
	jr	00113$
00112$:
;ugui/ugui.c:4694: xd += ((x - y) << 2) + 10;
	ld	a,-6 (ix)
	sub	a, -2 (ix)
	ld	l,a
	ld	a,-5 (ix)
	sbc	a, -1 (ix)
	ld	h,a
	add	hl, hl
	add	hl, hl
	ld	bc,#0x000A
	add	hl,bc
	ld	a,-8 (ix)
	add	a, l
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, h
	ld	-7 (ix),a
;ugui/ugui.c:4695: y--;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	dec	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
00113$:
;ugui/ugui.c:4697: x++;
	inc	-6 (ix)
	jp	NZ,00114$
	inc	-5 (ix)
	jp	00114$
00117$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4701: void UG_DrawMesh( UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_COLOR c )
;	---------------------------------
; Function UG_DrawMesh
; ---------------------------------
_UG_DrawMesh::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:4705: if ( x2 < x1 )
	ld	a,8 (ix)
	sub	a, 4 (ix)
	ld	a,9 (ix)
	sbc	a, 5 (ix)
	jp	PO, 00141$
	xor	a, #0x80
00141$:
	jp	P,00102$
;ugui/ugui.c:4707: n = x2;
	ld	h,8 (ix)
	ld	l,9 (ix)
;ugui/ugui.c:4708: x2 = x1;
	ld	a,4 (ix)
	ld	8 (ix),a
	ld	a,5 (ix)
	ld	9 (ix),a
;ugui/ugui.c:4709: x1 = n;
	ld	4 (ix),h
	ld	5 (ix),l
00102$:
;ugui/ugui.c:4711: if ( y2 < y1 )
	ld	a,10 (ix)
	sub	a, 6 (ix)
	ld	a,11 (ix)
	sbc	a, 7 (ix)
	jp	PO, 00142$
	xor	a, #0x80
00142$:
	jp	P,00104$
;ugui/ugui.c:4713: n = y2;
	ld	h,10 (ix)
	ld	l,11 (ix)
;ugui/ugui.c:4714: y2 = y1;
	ld	a,6 (ix)
	ld	10 (ix),a
	ld	a,7 (ix)
	ld	11 (ix),a
;ugui/ugui.c:4715: y1 = n;
	ld	6 (ix),h
	ld	7 (ix),l
00104$:
;ugui/ugui.c:4718: for( m=y1; m<=y2; m+=2 )
	ld	e,6 (ix)
	ld	d,7 (ix)
00111$:
	ld	a,10 (ix)
	sub	a, e
	ld	a,11 (ix)
	sbc	a, d
	jp	PO, 00143$
	xor	a, #0x80
00143$:
	jp	M,00113$
;ugui/ugui.c:4720: for( n=x1; n<=x2; n+=2 )
	ld	c,4 (ix)
	ld	b,5 (ix)
00108$:
	ld	a,8 (ix)
	sub	a, c
	ld	a,9 (ix)
	sbc	a, b
	jp	PO, 00144$
	xor	a, #0x80
00144$:
	jp	M,00112$
;ugui/ugui.c:4722: gui->pset(n,m,c);
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	push	bc
	push	de
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	push	de
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4720: for( n=x1; n<=x2; n+=2 )
	inc	bc
	inc	bc
	jr	00108$
00112$:
;ugui/ugui.c:4718: for( m=y1; m<=y2; m+=2 )
	inc	de
	inc	de
	jr	00111$
00113$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4727: void UG_DrawFrame( UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_COLOR c )
;	---------------------------------
; Function UG_DrawFrame
; ---------------------------------
_UG_DrawFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:4729: UG_DrawLine(x1,y1,x2,y1,c);
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4730: UG_DrawLine(x1,y2,x2,y2,c);
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4731: UG_DrawLine(x1,y1,x1,y2,c);
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4732: UG_DrawLine(x2,y1,x2,y2,c);
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	ix
	ret
;ugui/ugui.c:4735: void UG_DrawRoundFrame( UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_S16 r, UG_COLOR c )
;	---------------------------------
; Function UG_DrawRoundFrame
; ---------------------------------
_UG_DrawRoundFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;ugui/ugui.c:4738: if ( x2 < x1 )
	ld	a,8 (ix)
	sub	a, 4 (ix)
	ld	a,9 (ix)
	sbc	a, 5 (ix)
	jp	PO, 00127$
	xor	a, #0x80
00127$:
	jp	P,00102$
;ugui/ugui.c:4740: n = x2;
	ld	h,8 (ix)
	ld	l,9 (ix)
;ugui/ugui.c:4741: x2 = x1;
	ld	a,4 (ix)
	ld	8 (ix),a
	ld	a,5 (ix)
	ld	9 (ix),a
;ugui/ugui.c:4742: x1 = n;
	ld	4 (ix),h
	ld	5 (ix),l
00102$:
;ugui/ugui.c:4744: if ( y2 < y1 )
	ld	a,10 (ix)
	sub	a, 6 (ix)
	ld	a,11 (ix)
	sbc	a, 7 (ix)
	jp	PO, 00128$
	xor	a, #0x80
00128$:
	jp	P,00104$
;ugui/ugui.c:4746: n = y2;
	ld	h,10 (ix)
	ld	l,11 (ix)
;ugui/ugui.c:4747: y2 = y1;
	ld	a,6 (ix)
	ld	10 (ix),a
	ld	a,7 (ix)
	ld	11 (ix),a
;ugui/ugui.c:4748: y1 = n;
	ld	6 (ix),h
	ld	7 (ix),l
00104$:
;ugui/ugui.c:4751: if ( r > x2 ) return;
	ld	a,8 (ix)
	sub	a, 12 (ix)
	ld	a,9 (ix)
	sbc	a, 13 (ix)
	jp	PO, 00129$
	xor	a, #0x80
00129$:
	jp	P,00106$
	jp	00109$
00106$:
;ugui/ugui.c:4752: if ( r > y2 ) return;
	ld	a,10 (ix)
	sub	a, 12 (ix)
	ld	a,11 (ix)
	sbc	a, 13 (ix)
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P,00108$
	jp	00109$
00108$:
;ugui/ugui.c:4754: UG_DrawLine(x1+r, y1, x2-r, y1, c);
	ld	a,8 (ix)
	sub	a, 12 (ix)
	ld	-4 (ix),a
	ld	a,9 (ix)
	sbc	a, 13 (ix)
	ld	-3 (ix),a
	ld	a,4 (ix)
	add	a, 12 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	adc	a, 13 (ix)
	ld	-1 (ix),a
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4755: UG_DrawLine(x1+r, y2, x2-r, y2, c);
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4756: UG_DrawLine(x1, y1+r, x1, y2-r, c);
	ld	a,10 (ix)
	sub	a, 12 (ix)
	ld	e,a
	ld	a,11 (ix)
	sbc	a, 13 (ix)
	ld	d,a
	ld	a,6 (ix)
	add	a, 12 (ix)
	ld	c,a
	ld	a,7 (ix)
	adc	a, 13 (ix)
	ld	b,a
	push	bc
	push	de
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4757: UG_DrawLine(x2, y1+r, x2, y2-r, c);
	push	bc
	push	de
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	push	de
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	push	bc
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4758: UG_DrawArc(x1+r, y1+r, r, 0x0C, c);
	push	bc
	push	de
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	a,#0x0C
	push	af
	inc	sp
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_UG_DrawArc
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4759: UG_DrawArc(x2-r, y1+r, r, 0x03, c);
	push	de
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	a,#0x03
	push	af
	inc	sp
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_UG_DrawArc
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4760: UG_DrawArc(x1+r, y2-r, r, 0x30, c);
	push	de
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	a,#0x30
	push	af
	inc	sp
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	push	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_UG_DrawArc
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4761: UG_DrawArc(x2-r, y2-r, r, 0xC0, c);
	ld	l,16 (ix)
	ld	h,17 (ix)
	push	hl
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	a,#0xC0
	push	af
	inc	sp
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_UG_DrawArc
	ld	hl,#11
	add	hl,sp
	ld	sp,hl
00109$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4764: void UG_DrawPixel( UG_S16 x0, UG_S16 y0, UG_COLOR c )
;	---------------------------------
; Function UG_DrawPixel
; ---------------------------------
_UG_DrawPixel::
;ugui/ugui.c:4766: gui->pset(x0,y0,c);
	ld	hl,(_gui)
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	iy,#6
	add	iy,sp
	ld	l,2 (iy)
	ld	h,3 (iy)
	push	hl
	ld	l,0 (iy)
	ld	h,1 (iy)
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
	ld	l, d
	ld	h, e
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	ret
;ugui/ugui.c:4769: void UG_DrawCircle( UG_S16 x0, UG_S16 y0, UG_S16 r, UG_COLOR c )
;	---------------------------------
; Function UG_DrawCircle
; ---------------------------------
_UG_DrawCircle::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4773: if ( x0<0 ) return;
	bit	7, 5 (ix)
	jp	NZ,00112$
;ugui/ugui.c:4774: if ( y0<0 ) return;
	bit	7, 7 (ix)
	jp	NZ,00112$
;ugui/ugui.c:4775: if ( r<=0 ) return;
	xor	a, a
	cp	a, 8 (ix)
	sbc	a, 9 (ix)
	jp	PO, 00139$
	xor	a, #0x80
00139$:
	jp	M,00106$
	jp	00112$
00106$:
;ugui/ugui.c:4777: xd = 1 - (r << 1);
	ld	l,8 (ix)
	ld	h,9 (ix)
	add	hl, hl
	ld	a,#0x01
	sub	a, l
	ld	-8 (ix),a
	ld	a,#0x00
	sbc	a, h
	ld	-7 (ix),a
;ugui/ugui.c:4779: e = 0;
	ld	hl,#0x0000
	ex	(sp), hl
;ugui/ugui.c:4780: x = r;
	ld	e,8 (ix)
	ld	d,9 (ix)
;ugui/ugui.c:4783: while ( x >= y )
	ld	-12 (ix),#0x00
	ld	-11 (ix),#0x00
	ld	-10 (ix),#0x00
	ld	-9 (ix),#0x00
00109$:
	ld	a,e
	sub	a, -12 (ix)
	ld	a,d
	sbc	a, -11 (ix)
	jp	PO, 00140$
	xor	a, #0x80
00140$:
	jp	M,00112$
;ugui/ugui.c:4785: gui->pset(x0 - x, y0 + y, c);
	ld	hl,(_gui)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,6 (ix)
	add	a, -12 (ix)
	ld	-2 (ix),a
	ld	a,7 (ix)
	adc	a, -11 (ix)
	ld	-1 (ix),a
	ld	a,4 (ix)
	sub	a, e
	ld	-4 (ix),a
	ld	a,5 (ix)
	sbc	a, d
	ld	-3 (ix),a
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4786: gui->pset(x0 - x, y0 - y, c);
	ld	hl,(_gui)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,6 (ix)
	sub	a, -12 (ix)
	ld	-6 (ix),a
	ld	a,7 (ix)
	sbc	a, -11 (ix)
	ld	-5 (ix),a
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4787: gui->pset(x0 + x, y0 + y, c);
	ld	hl,(_gui)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,4 (ix)
	add	a, e
	ld	-4 (ix),a
	ld	a,5 (ix)
	adc	a, d
	ld	-3 (ix),a
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4788: gui->pset(x0 + x, y0 - y, c);
	ld	hl,(_gui)
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, b
	ld	h, c
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4789: gui->pset(x0 - y, y0 + x, c);
	ld	hl,(_gui)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,6 (ix)
	add	a, e
	ld	-6 (ix),a
	ld	a,7 (ix)
	adc	a, d
	ld	-5 (ix),a
	ld	a,4 (ix)
	sub	a, -12 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	sbc	a, -11 (ix)
	ld	-3 (ix),a
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4790: gui->pset(x0 - y, y0 - x, c);
	ld	hl,(_gui)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,6 (ix)
	sub	a, e
	ld	-2 (ix),a
	ld	a,7 (ix)
	sbc	a, d
	ld	-1 (ix),a
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4791: gui->pset(x0 + y, y0 + x, c);
	ld	hl,(_gui)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,4 (ix)
	add	a, -12 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	adc	a, -11 (ix)
	ld	-3 (ix),a
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4792: gui->pset(x0 + y, y0 - x, c);
	ld	hl,(_gui)
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l, b
	ld	h, c
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4794: y++;
	inc	-12 (ix)
	jr	NZ,00141$
	inc	-11 (ix)
00141$:
;ugui/ugui.c:4795: e += yd;
	ld	a,-14 (ix)
	add	a, -10 (ix)
	ld	-14 (ix),a
	ld	a,-13 (ix)
	adc	a, -9 (ix)
	ld	-13 (ix),a
;ugui/ugui.c:4796: yd += 2;
	ld	a,-10 (ix)
	add	a, #0x02
	ld	-10 (ix),a
	ld	a,-9 (ix)
	adc	a, #0x00
	ld	-9 (ix),a
;ugui/ugui.c:4797: if ( ((e << 1) + xd) > 0 )
	pop	hl
	push	hl
	add	hl, hl
	ld	c,-8 (ix)
	ld	b,-7 (ix)
	add	hl,bc
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	PO, 00142$
	xor	a, #0x80
00142$:
	jp	P,00109$
;ugui/ugui.c:4799: x--;
	dec	de
;ugui/ugui.c:4800: e += xd;
	ld	a,-14 (ix)
	add	a, -8 (ix)
	ld	-14 (ix),a
	ld	a,-13 (ix)
	adc	a, -7 (ix)
	ld	-13 (ix),a
;ugui/ugui.c:4801: xd += 2;
	ld	a,-8 (ix)
	add	a, #0x02
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-7 (ix),a
	jp	00109$
00112$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4806: void UG_FillCircle( UG_S16 x0, UG_S16 y0, UG_S16 r, UG_COLOR c )
;	---------------------------------
; Function UG_FillCircle
; ---------------------------------
_UG_FillCircle::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4810: if ( x0<0 ) return;
	bit	7, 5 (ix)
	jp	NZ,00117$
;ugui/ugui.c:4811: if ( y0<0 ) return;
	bit	7, 7 (ix)
	jp	NZ,00117$
;ugui/ugui.c:4812: if ( r<=0 ) return;
	xor	a, a
	cp	a, 8 (ix)
	sbc	a, 9 (ix)
	jp	PO, 00152$
	xor	a, #0x80
00152$:
	jp	M,00106$
	jp	00117$
00106$:
;ugui/ugui.c:4814: xd = 3 - (r << 1);
	ld	l,8 (ix)
	ld	h,9 (ix)
	add	hl, hl
	ld	a,#0x03
	sub	a, l
	ld	-8 (ix),a
	ld	a,#0x00
	sbc	a, h
	ld	-7 (ix),a
;ugui/ugui.c:4816: y = r;
	ld	a,8 (ix)
	ld	-2 (ix),a
	ld	a,9 (ix)
	ld	-1 (ix),a
;ugui/ugui.c:4818: while ( x <= y )
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
00114$:
	ld	a,-2 (ix)
	sub	a, -6 (ix)
	ld	a,-1 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00153$
	xor	a, #0x80
00153$:
	jp	M,00116$
;ugui/ugui.c:4820: if( y > 0 )
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00154$
	xor	a, #0x80
00154$:
	jp	P,00108$
;ugui/ugui.c:4822: UG_DrawLine(x0 - x, y0 - y,x0 - x, y0 + y, c);
	ld	a,6 (ix)
	add	a, -2 (ix)
	ld	e,a
	ld	a,7 (ix)
	adc	a, -1 (ix)
	ld	d,a
	ld	a,4 (ix)
	sub	a, -6 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	sbc	a, -5 (ix)
	ld	-3 (ix),a
	ld	a,6 (ix)
	sub	a, -2 (ix)
	ld	c,a
	ld	a,7 (ix)
	sbc	a, -1 (ix)
	ld	b,a
	push	bc
	push	de
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4823: UG_DrawLine(x0 + x, y0 - y,x0 + x, y0 + y, c);
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	bc
	ld	c,-6 (ix)
	ld	b,-5 (ix)
	add	iy, bc
	pop	bc
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	push	de
	push	iy
	push	bc
	push	iy
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00108$:
;ugui/ugui.c:4825: if( x > 0 )
	xor	a, a
	cp	a, -6 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00155$
	xor	a, #0x80
00155$:
	jp	P,00110$
;ugui/ugui.c:4827: UG_DrawLine(x0 - y, y0 - x,x0 - y, y0 + x, c);
	ld	a,6 (ix)
	add	a, -6 (ix)
	ld	c,a
	ld	a,7 (ix)
	adc	a, -5 (ix)
	ld	b,a
	ld	a,4 (ix)
	sub	a, -2 (ix)
	ld	e,a
	ld	a,5 (ix)
	sbc	a, -1 (ix)
	ld	d,a
	ld	a,6 (ix)
	sub	a, -6 (ix)
	ld	-4 (ix),a
	ld	a,7 (ix)
	sbc	a, -5 (ix)
	ld	-3 (ix),a
	push	bc
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	push	bc
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	bc
;ugui/ugui.c:4828: UG_DrawLine(x0 + y, y0 - x,x0 + y, y0 + x, c);
	ld	a,4 (ix)
	add	a, -2 (ix)
	ld	e,a
	ld	a,5 (ix)
	adc	a, -1 (ix)
	ld	d,a
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	push	bc
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00110$:
;ugui/ugui.c:4830: if ( xd < 0 )
	bit	7, -7 (ix)
	jr	Z,00112$
;ugui/ugui.c:4832: xd += (x << 2) + 6;
	pop	bc
	pop	hl
	push	hl
	push	bc
	add	hl, hl
	add	hl, hl
	ld	bc,#0x0006
	add	hl,bc
	ld	a,-8 (ix)
	add	a, l
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, h
	ld	-7 (ix),a
	jr	00113$
00112$:
;ugui/ugui.c:4836: xd += ((x - y) << 2) + 10;
	ld	a,-6 (ix)
	sub	a, -2 (ix)
	ld	l,a
	ld	a,-5 (ix)
	sbc	a, -1 (ix)
	ld	h,a
	add	hl, hl
	add	hl, hl
	ld	bc,#0x000A
	add	hl,bc
	ld	a,-8 (ix)
	add	a, l
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, h
	ld	-7 (ix),a
;ugui/ugui.c:4837: y--;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	dec	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
00113$:
;ugui/ugui.c:4839: x++;
	inc	-6 (ix)
	jp	NZ,00114$
	inc	-5 (ix)
	jp	00114$
00116$:
;ugui/ugui.c:4841: UG_DrawCircle(x0, y0, r,c);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawCircle
	ld	hl,#10
	add	hl,sp
	ld	sp,hl
00117$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4844: void UG_DrawArc( UG_S16 x0, UG_S16 y0, UG_S16 r, UG_U8 s, UG_COLOR c )
;	---------------------------------
; Function UG_DrawArc
; ---------------------------------
_UG_DrawArc::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-26
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4848: if ( x0<0 ) return;
	bit	7, 5 (ix)
	jp	NZ,00128$
;ugui/ugui.c:4849: if ( y0<0 ) return;
	bit	7, 7 (ix)
	jp	NZ,00128$
;ugui/ugui.c:4850: if ( r<=0 ) return;
	xor	a, a
	cp	a, 8 (ix)
	sbc	a, 9 (ix)
	jp	PO, 00187$
	xor	a, #0x80
00187$:
	jp	M,00106$
	jp	00128$
00106$:
;ugui/ugui.c:4852: xd = 1 - (r << 1);
	ld	l,8 (ix)
	ld	h,9 (ix)
	add	hl, hl
	ld	a,#0x01
	sub	a, l
	ld	-18 (ix),a
	ld	a,#0x00
	sbc	a, h
	ld	-17 (ix),a
;ugui/ugui.c:4854: e = 0;
	ld	bc,#0x0000
;ugui/ugui.c:4855: x = r;
	ld	e,8 (ix)
	ld	d,9 (ix)
;ugui/ugui.c:4858: while ( x >= y )
	ld	a,10 (ix)
	and	a, #0x01
	ld	-9 (ix),a
	ld	a,10 (ix)
	and	a, #0x02
	ld	-19 (ix),a
	ld	a,10 (ix)
	and	a, #0x04
	ld	-8 (ix),a
	ld	a,10 (ix)
	and	a, #0x08
	ld	-22 (ix),a
	ld	a,10 (ix)
	and	a, #0x10
	ld	-16 (ix),a
	ld	a,10 (ix)
	and	a, #0x20
	ld	-13 (ix),a
	ld	a,10 (ix)
	and	a, #0x40
	ld	-12 (ix),a
	ld	a,10 (ix)
	and	a, #0x80
	ld	-1 (ix),a
	ld	-24 (ix),#0x00
	ld	-23 (ix),#0x00
	ld	hl,#0x0000
	ex	(sp), hl
00125$:
	ld	a,e
	sub	a, -24 (ix)
	ld	a,d
	sbc	a, -23 (ix)
	jp	PO, 00188$
	xor	a, #0x80
00188$:
	jp	M,00128$
;ugui/ugui.c:4861: if ( s & 0x01 ) gui->pset(x0 + x, y0 - y, c);
	ld	a,6 (ix)
	sub	a, -24 (ix)
	ld	-11 (ix),a
	ld	a,7 (ix)
	sbc	a, -23 (ix)
	ld	-10 (ix),a
	ld	a,4 (ix)
	add	a, e
	ld	-15 (ix),a
	ld	a,5 (ix)
	adc	a, d
	ld	-14 (ix),a
	ld	a,-9 (ix)
	or	a, a
	jr	Z,00108$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-7 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-6 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00108$:
;ugui/ugui.c:4862: if ( s & 0x02 ) gui->pset(x0 + y, y0 - x, c);
	ld	a,6 (ix)
	sub	a, e
	ld	-7 (ix),a
	ld	a,7 (ix)
	sbc	a, d
	ld	-6 (ix),a
	ld	a,4 (ix)
	add	a, -24 (ix)
	ld	-21 (ix),a
	ld	a,5 (ix)
	adc	a, -23 (ix)
	ld	-20 (ix),a
	ld	a,-19 (ix)
	or	a, a
	jr	Z,00110$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-5 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00110$:
;ugui/ugui.c:4865: if ( s & 0x04 ) gui->pset(x0 - y, y0 - x, c);
	ld	a,4 (ix)
	sub	a, -24 (ix)
	ld	-5 (ix),a
	ld	a,5 (ix)
	sbc	a, -23 (ix)
	ld	-4 (ix),a
	ld	a,-8 (ix)
	or	a, a
	jr	Z,00112$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-3 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00112$:
;ugui/ugui.c:4866: if ( s & 0x08 ) gui->pset(x0 - x, y0 - y, c);
	ld	a,4 (ix)
	sub	a, e
	ld	-3 (ix),a
	ld	a,5 (ix)
	sbc	a, d
	ld	-2 (ix),a
	ld	a,-22 (ix)
	or	a, a
	jr	Z,00114$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-7 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-6 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00114$:
;ugui/ugui.c:4869: if ( s & 0x10 ) gui->pset(x0 - x, y0 + y, c);
	ld	a,6 (ix)
	add	a, -24 (ix)
	ld	-7 (ix),a
	ld	a,7 (ix)
	adc	a, -23 (ix)
	ld	-6 (ix),a
	ld	a,-16 (ix)
	or	a, a
	jr	Z,00116$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-11 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-10 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00116$:
;ugui/ugui.c:4870: if ( s & 0x20 ) gui->pset(x0 - y, y0 + x, c);
	ld	a,6 (ix)
	add	a, e
	ld	-3 (ix),a
	ld	a,7 (ix)
	adc	a, d
	ld	-2 (ix),a
	ld	a,-13 (ix)
	or	a, a
	jr	Z,00118$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-11 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-10 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00118$:
;ugui/ugui.c:4873: if ( s & 0x40 ) gui->pset(x0 + y, y0 + x, c);
	ld	a,-12 (ix)
	or	a, a
	jr	Z,00120$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-5 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00120$:
;ugui/ugui.c:4874: if ( s & 0x80 ) gui->pset(x0 + x, y0 + y, c);
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00122$
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-3 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	push	bc
	push	de
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
00122$:
;ugui/ugui.c:4876: y++;
	inc	-24 (ix)
	jr	NZ,00189$
	inc	-23 (ix)
00189$:
;ugui/ugui.c:4877: e += yd;
	ld	a,c
	add	a, -26 (ix)
	ld	c,a
	ld	a,b
	adc	a, -25 (ix)
	ld	b,a
;ugui/ugui.c:4878: yd += 2;
	ld	a,-26 (ix)
	add	a, #0x02
	ld	-26 (ix),a
	ld	a,-25 (ix)
	adc	a, #0x00
	ld	-25 (ix),a
;ugui/ugui.c:4879: if ( ((e << 1) + xd) > 0 )
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	a,l
	add	a, -18 (ix)
	ld	l,a
	ld	a,h
	adc	a, -17 (ix)
	ld	h,a
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	PO, 00190$
	xor	a, #0x80
00190$:
	jp	P,00125$
;ugui/ugui.c:4881: x--;
	dec	de
;ugui/ugui.c:4882: e += xd;
	ld	a,c
	add	a, -18 (ix)
	ld	c,a
	ld	a,b
	adc	a, -17 (ix)
	ld	b,a
;ugui/ugui.c:4883: xd += 2;
	ld	a,-18 (ix)
	add	a, #0x02
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, #0x00
	ld	-17 (ix),a
	jp	00125$
00128$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4888: void UG_DrawLine( UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_COLOR c )
;	---------------------------------
; Function UG_DrawLine
; ---------------------------------
_UG_DrawLine::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-17
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4893: if ( gui->driver[DRIVER_DRAW_LINE].state & DRIVER_ENABLED )
	ld	hl,(_gui)
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	de, #0x0043
	add	hl, de
	bit	1,(hl)
	jr	Z,00104$
;ugui/ugui.c:4895: if( ((UG_RESULT(*)(UG_S16 x1, UG_S16 y1, UG_S16 x2, UG_S16 y2, UG_COLOR c))gui->driver[DRIVER_DRAW_LINE].driver)(x1,y1,x2,y2,c) == UG_RESULT_OK ) return;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	de, #0x0041
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ex	de,hl
	call	___sdcc_call_hl
	ld	iy,#12
	add	iy,sp
	ld	sp,iy
	ld	a,l
	or	a, a
	jp	Z,00120$
00104$:
;ugui/ugui.c:4898: dx = x2 - x1;
	ld	a,8 (ix)
	sub	a, 4 (ix)
	ld	e,a
	ld	a,9 (ix)
	sbc	a, 5 (ix)
	ld	d,a
;ugui/ugui.c:4899: dy = y2 - y1;
	ld	a,10 (ix)
	sub	a, 6 (ix)
	ld	c,a
	ld	a,11 (ix)
	sbc	a, 7 (ix)
	ld	b,a
;ugui/ugui.c:4900: dxabs = (dx>0)?dx:-dx;
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00185$
	xor	a, #0x80
00185$:
	rlca
	and	a,#0x01
	ld	-2 (ix), a
	or	a, a
	jr	NZ,00123$
	xor	a, a
	sub	a, e
	ld	e,a
	ld	a, #0x00
	sbc	a, d
	ld	d,a
00123$:
;ugui/ugui.c:4901: dyabs = (dy>0)?dy:-dy;
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00186$
	xor	a, #0x80
00186$:
	rlca
	and	a,#0x01
	ld	-3 (ix), a
	or	a, a
	jr	NZ,00125$
	xor	a, a
	sub	a, c
	ld	c,a
	ld	a, #0x00
	sbc	a, b
	ld	b,a
00125$:
	ld	-11 (ix),c
	ld	-10 (ix),b
;ugui/ugui.c:4902: sgndx = (dx>0)?1:-1;
	ld	a,-2 (ix)
	or	a, a
	jr	Z,00126$
	ld	a,#0x01
	jr	00127$
00126$:
	ld	a,#0xFF
00127$:
	ld	-5 (ix),a
	rla
	sbc	a, a
	ld	-4 (ix),a
;ugui/ugui.c:4903: sgndy = (dy>0)?1:-1;
	ld	a,-3 (ix)
	or	a, a
	jr	Z,00128$
	ld	a,#0x01
	jr	00129$
00128$:
	ld	a,#0xFF
00129$:
	ld	-15 (ix),a
	rla
	sbc	a, a
	ld	-14 (ix),a
;ugui/ugui.c:4904: x = dyabs >> 1;
	ld	c,-11 (ix)
	ld	b,-10 (ix)
	sra	b
	rr	c
;ugui/ugui.c:4905: y = dxabs >> 1;
	ld	-7 (ix),e
	ld	-6 (ix),d
	sra	-6 (ix)
	rr	-7 (ix)
;ugui/ugui.c:4906: drawx = x1;
	ld	a,4 (ix)
	ld	-9 (ix),a
	ld	a,5 (ix)
	ld	-8 (ix),a
;ugui/ugui.c:4907: drawy = y1;
	ld	a,6 (ix)
	ld	-13 (ix),a
	ld	a,7 (ix)
	ld	-12 (ix),a
;ugui/ugui.c:4909: gui->pset(drawx, drawy,c);
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	push	bc
	push	de
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4911: if( dxabs >= dyabs )
	ld	a,e
	sub	a, -11 (ix)
	ld	a,d
	sbc	a, -10 (ix)
	jp	PO, 00187$
	xor	a, #0x80
00187$:
	jp	M,00142$
;ugui/ugui.c:4913: for( n=0; n<dxabs; n++ )
	ld	bc,#0x0000
00115$:
	ld	a,c
	sub	a, e
	ld	a,b
	sbc	a, d
	jp	PO, 00188$
	xor	a, #0x80
00188$:
	jp	P,00120$
;ugui/ugui.c:4915: y += dyabs;
	ld	a,-7 (ix)
	add	a, -11 (ix)
	ld	-7 (ix),a
	ld	a,-6 (ix)
	adc	a, -10 (ix)
	ld	-6 (ix),a
;ugui/ugui.c:4916: if( y >= dxabs )
	ld	a,-7 (ix)
	sub	a, e
	ld	a,-6 (ix)
	sbc	a, d
	jp	PO, 00189$
	xor	a, #0x80
00189$:
	jp	M,00106$
;ugui/ugui.c:4918: y -= dxabs;
	ld	a,-7 (ix)
	sub	a, e
	ld	-7 (ix),a
	ld	a,-6 (ix)
	sbc	a, d
	ld	-6 (ix),a
;ugui/ugui.c:4919: drawy += sgndy;
	ld	a,-13 (ix)
	add	a, -15 (ix)
	ld	-13 (ix),a
	ld	a,-12 (ix)
	adc	a, -14 (ix)
	ld	-12 (ix),a
00106$:
;ugui/ugui.c:4921: drawx += sgndx;
	ld	a,-9 (ix)
	add	a, -5 (ix)
	ld	-9 (ix),a
	ld	a,-8 (ix)
	adc	a, -4 (ix)
	ld	-8 (ix),a
;ugui/ugui.c:4922: gui->pset(drawx, drawy,c);
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	push	bc
	push	de
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4913: for( n=0; n<dxabs; n++ )
	inc	bc
	jp	00115$
;ugui/ugui.c:4927: for( n=0; n<dyabs; n++ )
00142$:
	ld	hl,#0x0000
	ex	(sp), hl
00118$:
	ld	a,-17 (ix)
	sub	a, -11 (ix)
	ld	a,-16 (ix)
	sbc	a, -10 (ix)
	jp	PO, 00190$
	xor	a, #0x80
00190$:
	jp	P,00120$
;ugui/ugui.c:4929: x += dxabs;
	ld	a,c
	add	a, e
	ld	c,a
	ld	a,b
	adc	a, d
	ld	b,a
;ugui/ugui.c:4930: if( x >= dyabs )
	ld	a,c
	sub	a, -11 (ix)
	ld	a,b
	sbc	a, -10 (ix)
	jp	PO, 00191$
	xor	a, #0x80
00191$:
	jp	M,00109$
;ugui/ugui.c:4932: x -= dyabs;
	ld	a,c
	sub	a, -11 (ix)
	ld	c,a
	ld	a,b
	sbc	a, -10 (ix)
	ld	b,a
;ugui/ugui.c:4933: drawx += sgndx;
	ld	a,-9 (ix)
	add	a, -5 (ix)
	ld	-9 (ix),a
	ld	a,-8 (ix)
	adc	a, -4 (ix)
	ld	-8 (ix),a
00109$:
;ugui/ugui.c:4935: drawy += sgndy;
	ld	a,-13 (ix)
	add	a, -15 (ix)
	ld	-13 (ix),a
	ld	a,-12 (ix)
	adc	a, -14 (ix)
	ld	-12 (ix),a
;ugui/ugui.c:4936: gui->pset(drawx, drawy,c);
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	push	bc
	push	de
	ld	l,14 (ix)
	ld	h,15 (ix)
	push	hl
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:4927: for( n=0; n<dyabs; n++ )
	inc	-17 (ix)
	jp	NZ,00118$
	inc	-16 (ix)
	jp	00118$
00120$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4941: void UG_PutString( UG_S16 x, UG_S16 y, char* str )
;	---------------------------------
; Function UG_PutString
; ---------------------------------
_UG_PutString::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-22
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4947: xp=x;
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
	ld	a,-2 (ix)
	ld	-20 (ix),a
	ld	a,-1 (ix)
	ld	-19 (ix),a
;ugui/ugui.c:4948: yp=y;
	ld	a,6 (ix)
	ld	-22 (ix),a
	ld	a,7 (ix)
	ld	-21 (ix),a
;ugui/ugui.c:4950: while ( *str != 0 )
	ld	e,8 (ix)
	ld	d,9 (ix)
00108$:
	ld	a,(de)
	ld	c,a
	or	a, a
	jp	Z,00111$
;ugui/ugui.c:4952: chr = *str++;
	inc	de
;ugui/ugui.c:4953: if (chr < gui->font.start_char || chr > gui->font.end_char) continue;
	ld	hl,(_gui)
	ld	-18 (ix),l
	ld	-17 (ix),h
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,44 (iy)
	ld	-4 (ix),a
	ld	a,45 (iy)
	ld	-3 (ix),a
	ld	-14 (ix),c
	ld	a,c
	rla
	sbc	a, a
	ld	-13 (ix),a
	ld	a,-14 (ix)
	sub	a, -4 (ix)
	ld	a,-13 (ix)
	sbc	a, -3 (ix)
	jr	C,00108$
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	bc
	ld	bc, #0x002E
	add	hl, bc
	pop	bc
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,b
	sub	a, -14 (ix)
	ld	a,h
	sbc	a, -13 (ix)
	jr	C,00108$
;ugui/ugui.c:4956: xp = gui->x_dim;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-14 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-13 (ix),a
;ugui/ugui.c:4954: if ( chr == '\n' )
	ld	a,c
	sub	a, #0x0A
	jr	NZ,00105$
;ugui/ugui.c:4956: xp = gui->x_dim;
	ld	a,-14 (ix)
	ld	-20 (ix),a
	ld	a,-13 (ix)
	ld	-19 (ix),a
;ugui/ugui.c:4957: continue;
	jr	00108$
00105$:
;ugui/ugui.c:4959: cw = gui->font.widths ? gui->font.widths[chr - gui->font.start_char] : gui->font.char_width;
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,48 (iy)
	ld	-16 (ix),a
	ld	a,49 (iy)
	ld	-15 (ix), a
	or	a,-16 (ix)
	jr	Z,00113$
	ld	a,c
	ld	h,a
	rla
	sbc	a, a
	ld	l,a
	ld	a,h
	sub	a, -4 (ix)
	ld	h,a
	ld	a,l
	sbc	a, -3 (ix)
	ld	b,a
	ld	a,h
	add	a, -16 (ix)
	ld	l,a
	ld	a,b
	adc	a, -15 (ix)
	ld	h,a
	ld	l,(hl)
	jr	00114$
00113$:
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	bc
	ld	bc, #0x0028
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
00114$:
;ugui/ugui.c:4961: if ( xp + cw > gui->x_dim - 1 )
	ld	-16 (ix),l
	ld	-15 (ix),#0x00
	ld	a,-20 (ix)
	add	a, -16 (ix)
	ld	-4 (ix),a
	ld	a,-19 (ix)
	adc	a, -15 (ix)
	ld	-3 (ix),a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	dec	hl
	ld	a,l
	sub	a, -4 (ix)
	ld	a,h
	sbc	a, -3 (ix)
	jp	PO, 00146$
	xor	a, #0x80
00146$:
	jp	P,00107$
;ugui/ugui.c:4963: xp = x;
	ld	a,-2 (ix)
	ld	-20 (ix),a
	ld	a,-1 (ix)
	ld	-19 (ix),a
;ugui/ugui.c:4964: yp += gui->font.char_height+gui->char_v_space;
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,42 (iy)
	ld	-14 (ix),a
	ld	a,43 (iy)
	ld	-13 (ix),a
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	bc
	ld	bc, #0x0033
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	h,a
	rla
	sbc	a, a
	ld	l,a
	ld	a,-14 (ix)
	add	a, h
	ld	h,a
	ld	a,-13 (ix)
	adc	a, l
	ld	l,a
	ld	a,-22 (ix)
	add	a, h
	ld	-22 (ix),a
	ld	a,-21 (ix)
	adc	a, l
	ld	-21 (ix),a
00107$:
;ugui/ugui.c:4967: UG_PutChar(chr, xp, yp, gui->fore_color, gui->back_color);
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,56 (iy)
	ld	-8 (ix),a
	ld	a,57 (iy)
	ld	-7 (ix),a
	ld	a,58 (iy)
	ld	-6 (ix),a
	ld	a,59 (iy)
	ld	-5 (ix),a
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,52 (iy)
	ld	-12 (ix),a
	ld	a,53 (iy)
	ld	-11 (ix),a
	ld	a,54 (iy)
	ld	-10 (ix),a
	ld	a,55 (iy)
	ld	-9 (ix),a
	push	de
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	a,c
	push	af
	inc	sp
	call	_UG_PutChar
	ld	hl,#13
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:4969: xp += cw + gui->char_h_space;
	ld	iy,(_gui)
	ld	a,50 (iy)
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	ld	c,-16 (ix)
	ld	b,-15 (ix)
	add	hl,bc
	ld	a,-20 (ix)
	add	a, l
	ld	-20 (ix),a
	ld	a,-19 (ix)
	adc	a, h
	ld	-19 (ix),a
	jp	00108$
00111$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:4973: void UG_PutChar( char chr, UG_S16 x, UG_S16 y, UG_COLOR fc, UG_COLOR bc )
;	---------------------------------
; Function UG_PutChar
; ---------------------------------
_UG_PutChar::
;ugui/ugui.c:4975: _UG_PutChar(chr,x,y,fc,bc,&gui->font);
	ld	hl,(_gui)
	ld	bc,#0x0025
	add	hl,bc
	push	hl
	ld	iy,#13
	add	iy,sp
	ld	l,2 (iy)
	ld	h,3 (iy)
	push	hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	ld	iy,#13
	add	iy,sp
	ld	l,2 (iy)
	ld	h,3 (iy)
	push	hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	ld	hl, #15
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #15
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #16+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	__UG_PutChar
	ld	hl,#15
	add	hl,sp
	ld	sp,hl
	ret
;ugui/ugui.c:4978: void UG_ConsolePutString( char* str )
;	---------------------------------
; Function UG_ConsolePutString
; ---------------------------------
_UG_ConsolePutString::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-22
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:4983: while ( *str != 0 )
00107$:
	ld	a,4 (ix)
	ld	-9 (ix),a
	ld	a,5 (ix)
	ld	-8 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-1 (ix), a
	or	a, a
	jp	Z,00110$
;ugui/ugui.c:4985: chr = *str;
	ld	a,-1 (ix)
	ld	-22 (ix),a
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	hl,(_gui)
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	a,-21 (ix)
	add	a, #0x11
	ld	-3 (ix),a
	ld	a,-20 (ix)
	adc	a, #0x00
	ld	-2 (ix),a
;ugui/ugui.c:4986: if ( chr == '\n' )
	ld	a,-22 (ix)
	sub	a, #0x0A
	jr	NZ,00102$
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:4989: str++;
	ld	a,-9 (ix)
	add	a, #0x01
	ld	4 (ix),a
	ld	a,-8 (ix)
	adc	a, #0x00
	ld	5 (ix),a
;ugui/ugui.c:4990: continue;
	jr	00107$
00102$:
;ugui/ugui.c:4993: cw = gui->font.widths ? gui->font.widths[chr - gui->font.start_char] : gui->font.char_width;
	ld	a,-21 (ix)
	ld	-9 (ix),a
	ld	a,-20 (ix)
	ld	-8 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	de, #0x0030
	add	hl, de
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix), a
	or	a,-9 (ix)
	jr	Z,00112$
	ld	e,-22 (ix)
	ld	a,-22 (ix)
	rla
	sbc	a, a
	ld	d,a
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	bc, #0x002C
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ex	de,hl
	cp	a, a
	sbc	hl, bc
	ld	e,-9 (ix)
	ld	d,-8 (ix)
	add	hl,de
	ld	a,(hl)
	ld	-9 (ix),a
	ld	-8 (ix),#0x00
	jr	00113$
00112$:
	ld	c,-21 (ix)
	ld	b,-20 (ix)
	push	bc
	pop	iy
	ld	a,40 (iy)
	ld	-9 (ix),a
	ld	a,41 (iy)
	ld	-8 (ix),a
00113$:
	ld	d,-9 (ix)
;ugui/ugui.c:4994: gui->console.x_pos += cw+gui->char_h_space;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	ld	-15 (ix),d
	ld	-14 (ix),#0x00
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	de, #0x0032
	add	hl, de
	ld	a,(hl)
	ld	-21 (ix), a
	ld	-21 (ix), a
	rla
	sbc	a, a
	ld	-20 (ix),a
	ld	a,-15 (ix)
	add	a, -21 (ix)
	ld	-21 (ix),a
	ld	a,-14 (ix)
	adc	a, -20 (ix)
	ld	-20 (ix),a
	ld	a,-9 (ix)
	add	a, -21 (ix)
	ld	-21 (ix),a
	ld	a,-8 (ix)
	adc	a, -20 (ix)
	ld	-20 (ix),a
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,-21 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-20 (ix)
	ld	(hl),a
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	hl,(_gui)
	ld	-3 (ix),l
	ld	-2 (ix),h
	ld	a,-3 (ix)
	add	a, #0x11
	ld	-21 (ix),a
	ld	a,-2 (ix)
	adc	a, #0x00
	ld	-20 (ix),a
;ugui/ugui.c:4996: if ( gui->console.x_pos+cw > gui->console.x_end )
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	ld	a,-9 (ix)
	add	a, -15 (ix)
	ld	-15 (ix),a
	ld	a,-8 (ix)
	adc	a, -14 (ix)
	ld	-14 (ix),a
	ld	a,-3 (ix)
	ld	-9 (ix),a
	ld	a,-2 (ix)
	ld	-8 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	de, #0x0019
	add	hl, de
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	ld	a,-9 (ix)
	sub	a, -15 (ix)
	ld	a,-8 (ix)
	sbc	a, -14 (ix)
	jp	PO, 00140$
	xor	a, #0x80
00140$:
	jp	P,00104$
;ugui/ugui.c:4998: gui->console.x_pos = gui->console.x_start;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	de, #0x0015
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	bc,(_gui)
;ugui/ugui.c:4999: gui->console.y_pos += gui->font.char_height+gui->char_v_space;
	ld	iy,#0x0013
	add	iy, bc
	ld	a,0 (iy)
	ld	-15 (ix),a
	ld	a,1 (iy)
	ld	-14 (ix),a
	ld	l, c
	ld	h, b
	ld	de, #0x002A
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, c
	ld	h, b
	ld	bc, #0x0033
	add	hl, bc
	ld	a,(hl)
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	add	hl,de
	ld	e,-15 (ix)
	ld	d,-14 (ix)
	add	hl,de
	ld	0 (iy),l
	ld	1 (iy),h
00104$:
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	hl,(_gui)
;ugui/ugui.c:5001: if ( gui->console.y_pos+gui->font.char_height > gui->console.y_end )
	ld	-15 (ix),l
	ld	-14 (ix),h
	ld	c,l
	ld	b,h
	push	bc
	pop	iy
	ld	a,19 (iy)
	ld	-3 (ix),a
	ld	a,20 (iy)
	ld	-2 (ix),a
	ld	a,-15 (ix)
	ld	-21 (ix),a
	ld	a,-14 (ix)
	ld	-20 (ix),a
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	de, #0x002A
	add	hl, de
	ld	a,(hl)
	ld	-21 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-20 (ix),a
	ld	a,-3 (ix)
	add	a, -21 (ix)
	ld	-3 (ix),a
	ld	a,-2 (ix)
	adc	a, -20 (ix)
	ld	-2 (ix),a
	ld	a,-15 (ix)
	ld	-21 (ix),a
	ld	a,-14 (ix)
	ld	-20 (ix),a
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	de, #0x001B
	add	hl, de
	ld	a,(hl)
	ld	-21 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-20 (ix),a
	ld	a,-21 (ix)
	sub	a, -3 (ix)
	ld	a,-20 (ix)
	sbc	a, -2 (ix)
	jp	PO, 00141$
	xor	a, #0x80
00141$:
	jp	P,00106$
;ugui/ugui.c:5003: gui->console.x_pos = gui->console.x_start;
	ld	a,-15 (ix)
	add	a, #0x11
	ld	e,a
	ld	a,-14 (ix)
	adc	a, #0x00
	ld	d,a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	bc, #0x0015
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	hl,(_gui)
;ugui/ugui.c:5004: gui->console.y_pos = gui->console.y_start;
	ld	a,l
	add	a, #0x13
	ld	e,a
	ld	a,h
	adc	a, #0x00
	ld	d,a
	ld	bc, #0x0017
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	hl,(_gui)
	ld	-15 (ix),l
	ld	-14 (ix),h
;ugui/ugui.c:5005: UG_FillFrame(gui->console.x_start,gui->console.y_start,gui->console.x_end,gui->console.y_end,gui->console.back_color);
	ld	a,-15 (ix)
	ld	-3 (ix),a
	ld	a,-14 (ix)
	ld	-2 (ix),a
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	de, #0x0021
	add	hl, de
	ld	a,(hl)
	ld	-13 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-12 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-11 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-10 (ix),a
	ld	a,-15 (ix)
	ld	-3 (ix),a
	ld	a,-14 (ix)
	ld	-2 (ix),a
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	de, #0x001B
	add	hl, de
	ld	a,(hl)
	ld	-3 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	ld	a,-15 (ix)
	ld	-21 (ix),a
	ld	a,-14 (ix)
	ld	-20 (ix),a
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	de, #0x0019
	add	hl, de
	ld	a,(hl)
	ld	-21 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-20 (ix),a
	ld	a,-15 (ix)
	ld	-9 (ix),a
	ld	a,-14 (ix)
	ld	-8 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	de, #0x0017
	add	hl, de
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	de, #0x0015
	add	hl, de
	ld	a,(hl)
	ld	-15 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-14 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00106$:
;ugui/ugui.c:4988: gui->console.x_pos = gui->x_dim;
	ld	hl,(_gui)
	ld	-13 (ix),l
	ld	-12 (ix),h
;ugui/ugui.c:5008: UG_PutChar(chr, gui->console.x_pos, gui->console.y_pos, gui->console.fore_color, gui->console.back_color);
	ld	a,-13 (ix)
	ld	-15 (ix),a
	ld	a,-12 (ix)
	ld	-14 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	de, #0x0021
	add	hl, de
	ld	a,(hl)
	ld	-19 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-16 (ix),a
	ld	a,-13 (ix)
	ld	-15 (ix),a
	ld	a,-12 (ix)
	ld	-14 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	de, #0x001D
	add	hl, de
	ld	a,(hl)
	ld	-7 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	ld	a,-13 (ix)
	ld	-15 (ix),a
	ld	a,-12 (ix)
	ld	-14 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	de, #0x0013
	add	hl, de
	ld	a,(hl)
	ld	-15 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-14 (ix),a
	ld	a,-13 (ix)
	ld	-13 (ix),a
	ld	a,-12 (ix)
	ld	-12 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	a,(hl)
	ld	-13 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-12 (ix),a
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	a,-22 (ix)
	push	af
	inc	sp
	call	_UG_PutChar
	ld	hl,#13
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5009: str++;
	inc	4 (ix)
	jp	NZ,00107$
	inc	5 (ix)
	jp	00107$
00110$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5013: void UG_ConsoleSetArea( UG_S16 xs, UG_S16 ys, UG_S16 xe, UG_S16 ye )
;	---------------------------------
; Function UG_ConsoleSetArea
; ---------------------------------
_UG_ConsoleSetArea::
;ugui/ugui.c:5015: gui->console.x_start = xs;
	ld	hl,(_gui)
	ld	bc,#0x0015
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	inc	hl
	ld	a,1 (iy)
	ld	(hl),a
;ugui/ugui.c:5016: gui->console.y_start = ys;
	ld	hl,(_gui)
	ld	bc,#0x0017
	add	hl,bc
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	inc	hl
	ld	a,1 (iy)
	ld	(hl),a
;ugui/ugui.c:5017: gui->console.x_end = xe;
	ld	hl,(_gui)
	ld	bc,#0x0019
	add	hl,bc
	ld	iy,#6
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	inc	hl
	ld	a,1 (iy)
	ld	(hl),a
;ugui/ugui.c:5018: gui->console.y_end = ye;
	ld	hl,(_gui)
	ld	bc,#0x001B
	add	hl,bc
	ld	iy,#8
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	inc	hl
	ld	a,1 (iy)
	ld	(hl),a
	ret
;ugui/ugui.c:5021: void UG_ConsoleSetForecolor( UG_COLOR c )
;	---------------------------------
; Function UG_ConsoleSetForecolor
; ---------------------------------
_UG_ConsoleSetForecolor::
;ugui/ugui.c:5023: gui->console.fore_color = c;
	ld	hl,(_gui)
	ld	bc,#0x001D
	add	hl,bc
	ex	de,hl
	ld	hl, #0x0002
	add	hl, sp
	ld	bc, #0x0004
	ldir
	ret
;ugui/ugui.c:5026: void UG_ConsoleSetBackcolor( UG_COLOR c )
;	---------------------------------
; Function UG_ConsoleSetBackcolor
; ---------------------------------
_UG_ConsoleSetBackcolor::
;ugui/ugui.c:5028: gui->console.back_color = c;
	ld	hl,(_gui)
	ld	bc,#0x0021
	add	hl,bc
	ex	de,hl
	ld	hl, #0x0002
	add	hl, sp
	ld	bc, #0x0004
	ldir
	ret
;ugui/ugui.c:5031: void UG_SetForecolor( UG_COLOR c )
;	---------------------------------
; Function UG_SetForecolor
; ---------------------------------
_UG_SetForecolor::
;ugui/ugui.c:5033: gui->fore_color = c;
	ld	hl,(_gui)
	ld	bc,#0x0034
	add	hl,bc
	ex	de,hl
	ld	hl, #0x0002
	add	hl, sp
	ld	bc, #0x0004
	ldir
	ret
;ugui/ugui.c:5036: void UG_SetBackcolor( UG_COLOR c )
;	---------------------------------
; Function UG_SetBackcolor
; ---------------------------------
_UG_SetBackcolor::
;ugui/ugui.c:5038: gui->back_color = c;
	ld	hl,(_gui)
	ld	bc,#0x0038
	add	hl,bc
	ex	de,hl
	ld	hl, #0x0002
	add	hl, sp
	ld	bc, #0x0004
	ldir
	ret
;ugui/ugui.c:5041: UG_S16 UG_GetXDim( void )
;	---------------------------------
; Function UG_GetXDim
; ---------------------------------
_UG_GetXDim::
;ugui/ugui.c:5043: return gui->x_dim;
	ld	hl,(_gui)
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ret
;ugui/ugui.c:5046: UG_S16 UG_GetYDim( void )
;	---------------------------------
; Function UG_GetYDim
; ---------------------------------
_UG_GetYDim::
;ugui/ugui.c:5048: return gui->y_dim;
	ld	hl,(_gui)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ret
;ugui/ugui.c:5051: void UG_FontSetHSpace( UG_U16 s )
;	---------------------------------
; Function UG_FontSetHSpace
; ---------------------------------
_UG_FontSetHSpace::
;ugui/ugui.c:5053: gui->char_h_space = s;
	ld	hl,(_gui)
	ld	bc,#0x0032
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	ret
;ugui/ugui.c:5056: void UG_FontSetVSpace( UG_U16 s )
;	---------------------------------
; Function UG_FontSetVSpace
; ---------------------------------
_UG_FontSetVSpace::
;ugui/ugui.c:5058: gui->char_v_space = s;
	ld	hl,(_gui)
	ld	bc,#0x0033
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	ret
;ugui/ugui.c:5258: void _UG_PutChar( char chr, UG_S16 x, UG_S16 y, UG_COLOR fc, UG_COLOR bc, const UG_FONT* font)
;	---------------------------------
; Function _UG_PutChar
; ---------------------------------
__UG_PutChar::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-113
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5266: bt = (UG_U8)chr;
	ld	a,4 (ix)
;ugui/ugui.c:5268: switch ( bt )
	ld	-95 (ix), a
	sub	a, #0xB0
	jr	Z,00108$
	ld	a,-95 (ix)
	sub	a, #0xB5
	jr	Z,00107$
	ld	a,-95 (ix)
	sub	a, #0xC4
	jr	Z,00106$
	ld	a,-95 (ix)
	sub	a, #0xD6
	jr	Z,00102$
	ld	a,-95 (ix)
	sub	a, #0xDC
	jr	Z,00104$
	ld	a,-95 (ix)
	sub	a, #0xE4
	jr	Z,00105$
	ld	a,-95 (ix)
	sub	a, #0xF6
	jr	Z,00101$
	ld	a,-95 (ix)
	sub	a, #0xFC
	jr	Z,00103$
	jr	00109$
;ugui/ugui.c:5270: case 0xF6: bt = 0x94; break; // �
00101$:
	ld	-95 (ix),#0x94
	jr	00109$
;ugui/ugui.c:5271: case 0xD6: bt = 0x99; break; // �
00102$:
	ld	-95 (ix),#0x99
	jr	00109$
;ugui/ugui.c:5272: case 0xFC: bt = 0x81; break; // �
00103$:
	ld	-95 (ix),#0x81
	jr	00109$
;ugui/ugui.c:5273: case 0xDC: bt = 0x9A; break; // �
00104$:
	ld	-95 (ix),#0x9A
	jr	00109$
;ugui/ugui.c:5274: case 0xE4: bt = 0x84; break; // �
00105$:
	ld	-95 (ix),#0x84
	jr	00109$
;ugui/ugui.c:5275: case 0xC4: bt = 0x8E; break; // �
00106$:
	ld	-95 (ix),#0x8E
	jr	00109$
;ugui/ugui.c:5276: case 0xB5: bt = 0xE6; break; // �
00107$:
	ld	-95 (ix),#0xE6
	jr	00109$
;ugui/ugui.c:5277: case 0xB0: bt = 0xF8; break; // �
00108$:
	ld	-95 (ix),#0xF8
;ugui/ugui.c:5278: }
00109$:
;ugui/ugui.c:5280: if (bt < font->start_char || bt > font->end_char) return;
	ld	a,17 (ix)
	ld	-52 (ix),a
	ld	a,18 (ix)
	ld	-51 (ix),a
	ld	a,-52 (ix)
	ld	-54 (ix),a
	ld	a,-51 (ix)
	ld	-53 (ix),a
	ld	l,-54 (ix)
	ld	h,-53 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	a,(hl)
	ld	-54 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-53 (ix),a
	ld	a,-95 (ix)
	ld	-60 (ix),a
	ld	-59 (ix),#0x00
	ld	a,-60 (ix)
	sub	a, -54 (ix)
	ld	a,-59 (ix)
	sbc	a, -53 (ix)
	jp	C,00178$
	ld	a,-52 (ix)
	ld	-58 (ix),a
	ld	a,-51 (ix)
	ld	-57 (ix),a
	ld	l,-58 (ix)
	ld	h,-57 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,(hl)
	ld	-58 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-57 (ix),a
	ld	a,-58 (ix)
	sub	a, -60 (ix)
	ld	a,-57 (ix)
	sbc	a, -59 (ix)
	jp	C,00178$
;ugui/ugui.c:5282: yo = y;
	ld	a,7 (ix)
	ld	-109 (ix),a
	ld	a,8 (ix)
	ld	-108 (ix),a
;ugui/ugui.c:5283: bn = font->char_width;
	ld	a,-52 (ix)
	add	a, #0x03
	ld	-58 (ix),a
	ld	a,-51 (ix)
	adc	a, #0x00
	ld	-57 (ix),a
	ld	l,-58 (ix)
	ld	h,-57 (ix)
	ld	a,(hl)
	ld	-60 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-59 (ix),a
	ld	a,-60 (ix)
	ld	-62 (ix),a
	ld	a,-59 (ix)
;ugui/ugui.c:5284: if ( !bn ) return;
	ld	-61 (ix), a
	or	a,-62 (ix)
	jp	Z,00178$
;ugui/ugui.c:5285: bn >>= 3;
	ld	a,-62 (ix)
	ld	-113 (ix),a
	ld	a,-61 (ix)
	ld	-112 (ix),a
	srl	-112 (ix)
	rr	-113 (ix)
	srl	-112 (ix)
	rr	-113 (ix)
	srl	-112 (ix)
	rr	-113 (ix)
;ugui/ugui.c:5286: if ( font->char_width % 8 ) bn++;
	ld	hl,#0x0008
	push	hl
	ld	l,-60 (ix)
	ld	h,-59 (ix)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	-61 (ix),h
	ld	-62 (ix),l
	ld	a,-61 (ix)
	or	a,-62 (ix)
	jr	Z,00116$
	inc	-113 (ix)
	jr	NZ,00364$
	inc	-112 (ix)
00364$:
00116$:
;ugui/ugui.c:5287: actual_char_width = (font->widths ? font->widths[bt - font->start_char] : font->char_width);
	ld	a,-52 (ix)
	ld	-62 (ix),a
	ld	a,-51 (ix)
	ld	-61 (ix),a
	ld	l,-62 (ix)
	ld	h,-61 (ix)
	ld	de, #0x000B
	add	hl, de
	ld	a,(hl)
	ld	-62 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-61 (ix),a
	ld	a,-95 (ix)
	ld	-10 (ix),a
	ld	-9 (ix),#0x00
	ld	a,-10 (ix)
	sub	a, -54 (ix)
	ld	-10 (ix),a
	ld	a,-9 (ix)
	sbc	a, -53 (ix)
	ld	-9 (ix),a
	ld	a,-61 (ix)
	or	a,-62 (ix)
	jr	Z,00180$
	ld	a,-62 (ix)
	add	a, -10 (ix)
	ld	-62 (ix),a
	ld	a,-61 (ix)
	adc	a, -9 (ix)
	ld	-61 (ix),a
	ld	l,-62 (ix)
	ld	h,-61 (ix)
	ld	a,(hl)
	ld	-62 (ix), a
	ld	-101 (ix),a
	ld	-100 (ix),#0x00
	jr	00181$
00180$:
	ld	a,-60 (ix)
	ld	-101 (ix),a
	ld	a,-59 (ix)
	ld	-100 (ix),a
00181$:
;ugui/ugui.c:5290: if ( gui->driver[DRIVER_FILL_AREA].state & DRIVER_ENABLED )
	ld	iy,(_gui)
	ld	e,73 (iy)
;ugui/ugui.c:5295: if (font->font_type == FONT_TYPE_1BPP)
	ld	l,-52 (ix)
	ld	h,-51 (ix)
;ugui/ugui.c:5297: index = (bt - font->start_char)* font->char_height * bn;
	ld	a,-52 (ix)
	add	a, #0x05
	ld	-62 (ix),a
	ld	a,-51 (ix)
	adc	a, #0x00
	ld	-61 (ix),a
;ugui/ugui.c:5322: index = (bt - font->start_char)* font->char_height * font->char_width;
;ugui/ugui.c:5323: for( j=0;j<font->char_height;j++ )
	ld	a,9 (ix)
	ld	-8 (ix),a
	ld	-7 (ix),#0x00
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
	ld	a,13 (ix)
	ld	-4 (ix),a
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
	ld	-79 (ix),#0x00
	ld	a,10 (ix)
	ld	-78 (ix),a
	ld	-77 (ix),#0x00
	ld	-76 (ix),#0x00
	ld	-87 (ix),#0x00
	ld	a,14 (ix)
	ld	-86 (ix),a
	ld	-85 (ix),#0x00
	ld	-84 (ix),#0x00
	ld	-48 (ix),#0x00
	ld	-47 (ix),#0x00
	ld	a,11 (ix)
	ld	-46 (ix),a
	ld	-45 (ix),#0x00
	ld	-70 (ix),#0x00
	ld	-69 (ix),#0x00
	ld	a,15 (ix)
	ld	-68 (ix),a
	ld	-67 (ix),#0x00
;ugui/ugui.c:5295: if (font->font_type == FONT_TYPE_1BPP)
	inc	hl
	inc	hl
	ld	a,(hl)
;ugui/ugui.c:5320: else if (font->font_type == FONT_TYPE_8BPP)
	ld	-54 (ix), a
	dec	a
	jr	NZ,00365$
	ld	a,#0x01
	jr	00366$
00365$:
	xor	a,a
00366$:
	ld	-71 (ix),a
;ugui/ugui.c:5290: if ( gui->driver[DRIVER_FILL_AREA].state & DRIVER_ENABLED )
	bit	1, e
	jp	Z,00144$
;ugui/ugui.c:5295: if (font->font_type == FONT_TYPE_1BPP)
	ld	a,-54 (ix)
	or	a, a
	jp	NZ,00128$
;ugui/ugui.c:5297: index = (bt - font->start_char)* font->char_height * bn;
	ld	a,-62 (ix)
	ld	-50 (ix),a
	ld	a,-61 (ix)
	ld	-49 (ix),a
	ld	l,-62 (ix)
	ld	h,-61 (ix)
	ld	a,(hl)
	ld	-56 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-55 (ix),a
	ld	l,-56 (ix)
	ld	h,-55 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	-55 (ix),h
	ld	-56 (ix),l
	pop	hl
	push	hl
	push	hl
	ld	l,-56 (ix)
	ld	h,-55 (ix)
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	-55 (ix),h
	ld	-56 (ix), l
	ld	-44 (ix), l
	ld	a,-55 (ix)
	ld	-43 (ix),a
	ld	-42 (ix),#0x00
	ld	-41 (ix),#0x00
;ugui/ugui.c:5298: for( j=0;j<font->char_height;j++ )
	ld	-105 (ix),#0x00
	ld	-104 (ix),#0x00
00154$:
	ld	l,-50 (ix)
	ld	h,-49 (ix)
	ld	a,(hl)
	ld	-56 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-55 (ix),a
	ld	a,-105 (ix)
	sub	a, -56 (ix)
	ld	a,-104 (ix)
	sbc	a, -55 (ix)
	jp	NC,00178$
;ugui/ugui.c:5300: c=actual_char_width;
	ld	a,-101 (ix)
	ld	-56 (ix),a
	ld	a,-100 (ix)
	ld	-55 (ix),a
;ugui/ugui.c:5301: for( i=0;i<bn;i++ )
	ld	hl, #73
	add	hl, sp
	ex	de, hl
	ld	hl, #69
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-103 (ix),#0x00
	ld	-102 (ix),#0x00
00151$:
	ld	a,-103 (ix)
	sub	a, -113 (ix)
	ld	a,-102 (ix)
	sbc	a, -112 (ix)
	jp	NC,00227$
;ugui/ugui.c:5303: b = font->p[index++];
	ld	l,-52 (ix)
	ld	h,-51 (ix)
	ld	a,(hl)
	ld	-36 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-35 (ix),a
	ld	e,-40 (ix)
	ld	d,-39 (ix)
	ld	b,-38 (ix)
	ld	c,-37 (ix)
	inc	-40 (ix)
	jr	NZ,00368$
	inc	-39 (ix)
	jr	NZ,00368$
	inc	-38 (ix)
	jr	NZ,00368$
	inc	-37 (ix)
00368$:
	ld	l,-36 (ix)
	ld	h,-35 (ix)
	add	hl, de
	ld	d,(hl)
;ugui/ugui.c:5304: for( k=0;(k<8) && c;k++ )
	ld	a,-56 (ix)
	ld	-36 (ix),a
	ld	a,-55 (ix)
	ld	-35 (ix),a
	ld	-107 (ix),#0x00
	ld	-106 (ix),#0x00
00148$:
	ld	a,-107 (ix)
	sub	a, #0x08
	ld	a,-106 (ix)
	sbc	a, #0x00
	jr	NC,00223$
	ld	a,-35 (ix)
	or	a,-36 (ix)
	jr	Z,00223$
;ugui/ugui.c:5306: if( b & 0x01 )
	bit	0, d
	jr	Z,00118$
;ugui/ugui.c:5308: push_pixel(fc);
	push	de
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	ld	l,-93 (ix)
	ld	h,-92 (ix)
	call	___sdcc_call_hl
	pop	af
	pop	af
	pop	de
	jr	00119$
00118$:
;ugui/ugui.c:5312: push_pixel(bc);
	push	de
	ld	l,15 (ix)
	ld	h,16 (ix)
	push	hl
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,-93 (ix)
	ld	h,-92 (ix)
	call	___sdcc_call_hl
	pop	af
	pop	af
	pop	de
00119$:
;ugui/ugui.c:5314: b >>= 1;
	srl	d
;ugui/ugui.c:5315: c--;
	ld	l,-36 (ix)
	ld	h,-35 (ix)
	dec	hl
	ld	-36 (ix),l
	ld	-35 (ix),h
;ugui/ugui.c:5304: for( k=0;(k<8) && c;k++ )
	inc	-107 (ix)
	jr	NZ,00148$
	inc	-106 (ix)
	jr	00148$
00223$:
	ld	a,-36 (ix)
	ld	-56 (ix),a
	ld	a,-35 (ix)
	ld	-55 (ix),a
;ugui/ugui.c:5301: for( i=0;i<bn;i++ )
	inc	-103 (ix)
	jp	NZ,00151$
	inc	-102 (ix)
	jp	00151$
00227$:
	ld	hl, #69
	add	hl, sp
	ex	de, hl
	ld	hl, #73
	add	hl, sp
	ld	bc, #4
	ldir
;ugui/ugui.c:5298: for( j=0;j<font->char_height;j++ )
	inc	-105 (ix)
	jp	NZ,00154$
	inc	-104 (ix)
	jp	00154$
00128$:
;ugui/ugui.c:5320: else if (font->font_type == FONT_TYPE_8BPP)
	ld	a,-71 (ix)
	or	a, a
	jp	Z,00178$
;ugui/ugui.c:5322: index = (bt - font->start_char)* font->char_height * font->char_width;
	ld	a,-62 (ix)
	ld	-36 (ix),a
	ld	a,-61 (ix)
	ld	-35 (ix),a
	ld	l,-62 (ix)
	ld	h,-61 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	c,-60 (ix)
	ld	b,-59 (ix)
	push	bc
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	-40 (ix),l
	ld	-39 (ix),h
	ld	-38 (ix),#0x00
	ld	-37 (ix),#0x00
;ugui/ugui.c:5323: for( j=0;j<font->char_height;j++ )
	ld	hl, #69
	add	hl, sp
	ex	de, hl
	ld	hl, #105
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #79
	add	hl, sp
	ex	de, hl
	ld	hl, #109
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #83
	add	hl, sp
	ex	de, hl
	ld	hl, #34
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #91
	add	hl, sp
	ex	de, hl
	ld	hl, #26
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #95
	add	hl, sp
	ex	de, hl
	ld	hl, #65
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #99
	add	hl, sp
	ex	de, hl
	ld	hl, #43
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-105 (ix),#0x00
	ld	-104 (ix),#0x00
00160$:
	ld	l,-36 (ix)
	ld	h,-35 (ix)
	ld	e,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,-105 (ix)
	sub	a, e
	ld	a,-104 (ix)
	sbc	a, h
	jp	NC,00178$
;ugui/ugui.c:5325: for( i=0;i<actual_char_width;i++ )
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	hl, #73
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-103 (ix),#0x00
	ld	-102 (ix),#0x00
00157$:
	ld	a,-103 (ix)
	sub	a, -101 (ix)
	ld	a,-102 (ix)
	sbc	a, -100 (ix)
	jp	NC,00123$
;ugui/ugui.c:5327: b = font->p[index++];
	ld	l,-52 (ix)
	ld	h,-51 (ix)
	ld	a,(hl)
	ld	-56 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-55 (ix),a
	ld	hl, #22
	add	hl, sp
	ex	de, hl
	ld	hl, #30
	add	hl, sp
	ld	bc, #4
	ldir
	inc	-83 (ix)
	jr	NZ,00373$
	inc	-82 (ix)
	jr	NZ,00373$
	inc	-81 (ix)
	jr	NZ,00373$
	inc	-80 (ix)
00373$:
	ld	a,-56 (ix)
	add	a, -91 (ix)
	ld	-91 (ix),a
	ld	a,-55 (ix)
	adc	a, -90 (ix)
	ld	-90 (ix),a
	ld	l,-91 (ix)
	ld	h,-90 (ix)
	ld	a,(hl)
;ugui/ugui.c:5328: color = (((fc & 0xFF) * b + (bc & 0xFF) * (256 - b)) >> 8) & 0xFF |//Blue component
	ld	-91 (ix), a
	ld	-66 (ix),a
	ld	-65 (ix),#0x00
	ld	-64 (ix),#0x00
	ld	-63 (ix),#0x00
	ld	l,-64 (ix)
	ld	h,-63 (ix)
	push	hl
	ld	l,-66 (ix)
	ld	h,-65 (ix)
	push	hl
	ld	l,-42 (ix)
	ld	h,-41 (ix)
	push	hl
	ld	l,-44 (ix)
	ld	h,-43 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-72 (ix),d
	ld	-73 (ix),e
	ld	-74 (ix),h
	ld	-75 (ix),l
	ld	a,-91 (ix)
	ld	-91 (ix),a
	ld	-90 (ix),#0x00
	xor	a, a
	sub	a, -91 (ix)
	ld	-91 (ix),a
	ld	a,#0x01
	sbc	a, -90 (ix)
	ld	-90 (ix),a
	ld	a,-91 (ix)
	ld	-91 (ix),a
	ld	a,-90 (ix)
	ld	-90 (ix), a
	rla
	sbc	a, a
	ld	-89 (ix),a
	ld	-88 (ix),a
	ld	l,-89 (ix)
	ld	h,-88 (ix)
	push	hl
	ld	l,-91 (ix)
	ld	h,-90 (ix)
	push	hl
	ld	l,-32 (ix)
	ld	h,-31 (ix)
	push	hl
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,-75 (ix)
	add	a, l
	ld	l,a
	ld	a,-74 (ix)
	adc	a, h
	ld	h,a
	ld	a,-73 (ix)
	adc	a, e
	ld	e,a
	ld	a,-72 (ix)
	adc	a, d
	ld	d,a
	ld	b,#0x08
00374$:
	srl	d
	rr	e
	rr	h
	rr	l
	djnz	00374$
	ld	-75 (ix),l
	ld	-74 (ix),#0x00
	ld	-73 (ix),#0x00
	ld	-72 (ix),#0x00
;ugui/ugui.c:5329: (((fc & 0xFF00) * b + (bc & 0xFF00) * (256 - b)) >> 8)  & 0xFF00|//Green component
	ld	l,-64 (ix)
	ld	h,-63 (ix)
	push	hl
	ld	l,-66 (ix)
	ld	h,-65 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-30 (ix)
	ld	h,-29 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-23 (ix),d
	ld	-24 (ix),e
	ld	-25 (ix),h
	ld	-26 (ix),l
	ld	l,-89 (ix)
	ld	h,-88 (ix)
	push	hl
	ld	l,-91 (ix)
	ld	h,-90 (ix)
	push	hl
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,-26 (ix)
	add	a, l
	ld	l,a
	ld	a,-25 (ix)
	adc	a, h
	ld	h,a
	ld	a,-24 (ix)
	adc	a, e
	ld	e,a
	ld	a,-23 (ix)
	adc	a, d
	ld	d,a
	ld	b,#0x08
00376$:
	srl	d
	rr	e
	rr	h
	rr	l
	djnz	00376$
	ld	l,#0x00
	ld	de,#0x0000
	ld	a,-75 (ix)
	or	a, l
	ld	-26 (ix),a
	ld	a,-74 (ix)
	or	a, h
	ld	-25 (ix),a
	ld	a,-73 (ix)
	or	a, e
	ld	-24 (ix),a
	ld	a,-72 (ix)
	or	a, d
	ld	-23 (ix),a
;ugui/ugui.c:5330: (((fc & 0xFF0000) * b + (bc & 0xFF0000) * (256 - b)) >> 8) & 0xFF0000; //Red component
	ld	l,-64 (ix)
	ld	h,-63 (ix)
	push	hl
	ld	l,-66 (ix)
	ld	h,-65 (ix)
	push	hl
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-72 (ix),d
	ld	-73 (ix),e
	ld	-74 (ix),h
	ld	-75 (ix),l
	ld	l,-89 (ix)
	ld	h,-88 (ix)
	push	hl
	ld	l,-91 (ix)
	ld	h,-90 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,-75 (ix)
	add	a, l
	ld	l,a
	ld	a,-74 (ix)
	adc	a, h
	ld	h,a
	ld	a,-73 (ix)
	adc	a, e
	ld	e,a
	ld	a,-72 (ix)
	adc	a, d
	ld	d,a
	ld	b,#0x08
00378$:
	srl	d
	rr	e
	rr	h
	rr	l
	djnz	00378$
	ld	hl,#0x0000
	ld	d,#0x00
	ld	a,-26 (ix)
	or	a, l
	ld	c,a
	ld	a,-25 (ix)
	or	a, h
	ld	b,a
	ld	a,-24 (ix)
	or	a, e
	ld	l,a
	ld	a,-23 (ix)
	or	a, d
	ld	h,a
;ugui/ugui.c:5331: push_pixel(color);
	push	hl
	push	bc
	ld	l,-93 (ix)
	ld	h,-92 (ix)
	call	___sdcc_call_hl
	pop	af
	pop	af
;ugui/ugui.c:5325: for( i=0;i<actual_char_width;i++ )
	inc	-103 (ix)
	jp	NZ,00157$
	inc	-102 (ix)
	jp	00157$
00123$:
;ugui/ugui.c:5333: index += font->char_width - actual_char_width;
	ld	l,-58 (ix)
	ld	h,-57 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, -101 (ix)
	ld	l,a
	ld	a,d
	sbc	a, -100 (ix)
	ld	h,a
	ld	de,#0x0000
	ld	a,-83 (ix)
	add	a, l
	ld	-40 (ix),a
	ld	a,-82 (ix)
	adc	a, h
	ld	-39 (ix),a
	ld	a,-81 (ix)
	adc	a, d
	ld	-38 (ix),a
	ld	a,-80 (ix)
	adc	a, e
	ld	-37 (ix),a
;ugui/ugui.c:5323: for( j=0;j<font->char_height;j++ )
	inc	-105 (ix)
	jp	NZ,00160$
	inc	-104 (ix)
	jp	00160$
00144$:
;ugui/ugui.c:5345: xo = x;
	ld	a,5 (ix)
	ld	-26 (ix),a
	ld	a,6 (ix)
	ld	-25 (ix),a
;ugui/ugui.c:5340: if (font->font_type == FONT_TYPE_1BPP)
	ld	a,-54 (ix)
	or	a, a
	jp	NZ,00141$
;ugui/ugui.c:5342: index = (bt - font->start_char)* font->char_height * bn;
	ld	a,-62 (ix)
	ld	-75 (ix),a
	ld	a,-61 (ix)
	ld	-74 (ix),a
	ld	l,-62 (ix)
	ld	h,-61 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	call	__mulint
	pop	af
	pop	af
	pop	bc
	push	bc
	push	bc
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	de,#0x0000
;ugui/ugui.c:5343: for( j=0;j<font->char_height;j++ )
	ld	a,-109 (ix)
	ld	-66 (ix),a
	ld	a,-108 (ix)
	ld	-65 (ix),a
	ld	-105 (ix),#0x00
	ld	-104 (ix),#0x00
00170$:
	ld	l,-75 (ix)
	ld	h,-74 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,-105 (ix)
	sub	a, l
	ld	a,-104 (ix)
	sbc	a, h
	jp	NC,00178$
;ugui/ugui.c:5345: xo = x;
	ld	a,-26 (ix)
	ld	-91 (ix),a
	ld	a,-25 (ix)
	ld	-90 (ix),a
;ugui/ugui.c:5346: c=actual_char_width;
	ld	a,-101 (ix)
	ld	-111 (ix),a
	ld	a,-100 (ix)
	ld	-110 (ix),a
;ugui/ugui.c:5347: for( i=0;i<bn;i++ )
	ld	-83 (ix),c
	ld	-82 (ix),b
	ld	-81 (ix),e
	ld	-80 (ix),d
	ld	-103 (ix),#0x00
	ld	-102 (ix),#0x00
00167$:
	ld	a,-103 (ix)
	sub	a, -113 (ix)
	ld	a,-102 (ix)
	sbc	a, -112 (ix)
	jp	NC,00229$
;ugui/ugui.c:5349: b = font->p[index++];
	ld	l,-52 (ix)
	ld	h,-51 (ix)
	ld	a,(hl)
	ld	-14 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-13 (ix),a
	ld	e,-83 (ix)
	ld	d,-82 (ix)
	inc	-83 (ix)
	jr	NZ,00382$
	inc	-82 (ix)
	jr	NZ,00382$
	inc	-81 (ix)
	jr	NZ,00382$
	inc	-80 (ix)
00382$:
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	add	hl, de
	ld	a,(hl)
	ld	-94 (ix),a
;ugui/ugui.c:5350: for( k=0;(k<8) && c;k++ )
	ld	a,-91 (ix)
	ld	-14 (ix),a
	ld	a,-90 (ix)
	ld	-13 (ix),a
	ld	a,-111 (ix)
	ld	-18 (ix),a
	ld	a,-110 (ix)
	ld	-17 (ix),a
	ld	-107 (ix),#0x00
	ld	-106 (ix),#0x00
00164$:
	ld	a,-107 (ix)
	sub	a, #0x08
	ld	a,-106 (ix)
	sbc	a, #0x00
	jp	NC,00225$
	ld	a,-17 (ix)
	or	a,-18 (ix)
	jp	Z,00225$
;ugui/ugui.c:5290: if ( gui->driver[DRIVER_FILL_AREA].state & DRIVER_ENABLED )
	ld	hl,(_gui)
;ugui/ugui.c:5354: gui->pset(xo,yo,fc);
	ld	a,(hl)
	ld	-22 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-21 (ix),a
;ugui/ugui.c:5352: if( b & 0x01 )
	bit	0, -94 (ix)
	jr	Z,00131$
;ugui/ugui.c:5354: gui->pset(xo,yo,fc);
	ld	l,11 (ix)
	ld	h,12 (ix)
	push	hl
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	hl
	ld	l,-66 (ix)
	ld	h,-65 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	jr	00132$
00131$:
;ugui/ugui.c:5358: gui->pset(xo,yo,bc);
	ld	l,15 (ix)
	ld	h,16 (ix)
	push	hl
	ld	l,13 (ix)
	ld	h,14 (ix)
	push	hl
	ld	l,-66 (ix)
	ld	h,-65 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
00132$:
;ugui/ugui.c:5360: b >>= 1;
	srl	-94 (ix)
;ugui/ugui.c:5361: xo++;
	inc	-14 (ix)
	jr	NZ,00384$
	inc	-13 (ix)
00384$:
;ugui/ugui.c:5362: c--;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	dec	hl
	ld	-18 (ix),l
	ld	-17 (ix),h
;ugui/ugui.c:5350: for( k=0;(k<8) && c;k++ )
	inc	-107 (ix)
	jp	NZ,00164$
	inc	-106 (ix)
	jp	00164$
00225$:
	ld	a,-14 (ix)
	ld	-91 (ix),a
	ld	a,-13 (ix)
	ld	-90 (ix),a
	ld	a,-18 (ix)
	ld	-111 (ix),a
	ld	a,-17 (ix)
	ld	-110 (ix),a
;ugui/ugui.c:5347: for( i=0;i<bn;i++ )
	inc	-103 (ix)
	jp	NZ,00167$
	inc	-102 (ix)
	jp	00167$
00229$:
	ld	c,-83 (ix)
	ld	b,-82 (ix)
	ld	e,-81 (ix)
	ld	d,-80 (ix)
;ugui/ugui.c:5365: yo++;
	inc	-66 (ix)
	jr	NZ,00387$
	inc	-65 (ix)
00387$:
;ugui/ugui.c:5343: for( j=0;j<font->char_height;j++ )
	inc	-105 (ix)
	jp	NZ,00170$
	inc	-104 (ix)
	jp	00170$
00141$:
;ugui/ugui.c:5368: else if (font->font_type == FONT_TYPE_8BPP)
	ld	a,-71 (ix)
	or	a, a
	jp	Z,00178$
;ugui/ugui.c:5370: index = (bt - font->start_char)* font->char_height * font->char_width;
	ld	a,-62 (ix)
	ld	-75 (ix),a
	ld	a,-61 (ix)
	ld	-74 (ix),a
	ld	l,-62 (ix)
	ld	h,-61 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	c,-60 (ix)
	ld	b,-59 (ix)
	push	bc
	push	hl
	call	__mulint
	pop	af
	pop	af
	ld	-99 (ix),l
	ld	-98 (ix),h
	ld	-97 (ix),#0x00
	ld	-96 (ix),#0x00
;ugui/ugui.c:5371: for( j=0;j<font->char_height;j++ )
	ld	hl, #47
	add	hl, sp
	ex	de, hl
	ld	hl, #105
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #22
	add	hl, sp
	ex	de, hl
	ld	hl, #109
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	hl, #34
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #99
	add	hl, sp
	ex	de, hl
	ld	hl, #26
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #95
	add	hl, sp
	ex	de, hl
	ld	hl, #65
	add	hl, sp
	ld	bc, #4
	ldir
	ld	hl, #91
	add	hl, sp
	ex	de, hl
	ld	hl, #43
	add	hl, sp
	ld	bc, #4
	ldir
	ld	a,-109 (ix)
	ld	-30 (ix),a
	ld	a,-108 (ix)
	ld	-29 (ix),a
	ld	-105 (ix),#0x00
	ld	-104 (ix),#0x00
00176$:
	ld	l,-75 (ix)
	ld	h,-74 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,-105 (ix)
	sub	a, e
	ld	a,-104 (ix)
	sbc	a, d
	jp	NC,00178$
;ugui/ugui.c:5374: for( i=0;i<actual_char_width;i++ )
	ld	hl, #79
	add	hl, sp
	ex	de, hl
	ld	hl, #14
	add	hl, sp
	ld	bc, #4
	ldir
	ld	a,-26 (ix)
	ld	-36 (ix),a
	ld	a,-25 (ix)
	ld	-35 (ix),a
	ld	-103 (ix),#0x00
	ld	-102 (ix),#0x00
00173$:
	ld	a,-103 (ix)
	sub	a, -101 (ix)
	ld	a,-102 (ix)
	sbc	a, -100 (ix)
	jp	NC,00136$
;ugui/ugui.c:5376: b = font->p[index++];
	ld	l,-52 (ix)
	ld	h,-51 (ix)
	ld	a,(hl)
	ld	-40 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-39 (ix),a
	ld	e,-34 (ix)
	ld	d,-33 (ix)
	inc	-34 (ix)
	jr	NZ,00389$
	inc	-33 (ix)
	jr	NZ,00389$
	inc	-32 (ix)
	jr	NZ,00389$
	inc	-31 (ix)
00389$:
	ld	l,-40 (ix)
	ld	h,-39 (ix)
	add	hl, de
	ld	e,(hl)
;ugui/ugui.c:5377: color = (((fc & 0xFF) * b + (bc & 0xFF) * (256 - b)) >> 8) & 0xFF |//Blue component
	ld	-40 (ix),e
	ld	-39 (ix),#0x00
	ld	-38 (ix),#0x00
	ld	-37 (ix),#0x00
	push	de
	ld	l,-38 (ix)
	ld	h,-37 (ix)
	push	hl
	ld	l,-40 (ix)
	ld	h,-39 (ix)
	push	hl
	ld	l,-64 (ix)
	ld	h,-63 (ix)
	push	hl
	ld	l,-66 (ix)
	ld	h,-65 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-41 (ix),d
	ld	-42 (ix),e
	ld	-43 (ix),h
	ld	-44 (ix),l
	pop	de
	ld	h,#0x00
	xor	a, a
	sub	a, e
	ld	l,a
	ld	a,#0x01
	sbc	a, h
	ld	h,a
	ld	-70 (ix),l
	ld	-69 (ix),h
	ld	a,h
	rla
	sbc	a, a
	ld	-68 (ix),a
	ld	-67 (ix),a
	ld	l,-68 (ix)
	ld	h,-67 (ix)
	push	hl
	ld	l,-70 (ix)
	ld	h,-69 (ix)
	push	hl
	ld	l,-89 (ix)
	ld	h,-88 (ix)
	push	hl
	ld	l,-91 (ix)
	ld	h,-90 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,-44 (ix)
	add	a, l
	ld	l,a
	ld	a,-43 (ix)
	adc	a, h
	ld	h,a
	ld	a,-42 (ix)
	adc	a, e
	ld	e,a
	ld	a,-41 (ix)
	adc	a, d
	ld	d,a
	ld	b,#0x08
00390$:
	srl	d
	rr	e
	rr	h
	rr	l
	djnz	00390$
	ld	-44 (ix),l
	ld	-43 (ix),#0x00
	ld	-42 (ix),#0x00
	ld	-41 (ix),#0x00
;ugui/ugui.c:5378: (((fc & 0xFF00) * b + (bc & 0xFF00) * (256 - b)) >> 8)  & 0xFF00|//Green component
	ld	l,-38 (ix)
	ld	h,-37 (ix)
	push	hl
	ld	l,-40 (ix)
	ld	h,-39 (ix)
	push	hl
	ld	l,-81 (ix)
	ld	h,-80 (ix)
	push	hl
	ld	l,-83 (ix)
	ld	h,-82 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-45 (ix),d
	ld	-46 (ix),e
	ld	-47 (ix),h
	ld	-48 (ix),l
	ld	l,-68 (ix)
	ld	h,-67 (ix)
	push	hl
	ld	l,-70 (ix)
	ld	h,-69 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,-48 (ix)
	add	a, l
	ld	l,a
	ld	a,-47 (ix)
	adc	a, h
	ld	h,a
	ld	a,-46 (ix)
	adc	a, e
	ld	e,a
	ld	a,-45 (ix)
	adc	a, d
	ld	d,a
	ld	b,#0x08
00392$:
	srl	d
	rr	e
	rr	h
	rr	l
	djnz	00392$
	ld	l,#0x00
	ld	de,#0x0000
	ld	a,-44 (ix)
	or	a, l
	ld	-44 (ix),a
	ld	a,-43 (ix)
	or	a, h
	ld	-43 (ix),a
	ld	a,-42 (ix)
	or	a, e
	ld	-42 (ix),a
	ld	a,-41 (ix)
	or	a, d
	ld	-41 (ix),a
;ugui/ugui.c:5379: (((fc & 0xFF0000) * b + (bc & 0xFF0000) * (256 - b)) >> 8) & 0xFF0000; //Red component
	ld	l,-38 (ix)
	ld	h,-37 (ix)
	push	hl
	ld	l,-40 (ix)
	ld	h,-39 (ix)
	push	hl
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-37 (ix),d
	ld	-38 (ix),e
	ld	-39 (ix),h
	ld	-40 (ix),l
	ld	l,-68 (ix)
	ld	h,-67 (ix)
	push	hl
	ld	l,-70 (ix)
	ld	h,-69 (ix)
	push	hl
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	call	__mullong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,-40 (ix)
	add	a, l
	ld	l,a
	ld	a,-39 (ix)
	adc	a, h
	ld	h,a
	ld	a,-38 (ix)
	adc	a, e
	ld	e,a
	ld	a,-37 (ix)
	adc	a, d
	ld	d,a
	ld	b,#0x08
00394$:
	srl	d
	rr	e
	rr	h
	rr	l
	djnz	00394$
	ld	hl,#0x0000
	ld	d,#0x00
	ld	a,-44 (ix)
	or	a, l
	ld	c,a
	ld	a,-43 (ix)
	or	a, h
	ld	b,a
	ld	a,-42 (ix)
	or	a, e
	ld	e,a
	ld	a,-41 (ix)
	or	a, d
	ld	d,a
;ugui/ugui.c:5380: gui->pset(xo,yo,color);
	ld	hl,(_gui)
	ld	a,(hl)
	ld	-40 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-39 (ix),a
	push	de
	push	bc
	ld	l,-30 (ix)
	ld	h,-29 (ix)
	push	hl
	ld	l,-36 (ix)
	ld	h,-35 (ix)
	push	hl
	ld	l,-40 (ix)
	ld	h,-39 (ix)
	call	___sdcc_call_hl
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5381: xo++;
	inc	-36 (ix)
	jr	NZ,00396$
	inc	-35 (ix)
00396$:
;ugui/ugui.c:5374: for( i=0;i<actual_char_width;i++ )
	inc	-103 (ix)
	jp	NZ,00173$
	inc	-102 (ix)
	jp	00173$
00136$:
;ugui/ugui.c:5383: index += font->char_width - actual_char_width;
	ld	l,-58 (ix)
	ld	h,-57 (ix)
	ld	e,(hl)
	inc	hl
	ld	l,(hl)
	ld	a,e
	sub	a, -101 (ix)
	ld	e,a
	ld	a,l
	sbc	a, -100 (ix)
	ld	d,a
	ld	hl,#0x0000
	ld	a,-34 (ix)
	add	a, e
	ld	e,a
	ld	a,-33 (ix)
	adc	a, d
	ld	d,a
	ld	a,-32 (ix)
	adc	a, l
	ld	l,a
	ld	a,-31 (ix)
	adc	a, h
	ld	h,a
	ld	-99 (ix),e
	ld	-98 (ix),d
	ld	-97 (ix),l
	ld	-96 (ix),h
;ugui/ugui.c:5384: yo++;
	inc	-30 (ix)
	jr	NZ,00398$
	inc	-29 (ix)
00398$:
;ugui/ugui.c:5371: for( j=0;j<font->char_height;j++ )
	inc	-105 (ix)
	jp	NZ,00176$
	inc	-104 (ix)
	jp	00176$
00178$:
	ld	sp, ix
	pop	ix
	ret
_pal_window:
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0xFF,#0xFF,#0xFF,#0x00	; 16777215
	.byte #0xFF,#0xFF,#0xFF,#0x00	; 16777215
	.byte #0x69,#0x69,#0x69,#0x00	; 6908265
	.byte #0x69,#0x69,#0x69,#0x00	; 6908265
	.byte #0xE3,#0xE3,#0xE3,#0x00	; 14935011
	.byte #0xE3,#0xE3,#0xE3,#0x00	; 14935011
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
_pal_button_pressed:
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
_pal_button_released:
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0xFF,#0xFF,#0xFF,#0x00	; 16777215
	.byte #0xFF,#0xFF,#0xFF,#0x00	; 16777215
	.byte #0x69,#0x69,#0x69,#0x00	; 6908265
	.byte #0x69,#0x69,#0x69,#0x00	; 6908265
	.byte #0xE3,#0xE3,#0xE3,#0x00	; 14935011
	.byte #0xE3,#0xE3,#0xE3,#0x00	; 14935011
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
_pal_checkbox_pressed:
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
	.byte #0xF0,#0xF0,#0xF0,#0x00	; 15790320
_pal_checkbox_released:
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0x64,#0x64,#0x64,#0x00	; 6579300
	.byte #0xFF,#0xFF,#0xFF,#0x00	; 16777215
	.byte #0xFF,#0xFF,#0xFF,#0x00	; 16777215
	.byte #0x69,#0x69,#0x69,#0x00	; 6908265
	.byte #0x69,#0x69,#0x69,#0x00	; 6908265
	.byte #0xE3,#0xE3,#0xE3,#0x00	; 14935011
	.byte #0xE3,#0xE3,#0xE3,#0x00	; 14935011
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
	.byte #0xA0,#0xA0,#0xA0,#0x00	; 10526880
;ugui/ugui.c:5390: void _UG_PutText(UG_TEXT* txt)
;	---------------------------------
; Function _UG_PutText
; ---------------------------------
__UG_PutText::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-54
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5394: UG_S16 xs=txt->a.xs;
	ld	a,4 (ix)
	ld	-26 (ix),a
	ld	a,5 (ix)
	ld	-25 (ix),a
	ld	c,-26 (ix)
	ld	b,-25 (ix)
	push	bc
	pop	iy
	ld	a,4 (iy)
	ld	-44 (ix),a
	ld	a,5 (iy)
	ld	-43 (ix),a
;ugui/ugui.c:5395: UG_S16 ys=txt->a.ys;
	ld	c,-26 (ix)
	ld	b,-25 (ix)
	push	bc
	pop	iy
	ld	a,6 (iy)
	ld	-52 (ix),a
	ld	a,7 (iy)
	ld	-51 (ix),a
;ugui/ugui.c:5396: UG_S16 xe=txt->a.xe;
	ld	c,-26 (ix)
	ld	b,-25 (ix)
	push	bc
	pop	iy
	ld	a,8 (iy)
	ld	-32 (ix),a
	ld	a,9 (iy)
	ld	-31 (ix),a
;ugui/ugui.c:5397: UG_S16 ye=txt->a.ye;
	ld	c,-26 (ix)
	ld	b,-25 (ix)
	push	bc
	pop	iy
	ld	a,10 (iy)
	ld	-41 (ix),a
	ld	a,11 (iy)
	ld	-40 (ix),a
;ugui/ugui.c:5398: UG_U8  align=txt->align;
	ld	c,-26 (ix)
	ld	b,-25 (ix)
	push	bc
	pop	iy
	ld	a,20 (iy)
	ld	-42 (ix),a
;ugui/ugui.c:5399: UG_S16 char_width=txt->font->char_width;
	ld	a,-26 (ix)
	add	a, #0x02
	ld	-28 (ix),a
	ld	a,-25 (ix)
	adc	a, #0x00
	ld	-27 (ix),a
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	pop	iy
	ld	a,3 (iy)
	ld	-46 (ix),a
	ld	a,4 (iy)
	ld	-45 (ix),a
;ugui/ugui.c:5400: UG_S16 char_height=txt->font->char_height;
	push	de
	pop	iy
	ld	a,5 (iy)
	ld	-48 (ix),a
	ld	a,6 (iy)
	ld	-47 (ix),a
	ld	a,-48 (ix)
	ld	-12 (ix),a
	ld	a,-47 (ix)
	ld	-11 (ix),a
;ugui/ugui.c:5401: UG_S16 char_h_space=txt->h_space;
	ld	c,-26 (ix)
	ld	b,-25 (ix)
	push	bc
	pop	iy
	ld	a,21 (iy)
	ld	-39 (ix),a
	ld	a,22 (iy)
	ld	-38 (ix),a
;ugui/ugui.c:5402: UG_S16 char_v_space=txt->v_space;
	ld	c,-26 (ix)
	ld	b,-25 (ix)
	push	bc
	pop	iy
	ld	a,23 (iy)
	ld	-34 (ix),a
	ld	a,24 (iy)
	ld	-33 (ix),a
;ugui/ugui.c:5406: char* str = txt->str;
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	ld	a,(hl)
	ld	-37 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-36 (ix),a
;ugui/ugui.c:5409: if ( txt->font->p == NULL ) return;
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,b
	or	a,c
	jp	Z,00140$
;ugui/ugui.c:5410: if ( str == NULL ) return;
	ld	a,-36 (ix)
	or	a,-37 (ix)
	jp	Z,00140$
;ugui/ugui.c:5411: if ( (ye - ys) < txt->font->char_height ) return;
	ld	a,-41 (ix)
	sub	a, -52 (ix)
	ld	-10 (ix),a
	ld	a,-40 (ix)
	sbc	a, -51 (ix)
	ld	-9 (ix),a
	ld	a,-10 (ix)
	sub	a, -48 (ix)
	ld	a,-9 (ix)
	sbc	a, -47 (ix)
	jp	PO, 00236$
	xor	a, #0x80
00236$:
	jp	P,00151$
	jp	00140$
;ugui/ugui.c:5415: while ( *c != 0 )
00151$:
	ld	hl,#0x0001
	ex	(sp), hl
	ld	a,-37 (ix)
	ld	-50 (ix),a
	ld	a,-36 (ix)
	ld	-49 (ix),a
00109$:
	ld	l,-50 (ix)
	ld	h,-49 (ix)
	ld	a,(hl)
	or	a, a
	jr	Z,00111$
;ugui/ugui.c:5417: if ( *c == '\n' ) rc++;
	sub	a, #0x0A
	jr	NZ,00108$
	inc	-54 (ix)
	jr	NZ,00239$
	inc	-53 (ix)
00239$:
00108$:
;ugui/ugui.c:5418: c++;
	inc	-50 (ix)
	jr	NZ,00109$
	inc	-49 (ix)
	jr	00109$
00111$:
;ugui/ugui.c:5421: yp = 0;
	ld	hl,#0x0000
;ugui/ugui.c:5422: if ( align & (ALIGN_V_CENTER | ALIGN_V_BOTTOM) )
	ld	a,-42 (ix)
	and	a, #0x30
	jr	Z,00115$
;ugui/ugui.c:5424: yp = ye - ys + 1;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
;ugui/ugui.c:5425: yp -= char_height*rc;
	ld	e,-12 (ix)
	ld	d,-11 (ix)
	push	hl
	ld	c,-54 (ix)
	ld	b,-53 (ix)
	push	bc
	push	de
	call	__mulint
	pop	af
	pop	af
	ex	de,hl
	pop	hl
	cp	a, a
	sbc	hl, de
;ugui/ugui.c:5426: yp -= char_v_space*(rc-1);
	ld	c,-54 (ix)
	ld	b,-53 (ix)
	dec	bc
	ld	e,-34 (ix)
	ld	d,-33 (ix)
	push	hl
	push	bc
	push	de
	call	__mulint
	pop	af
	pop	af
	ex	de,hl
	pop	hl
	cp	a, a
	sbc	hl, de
;ugui/ugui.c:5427: if ( yp < 0 ) return;
	bit	7, h
	jp	NZ,00140$
00115$:
;ugui/ugui.c:5429: if ( align & ALIGN_V_CENTER ) yp >>= 1;
	bit	4, -42 (ix)
	jr	Z,00117$
	sra	h
	rr	l
00117$:
;ugui/ugui.c:5430: yp += ys;
	ld	a,-52 (ix)
	add	a, l
	ld	-10 (ix),a
	ld	a,-51 (ix)
	adc	a, h
	ld	-9 (ix),a
;ugui/ugui.c:5432: while( 1 )
	ld	a,-32 (ix)
	sub	a, -44 (ix)
	ld	c,a
	ld	a,-31 (ix)
	sbc	a, -43 (ix)
	ld	b,a
	inc	bc
	ld	a,-42 (ix)
	and	a, #0x02
	ld	-29 (ix),a
	ld	a,-12 (ix)
	add	a, -34 (ix)
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a, -33 (ix)
	ld	-11 (ix),a
00138$:
;ugui/ugui.c:5435: c=str;
	ld	e,-37 (ix)
	ld	d,-36 (ix)
;ugui/ugui.c:5436: wl = 0;
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
;ugui/ugui.c:5437: while( (*c != 0) && (*c != '\n') )
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	a,(hl)
	ld	-4 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-3 (ix),a
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,7 (iy)
	ld	-16 (ix),a
	ld	a,8 (iy)
	ld	-15 (ix),a
	ld	a,-4 (ix)
	ld	-14 (ix),a
	ld	a,-3 (ix)
	ld	-13 (ix),a
00122$:
	ld	a,(de)
	ld	-30 (ix), a
	or	a, a
	jp	Z,00124$
	ld	a,-30 (ix)
	sub	a, #0x0A
	jp	Z,00124$
;ugui/ugui.c:5439: if (*c < txt->font->start_char || *c > txt->font->end_char) {c++; continue;}
	ld	a,-30 (ix)
	ld	-8 (ix),a
	ld	a,-30 (ix)
	rla
	sbc	a, a
	ld	-7 (ix),a
	inc	de
	ld	-6 (ix),e
	ld	-5 (ix),d
	ld	a,-8 (ix)
	sub	a, -16 (ix)
	ld	a,-7 (ix)
	sbc	a, -15 (ix)
	jr	C,00118$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,d
	sub	a, -8 (ix)
	ld	a,h
	sbc	a, -7 (ix)
	jr	NC,00119$
00118$:
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	jr	00122$
00119$:
;ugui/ugui.c:5441: wl += (txt->font->widths ? txt->font->widths[*c - txt->font->start_char] : char_width) + char_h_space;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	de, #0x000B
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a,e
	jr	Z,00142$
	ld	l,-30 (ix)
	ld	a,-30 (ix)
	rla
	sbc	a, a
	ld	h,a
	ld	a,l
	sub	a, -16 (ix)
	ld	l,a
	ld	a,h
	sbc	a, -15 (ix)
	ld	h,a
	add	hl,de
	ld	l,(hl)
	ld	h,#0x00
	jr	00143$
00142$:
	ld	l,-46 (ix)
	ld	h,-45 (ix)
00143$:
	ld	e,-39 (ix)
	ld	d,-38 (ix)
	add	hl,de
	ld	a,-2 (ix)
	add	a, l
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, h
	ld	-1 (ix),a
;ugui/ugui.c:5442: c++;
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	jp	00122$
00124$:
;ugui/ugui.c:5444: wl -= char_h_space;
	ld	h,-39 (ix)
	ld	l,-38 (ix)
	ld	a,-2 (ix)
	sub	a, h
	ld	e,a
	ld	a,-1 (ix)
	sbc	a, l
	ld	d,a
;ugui/ugui.c:5446: xp = xe - xs + 1;
	ld	l, c
	ld	h, b
;ugui/ugui.c:5447: xp -= wl;
	cp	a, a
	sbc	hl, de
;ugui/ugui.c:5448: if ( xp < 0 ) return;
	bit	7, h
	jp	NZ,00140$
;ugui/ugui.c:5450: if ( align & ALIGN_H_LEFT ) xp = 0;
	ld	a,-42 (ix)
	rrca
	jr	NC,00130$
	ld	hl,#0x0000
	jr	00131$
00130$:
;ugui/ugui.c:5451: else if ( align & ALIGN_H_CENTER ) xp >>= 1;
	ld	a,-29 (ix)
	or	a, a
	jr	Z,00131$
	sra	h
	rr	l
00131$:
;ugui/ugui.c:5452: xp += xs;
	ld	a,l
	add	a, -44 (ix)
	ld	-6 (ix),a
	ld	a,h
	adc	a, -43 (ix)
	ld	-5 (ix),a
;ugui/ugui.c:5454: while( (*str != '\n') )
	ld	a,-26 (ix)
	ld	-8 (ix),a
	ld	a,-25 (ix)
	ld	-7 (ix),a
	ld	a,-26 (ix)
	ld	-14 (ix),a
	ld	a,-25 (ix)
	ld	-13 (ix),a
	ld	a,-37 (ix)
	ld	-16 (ix),a
	ld	a,-36 (ix)
	ld	-15 (ix),a
00134$:
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	h,(hl)
	ld	a,h
	sub	a, #0x0A
	jp	Z,00136$
;ugui/ugui.c:5456: chr = *str++;
	inc	-16 (ix)
	jr	NZ,00246$
	inc	-15 (ix)
00246$:
	ld	a,-16 (ix)
	ld	-37 (ix),a
	ld	a,-15 (ix)
	ld	-36 (ix),a
;ugui/ugui.c:5457: if ( chr == 0 ) return;
	ld	-35 (ix), h
	ld	a, h
	or	a, a
	jp	Z,00140$
;ugui/ugui.c:5458: _UG_PutChar(chr,xp,yp,txt->fc,txt->bc,txt->font);
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	bc
	ld	bc, #0x0010
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	-24 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-23 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-22 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-21 (ix),a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	bc
	ld	bc, #0x000C
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	-20 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-19 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
	push	bc
	push	de
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	a,-35 (ix)
	push	af
	inc	sp
	call	__UG_PutChar
	ld	hl,#15
	add	hl,sp
	ld	sp,hl
	pop	bc
;ugui/ugui.c:5459: xp += (txt->font->widths ? txt->font->widths[chr - txt->font->start_char] : char_width) + char_h_space;
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	a,(hl)
	ld	-20 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-19 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	de, #0x000B
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a,e
	jr	Z,00144$
	ld	a,-35 (ix)
	ld	-24 (ix),a
	ld	a,-35 (ix)
	rla
	sbc	a, a
	ld	-23 (ix),a
	push	hl
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,7 (iy)
	ld	-20 (ix),a
	ld	a,8 (iy)
	ld	-19 (ix),a
	ld	a, -24 (ix)
	ld	h, -23 (ix)
	sub	a, -20 (ix)
	ld	l,a
	ld	a,h
	sbc	a, -19 (ix)
	ld	h,a
	add	hl,de
	ld	l,(hl)
	ld	h,#0x00
	jr	00145$
00144$:
	ld	l,-46 (ix)
	ld	h,-45 (ix)
00145$:
	ld	e,-39 (ix)
	ld	d,-38 (ix)
	add	hl,de
	ld	a,-6 (ix)
	add	a, l
	ld	-6 (ix),a
	ld	a,-5 (ix)
	adc	a, h
	ld	-5 (ix),a
	jp	00134$
00136$:
;ugui/ugui.c:5461: str++;
	inc	-37 (ix)
	jr	NZ,00247$
	inc	-36 (ix)
00247$:
;ugui/ugui.c:5462: yp += char_height + char_v_space;
	ld	a,-10 (ix)
	add	a, -12 (ix)
	ld	-10 (ix),a
	ld	a,-9 (ix)
	adc	a, -11 (ix)
	ld	-9 (ix),a
	jp	00138$
00140$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5466: UG_OBJECT* _UG_GetFreeObject( UG_WINDOW* wnd )
;	---------------------------------
; Function _UG_GetFreeObject
; ---------------------------------
__UG_GetFreeObject::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:5471: for(i=0;i<wnd->objcnt;i++)
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	-2 (ix),#0x00
	ld	bc,#0x0000
00106$:
	ld	a,(de)
	ld	h,a
	ld	a,-2 (ix)
	sub	a, h
	jr	NC,00104$
;ugui/ugui.c:5473: obj = (UG_OBJECT*)(&wnd->objlst[i]);
	ld	l, e
	ld	h, d
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,bc
;ugui/ugui.c:5474: if ( (obj->state & OBJ_STATE_FREE) && (obj->state & OBJ_STATE_VALID) )
	ld	a,(hl)
	ld	-1 (ix),a
	bit	0, -1 (ix)
	jr	Z,00107$
	bit	1, a
;ugui/ugui.c:5477: return obj;
	jr	NZ,00108$
00107$:
;ugui/ugui.c:5471: for(i=0;i<wnd->objcnt;i++)
	ld	hl,#0x0019
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	-2 (ix)
	jr	00106$
00104$:
;ugui/ugui.c:5480: return NULL;
	ld	hl,#0x0000
00108$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5483: UG_OBJECT* _UG_SearchObject( UG_WINDOW* wnd, UG_U8 type, UG_U8 id )
;	---------------------------------
; Function _UG_SearchObject
; ---------------------------------
__UG_SearchObject::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;ugui/ugui.c:5488: for(i=0;i<wnd->objcnt;i++)
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
	ld	-4 (ix),#0x00
	ld	de,#0x0000
00109$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-4 (ix)
	sub	a,(hl)
	jr	NC,00107$
;ugui/ugui.c:5490: obj = (UG_OBJECT*)(&wnd->objlst[i]);
	pop	bc
	pop	hl
	push	hl
	push	bc
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	c, l
	ld	b, h
;ugui/ugui.c:5491: if ( !(obj->state & OBJ_STATE_FREE) && (obj->state & OBJ_STATE_VALID) )
	ld	a,(bc)
	bit	0,a
	jr	NZ,00110$
	bit	1, a
	jr	Z,00110$
;ugui/ugui.c:5493: if ( (obj->type == type) && (obj->id == id) )
	push	bc
	pop	iy
	ld	a,20 (iy)
	ld	-3 (ix),a
	ld	a,6 (ix)
	sub	a, -3 (ix)
	jr	NZ,00110$
	push	bc
	pop	iy
	ld	a,21 (iy)
	ld	-3 (ix),a
	ld	a,7 (ix)
	sub	a, -3 (ix)
	jr	NZ,00110$
;ugui/ugui.c:5496: return obj;
	ld	l, c
	ld	h, b
	jr	00111$
00110$:
;ugui/ugui.c:5488: for(i=0;i<wnd->objcnt;i++)
	ld	hl,#0x0019
	add	hl,de
	ex	de,hl
	inc	-4 (ix)
	jr	00109$
00107$:
;ugui/ugui.c:5500: return NULL;
	ld	hl,#0x0000
00111$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5503: UG_RESULT _UG_DeleteObject( UG_WINDOW* wnd, UG_U8 type, UG_U8 id )
;	---------------------------------
; Function _UG_DeleteObject
; ---------------------------------
__UG_DeleteObject::
;ugui/ugui.c:5507: obj = _UG_SearchObject( wnd, type, id );
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:5510: if ( obj != NULL )
	ld	a,b
	or	a,c
	jr	Z,00105$
;ugui/ugui.c:5513: if ( (obj->state & OBJ_STATE_VISIBLE) || (obj->state & OBJ_STATE_UPDATE) ) return UG_RESULT_FAIL;
	ld	a,(bc)
	bit	3, a
	jr	NZ,00101$
	bit	5, a
	jr	Z,00102$
00101$:
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:5514: obj->state = OBJ_STATE_INIT;
	ld	a,#0x03
	ld	(bc),a
;ugui/ugui.c:5515: obj->data = NULL;
	ld	hl,#0x0017
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5516: obj->event = 0;
	ld	hl,#0x0016
	add	hl,bc
	ld	(hl),#0x00
;ugui/ugui.c:5517: obj->id = 0;
	ld	hl,#0x0015
	add	hl,bc
	ld	(hl),#0x00
;ugui/ugui.c:5518: obj->touch_state = 0;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:5519: obj->type = 0;
	ld	hl,#0x0014
	add	hl,bc
	ld	(hl),#0x00
;ugui/ugui.c:5520: obj->update = NULL;
	ld	l,c
	ld	h,b
	inc	hl
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5521: return UG_RESULT_OK;
	ld	l,#0x00
	ret
00105$:
;ugui/ugui.c:5523: return UG_RESULT_FAIL;
	ld	l,#0xFF
	ret
;ugui/ugui.c:5526: void _UG_ProcessTouchData( UG_WINDOW* wnd )
;	---------------------------------
; Function _UG_ProcessTouchData
; ---------------------------------
__UG_ProcessTouchData::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-20
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5535: xp = gui->touch.xp;
	ld	de,(_gui)
	push	de
	pop	iy
	ld	a,7 (iy)
	ld	-20 (ix),a
	ld	a,8 (iy)
	ld	-19 (ix),a
;ugui/ugui.c:5536: yp = gui->touch.yp;
	push	de
	pop	iy
	ld	a,9 (iy)
	ld	-18 (ix),a
	ld	a,10 (iy)
	ld	-17 (ix),a
;ugui/ugui.c:5537: tchstate = gui->touch.state;
	push	de
	pop	iy
	ld	a,6 (iy)
	ld	-10 (ix),a
;ugui/ugui.c:5539: objcnt = wnd->objcnt;
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	a,(hl)
	ld	-14 (ix),a
	ld	-13 (ix),#0x00
;ugui/ugui.c:5540: for(i=0; i<objcnt; i++)
	ld	a,-20 (ix)
	inc	a
	jr	NZ,00210$
	ld	a,-19 (ix)
	inc	a
	jr	NZ,00210$
	ld	a,#0x01
	jr	00211$
00210$:
	xor	a,a
00211$:
	ld	-7 (ix),a
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	-16 (ix),#0x00
	ld	-15 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00133$:
	ld	a,-16 (ix)
	sub	a, -14 (ix)
	ld	a,-15 (ix)
	sbc	a, -13 (ix)
	jp	NC,00135$
;ugui/ugui.c:5542: obj = (UG_OBJECT*)&wnd->objlst[i];
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-3 (ix),a
	ld	a,-2 (ix)
	add	a, -4 (ix)
	ld	-12 (ix),a
	ld	a,-1 (ix)
	adc	a, -3 (ix)
	ld	-11 (ix),a
;ugui/ugui.c:5543: objstate = obj->state;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c,(hl)
;ugui/ugui.c:5544: objtouch = obj->touch_state;
	ld	a,-12 (ix)
	add	a, #0x01
	ld	-4 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-5 (ix),a
;ugui/ugui.c:5545: if ( !(objstate & OBJ_STATE_FREE) && (objstate & OBJ_STATE_VALID) && (objstate & OBJ_STATE_VISIBLE) && !(objstate & OBJ_STATE_REDRAW))
	ld	a,c
	rrca
	jp	C,00127$
	bit	1, c
	jp	Z,00127$
	bit	3, c
	jp	Z,00127$
	bit	6, c
	jp	NZ,00127$
;ugui/ugui.c:5550: if ( !(objtouch & OBJ_TOUCH_STATE_IS_PRESSED) )
	ld	a,-5 (ix)
	and	a, #0x40
	ld	c,a
;ugui/ugui.c:5548: if ( (tchstate) && xp != -1 )
	ld	a,-10 (ix)
	or	a, a
	jp	Z,00123$
	ld	a,-7 (ix)
;ugui/ugui.c:5550: if ( !(objtouch & OBJ_TOUCH_STATE_IS_PRESSED) )
	or	a,a
	jp	NZ,00123$
	or	a,c
	jr	NZ,00102$
;ugui/ugui.c:5552: objtouch |= OBJ_TOUCH_STATE_PRESSED_OUTSIDE_OBJECT | OBJ_TOUCH_STATE_CHANGED;
	ld	a,-5 (ix)
	or	a, #0x05
;ugui/ugui.c:5553: objtouch &= ~(OBJ_TOUCH_STATE_RELEASED_ON_OBJECT | OBJ_TOUCH_STATE_RELEASED_OUTSIDE_OBJECT | OBJ_TOUCH_STATE_CLICK_ON_OBJECT);
	and	a, #0x67
	ld	-5 (ix),a
00102$:
;ugui/ugui.c:5555: objtouch &= ~OBJ_TOUCH_STATE_IS_PRESSED_ON_OBJECT;
	ld	c,-5 (ix)
	res	5, c
;ugui/ugui.c:5556: if ( xp >= obj->a_abs.xs )
	ld	a,-12 (ix)
	add	a, #0x04
	ld	e,a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	d,a
	ld	l, e
	ld	h, d
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,-20 (ix)
	sub	a, b
	ld	a,-19 (ix)
	sbc	a, h
	jp	PO, 00218$
	xor	a, #0x80
00218$:
	jp	M,00112$
;ugui/ugui.c:5558: if ( xp <= obj->a_abs.xe )
	push	de
	pop	iy
	ld	h,4 (iy)
	ld	l,5 (iy)
	ld	a,h
	sub	a, -20 (ix)
	ld	a,l
	sbc	a, -19 (ix)
	jp	PO, 00219$
	xor	a, #0x80
00219$:
	jp	M,00112$
;ugui/ugui.c:5560: if ( yp >= obj->a_abs.ys )
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,-18 (ix)
	sub	a, b
	ld	a,-17 (ix)
	sbc	a, h
	jp	PO, 00220$
	xor	a, #0x80
00220$:
	jp	M,00112$
;ugui/ugui.c:5562: if ( yp <= obj->a_abs.ye )
	push	de
	pop	iy
	ld	h,6 (iy)
	ld	l,7 (iy)
	ld	a,h
	sub	a, -18 (ix)
	ld	a,l
	sbc	a, -17 (ix)
	jp	PO, 00221$
	xor	a, #0x80
00221$:
	jp	M,00112$
;ugui/ugui.c:5564: objtouch |= OBJ_TOUCH_STATE_IS_PRESSED_ON_OBJECT;
	set	5, c
;ugui/ugui.c:5565: if ( !(objtouch & OBJ_TOUCH_STATE_IS_PRESSED) )
	bit	6, c
	jr	NZ,00112$
;ugui/ugui.c:5567: objtouch &= ~OBJ_TOUCH_STATE_PRESSED_OUTSIDE_OBJECT;
	ld	a,c
	and	a, #0xFB
;ugui/ugui.c:5568: objtouch |= OBJ_TOUCH_STATE_PRESSED_ON_OBJECT;
	set	1, a
	ld	c,a
00112$:
;ugui/ugui.c:5574: objtouch |= OBJ_TOUCH_STATE_IS_PRESSED;
	ld	a,c
	set	6, a
	ld	-5 (ix),a
	jr	00127$
00123$:
;ugui/ugui.c:5576: else if ( objtouch & OBJ_TOUCH_STATE_IS_PRESSED )
	ld	a,c
	or	a, a
	jr	Z,00127$
;ugui/ugui.c:5578: if ( objtouch & OBJ_TOUCH_STATE_IS_PRESSED_ON_OBJECT )
	bit	5, -5 (ix)
	jr	Z,00116$
;ugui/ugui.c:5580: if ( objtouch & OBJ_TOUCH_STATE_PRESSED_ON_OBJECT ) objtouch |= OBJ_TOUCH_STATE_CLICK_ON_OBJECT;
	bit	1, -5 (ix)
	jr	Z,00114$
	set	7, -5 (ix)
00114$:
;ugui/ugui.c:5581: objtouch |= OBJ_TOUCH_STATE_RELEASED_ON_OBJECT;
	ld	a,-5 (ix)
	set	3, a
	ld	-6 (ix),a
	jr	00117$
00116$:
;ugui/ugui.c:5585: objtouch |= OBJ_TOUCH_STATE_RELEASED_OUTSIDE_OBJECT;
	ld	a,-5 (ix)
	set	4, a
	ld	-6 (ix),a
00117$:
;ugui/ugui.c:5587: if ( objtouch & OBJ_TOUCH_STATE_IS_PRESSED )
	bit	6, -6 (ix)
	jr	Z,00119$
;ugui/ugui.c:5589: objtouch |= OBJ_TOUCH_STATE_CHANGED;
	set	0, -6 (ix)
00119$:
;ugui/ugui.c:5591: objtouch &= ~(OBJ_TOUCH_STATE_PRESSED_OUTSIDE_OBJECT | OBJ_TOUCH_STATE_PRESSED_ON_OBJECT | OBJ_TOUCH_STATE_IS_PRESSED);
	ld	a,-6 (ix)
	and	a, #0xB9
	ld	-5 (ix),a
00127$:
;ugui/ugui.c:5594: obj->touch_state = objtouch;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,-5 (ix)
	ld	(hl),a
;ugui/ugui.c:5540: for(i=0; i<objcnt; i++)
	ld	a,-2 (ix)
	add	a, #0x19
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	inc	-16 (ix)
	jp	NZ,00133$
	inc	-15 (ix)
	jp	00133$
00135$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5598: void _UG_UpdateObjects( UG_WINDOW* wnd )
;	---------------------------------
; Function _UG_UpdateObjects
; ---------------------------------
__UG_UpdateObjects::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5606: objcnt = wnd->objcnt;
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	a,(bc)
	ld	-12 (ix),a
	ld	-11 (ix),#0x00
;ugui/ugui.c:5607: for(i=0; i<objcnt; i++)
	ld	-2 (ix),c
	ld	-1 (ix),b
	ld	de,#0x0000
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
00113$:
	ld	a,e
	sub	a, -12 (ix)
	ld	a,d
	sbc	a, -11 (ix)
	jp	NC,00115$
;ugui/ugui.c:5609: obj = (UG_OBJECT*)&wnd->objlst[i];
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	add	a, -6 (ix)
	ld	h,a
	ld	a,l
	adc	a, -5 (ix)
	ld	-8 (ix), h
	ld	-7 (ix), a
;ugui/ugui.c:5610: objstate = obj->state;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	ld	-9 (ix),a
;ugui/ugui.c:5611: objtouch = obj->touch_state;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	inc	hl
	ld	a,(hl)
	ld	-10 (ix),a
;ugui/ugui.c:5612: if ( !(objstate & OBJ_STATE_FREE) && (objstate & OBJ_STATE_VALID) )
	ld	a,-9 (ix)
	rrca
	jr	C,00114$
	bit	1, -9 (ix)
	jr	Z,00114$
;ugui/ugui.c:5616: obj->update(wnd,obj);
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	inc	hl
	inc	hl
	push	hl
	pop	iy
	pop	hl
;ugui/ugui.c:5614: if ( objstate & OBJ_STATE_UPDATE )
	bit	5, -9 (ix)
	jr	Z,00102$
;ugui/ugui.c:5616: obj->update(wnd,obj);
	ld	a,0 (iy)
	ld	-4 (ix),a
	ld	a,1 (iy)
	ld	-3 (ix),a
	push	bc
	push	de
	push	iy
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	call	___sdcc_call_hl
	pop	af
	pop	af
	pop	iy
	pop	de
	pop	bc
00102$:
;ugui/ugui.c:5618: if ( (objstate & OBJ_STATE_VISIBLE) && (objstate & OBJ_STATE_TOUCH_ENABLE) )
	bit	3, -9 (ix)
	jr	Z,00114$
	bit	7, -9 (ix)
	jr	Z,00114$
;ugui/ugui.c:5620: if ( (objtouch & (OBJ_TOUCH_STATE_CHANGED | OBJ_TOUCH_STATE_IS_PRESSED)) )
	ld	a,-10 (ix)
	and	a, #0x41
	jr	Z,00114$
;ugui/ugui.c:5622: obj->update(wnd,obj);
	ld	a,0 (iy)
	ld	-4 (ix),a
	ld	a,1 (iy)
	ld	-3 (ix),a
	push	bc
	push	de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	call	___sdcc_call_hl
	pop	af
	pop	af
	pop	de
	pop	bc
00114$:
;ugui/ugui.c:5607: for(i=0; i<objcnt; i++)
	ld	a,-6 (ix)
	add	a, #0x19
	ld	-6 (ix),a
	ld	a,-5 (ix)
	adc	a, #0x00
	ld	-5 (ix),a
	inc	de
	jp	00113$
00115$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5629: void _UG_HandleEvents( UG_WINDOW* wnd )
;	---------------------------------
; Function _UG_HandleEvents
; ---------------------------------
__UG_HandleEvents::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5635: msg.src = NULL;
	ld	hl,#0x0000
	ld	((__UG_HandleEvents_msg_1_350 + 0x0004)), hl
;ugui/ugui.c:5642: msg.type = MSG_TYPE_OBJECT;
	ld	hl,#__UG_HandleEvents_msg_1_350
	ld	(hl),#0x02
;ugui/ugui.c:5643: objcnt = wnd->objcnt;
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	c,(hl)
	ld	b,#0x00
;ugui/ugui.c:5644: for(i=0; i<objcnt; i++)
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	de,#0x0000
	ld	-8 (ix),#0x00
	ld	-7 (ix),#0x00
00108$:
	ld	a,e
	sub	a, c
	ld	a,d
	sbc	a, b
	jp	NC,00110$
;ugui/ugui.c:5646: obj = (UG_OBJECT*)&wnd->objlst[i];
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	add	a, -8 (ix)
	ld	l,a
	ld	a,h
	adc	a, -7 (ix)
	ld	h,a
	ld	-10 (ix),l
	ld	-9 (ix),h
;ugui/ugui.c:5647: objstate = obj->state;
	ld	a,(hl)
;ugui/ugui.c:5648: if ( !(objstate & OBJ_STATE_FREE) && (objstate & OBJ_STATE_VALID) )
	ld	-11 (ix), a
	rrca
	jp	C,00109$
	bit	1, -11 (ix)
	jr	Z,00109$
;ugui/ugui.c:5650: if ( obj->event != OBJ_EVENT_NONE )
	push	hl
	pop	iy
	ld	a,22 (iy)
	or	a, a
	jr	Z,00109$
;ugui/ugui.c:5652: msg.src = &obj;
	ld	hl,#0x0001
	add	hl,sp
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	hl,#(__UG_HandleEvents_msg_1_350 + 0x0004)
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;ugui/ugui.c:5653: msg.id = obj->type;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	bc
	ld	bc, #0x0014
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	(#(__UG_HandleEvents_msg_1_350 + 0x0001)),a
;ugui/ugui.c:5654: msg.sub_id = obj->id;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	bc
	ld	bc, #0x0015
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	(#(__UG_HandleEvents_msg_1_350 + 0x0002)),a
;ugui/ugui.c:5655: msg.event = obj->event;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	bc
	ld	bc, #0x0016
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	(#(__UG_HandleEvents_msg_1_350 + 0x0003)),a
;ugui/ugui.c:5657: wnd->cb( &msg );
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	bc
	ld	bc, #0x002D
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	iy,#__UG_HandleEvents_msg_1_350
	push	bc
	push	de
	push	iy
	call	___sdcc_call_hl
	pop	af
	pop	de
	pop	bc
;ugui/ugui.c:5659: obj->event = OBJ_EVENT_NONE;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	de
	ld	de,#0x0016
	add	hl, de
	pop	de
	ld	(hl),#0x00
00109$:
;ugui/ugui.c:5644: for(i=0; i<objcnt; i++)
	ld	a,-8 (ix)
	add	a, #0x19
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-7 (ix),a
	inc	de
	jp	00108$
00110$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5665: void _UG_DrawObjectFrame( UG_S16 xs, UG_S16 ys, UG_S16 xe, UG_S16 ye, UG_COLOR* p )
;	---------------------------------
; Function _UG_DrawObjectFrame
; ---------------------------------
__UG_DrawObjectFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5668: UG_DrawLine(xs, ys  , xe-1, ys  , *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	ld	a,8 (ix)
	add	a,#0xFF
	ld	-14 (ix),a
	ld	a,9 (ix)
	adc	a,#0xFF
	ld	-13 (ix),a
	push	bc
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5669: UG_DrawLine(xs, ys+1, xs  , ye-1, *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	ld	a,10 (ix)
	add	a,#0xFF
	ld	-2 (ix),a
	ld	a,11 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	ld	a,6 (ix)
	add	a, #0x01
	ld	-4 (ix),a
	ld	a,7 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	push	bc
	push	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5670: UG_DrawLine(xs, ye  , xe  , ye  , *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	push	bc
	push	de
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5671: UG_DrawLine(xe, ys  , xe  , ye-1, *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	push	bc
	push	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5673: UG_DrawLine(xs+1, ys+1, xe-2, ys+1, *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	ld	a,8 (ix)
	add	a,#0xFE
	ld	-6 (ix),a
	ld	a,9 (ix)
	adc	a,#0xFF
	ld	-5 (ix),a
	ld	a,4 (ix)
	add	a, #0x01
	ld	-8 (ix),a
	ld	a,5 (ix)
	adc	a, #0x00
	ld	-7 (ix),a
	push	bc
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5674: UG_DrawLine(xs+1, ys+2, xs+1, ye-2, *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	ld	a,10 (ix)
	add	a,#0xFE
	ld	-10 (ix),a
	ld	a,11 (ix)
	adc	a,#0xFF
	ld	-9 (ix),a
	ld	a,6 (ix)
	add	a, #0x02
	ld	-12 (ix),a
	ld	a,7 (ix)
	adc	a, #0x00
	ld	-11 (ix),a
	push	bc
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5675: UG_DrawLine(xs+1, ye-1, xe-1, ye-1, *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	push	bc
	push	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5676: UG_DrawLine(xe-1, ys+1, xe-1, ye-2, *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	push	bc
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5678: UG_DrawLine(xs+2, ys+2, xe-3, ys+2, *p++);
	ld	d,12 (ix)
	ld	e,13 (ix)
	ld	l, d
	ld	h, e
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	l,(hl)
	ld	h,a
	ld	a,d
	add	a, #0x04
	ld	12 (ix),a
	ld	a,e
	adc	a, #0x00
	ld	13 (ix),a
	ld	a,8 (ix)
	add	a,#0xFD
	ld	e,a
	ld	a,9 (ix)
	adc	a,#0xFF
	ld	d,a
	ld	a,4 (ix)
	add	a, #0x02
	ld	-8 (ix),a
	ld	a,5 (ix)
	adc	a, #0x00
	ld	-7 (ix),a
	push	hl
	push	bc
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	push	de
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5679: UG_DrawLine(xs+2, ys+3, xs+2, ye-3, *p++);
	ld	e,12 (ix)
	ld	d,13 (ix)
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	l,(hl)
	ld	h,a
	ld	a,e
	add	a, #0x04
	ld	12 (ix),a
	ld	a,d
	adc	a, #0x00
	ld	13 (ix),a
	ld	a,10 (ix)
	add	a,#0xFD
	ld	-4 (ix),a
	ld	a,11 (ix)
	adc	a,#0xFF
	ld	-3 (ix),a
	ld	e,6 (ix)
	ld	d,7 (ix)
	inc	de
	inc	de
	inc	de
	push	hl
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	push	de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5680: UG_DrawLine(xs+2, ye-2, xe-2, ye-2, *p++);
	ld	l,12 (ix)
	ld	h,13 (ix)
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,l
	add	a, #0x04
	ld	12 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	13 (ix),a
	push	bc
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5681: UG_DrawLine(xe-2, ys+2, xe-2, ye-3, *p);
	ld	l,12 (ix)
	ld	h,13 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	bc
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5685: void _UG_SendObjectPrerenderEvent(UG_WINDOW *wnd,UG_OBJECT *obj)
;	---------------------------------
; Function _UG_SendObjectPrerenderEvent
; ---------------------------------
__UG_SendObjectPrerenderEvent::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5688: msg.event = OBJ_EVENT_PRERENDER;
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x02
;ugui/ugui.c:5689: msg.type = MSG_TYPE_OBJECT;
	ld	a,#0x02
	ld	(de),a
;ugui/ugui.c:5690: msg.id = obj->type;
	ld	c, e
	ld	b, d
	inc	bc
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	push	bc
	ld	bc, #0x0014
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	(bc),a
;ugui/ugui.c:5691: msg.sub_id = obj->id;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a,21 (iy)
	ld	(bc),a
;ugui/ugui.c:5692: msg.src = obj;
	ld	hl,#0x0004
	add	hl,de
	ld	b,6 (ix)
	ld	c,7 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),c
;ugui/ugui.c:5694: wnd->cb(&msg);
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	bc, #0x002D
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	de
	call	___sdcc_call_hl
	ld	sp,ix
	pop	ix
	ret
;ugui/ugui.c:5699: void _UG_SendObjectPostrenderEvent(UG_WINDOW *wnd,UG_OBJECT *obj)
;	---------------------------------
; Function _UG_SendObjectPostrenderEvent
; ---------------------------------
__UG_SendObjectPostrenderEvent::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5702: msg.event = OBJ_EVENT_POSTRENDER;
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x03
;ugui/ugui.c:5703: msg.type = MSG_TYPE_OBJECT;
	ld	a,#0x02
	ld	(de),a
;ugui/ugui.c:5704: msg.id = obj->type;
	ld	c, e
	ld	b, d
	inc	bc
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	push	bc
	ld	bc, #0x0014
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	(bc),a
;ugui/ugui.c:5705: msg.sub_id = obj->id;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a,21 (iy)
	ld	(bc),a
;ugui/ugui.c:5706: msg.src = obj;
	ld	hl,#0x0004
	add	hl,de
	ld	b,6 (ix)
	ld	c,7 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),c
;ugui/ugui.c:5708: wnd->cb(&msg);
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	bc, #0x002D
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	de
	call	___sdcc_call_hl
	ld	sp,ix
	pop	ix
	ret
;ugui/ugui.c:5715: void UG_DriverRegister( UG_U8 type, void* driver )
;	---------------------------------
; Function UG_DriverRegister
; ---------------------------------
_UG_DriverRegister::
;ugui/ugui.c:5717: if ( type >= NUMBER_OF_DRIVERS ) return;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x03
	ret	NC
;ugui/ugui.c:5719: gui->driver[type].driver = driver;
	ld	de,(_gui)
	ld	hl,#0x0041
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	e,a
	add	a, a
	add	a, e
	ld	d,a
	ld	l,d
	ld	h,#0x00
	add	hl,bc
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	inc	hl
	ld	a,1 (iy)
	ld	(hl),a
;ugui/ugui.c:5720: gui->driver[type].state = DRIVER_REGISTERED | DRIVER_ENABLED;
	ld	hl,(_gui)
	ld	bc,#0x0041
	add	hl,bc
	ld	e,d
	ld	d,#0x00
	add	hl,de
	inc	hl
	inc	hl
	ld	(hl),#0x03
	ret
;ugui/ugui.c:5723: void UG_DriverEnable( UG_U8 type )
;	---------------------------------
; Function UG_DriverEnable
; ---------------------------------
_UG_DriverEnable::
;ugui/ugui.c:5725: if ( type >= NUMBER_OF_DRIVERS ) return;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x03
	ret	NC
;ugui/ugui.c:5726: if ( gui->driver[type].state & DRIVER_REGISTERED )
	ld	de,(_gui)
	ld	hl,#0x0041
	add	hl,de
	ld	c,l
	ld	b,h
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	ld	e,l
	add	hl, hl
	add	hl, de
	ld	h,#0x00
	add	hl,bc
	inc	hl
	inc	hl
	ld	a,(hl)
	bit	0,a
	ret	Z
;ugui/ugui.c:5728: gui->driver[type].state |= DRIVER_ENABLED;
	set	1, a
	ld	(hl),a
	ret
;ugui/ugui.c:5732: void UG_DriverDisable( UG_U8 type )
;	---------------------------------
; Function UG_DriverDisable
; ---------------------------------
_UG_DriverDisable::
;ugui/ugui.c:5734: if ( type >= NUMBER_OF_DRIVERS ) return;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x03
	ret	NC
;ugui/ugui.c:5735: if ( gui->driver[type].state & DRIVER_REGISTERED )
	ld	de,(_gui)
	ld	hl,#0x0041
	add	hl,de
	ld	c,l
	ld	b,h
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	ld	e,l
	add	hl, hl
	add	hl, de
	ld	h,#0x00
	add	hl,bc
	inc	hl
	inc	hl
	ld	a,(hl)
	bit	0, a
	ret	Z
;ugui/ugui.c:5737: gui->driver[type].state &= ~DRIVER_ENABLED;
	and	a, #0xFD
	ld	(hl),a
	ret
;ugui/ugui.c:5744: void UG_Update( void )
;	---------------------------------
; Function UG_Update
; ---------------------------------
_UG_Update::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;ugui/ugui.c:5749: if ( gui->state & UG_SATUS_WAIT_FOR_UPDATE ) gui->state &= ~UG_SATUS_WAIT_FOR_UPDATE;
	ld	hl,(_gui)
	ld	bc,#0x0040
	add	hl,bc
	ld	a,(hl)
	bit	0, a
	jr	Z,00102$
	and	a, #0xFE
	ld	(hl),a
00102$:
	ld	bc,(_gui)
;ugui/ugui.c:5752: if ( gui->next_window != gui->active_window )
	push	bc
	pop	iy
	ld	e,11 (iy)
	ld	d,12 (iy)
	ld	hl,#0x000D
	add	hl,bc
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	ld	a,e
	sub	a, -2 (ix)
	jr	NZ,00173$
	ld	a,d
	sub	a, -1 (ix)
	jp	Z,00115$
00173$:
;ugui/ugui.c:5754: if ( gui->next_window != NULL )
	ld	a,d
	or	a,e
	jp	Z,00115$
;ugui/ugui.c:5756: gui->last_window = gui->active_window;
	ld	hl,#0x000F
	add	hl,bc
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;ugui/ugui.c:5749: if ( gui->state & UG_SATUS_WAIT_FOR_UPDATE ) gui->state &= ~UG_SATUS_WAIT_FOR_UPDATE;
	ld	hl,(_gui)
;ugui/ugui.c:5757: gui->active_window = gui->next_window;
	ld	a,l
	add	a, #0x0D
	ld	e,a
	ld	a,h
	adc	a, #0x00
	ld	d,a
	ld	bc, #0x000B
	add	hl, bc
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,b
	ld	(de),a
	inc	de
	ld	a,c
	ld	(de),a
;ugui/ugui.c:5749: if ( gui->state & UG_SATUS_WAIT_FOR_UPDATE ) gui->state &= ~UG_SATUS_WAIT_FOR_UPDATE;
	ld	de,(_gui)
;ugui/ugui.c:5756: gui->last_window = gui->active_window;
	push	de
	pop	iy
;ugui/ugui.c:5760: if ((gui->last_window != NULL) && (gui->last_window->style & WND_STYLE_SHOW_TITLE) && (gui->last_window->state & WND_STATE_VISIBLE) )
	ld	a,15 (iy)
	ld	-2 (ix),a
	ld	a,16 (iy)
	ld	-1 (ix), a
	or	a,-2 (ix)
	jp	Z,00109$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0014
	add	hl, bc
	bit	1,(hl)
	jp	Z,00109$
	pop	bc
	pop	hl
	push	hl
	push	bc
	inc	hl
	inc	hl
	inc	hl
	bit	3,(hl)
	jp	Z,00109$
;ugui/ugui.c:5763: if ( (gui->last_window->xs != gui->active_window->xs) || (gui->last_window->xe != gui->active_window->xe) || (gui->last_window->ys != gui->active_window->ys) || (gui->last_window->ye != gui->active_window->ye) )
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000C
	add	hl, bc
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;ugui/ugui.c:5752: if ( gui->next_window != gui->active_window )
	ld	hl,#0x000D
	add	hl,de
	ld	a,(hl)
	ld	-4 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-3 (ix),a
;ugui/ugui.c:5763: if ( (gui->last_window->xs != gui->active_window->xs) || (gui->last_window->xe != gui->active_window->xe) || (gui->last_window->ys != gui->active_window->ys) || (gui->last_window->ye != gui->active_window->ye) )
	pop	hl
	push	hl
	ld	de, #0x000C
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,b
	sub	a, e
	jr	NZ,00103$
	ld	a,c
	sub	a, d
	jr	NZ,00103$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	de, #0x0010
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	push	hl
	ld	bc, #0x0010
	add	hl, bc
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,e
	sub	a, b
	jr	NZ,00103$
	ld	a,d
	sub	a, c
	jr	NZ,00103$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	de, #0x000E
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	push	hl
	ld	bc, #0x000E
	add	hl, bc
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,e
	sub	a, b
	jr	NZ,00103$
	ld	a,d
	sub	a, c
	jr	NZ,00103$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	de, #0x0012
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	push	hl
	ld	bc, #0x0012
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,e
	sub	a, c
	jr	NZ,00182$
	ld	a,d
	sub	a, b
	jr	Z,00109$
00182$:
00103$:
;ugui/ugui.c:5766: _UG_WindowDrawTitle( gui->last_window );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	__UG_WindowDrawTitle
	pop	af
00109$:
;ugui/ugui.c:5749: if ( gui->state & UG_SATUS_WAIT_FOR_UPDATE ) gui->state &= ~UG_SATUS_WAIT_FOR_UPDATE;
	ld	hl,(_gui)
;ugui/ugui.c:5752: if ( gui->next_window != gui->active_window )
	ld	de, #0x000D
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;ugui/ugui.c:5769: gui->active_window->state &= ~WND_STATE_REDRAW_TITLE;
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	and	a, #0xBF
	ld	(de),a
;ugui/ugui.c:5749: if ( gui->state & UG_SATUS_WAIT_FOR_UPDATE ) gui->state &= ~UG_SATUS_WAIT_FOR_UPDATE;
	ld	hl,(_gui)
;ugui/ugui.c:5752: if ( gui->next_window != gui->active_window )
	ld	bc,#0x000D
	add	hl,bc
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;ugui/ugui.c:5769: gui->active_window->state &= ~WND_STATE_REDRAW_TITLE;
	inc	de
	inc	de
	inc	de
;ugui/ugui.c:5770: gui->active_window->state |= WND_STATE_UPDATE | WND_STATE_VISIBLE;
	ld	a,(de)
	or	a, #0x28
	ld	(de),a
00115$:
;ugui/ugui.c:5749: if ( gui->state & UG_SATUS_WAIT_FOR_UPDATE ) gui->state &= ~UG_SATUS_WAIT_FOR_UPDATE;
	ld	hl,(_gui)
;ugui/ugui.c:5752: if ( gui->next_window != gui->active_window )
	ld	bc,#0x000D
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;ugui/ugui.c:5775: if ( gui->active_window != NULL )
	ld	a,b
	or	a,c
	jr	Z,00122$
;ugui/ugui.c:5777: wnd = gui->active_window;
;ugui/ugui.c:5780: if ( wnd->state & WND_STATE_UPDATE )
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	bit	5,(hl)
	jr	Z,00117$
;ugui/ugui.c:5783: _UG_WindowUpdate( wnd );
	push	hl
	push	bc
	push	bc
	call	__UG_WindowUpdate
	pop	af
	pop	bc
	pop	hl
00117$:
;ugui/ugui.c:5787: if ( wnd->state & WND_STATE_VISIBLE )
	bit	3,(hl)
	jr	Z,00122$
;ugui/ugui.c:5789: _UG_ProcessTouchData( wnd );
	push	bc
	push	bc
	call	__UG_ProcessTouchData
	pop	af
	pop	bc
;ugui/ugui.c:5790: _UG_UpdateObjects( wnd );
	push	bc
	push	bc
	call	__UG_UpdateObjects
	pop	af
	call	__UG_HandleEvents
	pop	af
00122$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5796: void UG_WaitForUpdate( void )
;	---------------------------------
; Function UG_WaitForUpdate
; ---------------------------------
_UG_WaitForUpdate::
;ugui/ugui.c:5798: gui->state |= UG_SATUS_WAIT_FOR_UPDATE;
	ld	hl,(_gui)
	ld	bc,#0x0040
	add	hl,bc
	set	0, (hl)
	ld	a, (hl)
;ugui/ugui.c:5803: while ( (UG_U8)gui->state & UG_SATUS_WAIT_FOR_UPDATE ){};
00101$:
	ld	iy,(_gui)
	ld	a,64 (iy)
	rrca
	jr	C,00101$
	ret
;ugui/ugui.c:5807: void UG_DrawBMP( UG_S16 xp, UG_S16 yp, UG_BMP* bmp )
;	---------------------------------
; Function UG_DrawBMP
; ---------------------------------
_UG_DrawBMP::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-21
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5815: if ( bmp->p == NULL ) return;
	ld	c,8 (ix)
	ld	b,9 (ix)
	ld	l, c
	ld	h, b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a,e
	jp	Z,00114$
;ugui/ugui.c:5818: if ( bmp->bpp == BMP_BPP_16 )
	push	bc
	pop	iy
	ld	a,6 (iy)
	sub	a, #0x10
	jr	Z,00105$
	jp	00114$
;ugui/ugui.c:5820: p = (UG_U16*)bmp->p;
	jr	00105$
;ugui/ugui.c:5824: return;
	jp	00114$
00105$:
;ugui/ugui.c:5827: xs = xp;
	ld	a,4 (ix)
	ld	-21 (ix),a
	ld	a,5 (ix)
	ld	-20 (ix),a
;ugui/ugui.c:5828: for(y=0;y<bmp->height;y++)
	ld	-2 (ix),c
	ld	-1 (ix),b
	ld	-10 (ix),c
	ld	-9 (ix),b
	ld	a,6 (ix)
	ld	-12 (ix),a
	ld	a,7 (ix)
	ld	-11 (ix),a
	ld	-16 (ix),#0x00
	ld	-15 (ix),#0x00
00112$:
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	bc, #0x0004
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	cp	a, a
	sbc	hl, bc
	jp	NC,00114$
;ugui/ugui.c:5831: for(x=0;x<bmp->width;x++)
	ld	a,-21 (ix)
	ld	-4 (ix),a
	ld	a,-20 (ix)
	ld	-3 (ix),a
	ld	-18 (ix),#0x00
	ld	-17 (ix),#0x00
00109$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	cp	a, a
	sbc	hl, bc
	jp	NC,00122$
;ugui/ugui.c:5833: tmp = *p++;
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	de
	inc	de
;ugui/ugui.c:5835: r = (tmp>>11)&0x1F;
	ld	a,b
	rrca
	rrca
	rrca
	and	a,#0x1F
	and	a, #0x1F
;ugui/ugui.c:5836: r<<=3;
	rlca
	rlca
	rlca
	and	a,#0xF8
	ld	-13 (ix),a
;ugui/ugui.c:5837: g = (tmp>>5)&0x3F;
	ld	h,c
	ld	l,b
	srl	l
	rr	h
	srl	l
	rr	h
	srl	l
	rr	h
	srl	l
	rr	h
	srl	l
	rr	h
	ld	a,h
	and	a, #0x3F
;ugui/ugui.c:5838: g<<=2;
	add	a, a
	add	a, a
	ld	-14 (ix),a
;ugui/ugui.c:5839: b = (tmp)&0x1F;
	ld	a,c
	and	a, #0x1F
;ugui/ugui.c:5840: b<<=3;
	rlca
	rlca
	rlca
	and	a,#0xF8
	ld	-19 (ix),a
;ugui/ugui.c:5841: c = ((UG_COLOR)r<<16) | ((UG_COLOR)g<<8) | (UG_COLOR)b;
	ld	l,-13 (ix)
	ld	h,#0x00
	ld	bc,#0x0000
	push	af
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),c
	ld	-5 (ix),b
	pop	af
	ld	a,#0x10
00144$:
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	dec	a
	jr	NZ,00144$
	ld	l,-14 (ix)
	ld	h,#0x00
	ld	bc,#0x0000
	ld	a,#0x08
00146$:
	add	hl, hl
	rl	c
	rl	b
	dec	a
	jr	NZ,00146$
	ld	a,-8 (ix)
	or	a, l
	ld	-8 (ix),a
	ld	a,-7 (ix)
	or	a, h
	ld	-7 (ix),a
	ld	a,-6 (ix)
	or	a, c
	ld	-6 (ix),a
	ld	a,-5 (ix)
	or	a, b
	ld	-5 (ix),a
	ld	c,-19 (ix)
	ld	b,#0x00
	ld	hl,#0x0000
	ld	a,c
	or	a, -8 (ix)
	ld	c,a
	ld	a,b
	or	a, -7 (ix)
	ld	b,a
	ld	a,l
	or	a, -6 (ix)
	ld	l,a
	ld	a,h
	or	a, -5 (ix)
	ld	h,a
;ugui/ugui.c:5842: UG_DrawPixel( xp++ , yp , c );
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	pop	iy
	pop	hl
	inc	-4 (ix)
	jr	NZ,00148$
	inc	-3 (ix)
00148$:
	push	de
	push	hl
	push	bc
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	push	iy
	call	_UG_DrawPixel
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
	pop	de
;ugui/ugui.c:5831: for(x=0;x<bmp->width;x++)
	inc	-18 (ix)
	jp	NZ,00109$
	inc	-17 (ix)
	jp	00109$
00122$:
;ugui/ugui.c:5844: yp++;
	inc	-12 (ix)
	jr	NZ,00150$
	inc	-11 (ix)
00150$:
;ugui/ugui.c:5828: for(y=0;y<bmp->height;y++)
	inc	-16 (ix)
	jp	NZ,00112$
	inc	-15 (ix)
	jp	00112$
00114$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5848: void UG_TouchUpdate( UG_S16 xp, UG_S16 yp, UG_U8 state )
;	---------------------------------
; Function UG_TouchUpdate
; ---------------------------------
_UG_TouchUpdate::
;ugui/ugui.c:5850: gui->touch.xp = xp;
	ld	hl,(_gui)
	ld	bc,#0x0007
	add	hl,bc
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	inc	hl
	ld	a,1 (iy)
	ld	(hl),a
;ugui/ugui.c:5851: gui->touch.yp = yp;
	ld	hl,(_gui)
	ld	bc,#0x0009
	add	hl,bc
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	inc	hl
	ld	a,1 (iy)
	ld	(hl),a
;ugui/ugui.c:5852: gui->touch.state = state;
	ld	hl,(_gui)
	ld	bc,#0x0006
	add	hl,bc
	ld	iy,#6
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	ret
;ugui/ugui.c:5858: UG_RESULT UG_WindowCreate( UG_WINDOW* wnd, UG_OBJECT* objlst, UG_U8 objcnt, void (*cb)( UG_MESSAGE* ) )
;	---------------------------------
; Function UG_WindowCreate
; ---------------------------------
_UG_WindowCreate::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:5863: if ( (wnd == NULL) || (objlst == NULL) || (objcnt == 0) ) return UG_RESULT_FAIL;
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00101$
	ld	a,7 (ix)
	or	a,6 (ix)
	jr	Z,00101$
	ld	a,8 (ix)
	or	a, a
	jr	NZ,00117$
00101$:
	ld	l,#0xFF
	jp	00112$
;ugui/ugui.c:5866: for(i=0; i<objcnt; i++)
00117$:
	ld	d,#0x00
	ld	bc,#0x0000
00110$:
	ld	a,d
	sub	a, 8 (ix)
	jr	NC,00105$
;ugui/ugui.c:5868: obj = (UG_OBJECT*)&objlst[i];
	ld	l,6 (ix)
	ld	h,7 (ix)
	add	hl,bc
;ugui/ugui.c:5869: obj->state = OBJ_STATE_INIT;
	ld	(hl),#0x03
;ugui/ugui.c:5870: obj->data = NULL;
	push	de
	ld	de,#0x0017
	add	hl, de
	pop	de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5866: for(i=0; i<objcnt; i++)
	ld	hl,#0x0019
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	d
	jr	00110$
00105$:
;ugui/ugui.c:5874: wnd->objcnt = objcnt;
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	a,8 (ix)
	ld	(bc),a
;ugui/ugui.c:5875: wnd->objlst = objlst;
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:5876: wnd->state = WND_STATE_VALID;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x02
;ugui/ugui.c:5878: wnd->fc = 0x000000;
	ld	hl,#0x0004
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5879: wnd->bc = 0xF0F0F0;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0xF0
	inc	hl
	ld	(hl),#0xF0
	inc	hl
	ld	(hl),#0xF0
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:5885: wnd->xs = 0;
	ld	hl,#0x000C
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5886: wnd->ys = 0;
	ld	hl,#0x000E
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5887: wnd->xe = UG_GetXDim()-1;
	ld	hl,#0x0010
	add	hl,bc
	push	hl
	push	bc
	call	_UG_GetXDim
	ex	de,hl
	pop	bc
	pop	hl
	dec	de
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:5888: wnd->ye = UG_GetYDim()-1;
	ld	hl,#0x0012
	add	hl,bc
	push	hl
	push	bc
	call	_UG_GetYDim
	ex	de,hl
	pop	bc
	pop	hl
	dec	de
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:5889: wnd->cb = cb;
	ld	hl,#0x002D
	add	hl,bc
	ld	a,9 (ix)
	ld	(hl),a
	inc	hl
	ld	a,10 (ix)
	ld	(hl),a
;ugui/ugui.c:5890: wnd->style = WND_STYLE_3D | WND_STYLE_SHOW_TITLE;
	ld	hl,#0x0014
	add	hl,bc
	ld	(hl),#0x03
;ugui/ugui.c:5893: wnd->title.str = NULL;
	ld	hl,#0x0015
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5894: if (gui != NULL) wnd->title.font = &gui->font;
	ld	hl,#0x0017
	add	hl,bc
	ex	de,hl
	ld	a,(#_gui + 1)
	ld	hl,#_gui + 0
	or	a,(hl)
	jr	Z,00107$
	ld	hl,(_gui)
	ld	a,l
	add	a, #0x25
	ld	-2 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-1 (ix),a
	ld	a,-2 (ix)
	ld	(de),a
	inc	de
	ld	a,-1 (ix)
	ld	(de),a
	jr	00108$
00107$:
;ugui/ugui.c:5895: else wnd->title.font = NULL;
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
00108$:
;ugui/ugui.c:5896: wnd->title.h_space = 2;
	ld	hl,#0x0019
	add	hl,bc
	ld	(hl),#0x02
;ugui/ugui.c:5897: wnd->title.v_space = 2;
	ld	hl,#0x001A
	add	hl,bc
	ld	(hl),#0x02
;ugui/ugui.c:5898: wnd->title.align = ALIGN_CENTER_LEFT;
	ld	hl,#0x001B
	add	hl,bc
	ld	(hl),#0x11
;ugui/ugui.c:5899: wnd->title.fc = C_WHITE;
	ld	hl,#0x001C
	add	hl,bc
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:5900: wnd->title.bc = C_BLUE;
	ld	hl,#0x0020
	add	hl,bc
	ld	(hl),#0xFF
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:5901: wnd->title.ifc = C_WHITE;
	ld	hl,#0x0024
	add	hl,bc
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:5902: wnd->title.ibc = C_GRAY;
	ld	hl,#0x0028
	add	hl,bc
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:5903: wnd->title.height = 15;
	ld	hl,#0x002C
	add	hl,bc
	ld	(hl),#0x0F
;ugui/ugui.c:5905: return UG_RESULT_OK;
	ld	l,#0x00
00112$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5908: UG_RESULT UG_WindowDelete( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowDelete
; ---------------------------------
_UG_WindowDelete::
;ugui/ugui.c:5910: if ( wnd == gui->active_window ) return UG_RESULT_FAIL;
	ld	hl,(_gui)
	ld	de, #0x000D
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	sub	a, d
	jr	NZ,00102$
	ld	a,1 (iy)
	sub	a, e
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:5913: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	dec	hl
	or	a,(hl)
	jr	Z,00104$
	pop	bc
	pop	de
	push	de
	push	bc
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00104$
;ugui/ugui.c:5915: wnd->state = 0;
	ld	(hl),#0x00
;ugui/ugui.c:5916: wnd->cb = NULL;
	ld	hl,#0x002D
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5917: wnd->objcnt = 0;
	xor	a, a
	ld	(de),a
;ugui/ugui.c:5918: wnd->objlst = NULL;
	ld	l, e
	ld	h, d
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5919: wnd->xs = 0;
	ld	hl,#0x000C
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5920: wnd->ys = 0;
	ld	hl,#0x000E
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5921: wnd->xe = 0;
	ld	hl,#0x0010
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5922: wnd->ye = 0;
	ld	hl,#0x0012
	add	hl,de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:5923: wnd->style = 0;
	ld	hl,#0x0014
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:5924: return UG_RESULT_OK;
	ld	l,#0x00
	ret
00104$:
;ugui/ugui.c:5926: return UG_RESULT_FAIL;
	ld	l,#0xFF
	ret
;ugui/ugui.c:5929: UG_RESULT UG_WindowShow( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowShow
; ---------------------------------
_UG_WindowShow::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:5931: if ( wnd != NULL )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
;ugui/ugui.c:5934: wnd->state |= WND_STATE_VISIBLE | WND_STATE_UPDATE;
	ld	d,4 (ix)
	ld	e,5 (ix)
	ld	l, d
	ld	h, e
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	or	a, #0x28
	ld	(hl),a
;ugui/ugui.c:5935: wnd->state &= ~WND_STATE_REDRAW_TITLE;
	and	a, #0xBF
	ld	(hl),a
;ugui/ugui.c:5936: gui->next_window = wnd;
	ld	hl,(_gui)
	ld	bc,#0x000B
	add	hl,bc
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:5937: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00103$
00102$:
;ugui/ugui.c:5939: return UG_RESULT_FAIL;
	ld	l,#0xFF
00103$:
	pop	ix
	ret
;ugui/ugui.c:5942: UG_RESULT UG_WindowHide( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowHide
; ---------------------------------
_UG_WindowHide::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;ugui/ugui.c:5944: if ( wnd != NULL )
	ld	a,5 (ix)
	or	a,4 (ix)
	jp	Z,00114$
;ugui/ugui.c:5946: if ( wnd == gui->active_window )
	ld	hl,(_gui)
	ex	(sp), hl
	ld	a,-4 (ix)
	add	a, #0x0D
	ld	l,a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	h,a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,4 (ix)
	sub	a, c
	jp	NZ,00111$
	ld	a,5 (ix)
	sub	a, b
	jp	NZ,00111$
;ugui/ugui.c:5949: if ( (gui->last_window != NULL) && (gui->last_window->state & WND_STATE_VISIBLE) )
	pop	iy
	push	iy
	ld	a,15 (iy)
	ld	-4 (ix),a
	ld	a,16 (iy)
	ld	-3 (ix), a
	or	a,-4 (ix)
	jp	Z,00107$
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	bit	3,(hl)
	jp	Z,00107$
;ugui/ugui.c:5951: if ( (gui->last_window->xs > wnd->xs) || (gui->last_window->ys > wnd->ys) || (gui->last_window->xe < wnd->xe) || (gui->last_window->ye < wnd->ye) )
	pop	hl
	push	hl
	ld	de, #0x000C
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000C
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,c
	sub	a, d
	ld	a,h
	sbc	a, e
	jp	PO, 00148$
	xor	a, #0x80
00148$:
	jp	M,00101$
	pop	hl
	push	hl
	ld	de, #0x000E
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000E
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	sub	a, d
	ld	a,b
	sbc	a, e
	jp	PO, 00149$
	xor	a, #0x80
00149$:
	jp	M,00101$
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0010
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,d
	sub	a, c
	ld	a,e
	sbc	a, b
	jp	PO, 00150$
	xor	a, #0x80
00150$:
	jp	M,00101$
	pop	hl
	push	hl
	ld	de, #0x0012
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0012
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,d
	sub	a, c
	ld	a,e
	sbc	a, b
	jp	PO, 00151$
	xor	a, #0x80
00151$:
	jp	P,00102$
00101$:
;ugui/ugui.c:5953: _UG_WindowClear( wnd );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	__UG_WindowClear
	pop	af
00102$:
;ugui/ugui.c:5946: if ( wnd == gui->active_window )
	ld	hl,(_gui)
;ugui/ugui.c:5955: gui->next_window = gui->last_window;
	ld	a,l
	add	a, #0x0B
	ld	e,a
	ld	a,h
	adc	a, #0x00
	ld	d,a
	ld	bc, #0x000F
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
	jr	00112$
00107$:
;ugui/ugui.c:5959: gui->active_window->state &= ~WND_STATE_VISIBLE;
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	and	a, #0xF7
	ld	(bc),a
;ugui/ugui.c:5946: if ( wnd == gui->active_window )
	ld	iy,(_gui)
	ld	l,13 (iy)
	ld	h,14 (iy)
;ugui/ugui.c:5959: gui->active_window->state &= ~WND_STATE_VISIBLE;
	inc	hl
	inc	hl
	inc	hl
;ugui/ugui.c:5960: gui->active_window->state |= WND_STATE_UPDATE;
	set	5, (hl)
	ld	a, (hl)
	jr	00112$
00111$:
;ugui/ugui.c:5966: _UG_WindowClear( wnd );
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_WindowClear
	pop	af
00112$:
;ugui/ugui.c:5968: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00115$
00114$:
;ugui/ugui.c:5970: return UG_RESULT_FAIL;
	ld	l,#0xFF
00115$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:5973: UG_RESULT UG_WindowResize( UG_WINDOW* wnd, UG_S16 xs, UG_S16 ys, UG_S16 xe, UG_S16 ye )
;	---------------------------------
; Function UG_WindowResize
; ---------------------------------
_UG_WindowResize::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-26
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:5978: xmax = UG_GetXDim()-1;
	call	_UG_GetXDim
	ld	a,l
	add	a,#0xFF
	ld	-24 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-23 (ix),a
;ugui/ugui.c:5979: ymax = UG_GetYDim()-1;
	call	_UG_GetYDim
	ld	a,l
	add	a,#0xFF
	ld	-26 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-25 (ix),a
;ugui/ugui.c:5981: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jp	Z,00123$
	ld	a,4 (ix)
	ld	-14 (ix),a
	ld	a,5 (ix)
	ld	-13 (ix),a
	ld	a,-14 (ix)
	add	a, #0x03
	ld	-20 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-19 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	bit	1,(hl)
	jp	Z,00123$
;ugui/ugui.c:5984: if ( (xs < 0) || (ys < 0) ) return UG_RESULT_FAIL;
	bit	7, 7 (ix)
	jr	NZ,00101$
	bit	7, 9 (ix)
	jr	Z,00102$
00101$:
	ld	l,#0xFF
	jp	00125$
00102$:
;ugui/ugui.c:5985: if ( (xe > xmax) || (ye > ymax) ) return UG_RESULT_FAIL;
	ld	a,-24 (ix)
	sub	a, 10 (ix)
	ld	a,-23 (ix)
	sbc	a, 11 (ix)
	jp	PO, 00176$
	xor	a, #0x80
00176$:
	jp	M,00104$
	ld	a,-26 (ix)
	sub	a, 12 (ix)
	ld	a,-25 (ix)
	sbc	a, 13 (ix)
	jp	PO, 00177$
	xor	a, #0x80
00177$:
	jp	P,00105$
00104$:
	ld	l,#0xFF
	jp	00125$
00105$:
;ugui/ugui.c:5986: pos = xe-xs;
	ld	a,10 (ix)
	sub	a, 6 (ix)
	ld	h,a
	ld	a,11 (ix)
	sbc	a, 7 (ix)
	ld	l,a
;ugui/ugui.c:5987: if ( pos < 10 ) return UG_RESULT_FAIL;
	ld	a,h
	sub	a, #0x0A
	ld	a,l
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00108$
	ld	l,#0xFF
	jp	00125$
00108$:
;ugui/ugui.c:5988: pos = ye-ys;
	ld	a,12 (ix)
	sub	a, 8 (ix)
	ld	h,a
	ld	a,13 (ix)
	sbc	a, 9 (ix)
	ld	l,a
;ugui/ugui.c:5989: if ( pos < 10 ) return UG_RESULT_FAIL;
	ld	a,h
	sub	a, #0x0A
	ld	a,l
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00110$
	ld	l,#0xFF
	jp	00125$
00110$:
;ugui/ugui.c:5992: wnd->xs = xs;
	ld	a,-14 (ix)
	add	a, #0x0C
	ld	-4 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:5993: wnd->ys = ys;
	ld	a,-14 (ix)
	add	a, #0x0E
	ld	-2 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,8 (ix)
	ld	(hl),a
	inc	hl
	ld	a,9 (ix)
	ld	(hl),a
;ugui/ugui.c:5994: wnd->xe = xe;
	ld	a,-14 (ix)
	add	a, #0x10
	ld	-22 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-21 (ix),a
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,10 (ix)
	ld	(hl),a
	inc	hl
	ld	a,11 (ix)
	ld	(hl),a
;ugui/ugui.c:5995: wnd->ye = ye;
	ld	a,-14 (ix)
	add	a, #0x12
	ld	-8 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-7 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,12 (ix)
	ld	(hl),a
	inc	hl
	ld	a,13 (ix)
	ld	(hl),a
;ugui/ugui.c:5997: if ( (wnd->state & WND_STATE_VISIBLE) && (gui->active_window == wnd) )
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	bit	3,(hl)
	jp	Z,00120$
	ld	bc,(_gui)
	push	bc
	pop	iy
	ld	d,13 (iy)
	ld	e,14 (iy)
	ld	a,-14 (ix)
	sub	a, d
	jp	NZ,00120$
	ld	a,-13 (ix)
	sub	a, e
	jp	NZ,00120$
;ugui/ugui.c:5999: if ( wnd->ys ) UG_FillFrame(0, 0, xmax,wnd->ys-1,gui->desktop_color);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-14 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-13 (ix), a
	or	a,-14 (ix)
	jr	Z,00112$
	ld	-6 (ix),c
	ld	-5 (ix),b
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	de, #0x003C
	add	hl, de
	ld	a,(hl)
	ld	-12 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-11 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-10 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-9 (ix),a
	ld	e,-14 (ix)
	ld	d,-13 (ix)
	dec	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	push	de
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00112$:
;ugui/ugui.c:6000: pos = wnd->ye+1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	de
;ugui/ugui.c:6001: if ( !(pos > ymax) ) UG_FillFrame(0, pos, xmax,ymax,gui->desktop_color);
	ld	a,-26 (ix)
	sub	a, e
	ld	a,-25 (ix)
	sbc	a, d
	jp	PO, 00181$
	xor	a, #0x80
00181$:
	jp	M,00114$
	ld	iy,(_gui)
	ld	c,60 (iy)
	ld	b,61 (iy)
	ld	l,62 (iy)
	ld	h,63 (iy)
	push	hl
	push	bc
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	push	de
	ld	hl,#0x0000
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00114$:
;ugui/ugui.c:6002: if ( wnd->xs ) UG_FillFrame(0, wnd->ys, wnd->xs-1,wnd->ye,gui->desktop_color);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,b
	or	a,c
	jr	Z,00116$
	ld	iy,(_gui)
	ld	a,60 (iy)
	ld	-12 (ix),a
	ld	a,61 (iy)
	ld	-11 (ix),a
	ld	a,62 (iy)
	ld	-10 (ix),a
	ld	a,63 (iy)
	ld	-9 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	dec	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00116$:
;ugui/ugui.c:6003: pos = wnd->xe+1;
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	de
	ld	-12 (ix),e
	ld	-11 (ix),d
;ugui/ugui.c:6004: if ( !(pos > xmax) ) UG_FillFrame(pos, wnd->ys,xmax,wnd->ye,gui->desktop_color);
	ld	a,-24 (ix)
	sub	a, -12 (ix)
	ld	a,-23 (ix)
	sbc	a, -11 (ix)
	jp	PO, 00182$
	xor	a, #0x80
00182$:
	jp	M,00118$
	ld	iy,(_gui)
	ld	a,60 (iy)
	ld	-18 (ix),a
	ld	a,61 (iy)
	ld	-17 (ix),a
	ld	a,62 (iy)
	ld	-16 (ix),a
	ld	a,63 (iy)
	ld	-15 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	push	bc
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	push	de
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00118$:
;ugui/ugui.c:6006: wnd->state &= ~WND_STATE_REDRAW_TITLE;
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	a,(hl)
	and	a, #0xBF
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	(hl),a
;ugui/ugui.c:6007: wnd->state |= WND_STATE_UPDATE;
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	a,(hl)
	set	5, a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	(hl),a
00120$:
;ugui/ugui.c:6009: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00125$
00123$:
;ugui/ugui.c:6011: return UG_RESULT_FAIL;
	ld	l,#0xFF
00125$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6014: UG_RESULT UG_WindowAlert( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowAlert
; ---------------------------------
_UG_WindowAlert::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;ugui/ugui.c:6017: c = UG_WindowGetTitleTextColor( wnd );
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowGetTitleTextColor
;ugui/ugui.c:6018: if ( UG_WindowSetTitleTextColor( wnd, UG_WindowGetTitleColor( wnd ) ) == UG_RESULT_FAIL ) return UG_RESULT_FAIL;
	ex	(sp),hl
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowGetTitleColor
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowSetTitleTextColor
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	l
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00105$
00102$:
;ugui/ugui.c:6019: if ( UG_WindowSetTitleColor( wnd, c ) == UG_RESULT_FAIL ) return UG_RESULT_FAIL;
	push	de
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowSetTitleColor
	pop	af
	pop	af
	pop	af
	inc	l
	jr	NZ,00104$
	ld	l,#0xFF
	jr	00105$
00104$:
;ugui/ugui.c:6020: return UG_RESULT_OK;
	ld	l,#0x00
00105$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6023: UG_RESULT UG_WindowSetForeColor( UG_WINDOW* wnd, UG_COLOR fc )
;	---------------------------------
; Function UG_WindowSetForeColor
; ---------------------------------
_UG_WindowSetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6025: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6027: wnd->fc = fc;
	inc	de
	inc	de
	inc	de
	inc	de
	push	bc
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:6028: wnd->state |= WND_STATE_UPDATE;
	ld	a,(bc)
	set	5, a
	ld	(bc),a
;ugui/ugui.c:6029: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6031: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6034: UG_RESULT UG_WindowSetBackColor( UG_WINDOW* wnd, UG_COLOR bc )
;	---------------------------------
; Function UG_WindowSetBackColor
; ---------------------------------
_UG_WindowSetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6036: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6038: wnd->bc = bc;
	ld	hl,#0x0008
	add	hl,de
	push	bc
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:6039: wnd->state |= WND_STATE_UPDATE;
	ld	a,(bc)
	set	5, a
	ld	(bc),a
;ugui/ugui.c:6040: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6042: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6045: UG_RESULT UG_WindowSetTitleTextColor( UG_WINDOW* wnd, UG_COLOR c )
;	---------------------------------
; Function UG_WindowSetTitleTextColor
; ---------------------------------
_UG_WindowSetTitleTextColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6047: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6049: wnd->title.fc = c;
	ld	hl,#0x001C
	add	hl,de
	push	bc
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:6050: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6051: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6053: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6056: UG_RESULT UG_WindowSetTitleColor( UG_WINDOW* wnd, UG_COLOR c )
;	---------------------------------
; Function UG_WindowSetTitleColor
; ---------------------------------
_UG_WindowSetTitleColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6058: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6060: wnd->title.bc = c;
	ld	hl,#0x0020
	add	hl,de
	push	bc
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:6061: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6062: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6064: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6067: UG_RESULT UG_WindowSetTitleInactiveTextColor( UG_WINDOW* wnd, UG_COLOR c )
;	---------------------------------
; Function UG_WindowSetTitleInactiveTextColor
; ---------------------------------
_UG_WindowSetTitleInactiveTextColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6069: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6071: wnd->title.ifc = c;
	ld	hl,#0x0024
	add	hl,de
	push	bc
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:6072: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6073: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6075: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6078: UG_RESULT UG_WindowSetTitleInactiveColor( UG_WINDOW* wnd, UG_COLOR c )
;	---------------------------------
; Function UG_WindowSetTitleInactiveColor
; ---------------------------------
_UG_WindowSetTitleInactiveColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6080: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6082: wnd->title.ibc = c;
	ld	hl,#0x0028
	add	hl,de
	push	bc
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:6083: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6084: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6086: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6089: UG_RESULT UG_WindowSetTitleText( UG_WINDOW* wnd, char* str )
;	---------------------------------
; Function UG_WindowSetTitleText
; ---------------------------------
_UG_WindowSetTitleText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6091: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6093: wnd->title.str = str;
	ld	hl,#0x0015
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6094: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6095: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6097: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6100: UG_RESULT UG_WindowSetTitleTextFont( UG_WINDOW* wnd, const UG_FONT* font )
;	---------------------------------
; Function UG_WindowSetTitleTextFont
; ---------------------------------
_UG_WindowSetTitleTextFont::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;ugui/ugui.c:6102: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00104$
;ugui/ugui.c:6104: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6105: wnd->title.font = font;
	ld	hl,#0x0017
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6106: if ( wnd->title.height <= (font->char_height + 1) )
	ld	hl,#0x002C
	add	hl,de
	ex	de,hl
	ld	a,(de)
	ld	-3 (ix),a
	ld	l,6 (ix)
	ld	h,7 (ix)
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	ld	a,-3 (ix)
	ld	-5 (ix),a
	ld	-4 (ix),#0x00
	ld	a,l
	sub	a, -5 (ix)
	ld	a,h
	sbc	a, -4 (ix)
	jp	PO, 00121$
	xor	a, #0x80
00121$:
	jp	M,00102$
;ugui/ugui.c:6108: wnd->title.height = font->char_height + 2;
	ld	a,-2 (ix)
	add	a, #0x02
	ld	(de),a
;ugui/ugui.c:6109: wnd->state &= ~WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	and	a, #0xBF
	ld	(bc),a
00102$:
;ugui/ugui.c:6111: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00106$
00104$:
;ugui/ugui.c:6113: return UG_RESULT_FAIL;
	ld	l,#0xFF
00106$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6116: UG_RESULT UG_WindowSetTitleTextHSpace( UG_WINDOW* wnd, UG_S8 hs )
;	---------------------------------
; Function UG_WindowSetTitleTextHSpace
; ---------------------------------
_UG_WindowSetTitleTextHSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6118: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6120: wnd->title.h_space = hs;
	ld	hl,#0x0019
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
;ugui/ugui.c:6121: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6122: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6124: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6127: UG_RESULT UG_WindowSetTitleTextVSpace( UG_WINDOW* wnd, UG_S8 vs )
;	---------------------------------
; Function UG_WindowSetTitleTextVSpace
; ---------------------------------
_UG_WindowSetTitleTextVSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6129: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6131: wnd->title.v_space = vs;
	ld	hl,#0x001A
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
;ugui/ugui.c:6132: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6133: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6135: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6138: UG_RESULT UG_WindowSetTitleTextAlignment( UG_WINDOW* wnd, UG_U8 align )
;	---------------------------------
; Function UG_WindowSetTitleTextAlignment
; ---------------------------------
_UG_WindowSetTitleTextAlignment::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6140: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6142: wnd->title.align = align;
	ld	hl,#0x001B
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
;ugui/ugui.c:6143: wnd->state |= WND_STATE_UPDATE | WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6144: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6146: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6149: UG_RESULT UG_WindowSetTitleHeight( UG_WINDOW* wnd, UG_U8 height )
;	---------------------------------
; Function UG_WindowSetTitleHeight
; ---------------------------------
_UG_WindowSetTitleHeight::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6151: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00102$
;ugui/ugui.c:6153: wnd->title.height = height;
	ld	hl,#0x002C
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
;ugui/ugui.c:6154: wnd->state &= ~WND_STATE_REDRAW_TITLE;
	ld	a,(bc)
	and	a, #0xBF
	ld	(bc),a
;ugui/ugui.c:6155: wnd->state |= WND_STATE_UPDATE;
	ld	a,(bc)
	set	5, a
	ld	(bc),a
;ugui/ugui.c:6156: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00104$
00102$:
;ugui/ugui.c:6158: return UG_RESULT_FAIL;
	ld	l,#0xFF
00104$:
	pop	ix
	ret
;ugui/ugui.c:6161: UG_RESULT UG_WindowSetXStart( UG_WINDOW* wnd, UG_S16 xs )
;	---------------------------------
; Function UG_WindowSetXStart
; ---------------------------------
_UG_WindowSetXStart::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6163: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	bit	1,3 (iy)
	jr	Z,00104$
;ugui/ugui.c:6165: wnd->xs = xs;
	ld	hl,#0x000C
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6166: if ( UG_WindowResize( wnd, wnd->xs, wnd->ys, wnd->xe, wnd->ye) == UG_RESULT_FAIL ) return UG_RESULT_FAIL;
	push	de
	pop	iy
	ld	c,18 (iy)
	ld	b,19 (iy)
	push	de
	pop	iy
	ld	a,16 (iy)
	ld	-2 (ix),a
	ld	a,17 (iy)
	ld	-1 (ix),a
	push	de
	pop	iy
	ld	l,14 (iy)
	ld	h,15 (iy)
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	push	bc
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	push	de
	call	_UG_WindowResize
	ld	iy,#10
	add	iy,sp
	ld	sp,iy
	inc	l
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00106$
00102$:
;ugui/ugui.c:6167: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00106$
00104$:
;ugui/ugui.c:6169: return UG_RESULT_FAIL;
	ld	l,#0xFF
00106$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6172: UG_RESULT UG_WindowSetYStart( UG_WINDOW* wnd, UG_S16 ys )
;	---------------------------------
; Function UG_WindowSetYStart
; ---------------------------------
_UG_WindowSetYStart::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6174: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	bit	1,3 (iy)
	jr	Z,00104$
;ugui/ugui.c:6176: wnd->ys = ys;
	ld	hl,#0x000E
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6177: if ( UG_WindowResize( wnd, wnd->xs, wnd->ys, wnd->xe, wnd->ye) == UG_RESULT_FAIL ) return UG_RESULT_FAIL;
	push	de
	pop	iy
	ld	c,18 (iy)
	ld	b,19 (iy)
	push	de
	pop	iy
	ld	a,16 (iy)
	ld	-2 (ix),a
	ld	a,17 (iy)
	ld	-1 (ix),a
	push	de
	pop	iy
	ld	l,12 (iy)
	ld	h,13 (iy)
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	push	bc
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	push	hl
	push	de
	call	_UG_WindowResize
	ld	iy,#10
	add	iy,sp
	ld	sp,iy
	inc	l
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00106$
00102$:
;ugui/ugui.c:6178: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00106$
00104$:
;ugui/ugui.c:6180: return UG_RESULT_FAIL;
	ld	l,#0xFF
00106$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6183: UG_RESULT UG_WindowSetXEnd( UG_WINDOW* wnd, UG_S16 xe )
;	---------------------------------
; Function UG_WindowSetXEnd
; ---------------------------------
_UG_WindowSetXEnd::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6185: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	bit	1,3 (iy)
	jr	Z,00104$
;ugui/ugui.c:6187: wnd->xe = xe;
	ld	hl,#0x0010
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6188: if ( UG_WindowResize( wnd, wnd->xs, wnd->ys, wnd->xe, wnd->ye) == UG_RESULT_FAIL ) return UG_RESULT_FAIL;
	push	de
	pop	iy
	ld	c,18 (iy)
	ld	b,19 (iy)
	push	de
	pop	iy
	ld	a,14 (iy)
	ld	-2 (ix),a
	ld	a,15 (iy)
	ld	-1 (ix),a
	push	de
	pop	iy
	ld	l,12 (iy)
	ld	h,13 (iy)
	push	bc
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	push	bc
	push	hl
	push	de
	call	_UG_WindowResize
	ld	iy,#10
	add	iy,sp
	ld	sp,iy
	inc	l
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00106$
00102$:
;ugui/ugui.c:6189: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00106$
00104$:
;ugui/ugui.c:6191: return UG_RESULT_FAIL;
	ld	l,#0xFF
00106$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6194: UG_RESULT UG_WindowSetYEnd( UG_WINDOW* wnd, UG_S16 ye )
;	---------------------------------
; Function UG_WindowSetYEnd
; ---------------------------------
_UG_WindowSetYEnd::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;ugui/ugui.c:6196: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	bit	1,3 (iy)
	jr	Z,00104$
;ugui/ugui.c:6198: wnd->ye = ye;
	ld	hl,#0x0012
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6199: if ( UG_WindowResize( wnd, wnd->xs, wnd->ys, wnd->xe, wnd->ye) == UG_RESULT_FAIL ) return UG_RESULT_FAIL;
	push	de
	pop	iy
	ld	c,16 (iy)
	ld	b,17 (iy)
	push	de
	pop	iy
	ld	a,14 (iy)
	ld	-2 (ix),a
	ld	a,15 (iy)
	ld	-1 (ix),a
	push	de
	pop	iy
	ld	a,12 (iy)
	ld	-4 (ix),a
	ld	a,13 (iy)
	ld	-3 (ix),a
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	call	_UG_WindowResize
	ld	iy,#10
	add	iy,sp
	ld	sp,iy
	inc	l
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00106$
00102$:
;ugui/ugui.c:6200: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00106$
00104$:
;ugui/ugui.c:6202: return UG_RESULT_FAIL;
	ld	l,#0xFF
00106$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6205: UG_RESULT UG_WindowSetStyle( UG_WINDOW* wnd, UG_U8 style )
;	---------------------------------
; Function UG_WindowSetStyle
; ---------------------------------
_UG_WindowSetStyle::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;ugui/ugui.c:6207: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00108$
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	1, a
	jr	Z,00108$
;ugui/ugui.c:6210: if ( style & WND_STYLE_3D )
	ld	a,6 (ix)
	ld	-1 (ix),a
;ugui/ugui.c:6212: wnd->style |= WND_STYLE_3D;
	ld	hl,#0x0014
	add	hl,de
	ex	de,hl
	ld	a,(de)
;ugui/ugui.c:6210: if ( style & WND_STYLE_3D )
	bit	0, -1 (ix)
	jr	Z,00102$
;ugui/ugui.c:6212: wnd->style |= WND_STYLE_3D;
	set	0, a
	ld	(de),a
	jr	00103$
00102$:
;ugui/ugui.c:6216: wnd->style &= ~WND_STYLE_3D;
	and	a, #0xFE
	ld	(de),a
00103$:
;ugui/ugui.c:6212: wnd->style |= WND_STYLE_3D;
	ld	a,(de)
;ugui/ugui.c:6219: if ( style & WND_STYLE_SHOW_TITLE )
	bit	1, 6 (ix)
	jr	Z,00105$
;ugui/ugui.c:6221: wnd->style |= WND_STYLE_SHOW_TITLE;
	set	1, a
	ld	(de),a
	jr	00106$
00105$:
;ugui/ugui.c:6225: wnd->style &= ~WND_STYLE_SHOW_TITLE;
	and	a, #0xFD
	ld	(de),a
00106$:
;ugui/ugui.c:6227: wnd->state |= WND_STATE_UPDATE;
	ld	a,(bc)
	set	5, a
	ld	(bc),a
;ugui/ugui.c:6228: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00110$
00108$:
;ugui/ugui.c:6230: return UG_RESULT_FAIL;
	ld	l,#0xFF
00110$:
	inc	sp
	pop	ix
	ret
;ugui/ugui.c:6233: UG_COLOR UG_WindowGetForeColor( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetForeColor
; ---------------------------------
_UG_WindowGetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6235: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6236: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00102$
;ugui/ugui.c:6238: c = wnd->fc;
	ld	c,4 (iy)
	ld	b,5 (iy)
	ld	e,6 (iy)
	ld	d,7 (iy)
00102$:
;ugui/ugui.c:6240: return c;
	ld	l,c
	ld	h,b
	pop	ix
	ret
;ugui/ugui.c:6243: UG_COLOR UG_WindowGetBackColor( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetBackColor
; ---------------------------------
_UG_WindowGetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6245: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6246: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00102$
;ugui/ugui.c:6248: c = wnd->bc;
	ld	c,8 (iy)
	ld	b,9 (iy)
	ld	e,10 (iy)
	ld	d,11 (iy)
00102$:
;ugui/ugui.c:6250: return c;
	ld	l,c
	ld	h,b
	pop	ix
	ret
;ugui/ugui.c:6253: UG_COLOR UG_WindowGetTitleTextColor( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleTextColor
; ---------------------------------
_UG_WindowGetTitleTextColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6255: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6256: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00102$
;ugui/ugui.c:6258: c = wnd->title.fc;
	ld	c,28 (iy)
	ld	b,29 (iy)
	ld	e,30 (iy)
	ld	d,31 (iy)
00102$:
;ugui/ugui.c:6260: return c;
	ld	l,c
	ld	h,b
	pop	ix
	ret
;ugui/ugui.c:6263: UG_COLOR UG_WindowGetTitleColor( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleColor
; ---------------------------------
_UG_WindowGetTitleColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6265: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6266: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00102$
;ugui/ugui.c:6268: c = wnd->title.bc;
	ld	c,32 (iy)
	ld	b,33 (iy)
	ld	e,34 (iy)
	ld	d,35 (iy)
00102$:
;ugui/ugui.c:6270: return c;
	ld	l,c
	ld	h,b
	pop	ix
	ret
;ugui/ugui.c:6273: UG_COLOR UG_WindowGetTitleInactiveTextColor( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleInactiveTextColor
; ---------------------------------
_UG_WindowGetTitleInactiveTextColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6275: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6276: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00102$
;ugui/ugui.c:6278: c = wnd->title.ifc;
	ld	c,36 (iy)
	ld	b,37 (iy)
	ld	e,38 (iy)
	ld	d,39 (iy)
00102$:
;ugui/ugui.c:6280: return c;
	ld	l,c
	ld	h,b
	pop	ix
	ret
;ugui/ugui.c:6283: UG_COLOR UG_WindowGetTitleInactiveColor( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleInactiveColor
; ---------------------------------
_UG_WindowGetTitleInactiveColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6285: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6286: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00102$
;ugui/ugui.c:6288: c = wnd->title.ibc;
	ld	c,40 (iy)
	ld	b,41 (iy)
	ld	e,42 (iy)
	ld	d,43 (iy)
00102$:
;ugui/ugui.c:6290: return c;
	ld	l,c
	ld	h,b
	pop	ix
	ret
;ugui/ugui.c:6293: char* UG_WindowGetTitleText( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleText
; ---------------------------------
_UG_WindowGetTitleText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6295: char* str = NULL;
	ld	de,#0x0000
;ugui/ugui.c:6296: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6298: str = wnd->title.str;
	push	bc
	pop	iy
	ld	e,21 (iy)
	ld	d,22 (iy)
00102$:
;ugui/ugui.c:6300: return str;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6303: UG_FONT* UG_WindowGetTitleTextFont( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleTextFont
; ---------------------------------
_UG_WindowGetTitleTextFont::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6305: UG_FONT* f = NULL;
	ld	de,#0x0000
;ugui/ugui.c:6306: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6308: f = (UG_FONT*)wnd->title.font;
	push	bc
	pop	iy
	ld	e,23 (iy)
	ld	d,24 (iy)
00102$:
;ugui/ugui.c:6310: return f;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6313: UG_S8 UG_WindowGetTitleTextHSpace( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleTextHSpace
; ---------------------------------
_UG_WindowGetTitleTextHSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6315: UG_S8 hs = 0;
	ld	d,#0x00
;ugui/ugui.c:6316: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6318: hs = wnd->title.h_space;
	push	bc
	pop	iy
	ld	d,25 (iy)
00102$:
;ugui/ugui.c:6320: return hs;
	ld	l,d
	pop	ix
	ret
;ugui/ugui.c:6323: UG_S8 UG_WindowGetTitleTextVSpace( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleTextVSpace
; ---------------------------------
_UG_WindowGetTitleTextVSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6325: UG_S8 vs = 0;
	ld	d,#0x00
;ugui/ugui.c:6326: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6328: vs = wnd->title.v_space;
	push	bc
	pop	iy
	ld	d,26 (iy)
00102$:
;ugui/ugui.c:6330: return vs;
	ld	l,d
	pop	ix
	ret
;ugui/ugui.c:6333: UG_U8 UG_WindowGetTitleTextAlignment( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleTextAlignment
; ---------------------------------
_UG_WindowGetTitleTextAlignment::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6335: UG_U8 align = 0;
	ld	d,#0x00
;ugui/ugui.c:6336: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6338: align = wnd->title.align;
	push	bc
	pop	iy
	ld	d,27 (iy)
00102$:
;ugui/ugui.c:6340: return align;
	ld	l,d
	pop	ix
	ret
;ugui/ugui.c:6343: UG_U8 UG_WindowGetTitleHeight( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetTitleHeight
; ---------------------------------
_UG_WindowGetTitleHeight::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6345: UG_U8 h = 0;
	ld	d,#0x00
;ugui/ugui.c:6346: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6348: h = wnd->title.height;
	push	bc
	pop	iy
	ld	d,44 (iy)
00102$:
;ugui/ugui.c:6350: return h;
	ld	l,d
	pop	ix
	ret
;ugui/ugui.c:6353: UG_S16 UG_WindowGetXStart( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetXStart
; ---------------------------------
_UG_WindowGetXStart::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6355: UG_S16 xs = -1;
	ld	de,#0xFFFF
;ugui/ugui.c:6356: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6358: xs = wnd->xs;
	push	bc
	pop	iy
	ld	e,12 (iy)
	ld	d,13 (iy)
00102$:
;ugui/ugui.c:6360: return xs;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6363: UG_S16 UG_WindowGetYStart( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetYStart
; ---------------------------------
_UG_WindowGetYStart::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6365: UG_S16 ys = -1;
	ld	de,#0xFFFF
;ugui/ugui.c:6366: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6368: ys = wnd->ys;
	push	bc
	pop	iy
	ld	e,14 (iy)
	ld	d,15 (iy)
00102$:
;ugui/ugui.c:6370: return ys;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6373: UG_S16 UG_WindowGetXEnd( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetXEnd
; ---------------------------------
_UG_WindowGetXEnd::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6375: UG_S16 xe = -1;
	ld	de,#0xFFFF
;ugui/ugui.c:6376: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6378: xe = wnd->xe;
	push	bc
	pop	iy
	ld	e,16 (iy)
	ld	d,17 (iy)
00102$:
;ugui/ugui.c:6380: return xe;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6383: UG_S16 UG_WindowGetYEnd( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetYEnd
; ---------------------------------
_UG_WindowGetYEnd::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6385: UG_S16 ye = -1;
	ld	de,#0xFFFF
;ugui/ugui.c:6386: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6388: ye = wnd->ye;
	push	bc
	pop	iy
	ld	e,18 (iy)
	ld	d,19 (iy)
00102$:
;ugui/ugui.c:6390: return ye;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6393: UG_U8 UG_WindowGetStyle( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetStyle
; ---------------------------------
_UG_WindowGetStyle::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6395: UG_U8 style = 0;
	ld	d,#0x00
;ugui/ugui.c:6396: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00102$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00102$
;ugui/ugui.c:6398: style = wnd->style;
	push	bc
	pop	iy
	ld	d,20 (iy)
00102$:
;ugui/ugui.c:6400: return style;
	ld	l,d
	pop	ix
	ret
;ugui/ugui.c:6403: UG_RESULT UG_WindowGetArea( UG_WINDOW* wnd, UG_AREA* a )
;	---------------------------------
; Function UG_WindowGetArea
; ---------------------------------
_UG_WindowGetArea::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6405: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jp	Z,00106$
	ld	a,4 (ix)
	ld	-10 (ix),a
	ld	a,5 (ix)
	ld	-9 (ix),a
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jp	Z,00106$
;ugui/ugui.c:6407: a->xs = wnd->xs;
	ld	a,6 (ix)
	ld	-8 (ix),a
	ld	a,7 (ix)
	ld	-7 (ix),a
	pop	hl
	push	hl
	ld	de, #0x000C
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:6408: a->ys = wnd->ys;
	ld	c,-8 (ix)
	ld	b,-7 (ix)
	inc	bc
	inc	bc
	pop	hl
	push	hl
	ld	de, #0x000E
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l, c
	ld	h, b
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:6409: a->xe = wnd->xe;
	ld	a,-8 (ix)
	add	a, #0x04
	ld	-2 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:6410: a->ye = wnd->ye;
	ld	a,-8 (ix)
	add	a, #0x06
	ld	-4 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	pop	hl
	push	hl
	ld	de, #0x0012
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:6411: if ( wnd->style & WND_STYLE_3D )
	ld	a,-10 (ix)
	add	a, #0x14
	ld	e,a
	ld	a,-9 (ix)
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	rrca
	jp	NC,00102$
;ugui/ugui.c:6413: a->xs+=3;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
;ugui/ugui.c:6414: a->ys+=3;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	l, c
	ld	h, b
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
;ugui/ugui.c:6415: a->xe-=3;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	add	a,#0xFD
	ld	-6 (ix),a
	ld	a,l
	adc	a,#0xFF
	ld	-5 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
;ugui/ugui.c:6416: a->ye-=3;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	add	a,#0xFD
	ld	-6 (ix),a
	ld	a,l
	adc	a,#0xFF
	ld	-5 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
00102$:
;ugui/ugui.c:6418: if ( wnd->style & WND_STYLE_SHOW_TITLE )
	ld	a,(de)
	bit	1, a
	jr	Z,00104$
;ugui/ugui.c:6420: a->ys+= wnd->title.height+1;
	ld	l, c
	ld	h, b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x002C
	add	hl, bc
	pop	bc
	ld	l,(hl)
	ld	h,#0x00
	inc	hl
	add	hl,de
	ex	de,hl
	ld	a,e
	ld	(bc),a
	inc	bc
	ld	a,d
	ld	(bc),a
00104$:
;ugui/ugui.c:6422: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00108$
00106$:
;ugui/ugui.c:6424: return UG_RESULT_FAIL;
	ld	l,#0xFF
00108$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6427: UG_S16 UG_WindowGetInnerWidth( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetInnerWidth
; ---------------------------------
_UG_WindowGetInnerWidth::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6429: UG_S16 w = 0;
	ld	bc,#0x0000
;ugui/ugui.c:6430: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00106$
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	pop	iy
	bit	1,3 (iy)
	jr	Z,00106$
;ugui/ugui.c:6432: w = wnd->xe-wnd->xs;
	push	de
	pop	iy
	ld	c,16 (iy)
	ld	b,17 (iy)
	push	de
	pop	iy
	ld	l,12 (iy)
	ld	h,13 (iy)
	ld	a,c
	sub	a, l
	ld	c,a
	ld	a,b
	sbc	a, h
	ld	b,a
;ugui/ugui.c:6435: if ( wnd->style & WND_STYLE_3D ) w-=6;
	push	de
	pop	iy
	ld	a,20 (iy)
	rrca
	jr	NC,00102$
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
00102$:
;ugui/ugui.c:6437: if ( w < 0 ) w = 0;
	bit	7, b
	jr	Z,00106$
	ld	bc,#0x0000
00106$:
;ugui/ugui.c:6439: return w;
	ld	l, c
	ld	h, b
	pop	ix
	ret
;ugui/ugui.c:6442: UG_S16 UG_WindowGetOuterWidth( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetOuterWidth
; ---------------------------------
_UG_WindowGetOuterWidth::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6444: UG_S16 w = 0;
	ld	de,#0x0000
;ugui/ugui.c:6445: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00104$
;ugui/ugui.c:6447: w = wnd->xe-wnd->xs;
	push	bc
	pop	iy
	ld	e,16 (iy)
	ld	d,17 (iy)
	ld	l, c
	ld	h, b
	ld	bc, #0x000C
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,e
	sub	a, c
	ld	e,a
	ld	a,d
	sbc	a, b
	ld	d,a
;ugui/ugui.c:6449: if ( w < 0 ) w = 0;
	bit	7, d
	jr	Z,00104$
	ld	de,#0x0000
00104$:
;ugui/ugui.c:6451: return w;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6454: UG_S16 UG_WindowGetInnerHeight( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetInnerHeight
; ---------------------------------
_UG_WindowGetInnerHeight::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6456: UG_S16 h = 0;
	ld	bc,#0x0000
;ugui/ugui.c:6457: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00108$
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jr	Z,00108$
;ugui/ugui.c:6459: h = wnd->ye-wnd->ys;
	pop	hl
	push	hl
	ld	de, #0x0012
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	pop	hl
	push	hl
	ld	bc, #0x000E
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,d
	sub	a, c
	ld	c,a
	ld	a,e
	sbc	a, b
	ld	b,a
;ugui/ugui.c:6462: if ( wnd->style & WND_STYLE_3D ) h-=6;
	pop	hl
	push	hl
	ld	de, #0x0014
	add	hl, de
	ld	h,(hl)
	ld	a,h
	rrca
	jr	NC,00102$
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
00102$:
;ugui/ugui.c:6465: if ( wnd->style & WND_STYLE_SHOW_TITLE ) h-=wnd->title.height;
	bit	1, h
	jr	Z,00104$
	pop	hl
	push	hl
	ld	de, #0x002C
	add	hl, de
	ld	h,(hl)
	ld	l,#0x00
	ld	a,c
	sub	a, h
	ld	c,a
	ld	a,b
	sbc	a, l
	ld	b,a
00104$:
;ugui/ugui.c:6467: if ( h < 0 ) h = 0;
	bit	7, b
	jr	Z,00108$
	ld	bc,#0x0000
00108$:
;ugui/ugui.c:6469: return h;
	ld	l, c
	ld	h, b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6472: UG_S16 UG_WindowGetOuterHeight( UG_WINDOW* wnd )
;	---------------------------------
; Function UG_WindowGetOuterHeight
; ---------------------------------
_UG_WindowGetOuterHeight::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6474: UG_S16 h = 0;
	ld	de,#0x0000
;ugui/ugui.c:6475: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00104$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	bit	1,3 (iy)
	jr	Z,00104$
;ugui/ugui.c:6477: h = wnd->ye-wnd->ys;
	push	bc
	pop	iy
	ld	e,18 (iy)
	ld	d,19 (iy)
	ld	l, c
	ld	h, b
	ld	bc, #0x000E
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,e
	sub	a, c
	ld	e,a
	ld	a,d
	sbc	a, b
	ld	d,a
;ugui/ugui.c:6479: if ( h < 0 ) h = 0;
	bit	7, d
	jr	Z,00104$
	ld	de,#0x0000
00104$:
;ugui/ugui.c:6481: return h;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6484: UG_RESULT _UG_WindowDrawTitle( UG_WINDOW* wnd )
;	---------------------------------
; Function _UG_WindowDrawTitle
; ---------------------------------
__UG_WindowDrawTitle::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-39
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6489: if ( (wnd != NULL) && (wnd->state & WND_STATE_VALID) )
	ld	a,5 (ix)
	or	a,4 (ix)
	jp	Z,00107$
	ld	a,4 (ix)
	ld	-8 (ix),a
	ld	a,5 (ix)
	ld	-7 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	inc	hl
	inc	hl
	inc	hl
	bit	1,(hl)
	jp	Z,00107$
;ugui/ugui.c:6491: xs = wnd->xs;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	de, #0x000C
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;ugui/ugui.c:6492: ys = wnd->ys;
	ld	e,-8 (ix)
	ld	d,-7 (ix)
	push	de
	pop	iy
	ld	a,14 (iy)
	ld	-39 (ix),a
	ld	a,15 (iy)
	ld	-38 (ix),a
;ugui/ugui.c:6493: xe = wnd->xe;
	ld	e,-8 (ix)
	ld	d,-7 (ix)
	push	de
	pop	iy
	ld	a,16 (iy)
	ld	-12 (ix),a
	ld	a,17 (iy)
	ld	-11 (ix),a
;ugui/ugui.c:6497: if ( wnd->style & WND_STYLE_3D )
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	de, #0x0014
	add	hl, de
	ld	a,(hl)
	rrca
	jr	NC,00102$
;ugui/ugui.c:6499: xs+=3;
	inc	bc
	inc	bc
	inc	bc
;ugui/ugui.c:6500: ys+=3;
	ld	a,-39 (ix)
	add	a, #0x03
	ld	-39 (ix),a
	ld	a,-38 (ix)
	adc	a, #0x00
	ld	-38 (ix),a
;ugui/ugui.c:6501: xe-=3;
	ld	a,-12 (ix)
	add	a,#0xFD
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a,#0xFF
	ld	-11 (ix),a
;ugui/ugui.c:6502: ye-=3;
00102$:
;ugui/ugui.c:6506: if ( wnd == gui->active_window )
	ld	iy,(_gui)
	ld	d,13 (iy)
	ld	e,14 (iy)
	ld	a,-8 (ix)
	sub	a, d
	jr	NZ,00104$
	ld	a,-7 (ix)
	sub	a, e
	jr	NZ,00104$
;ugui/ugui.c:6508: txt.bc = wnd->title.bc;
	ld	hl,#0x0002
	add	hl,sp
	ld	-10 (ix),l
	ld	-9 (ix),h
	ld	iy,#0x0010
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	add	iy, de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	de, #0x0020
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	l,(hl)
	ld	h,a
	ld	0 (iy),e
	ld	1 (iy),d
	ld	2 (iy),l
	ld	3 (iy),h
;ugui/ugui.c:6509: txt.fc = wnd->title.fc;
	ld	iy,#0x000C
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	add	iy, de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	de, #0x001C
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	h,(hl)
	ld	l,a
	ld	0 (iy),d
	ld	1 (iy),e
	ld	2 (iy),h
	ld	3 (iy),l
	jr	00105$
00104$:
;ugui/ugui.c:6513: txt.bc = wnd->title.ibc;
	ld	hl,#0x0002
	add	hl,sp
	ld	-10 (ix),l
	ld	-9 (ix),h
	ld	iy,#0x0010
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	add	iy, de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	de, #0x0028
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	h,(hl)
	ld	l,a
	ld	0 (iy),e
	ld	1 (iy),d
	ld	2 (iy),h
	ld	3 (iy),l
;ugui/ugui.c:6514: txt.fc = wnd->title.ifc;
	ld	a,-10 (ix)
	add	a, #0x0C
	ld	e,a
	ld	a,-9 (ix)
	adc	a, #0x00
	ld	d,a
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,36 (iy)
	ld	-6 (ix),a
	ld	a,37 (iy)
	ld	-5 (ix),a
	ld	a,38 (iy)
	ld	-4 (ix),a
	ld	a,39 (iy)
	ld	-3 (ix),a
	push	bc
	ld	hl, #0x0023
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
00105$:
;ugui/ugui.c:6518: UG_FillFrame(xs,ys,xe,ys+wnd->title.height-1,txt.bc);
	ld	hl,#0x0002
	add	hl,sp
	ex	de,hl
	push	de
	pop	iy
	ld	a,16 (iy)
	ld	-6 (ix),a
	ld	a,17 (iy)
	ld	-5 (ix),a
	ld	a,18 (iy)
	ld	-4 (ix),a
	ld	a,19 (iy)
	ld	-3 (ix),a
	ld	a,-8 (ix)
	ld	-10 (ix),a
	ld	a,-7 (ix)
	ld	-9 (ix),a
	ld	a,-8 (ix)
	add	a, #0x2C
	ld	-2 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	ld	h,#0x00
	push	hl
	pop	iy
	push	bc
	ld	c,-39 (ix)
	ld	b,-38 (ix)
	add	iy, bc
	pop	bc
	push	iy
	pop	iy
	dec	iy
	push	bc
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	push	iy
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	push	hl
	push	bc
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:6521: txt.str = wnd->title.str;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	bc
	ld	bc, #0x0015
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	l, e
	ld	h, d
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
;ugui/ugui.c:6522: txt.font = wnd->title.font;
	push	de
	pop	iy
	inc	iy
	inc	iy
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	bc
	ld	bc, #0x0017
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	ld	0 (iy), a
	ld	1 (iy),l
;ugui/ugui.c:6523: txt.a.xs = xs+3;
	ld	iy,#0x0004
	add	iy, de
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	0 (iy),l
	ld	1 (iy),h
;ugui/ugui.c:6524: txt.a.ys = ys;
	ld	hl,#0x0006
	add	hl,de
	ld	a,-39 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-38 (ix)
	ld	(hl),a
;ugui/ugui.c:6525: txt.a.xe = xe;
	ld	hl,#0x0008
	add	hl,de
	ld	a,-12 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-11 (ix)
	ld	(hl),a
;ugui/ugui.c:6526: txt.a.ye = ys+wnd->title.height-1;
	ld	iy,#0x000A
	add	iy, de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	a,-39 (ix)
	add	a, l
	ld	l,a
	ld	a,-38 (ix)
	adc	a, h
	ld	h,a
	dec	hl
	ld	0 (iy),l
	ld	1 (iy),h
;ugui/ugui.c:6527: txt.align = wnd->title.align;
	ld	iy,#0x0014
	add	iy, de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	bc
	ld	bc, #0x001B
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	0 (iy), a
;ugui/ugui.c:6528: txt.h_space = wnd->title.h_space;
	ld	iy,#0x0015
	add	iy, de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	bc
	ld	bc, #0x0019
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	l,a
	rla
	sbc	a, a
	ld	0 (iy), l
	ld	1 (iy), a
;ugui/ugui.c:6529: txt.v_space = wnd->title.v_space;
	ld	iy,#0x0017
	add	iy, de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	bc
	ld	bc, #0x001A
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	l,a
	rla
	sbc	a, a
	ld	0 (iy), l
	ld	1 (iy), a
;ugui/ugui.c:6530: _UG_PutText( &txt );
	push	bc
	push	de
	call	__UG_PutText
	pop	af
	pop	bc
;ugui/ugui.c:6533: UG_DrawLine(xs,ys+wnd->title.height,xe,ys+wnd->title.height,pal_window[11]);
	ld	de,#_pal_window+44
	push	bc
	ld	hl, #0x0023
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	a,-39 (ix)
	add	a, l
	ld	e,a
	ld	a,-38 (ix)
	adc	a, h
	ld	d,a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	push	de
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	push	de
	push	bc
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6534: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00109$
00107$:
;ugui/ugui.c:6536: return UG_RESULT_FAIL;
	ld	l,#0xFF
00109$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6539: void _UG_WindowUpdate( UG_WINDOW* wnd )
;	---------------------------------
; Function _UG_WindowUpdate
; ---------------------------------
__UG_WindowUpdate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-29
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6545: xs = wnd->xs;
	ld	a,4 (ix)
	ld	-13 (ix),a
	ld	a,5 (ix)
	ld	-12 (ix),a
	ld	a,-13 (ix)
	add	a, #0x0C
	ld	-17 (ix),a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	-16 (ix),a
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	ld	a,(hl)
	ld	-25 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-24 (ix),a
;ugui/ugui.c:6546: ys = wnd->ys;
	ld	c,-13 (ix)
	ld	b,-12 (ix)
	push	bc
	pop	iy
	ld	a,14 (iy)
	ld	-27 (ix),a
	ld	a,15 (iy)
	ld	-26 (ix),a
;ugui/ugui.c:6547: xe = wnd->xe;
	ld	a,-13 (ix)
	add	a, #0x10
	ld	-15 (ix),a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	-14 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,(hl)
	ld	-29 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-28 (ix),a
;ugui/ugui.c:6548: ye = wnd->ye;
	ld	a,-13 (ix)
	add	a, #0x12
	ld	-9 (ix),a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	-8 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-23 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-22 (ix),a
;ugui/ugui.c:6550: wnd->state &= ~WND_STATE_UPDATE;
	ld	a,-13 (ix)
	add	a, #0x03
	ld	-11 (ix),a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	-10 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	and	a, #0xDF
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),a
;ugui/ugui.c:6552: if ( wnd->state & WND_STATE_VISIBLE )
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-1 (ix),a
	bit	3, -1 (ix)
	jp	Z,00114$
;ugui/ugui.c:6555: if ( (wnd->style & WND_STYLE_3D) && !(wnd->state & WND_STATE_REDRAW_TITLE) )
	ld	a,-13 (ix)
	add	a, #0x14
	ld	-3 (ix),a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	-2 (ix),a
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,(hl)
	rrca
	jr	NC,00102$
	bit	6, -1 (ix)
	jr	NZ,00102$
;ugui/ugui.c:6557: _UG_DrawObjectFrame(xs,ys,xe,ye,(UG_COLOR*)pal_window);
	ld	hl,#_pal_window
	push	hl
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	call	__UG_DrawObjectFrame
	ld	hl,#10
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6558: xs+=3;
	ld	a,-25 (ix)
	add	a, #0x03
	ld	-25 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-24 (ix),a
;ugui/ugui.c:6559: ys+=3;
	ld	a,-27 (ix)
	add	a, #0x03
	ld	-27 (ix),a
	ld	a,-26 (ix)
	adc	a, #0x00
	ld	-26 (ix),a
;ugui/ugui.c:6560: xe-=3;
	ld	a,-29 (ix)
	add	a,#0xFD
	ld	-29 (ix),a
	ld	a,-28 (ix)
	adc	a,#0xFF
	ld	-28 (ix),a
;ugui/ugui.c:6561: ye-=3;
	ld	a,-23 (ix)
	add	a,#0xFD
	ld	-23 (ix),a
	ld	a,-22 (ix)
	adc	a,#0xFF
	ld	-22 (ix),a
00102$:
;ugui/ugui.c:6564: if ( wnd->style & WND_STYLE_SHOW_TITLE )
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	bit	1,(hl)
	jr	Z,00107$
;ugui/ugui.c:6566: _UG_WindowDrawTitle( wnd );
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	call	__UG_WindowDrawTitle
	pop	af
;ugui/ugui.c:6567: ys += wnd->title.height+1;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	de, #0x002C
	add	hl, de
	ld	e,(hl)
	ld	d,#0x00
	inc	de
	ld	h,e
	ld	a,-27 (ix)
	add	a, h
	ld	-27 (ix),a
	ld	a,-26 (ix)
	adc	a, d
	ld	-26 (ix),a
;ugui/ugui.c:6568: if ( wnd->state & WND_STATE_REDRAW_TITLE )
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	bit	6, a
	jr	Z,00107$
;ugui/ugui.c:6570: wnd->state &= ~WND_STATE_REDRAW_TITLE;
	and	a, #0xBF
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),a
;ugui/ugui.c:6571: return;
	jp	00119$
00107$:
;ugui/ugui.c:6575: UG_FillFrame(xs,ys,xe,ye,wnd->bc);
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	bc
	push	de
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6578: objcnt = wnd->objcnt;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,(hl)
	ld	-21 (ix),a
	ld	-20 (ix),#0x00
;ugui/ugui.c:6579: for(i=0; i<objcnt; i++)
	ld	c,-13 (ix)
	ld	b,-12 (ix)
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
	ld	de,#0x0000
00117$:
	ld	a,-19 (ix)
	sub	a, -21 (ix)
	ld	a,-18 (ix)
	sbc	a, -20 (ix)
	jp	NC,00119$
;ugui/ugui.c:6581: obj = (UG_OBJECT*)&wnd->objlst[i];
	ld	l, c
	ld	h, b
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
;ugui/ugui.c:6582: if ( !(obj->state & OBJ_STATE_FREE) && (obj->state & OBJ_STATE_VALID) && (obj->state & OBJ_STATE_VISIBLE) ) obj->state |= (OBJ_STATE_UPDATE | OBJ_STATE_REDRAW);
	ld	a,(hl)
	ld	-3 (ix), a
	rrca
	jr	C,00118$
	bit	1, -3 (ix)
	jr	Z,00118$
	bit	3, -3 (ix)
	jr	Z,00118$
	ld	a,-3 (ix)
	or	a, #0x60
	ld	(hl),a
00118$:
;ugui/ugui.c:6579: for(i=0; i<objcnt; i++)
	ld	hl,#0x0019
	add	hl,de
	ex	de,hl
	inc	-19 (ix)
	jr	NZ,00117$
	inc	-18 (ix)
	jr	00117$
00114$:
;ugui/ugui.c:6587: UG_FillFrame(wnd->xs,wnd->xs,wnd->xe,wnd->ye,gui->desktop_color);
	ld	iy,(_gui)
	ld	a,60 (iy)
	ld	-7 (ix),a
	ld	a,61 (iy)
	ld	-6 (ix),a
	ld	a,62 (iy)
	ld	-5 (ix),a
	ld	a,63 (iy)
	ld	-4 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,(hl)
	ld	-3 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	push	bc
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	push	de
	push	de
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00119$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6591: UG_RESULT _UG_WindowClear( UG_WINDOW* wnd )
;	---------------------------------
; Function _UG_WindowClear
; ---------------------------------
__UG_WindowClear::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6593: if ( wnd != NULL )
	ld	a,5 (ix)
	or	a,4 (ix)
	jp	Z,00108$
;ugui/ugui.c:6595: if (wnd->state & WND_STATE_VISIBLE)
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	bit	3, a
	jp	Z,00106$
;ugui/ugui.c:6597: wnd->state &= ~WND_STATE_VISIBLE;
	and	a, #0xF7
	ld	(hl),a
;ugui/ugui.c:6598: UG_FillFrame( wnd->xs, wnd->ys, wnd->xe, wnd->ye, gui->desktop_color );
	ld	iy,(_gui)
	ld	a,60 (iy)
	ld	-6 (ix),a
	ld	a,61 (iy)
	ld	-5 (ix),a
	ld	a,62 (iy)
	ld	-4 (ix),a
	ld	a,63 (iy)
	ld	-3 (ix),a
	push	de
	pop	iy
	ld	a,18 (iy)
	ld	-8 (ix),a
	ld	a,19 (iy)
	ld	-7 (ix),a
	push	de
	pop	iy
	ld	a,16 (iy)
	ld	-2 (ix),a
	ld	a,17 (iy)
	ld	-1 (ix),a
	push	de
	pop	iy
	ld	a,14 (iy)
	ld	-10 (ix),a
	ld	a,15 (iy)
	ld	-9 (ix),a
	ld	l, e
	ld	h, d
	ld	bc, #0x000C
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	push	bc
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
	ld	hl,(_gui)
;ugui/ugui.c:6600: if ( wnd != gui->active_window )
	ld	bc,#0x000D
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	sub	a, e
	jr	NZ,00128$
	ld	a,b
	sub	a, d
	jr	Z,00106$
00128$:
;ugui/ugui.c:6603: if ( gui->active_window->state & WND_STATE_VISIBLE )
	inc	bc
	inc	bc
	inc	bc
	ld	a,(bc)
	bit	3, a
	jr	Z,00106$
;ugui/ugui.c:6605: gui->active_window->state &= ~WND_STATE_REDRAW_TITLE;
	and	a, #0xBF
	ld	(bc),a
;ugui/ugui.c:6598: UG_FillFrame( wnd->xs, wnd->ys, wnd->xe, wnd->ye, gui->desktop_color );
	ld	hl,(_gui)
;ugui/ugui.c:6600: if ( wnd != gui->active_window )
	ld	de, #0x000D
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;ugui/ugui.c:6603: if ( gui->active_window->state & WND_STATE_VISIBLE )
	inc	de
	inc	de
	inc	de
;ugui/ugui.c:6606: gui->active_window->state |= WND_STATE_UPDATE;
	ld	a,(de)
	set	5, a
	ld	(de),a
00106$:
;ugui/ugui.c:6610: return UG_RESULT_OK;
	ld	l,#0x00
	jr	00109$
00108$:
;ugui/ugui.c:6612: return UG_RESULT_FAIL;
	ld	l,#0xFF
00109$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6618: UG_RESULT UG_ButtonCreate( UG_WINDOW* wnd, UG_BUTTON* btn, UG_U8 id, UG_S16 xs, UG_S16 ys, UG_S16 xe, UG_S16 ye )
;	---------------------------------
; Function UG_ButtonCreate
; ---------------------------------
_UG_ButtonCreate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:6622: obj = _UG_GetFreeObject( wnd );
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_GetFreeObject
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:6623: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jp	00106$
00102$:
;ugui/ugui.c:6626: btn->state = BTN_STATE_RELEASED;
	ld	e,6 (ix)
	ld	d,7 (ix)
	xor	a, a
	ld	(de),a
;ugui/ugui.c:6627: btn->bc = wnd->bc;
	ld	hl,#0x0006
	add	hl,de
	ld	-12 (ix),l
	ld	-11 (ix),h
	ld	a,4 (ix)
	ld	-14 (ix),a
	ld	a,5 (ix)
	ld	-13 (ix),a
	ld	a,-14 (ix)
	add	a, #0x08
	ld	-10 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-9 (ix),a
	push	de
	push	bc
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	hl, #0x000E
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-12 (ix)
	ld	d,-11 (ix)
	ld	hl, #0x000E
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:6628: btn->fc = wnd->fc;
	push	de
	pop	iy
	inc	iy
	inc	iy
	ld	a,-14 (ix)
	add	a, #0x04
	ld	-4 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	push	de
	push	bc
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	hl, #0x000A
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	push	iy
	pop	de
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:6629: btn->abc = wnd->bc;
	ld	iy,#0x000E
	add	iy, de
	push	de
	push	bc
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	hl, #0x000A
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	push	iy
	pop	de
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:6630: btn->afc = wnd->fc;
	ld	iy,#0x000A
	add	iy, de
	push	de
	push	bc
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	hl, #0x000A
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	push	iy
	pop	de
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:6631: btn->style = BTN_STYLE_3D;
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl),#0x01
;ugui/ugui.c:6632: btn->align = ALIGN_CENTER;
	ld	hl,#0x0014
	add	hl,de
	ld	(hl),#0x12
;ugui/ugui.c:6633: if (gui != NULL) btn->font = &gui->font;
	ld	hl,#0x0012
	add	hl,de
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,(#_gui + 1)
	ld	hl,#_gui + 0
	or	a,(hl)
	jr	Z,00104$
	ld	hl,(_gui)
	ld	a,l
	add	a, #0x25
	ld	-4 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,-4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-3 (ix)
	ld	(hl),a
	jr	00105$
00104$:
;ugui/ugui.c:6634: else btn->font = NULL;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00105$:
;ugui/ugui.c:6635: btn->str = "-";
	ld	hl,#0x0017
	add	hl,de
	ld	de,#___str_0+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:6638: obj->update = _UG_ButtonUpdate;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#<(__UG_ButtonUpdate)
	inc	hl
	ld	(hl),#>(__UG_ButtonUpdate)
;ugui/ugui.c:6639: obj->touch_state = OBJ_TOUCH_STATE_INIT;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:6640: obj->type = OBJ_TYPE_BUTTON;
	ld	hl,#0x0014
	add	hl,bc
	ld	(hl),#0x01
;ugui/ugui.c:6641: obj->event = OBJ_EVENT_NONE;
	ld	hl,#0x0016
	add	hl,bc
	ld	(hl),#0x00
;ugui/ugui.c:6642: obj->a_rel.xs = xs;
	ld	hl,#0x000C
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	a,9 (ix)
	ld	(hl),a
	inc	hl
	ld	a,10 (ix)
	ld	(hl),a
;ugui/ugui.c:6643: obj->a_rel.ys = ys;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,11 (ix)
	ld	(hl),a
	inc	hl
	ld	a,12 (ix)
	ld	(hl),a
;ugui/ugui.c:6644: obj->a_rel.xe = xe;
	ld	hl,#0x0004
	add	hl,de
	ld	a,13 (ix)
	ld	(hl),a
	inc	hl
	ld	a,14 (ix)
	ld	(hl),a
;ugui/ugui.c:6645: obj->a_rel.ye = ye;
	ld	hl,#0x0006
	add	hl,de
	ld	a,15 (ix)
	ld	(hl),a
	inc	hl
	ld	a,16 (ix)
	ld	(hl),a
;ugui/ugui.c:6646: obj->a_abs.xs = -1;
	ld	hl,#0x0004
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:6647: obj->a_abs.ys = -1;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:6648: obj->a_abs.xe = -1;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:6649: obj->a_abs.ye = -1;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:6650: obj->id = id;
	ld	hl,#0x0015
	add	hl,bc
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:6651: obj->state |= OBJ_STATE_VISIBLE | OBJ_STATE_REDRAW | OBJ_STATE_VALID | OBJ_STATE_TOUCH_ENABLE;
	ld	a,(bc)
	or	a, #0xCA
	ld	-8 (ix), a
	ld	(bc),a
;ugui/ugui.c:6652: obj->data = (void*)btn;
	ld	hl,#0x0017
	add	hl,bc
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:6655: obj->state &= ~OBJ_STATE_FREE;
	ld	a,-8 (ix)
	and	a, #0xFE
	ld	(bc),a
;ugui/ugui.c:6657: return UG_RESULT_OK;
	ld	l,#0x00
00106$:
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "-"
	.db 0x00
;ugui/ugui.c:6660: UG_RESULT UG_ButtonDelete( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonDelete
; ---------------------------------
_UG_ButtonDelete::
;ugui/ugui.c:6662: return _UG_DeleteObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x01
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_DeleteObject
	pop	af
	pop	af
	ret
;ugui/ugui.c:6665: UG_RESULT UG_ButtonShow( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonShow
; ---------------------------------
_UG_ButtonShow::
;ugui/ugui.c:6669: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x01
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
;ugui/ugui.c:6670: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,h
	or	a,l
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:6672: obj->state |= OBJ_STATE_VISIBLE;
	set	3, (hl)
	ld	a, (hl)
;ugui/ugui.c:6673: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	or	a, #0x60
	ld	(hl),a
;ugui/ugui.c:6675: return UG_RESULT_OK;
	ld	l,#0x00
	ret
;ugui/ugui.c:6678: UG_RESULT UG_ButtonHide( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonHide
; ---------------------------------
_UG_ButtonHide::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6683: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6684: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6686: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6688: btn->state &= ~BTN_STATE_PRESSED;
	ld	a,(hl)
	and	a, #0xFE
	ld	(hl),a
;ugui/ugui.c:6689: obj->touch_state = OBJ_TOUCH_STATE_INIT;
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:6690: obj->event = OBJ_EVENT_NONE;
	ld	hl,#0x0016
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:6691: obj->state &= ~OBJ_STATE_VISIBLE;
	ld	a,(de)
	and	a, #0xF7
	ld	(de),a
;ugui/ugui.c:6692: obj->state |= OBJ_STATE_UPDATE;
	ld	a,(de)
	set	5, a
	ld	(de),a
;ugui/ugui.c:6694: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6697: UG_RESULT UG_ButtonSetForeColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR fc )
;	---------------------------------
; Function UG_ButtonSetForeColor
; ---------------------------------
_UG_ButtonSetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6702: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:6703: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6705: btn = (UG_BUTTON*)(obj->data);
	push	bc
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6706: btn->fc = fc;
	inc	hl
	inc	hl
	ld	d,h
	push	bc
	ld	e, l
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:6707: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6709: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6712: UG_RESULT UG_ButtonSetBackColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR bc )
;	---------------------------------
; Function UG_ButtonSetBackColor
; ---------------------------------
_UG_ButtonSetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6717: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6718: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6720: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6721: btn->bc = bc;
	ld	bc,#0x0006
	add	hl,bc
	push	de
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	de
;ugui/ugui.c:6722: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6724: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6727: UG_RESULT UG_ButtonSetAlternateForeColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR afc )
;	---------------------------------
; Function UG_ButtonSetAlternateForeColor
; ---------------------------------
_UG_ButtonSetAlternateForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6732: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6733: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6735: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6736: btn->afc = afc;
	ld	bc,#0x000A
	add	hl,bc
	push	de
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	de
;ugui/ugui.c:6737: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6739: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6742: UG_RESULT UG_ButtonSetAlternateBackColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR abc )
;	---------------------------------
; Function UG_ButtonSetAlternateBackColor
; ---------------------------------
_UG_ButtonSetAlternateBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6747: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6748: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6750: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6751: btn->abc = abc;
	ld	bc,#0x000E
	add	hl,bc
	push	de
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	de
;ugui/ugui.c:6752: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6754: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6757: UG_RESULT UG_ButtonSetText( UG_WINDOW* wnd, UG_U8 id, char* str )
;	---------------------------------
; Function UG_ButtonSetText
; ---------------------------------
_UG_ButtonSetText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6762: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6763: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6765: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6766: btn->str = str;
	ld	bc,#0x0017
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:6767: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6769: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6772: UG_RESULT UG_ButtonSetFont( UG_WINDOW* wnd, UG_U8 id, const UG_FONT* font )
;	---------------------------------
; Function UG_ButtonSetFont
; ---------------------------------
_UG_ButtonSetFont::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6777: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6778: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6780: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6781: btn->font = font;
	ld	bc,#0x0012
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:6782: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6784: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6787: UG_RESULT UG_ButtonSetStyle( UG_WINDOW* wnd, UG_U8 id, UG_U8 style )
;	---------------------------------
; Function UG_ButtonSetStyle
; ---------------------------------
_UG_ButtonSetStyle::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6792: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:6793: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00116$
00102$:
;ugui/ugui.c:6795: btn = (UG_BUTTON*)(obj->data);
	push	bc
	pop	iy
	ld	h,23 (iy)
	ld	l,24 (iy)
	ld	-2 (ix),h
	ld	-1 (ix),l
;ugui/ugui.c:6798: btn->style &= ~(BTN_STYLE_USE_ALTERNATE_COLORS | BTN_STYLE_TOGGLE_COLORS | BTN_STYLE_NO_BORDERS | BTN_STYLE_NO_FILL);
	pop	de
	push	de
	inc	de
	ld	a,(de)
	and	a, #0xE1
	ld	(de),a
;ugui/ugui.c:6799: btn->state |= BTN_STATE_ALWAYS_REDRAW;
	pop	hl
	push	hl
	ld	a,(hl)
	set	1, a
	pop	hl
	push	hl
	ld	(hl),a
;ugui/ugui.c:6800: if ( style & BTN_STYLE_NO_BORDERS )
	bit	3, 7 (ix)
	jr	Z,00104$
;ugui/ugui.c:6802: btn->style |= BTN_STYLE_NO_BORDERS;
	ld	a,(de)
	set	3, a
	ld	(de),a
00104$:
;ugui/ugui.c:6804: if ( style & BTN_STYLE_NO_FILL )
	bit	4, 7 (ix)
	jr	Z,00106$
;ugui/ugui.c:6806: btn->style |= BTN_STYLE_NO_FILL;
	ld	a,(de)
	set	4, a
	ld	(de),a
00106$:
;ugui/ugui.c:6808: if ( style & BTN_STYLE_TOGGLE_COLORS )
	bit	1, 7 (ix)
	jr	Z,00111$
;ugui/ugui.c:6810: btn->style |= BTN_STYLE_TOGGLE_COLORS;
	ld	a,(de)
	set	1, a
	ld	(de),a
	jr	00112$
00111$:
;ugui/ugui.c:6812: else if ( style & BTN_STYLE_USE_ALTERNATE_COLORS )
	bit	2, 7 (ix)
	jr	Z,00108$
;ugui/ugui.c:6814: btn->style |= BTN_STYLE_USE_ALTERNATE_COLORS;
	ld	a,(de)
	set	2, a
	ld	(de),a
	jr	00112$
00108$:
;ugui/ugui.c:6818: btn->state &= ~BTN_STATE_ALWAYS_REDRAW;
	pop	hl
	push	hl
	ld	a,(hl)
	and	a, #0xFD
	pop	hl
	push	hl
	ld	(hl),a
00112$:
;ugui/ugui.c:6822: if ( style & BTN_STYLE_3D )
	ld	a,7 (ix)
;ugui/ugui.c:6798: btn->style &= ~(BTN_STYLE_USE_ALTERNATE_COLORS | BTN_STYLE_TOGGLE_COLORS | BTN_STYLE_NO_BORDERS | BTN_STYLE_NO_FILL);
	push	af
	ld	a,(de)
	ld	l,a
	pop	af
;ugui/ugui.c:6822: if ( style & BTN_STYLE_3D )
	rrca
	jr	NC,00114$
;ugui/ugui.c:6824: btn->style |= BTN_STYLE_3D;
	ld	a,l
	set	0, a
	ld	(de),a
	jr	00115$
00114$:
;ugui/ugui.c:6828: btn->style &= ~BTN_STYLE_3D;
	ld	a,l
	and	a, #0xFE
	ld	(de),a
00115$:
;ugui/ugui.c:6830: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:6832: return UG_RESULT_OK;
	ld	l,#0x00
00116$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6835: UG_RESULT UG_ButtonSetHSpace( UG_WINDOW* wnd, UG_U8 id, UG_S8 hs )
;	---------------------------------
; Function UG_ButtonSetHSpace
; ---------------------------------
_UG_ButtonSetHSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6840: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6841: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6843: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6844: btn->h_space = hs;
	ld	bc,#0x0015
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6845: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6847: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6850: UG_RESULT UG_ButtonSetVSpace( UG_WINDOW* wnd, UG_U8 id, UG_S8 vs )
;	---------------------------------
; Function UG_ButtonSetVSpace
; ---------------------------------
_UG_ButtonSetVSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6855: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6856: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6858: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6859: btn->v_space = vs;
	ld	bc,#0x0016
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6860: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6862: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6865: UG_RESULT UG_ButtonSetAlignment( UG_WINDOW* wnd, UG_U8 id, UG_U8 align )
;	---------------------------------
; Function UG_ButtonSetAlignment
; ---------------------------------
_UG_ButtonSetAlignment::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6870: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:6871: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:6873: btn = (UG_BUTTON*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:6874: btn->align = align;
	ld	bc,#0x0014
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:6875: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:6877: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:6880: UG_COLOR UG_ButtonGetForeColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetForeColor
; ---------------------------------
_UG_ButtonGetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6884: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6886: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:6887: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6889: btn = (UG_BUTTON*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6890: c = btn->fc;
	inc	hl
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:6892: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6895: UG_COLOR UG_ButtonGetBackColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetBackColor
; ---------------------------------
_UG_ButtonGetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6899: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6901: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:6902: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6904: btn = (UG_BUTTON*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6905: c = btn->bc;
	ld	de, #0x0006
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:6907: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6910: UG_COLOR UG_ButtonGetAlternateForeColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetAlternateForeColor
; ---------------------------------
_UG_ButtonGetAlternateForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6914: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6916: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:6917: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6919: btn = (UG_BUTTON*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6920: c = btn->afc;
	ld	de, #0x000A
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:6922: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6925: UG_COLOR UG_ButtonGetAlternateBackColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetAlternateBackColor
; ---------------------------------
_UG_ButtonGetAlternateBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:6929: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:6931: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:6932: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6934: btn = (UG_BUTTON*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6935: c = btn->abc;
	ld	de, #0x000E
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:6937: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:6940: char* UG_ButtonGetText( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetText
; ---------------------------------
_UG_ButtonGetText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6944: char* str = NULL;
	ld	de,#0x0000
;ugui/ugui.c:6946: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	de
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:6947: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6949: btn = (UG_BUTTON*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6950: str = btn->str;
	ld	de, #0x0017
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:6952: return str;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6955: UG_FONT* UG_ButtonGetFont( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetFont
; ---------------------------------
_UG_ButtonGetFont::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:6959: UG_FONT* font = NULL;
	ld	de,#0x0000
;ugui/ugui.c:6961: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	de
	ld	d, 6 (ix)
	ld	e,#0x01
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:6962: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6964: btn = (UG_BUTTON*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6965: font = (UG_FONT*)btn->font;
	ld	de, #0x0012
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:6967: return font;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:6970: UG_U8 UG_ButtonGetStyle( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetStyle
; ---------------------------------
_UG_ButtonGetStyle::
;ugui/ugui.c:6974: UG_U8 style = 0;
	ld	e,#0x00
;ugui/ugui.c:6976: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x01
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:6977: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6979: btn = (UG_BUTTON*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6980: style = btn->style;
	inc	hl
	ld	e,(hl)
00102$:
;ugui/ugui.c:6982: return style;
	ld	l,e
	ret
;ugui/ugui.c:6985: UG_S8 UG_ButtonGetHSpace( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetHSpace
; ---------------------------------
_UG_ButtonGetHSpace::
;ugui/ugui.c:6989: UG_S8 hs = 0;
	ld	e,#0x00
;ugui/ugui.c:6991: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x01
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:6992: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:6994: btn = (UG_BUTTON*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:6995: hs = btn->h_space;
	ld	de, #0x0015
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:6997: return hs;
	ld	l,e
	ret
;ugui/ugui.c:7000: UG_S8 UG_ButtonGetVSpace( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetVSpace
; ---------------------------------
_UG_ButtonGetVSpace::
;ugui/ugui.c:7004: UG_S8 vs = 0;
	ld	e,#0x00
;ugui/ugui.c:7006: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x01
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7007: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7009: btn = (UG_BUTTON*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7010: vs = btn->v_space;
	ld	de, #0x0016
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:7012: return vs;
	ld	l,e
	ret
;ugui/ugui.c:7015: UG_U8 UG_ButtonGetAlignment( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ButtonGetAlignment
; ---------------------------------
_UG_ButtonGetAlignment::
;ugui/ugui.c:7019: UG_U8 align = 0;
	ld	e,#0x00
;ugui/ugui.c:7021: obj = _UG_SearchObject( wnd, OBJ_TYPE_BUTTON, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x01
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7022: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7024: btn = (UG_BUTTON*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7025: align = btn->align;
	ld	de, #0x0014
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:7027: return align;
	ld	l,e
	ret
;ugui/ugui.c:7031: void _UG_ButtonUpdate(UG_WINDOW* wnd, UG_OBJECT* obj)
;	---------------------------------
; Function _UG_ButtonUpdate
; ---------------------------------
__UG_ButtonUpdate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-77
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7039: btn = (UG_BUTTON*)(obj->data);
	ld	a,6 (ix)
	ld	-41 (ix),a
	ld	a,7 (ix)
	ld	-40 (ix),a
	ld	a,-41 (ix)
	ld	-37 (ix),a
	ld	a,-40 (ix)
	ld	-36 (ix),a
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	de, #0x0017
	add	hl, de
	ld	a,(hl)
	ld	-37 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-36 (ix),a
	ld	a,-37 (ix)
	ld	-43 (ix),a
	ld	a,-36 (ix)
	ld	-42 (ix),a
;ugui/ugui.c:7044: if ( (obj->touch_state & OBJ_TOUCH_STATE_CHANGED) )
	ld	a,-41 (ix)
	add	a, #0x01
	ld	-37 (ix),a
	ld	a,-40 (ix)
	adc	a, #0x00
	ld	-36 (ix),a
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	h,(hl)
	ld	a,h
	rrca
	jp	NC,00109$
;ugui/ugui.c:7049: obj->event = BTN_EVENT_CLICKED;
	ld	a,-41 (ix)
	add	a, #0x16
	ld	-39 (ix),a
	ld	a,-40 (ix)
	adc	a, #0x00
	ld	-38 (ix),a
;ugui/ugui.c:7047: if ( obj->touch_state & OBJ_TOUCH_STATE_CLICK_ON_OBJECT )
	add	hl, hl
	jr	NC,00102$
;ugui/ugui.c:7049: obj->event = BTN_EVENT_CLICKED;
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	(hl),#0x01
;ugui/ugui.c:7050: obj->state |= OBJ_STATE_UPDATE;
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	a,(hl)
	set	5, a
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	(hl),a
00102$:
;ugui/ugui.c:7053: if ( obj->touch_state & OBJ_TOUCH_STATE_PRESSED_ON_OBJECT )
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	d,(hl)
;ugui/ugui.c:7055: btn->state |= BTN_STATE_PRESSED;
	ld	l,-43 (ix)
	ld	h,-42 (ix)
	ld	a,(hl)
	ld	-3 (ix),a
;ugui/ugui.c:7053: if ( obj->touch_state & OBJ_TOUCH_STATE_PRESSED_ON_OBJECT )
	bit	1, d
	jr	Z,00106$
;ugui/ugui.c:7055: btn->state |= BTN_STATE_PRESSED;
	ld	a,-3 (ix)
	set	0, a
	ld	l,-43 (ix)
	ld	h,-42 (ix)
	ld	(hl),a
;ugui/ugui.c:7056: obj->state |= OBJ_STATE_UPDATE;
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	a,(hl)
	set	5, a
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	(hl),a
;ugui/ugui.c:7057: obj->event = OBJ_EVENT_PRESSED;
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	(hl),#0x04
	jr	00107$
00106$:
;ugui/ugui.c:7060: else if ( btn->state & BTN_STATE_PRESSED )
	bit	0, -3 (ix)
	jr	Z,00107$
;ugui/ugui.c:7062: btn->state &= ~BTN_STATE_PRESSED;
	ld	a,-3 (ix)
	and	a, #0xFE
	ld	l,-43 (ix)
	ld	h,-42 (ix)
	ld	(hl),a
;ugui/ugui.c:7063: obj->state |= OBJ_STATE_UPDATE;
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	a,(hl)
	set	5, a
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	(hl),a
;ugui/ugui.c:7064: obj->event = OBJ_EVENT_RELEASED;
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	(hl),#0x05
00107$:
;ugui/ugui.c:7066: obj->touch_state &= ~OBJ_TOUCH_STATE_CHANGED;
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	a,(hl)
	and	a, #0xFE
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	(hl),a
00109$:
;ugui/ugui.c:7072: if ( obj->state & OBJ_STATE_UPDATE )
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	a,(hl)
	ld	-3 (ix),a
	bit	5, -3 (ix)
	jp	Z,00138$
;ugui/ugui.c:7080: obj->a_abs.xs = obj->a_rel.xs + a.xs;
	ld	a,-41 (ix)
	add	a, #0x04
	ld	-39 (ix),a
	ld	a,-40 (ix)
	adc	a, #0x00
	ld	-38 (ix),a
;ugui/ugui.c:7081: obj->a_abs.ys = obj->a_rel.ys + a.ys;
	ld	a,-41 (ix)
	add	a, #0x06
	ld	-37 (ix),a
	ld	a,-40 (ix)
	adc	a, #0x00
	ld	-36 (ix),a
;ugui/ugui.c:7082: obj->a_abs.xe = obj->a_rel.xe + a.xs;
	ld	a,-41 (ix)
	add	a, #0x08
	ld	-11 (ix),a
	ld	a,-40 (ix)
	adc	a, #0x00
	ld	-10 (ix),a
;ugui/ugui.c:7083: obj->a_abs.ye = obj->a_rel.ye + a.ys;
	ld	a,-41 (ix)
	add	a, #0x0A
	ld	-2 (ix),a
	ld	a,-40 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
;ugui/ugui.c:7084: if ( obj->a_abs.ye > wnd->ye ) return;
	ld	a,4 (ix)
	ld	-31 (ix),a
	ld	a,5 (ix)
	ld	-30 (ix),a
;ugui/ugui.c:7091: d = ( btn->style & BTN_STYLE_3D )? 3:1;
	ld	a,-43 (ix)
	add	a, #0x01
	ld	-33 (ix),a
	ld	a,-42 (ix)
	adc	a, #0x00
	ld	-32 (ix),a
;ugui/ugui.c:7074: if ( obj->state & OBJ_STATE_VISIBLE )
	bit	3, -3 (ix)
	jp	Z,00134$
;ugui/ugui.c:7108: txt.bc = btn->abc;
	ld	a,-43 (ix)
	add	a, #0x0E
	ld	-29 (ix),a
	ld	a,-42 (ix)
	adc	a, #0x00
	ld	-28 (ix),a
;ugui/ugui.c:7109: txt.fc = btn->afc;
	ld	a,-43 (ix)
	add	a, #0x0A
	ld	-23 (ix),a
	ld	a,-42 (ix)
	adc	a, #0x00
	ld	-22 (ix),a
;ugui/ugui.c:7077: if ( (obj->state & OBJ_STATE_REDRAW) || (btn->state & BTN_STATE_ALWAYS_REDRAW) )
	bit	6, -3 (ix)
	jr	NZ,00123$
	ld	l,-43 (ix)
	ld	h,-42 (ix)
	bit	1,(hl)
	jp	Z,00124$
00123$:
;ugui/ugui.c:7079: UG_WindowGetArea(wnd,&a);
	ld	hl,#0x001A
	add	hl,sp
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	a,-5 (ix)
	ld	-27 (ix),a
	ld	a,-4 (ix)
	ld	-26 (ix),a
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowGetArea
	pop	af
	pop	af
;ugui/ugui.c:7080: obj->a_abs.xs = obj->a_rel.xs + a.xs;
	ld	a,-41 (ix)
	ld	-27 (ix),a
	ld	a,-40 (ix)
	ld	-26 (ix),a
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	ld	de, #0x000C
	add	hl, de
	ld	a,(hl)
	ld	-27 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-26 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
	ld	a,-27 (ix)
	add	a, -35 (ix)
	ld	-35 (ix),a
	ld	a,-26 (ix)
	adc	a, -34 (ix)
	ld	-34 (ix),a
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	a,-35 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-34 (ix)
	ld	(hl),a
;ugui/ugui.c:7081: obj->a_abs.ys = obj->a_rel.ys + a.ys;
	ld	a,-41 (ix)
	ld	-35 (ix),a
	ld	a,-40 (ix)
	ld	-34 (ix),a
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	ld	de, #0x000E
	add	hl, de
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
	ld	a,-5 (ix)
	add	a, #0x02
	ld	-27 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-26 (ix),a
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	ld	a,(hl)
	ld	-25 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-24 (ix),a
	ld	a,-35 (ix)
	add	a, -25 (ix)
	ld	-25 (ix),a
	ld	a,-34 (ix)
	adc	a, -24 (ix)
	ld	-24 (ix),a
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	a,-25 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-24 (ix)
	ld	(hl),a
;ugui/ugui.c:7082: obj->a_abs.xe = obj->a_rel.xe + a.xs;
	ld	a,-41 (ix)
	ld	-25 (ix),a
	ld	a,-40 (ix)
	ld	-24 (ix),a
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a,(hl)
	ld	-25 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-24 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
	ld	a,-25 (ix)
	add	a, -35 (ix)
	ld	-25 (ix),a
	ld	a,-24 (ix)
	adc	a, -34 (ix)
	ld	-24 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,-25 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-24 (ix)
	ld	(hl),a
;ugui/ugui.c:7083: obj->a_abs.ye = obj->a_rel.ye + a.ys;
	ld	a,-41 (ix)
	ld	-25 (ix),a
	ld	a,-40 (ix)
	ld	-24 (ix),a
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	a,(hl)
	ld	-25 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-24 (ix),a
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
	ld	a,-25 (ix)
	add	a, -35 (ix)
	ld	-25 (ix),a
	ld	a,-24 (ix)
	adc	a, -34 (ix)
	ld	-24 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-25 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-24 (ix)
	ld	(hl),a
;ugui/ugui.c:7084: if ( obj->a_abs.ye > wnd->ye ) return;
	ld	a,-31 (ix)
	ld	-35 (ix),a
	ld	a,-30 (ix)
	ld	-34 (ix),a
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
	ld	a,-35 (ix)
	sub	a, -25 (ix)
	ld	a,-34 (ix)
	sbc	a, -24 (ix)
	jp	PO, 00231$
	xor	a, #0x80
00231$:
	jp	P,00111$
	jp	00138$
00111$:
;ugui/ugui.c:7085: if ( obj->a_abs.xe > wnd->xe ) return;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-25 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-24 (ix),a
	ld	a,-31 (ix)
	ld	-35 (ix),a
	ld	a,-30 (ix)
	ld	-34 (ix),a
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
	ld	a,-35 (ix)
	sub	a, -25 (ix)
	ld	a,-34 (ix)
	sbc	a, -24 (ix)
	jp	PO, 00232$
	xor	a, #0x80
00232$:
	jp	P,00113$
	jp	00138$
00113$:
;ugui/ugui.c:7087: _UG_SendObjectPrerenderEvent(wnd, obj);
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	push	hl
	ld	l,-31 (ix)
	ld	h,-30 (ix)
	push	hl
	call	__UG_SendObjectPrerenderEvent
	pop	af
	pop	af
;ugui/ugui.c:7091: d = ( btn->style & BTN_STYLE_3D )? 3:1;
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	ld	a,(hl)
	rrca
	jr	NC,00140$
	ld	-52 (ix),#0x03
	jr	00141$
00140$:
	ld	-52 (ix),#0x01
00141$:
;ugui/ugui.c:7093: txt.bc = btn->bc;
	ld	hl,#0x0000
	add	hl,sp
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	a,-25 (ix)
	add	a, #0x10
	ld	-35 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-34 (ix),a
	ld	a,-43 (ix)
	add	a, #0x06
	ld	-27 (ix),a
	ld	a,-42 (ix)
	adc	a, #0x00
	ld	-26 (ix),a
	ld	e,-27 (ix)
	ld	d,-26 (ix)
	ld	hl, #0x0038
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-35 (ix)
	ld	d,-34 (ix)
	ld	hl, #0x0038
	add	hl, sp
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7094: txt.fc = btn->fc;
	ld	a,-25 (ix)
	add	a, #0x0C
	ld	-21 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-20 (ix),a
	ld	a,-43 (ix)
	add	a, #0x02
	ld	-5 (ix),a
	ld	a,-42 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	e,-5 (ix)
	ld	d,-4 (ix)
	ld	hl, #0x003C
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-21 (ix)
	ld	d,-20 (ix)
	ld	hl, #0x003C
	add	hl, sp
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7096: if( btn->state & BTN_STATE_PRESSED )
	ld	l,-43 (ix)
	ld	h,-42 (ix)
	ld	a,(hl)
	rrca
	jr	NC,00120$
;ugui/ugui.c:7099: if( btn->style & BTN_STYLE_TOGGLE_COLORS )
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	ld	a,(hl)
	bit	1, a
	jr	Z,00117$
;ugui/ugui.c:7102: txt.bc = btn->fc;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:7103: txt.fc = btn->bc;
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jr	00120$
00117$:
;ugui/ugui.c:7106: else if ( btn->style & BTN_STYLE_USE_ALTERNATE_COLORS )
	bit	2, a
	jr	Z,00120$
;ugui/ugui.c:7108: txt.bc = btn->abc;
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:7109: txt.fc = btn->afc;
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
00120$:
;ugui/ugui.c:7112: if ( !(btn->style & BTN_STYLE_NO_FILL) )
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	ld	h,(hl)
;ugui/ugui.c:7113: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	a,-52 (ix)
	ld	-17 (ix),a
	ld	-16 (ix),#0x00
;ugui/ugui.c:7112: if ( !(btn->style & BTN_STYLE_NO_FILL) )
	bit	4, h
	jp	NZ,00122$
;ugui/ugui.c:7113: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	e,-35 (ix)
	ld	d,-34 (ix)
	ld	hl, #0x0038
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
	ld	a,-35 (ix)
	sub	a, -17 (ix)
	ld	-35 (ix),a
	ld	a,-34 (ix)
	sbc	a, -16 (ix)
	ld	-34 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-27 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-26 (ix),a
	ld	a,-27 (ix)
	sub	a, -17 (ix)
	ld	-27 (ix),a
	ld	a,-26 (ix)
	sbc	a, -16 (ix)
	ld	-26 (ix),a
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	a,(hl)
	ld	-5 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	ld	a,-17 (ix)
	add	a, -5 (ix)
	ld	-5 (ix),a
	ld	a,-16 (ix)
	adc	a, -4 (ix)
	ld	-4 (ix),a
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	a,(hl)
	ld	-13 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-12 (ix),a
	ld	a,-17 (ix)
	add	a, -13 (ix)
	ld	-13 (ix),a
	ld	a,-16 (ix)
	adc	a, -12 (ix)
	ld	-12 (ix),a
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	push	hl
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00122$:
;ugui/ugui.c:7116: txt.a.xs = obj->a_abs.xs+d;
	ld	a,-25 (ix)
	add	a, #0x04
	ld	-13 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,d
	add	a, -17 (ix)
	ld	-21 (ix),a
	ld	a,h
	adc	a, -16 (ix)
	ld	-20 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,-21 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-20 (ix)
	ld	(hl),a
;ugui/ugui.c:7117: txt.a.ys = obj->a_abs.ys+d;
	ld	a,-25 (ix)
	add	a, #0x06
	ld	-13 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,d
	add	a, -17 (ix)
	ld	-21 (ix),a
	ld	a,h
	adc	a, -16 (ix)
	ld	-20 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,-21 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-20 (ix)
	ld	(hl),a
;ugui/ugui.c:7118: txt.a.xe = obj->a_abs.xe-d;
	ld	a,-25 (ix)
	add	a, #0x08
	ld	-13 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,d
	sub	a, -17 (ix)
	ld	-21 (ix),a
	ld	a,h
	sbc	a, -16 (ix)
	ld	-20 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,-21 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-20 (ix)
	ld	(hl),a
;ugui/ugui.c:7119: txt.a.ye = obj->a_abs.ye-d;
	ld	a,-25 (ix)
	add	a, #0x0A
	ld	-13 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-21 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-20 (ix),a
	ld	a,-21 (ix)
	sub	a, -17 (ix)
	ld	-17 (ix),a
	ld	a,-20 (ix)
	sbc	a, -16 (ix)
	ld	-16 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,-17 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-16 (ix)
	ld	(hl),a
;ugui/ugui.c:7120: txt.align = btn->align;
	ld	a,-25 (ix)
	add	a, #0x14
	ld	-13 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
	ld	l,-43 (ix)
	ld	h,-42 (ix)
	ld	de, #0x0014
	add	hl, de
	ld	a,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	(hl),a
;ugui/ugui.c:7121: txt.font = btn->font;
	ld	a,-25 (ix)
	add	a, #0x02
	ld	-13 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
	ld	c,-43 (ix)
	ld	b,-42 (ix)
	push	bc
	pop	iy
	ld	a,18 (iy)
	ld	-17 (ix),a
	ld	a,19 (iy)
	ld	-16 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,-17 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-16 (ix)
	ld	(hl),a
;ugui/ugui.c:7122: txt.h_space = 2;
	ld	a,-25 (ix)
	add	a, #0x15
	ld	-13 (ix),a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:7123: txt.v_space = 2;
	ld	a,-25 (ix)
	add	a, #0x17
	ld	l,a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	h,a
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:7124: txt.str = btn->str;
	ld	c,-43 (ix)
	ld	b,-42 (ix)
	push	bc
	pop	iy
	ld	a,23 (iy)
	ld	-13 (ix),a
	ld	a,24 (iy)
	ld	-12 (ix),a
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	ld	a,-13 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-12 (ix)
	ld	(hl),a
;ugui/ugui.c:7125: _UG_PutText( &txt );
	ld	a,-25 (ix)
	ld	-13 (ix),a
	ld	a,-24 (ix)
	ld	-12 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	call	__UG_PutText
	pop	af
;ugui/ugui.c:7126: obj->state &= ~OBJ_STATE_REDRAW;
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	a,(hl)
	and	a, #0xBF
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	(hl),a
;ugui/ugui.c:7128: _UG_SendObjectPostrenderEvent(wnd, obj);
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	push	hl
	ld	l,-31 (ix)
	ld	h,-30 (ix)
	push	hl
	call	__UG_SendObjectPostrenderEvent
	pop	af
	pop	af
00124$:
;ugui/ugui.c:7132: if ( !(btn->style & BTN_STYLE_NO_BORDERS) )
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	ld	a,(hl)
	ld	-13 (ix),a
	bit	3, -13 (ix)
	jp	NZ,00135$
;ugui/ugui.c:7134: if ( btn->style & BTN_STYLE_3D )
	ld	e,-13 (ix)
;ugui/ugui.c:7055: btn->state |= BTN_STATE_PRESSED;
	ld	l,-43 (ix)
	ld	h,-42 (ix)
	ld	c,(hl)
;ugui/ugui.c:7085: if ( obj->a_abs.xe > wnd->xe ) return;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-13 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-12 (ix),a
;ugui/ugui.c:7113: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-17 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-16 (ix),a
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	a,(hl)
	ld	-21 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-20 (ix),a
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	a,(hl)
	ld	-25 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-24 (ix),a
;ugui/ugui.c:7060: else if ( btn->state & BTN_STATE_PRESSED )
	ld	a,c
;ugui/ugui.c:7136: _UG_DrawObjectFrame(obj->a_abs.xs,obj->a_abs.ys,obj->a_abs.xe,obj->a_abs.ye, (btn->state&BTN_STATE_PRESSED)?(UG_COLOR*)pal_button_pressed:(UG_COLOR*)pal_button_released);
	and	a, #0x01
;ugui/ugui.c:7134: if ( btn->style & BTN_STYLE_3D )
	bit	0, e
	jr	Z,00127$
;ugui/ugui.c:7136: _UG_DrawObjectFrame(obj->a_abs.xs,obj->a_abs.ys,obj->a_abs.xe,obj->a_abs.ye, (btn->state&BTN_STATE_PRESSED)?(UG_COLOR*)pal_button_pressed:(UG_COLOR*)pal_button_released);
	or	a, a
	jr	Z,00142$
	ld	hl,#_pal_button_pressed+0
	jr	00143$
00142$:
	ld	hl,#_pal_button_released+0
00143$:
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	call	__UG_DrawObjectFrame
	ld	hl,#10
	add	hl,sp
	ld	sp,hl
	jp	00135$
00127$:
;ugui/ugui.c:7140: UG_DrawFrame(obj->a_abs.xs,obj->a_abs.ys,obj->a_abs.xe,obj->a_abs.ye,(btn->state&BTN_STATE_PRESSED)?btn->abc:btn->afc);
	or	a, a
	jr	Z,00144$
	ld	e,-29 (ix)
	ld	d,-28 (ix)
	ld	hl, #0x0044
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	jr	00145$
00144$:
	ld	e,-23 (ix)
	ld	d,-22 (ix)
	ld	hl, #0x0044
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
00145$:
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	call	_UG_DrawFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	jp	00135$
00134$:
;ugui/ugui.c:7146: if ( !(btn->style & BTN_STYLE_NO_FILL) )
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	bit	4,(hl)
	jr	NZ,00135$
;ugui/ugui.c:7147: UG_FillFrame(obj->a_abs.xs, obj->a_abs.ys, obj->a_abs.xe, obj->a_abs.ye, wnd->bc);
	ld	c,-31 (ix)
	ld	b,-30 (ix)
	push	bc
	pop	iy
	ld	a,8 (iy)
	ld	-9 (ix),a
	ld	a,9 (iy)
	ld	-8 (ix),a
	ld	a,10 (iy)
	ld	-7 (ix),a
	ld	a,11 (iy)
	ld	-6 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-37 (ix)
	ld	h,-36 (ix)
	ld	a,(hl)
	ld	-13 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-12 (ix),a
	ld	l,-39 (ix)
	ld	h,-38 (ix)
	ld	a,(hl)
	ld	-17 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-16 (ix),a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	push	de
	push	bc
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00135$:
;ugui/ugui.c:7149: obj->state &= ~OBJ_STATE_UPDATE;
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	a,(hl)
	and	a, #0xDF
	ld	l,-41 (ix)
	ld	h,-40 (ix)
	ld	(hl),a
00138$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7156: UG_RESULT UG_CheckboxCreate( UG_WINDOW* wnd, UG_CHECKBOX* chb, UG_U8 id, UG_S16 xs, UG_S16 ys, UG_S16 xe, UG_S16 ye )
;	---------------------------------
; Function UG_CheckboxCreate
; ---------------------------------
_UG_CheckboxCreate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7160: obj = _UG_GetFreeObject( wnd );
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_GetFreeObject
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:7161: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jp	00106$
00102$:
;ugui/ugui.c:7164: chb->state = CHB_STATE_RELEASED;
	ld	e,6 (ix)
	ld	d,7 (ix)
	xor	a, a
	ld	(de),a
;ugui/ugui.c:7165: chb->bc = wnd->bc;
	ld	hl,#0x0006
	add	hl,de
	ld	-10 (ix),l
	ld	-9 (ix),h
	ld	a,4 (ix)
	ld	-14 (ix),a
	ld	a,5 (ix)
	ld	-13 (ix),a
	ld	a,-14 (ix)
	add	a, #0x08
	ld	-12 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-11 (ix),a
	push	de
	push	bc
	ld	e,-12 (ix)
	ld	d,-11 (ix)
	ld	hl, #0x000E
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	hl, #0x000E
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:7166: chb->fc = wnd->fc;
	push	de
	pop	iy
	inc	iy
	inc	iy
	ld	a,-14 (ix)
	add	a, #0x04
	ld	-4 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	push	de
	push	bc
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	hl, #0x000A
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	push	iy
	pop	de
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:7167: chb->abc = wnd->bc;
	ld	iy,#0x000E
	add	iy, de
	push	de
	push	bc
	ld	e,-12 (ix)
	ld	d,-11 (ix)
	ld	hl, #0x000A
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	push	iy
	pop	de
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:7168: chb->afc = wnd->fc;
	ld	iy,#0x000A
	add	iy, de
	push	de
	push	bc
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	hl, #0x000A
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	push	iy
	pop	de
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:7169: chb->style = CHB_STYLE_3D;
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl),#0x01
;ugui/ugui.c:7170: chb->align = ALIGN_TOP_LEFT;
	ld	hl,#0x0014
	add	hl,de
	ld	(hl),#0x09
;ugui/ugui.c:7171: if (gui != NULL) chb->font = &gui->font;
	ld	hl,#0x0012
	add	hl,de
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,(#_gui + 1)
	ld	hl,#_gui + 0
	or	a,(hl)
	jr	Z,00104$
	ld	hl,(_gui)
	ld	a,l
	add	a, #0x25
	ld	-4 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,-4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-3 (ix)
	ld	(hl),a
	jr	00105$
00104$:
;ugui/ugui.c:7172: else chb->font = NULL;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00105$:
;ugui/ugui.c:7173: chb->str = "-";
	ld	hl,#0x0017
	add	hl,de
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),#<(___str_1)
	inc	hl
	ld	(hl),#>(___str_1)
;ugui/ugui.c:7174: chb->checked = 0; 
	ld	hl,#0x0019
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:7177: obj->update = _UG_CheckboxUpdate;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#<(__UG_CheckboxUpdate)
	inc	hl
	ld	(hl),#>(__UG_CheckboxUpdate)
;ugui/ugui.c:7178: obj->touch_state = OBJ_TOUCH_STATE_INIT;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:7179: obj->type = OBJ_TYPE_CHECKBOX;
	ld	hl,#0x0014
	add	hl,bc
	ld	(hl),#0x04
;ugui/ugui.c:7180: obj->event = OBJ_EVENT_NONE;
	ld	hl,#0x0016
	add	hl,bc
	ld	(hl),#0x00
;ugui/ugui.c:7181: obj->a_rel.xs = xs;
	ld	hl,#0x000C
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	a,9 (ix)
	ld	(hl),a
	inc	hl
	ld	a,10 (ix)
	ld	(hl),a
;ugui/ugui.c:7182: obj->a_rel.ys = ys;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,11 (ix)
	ld	(hl),a
	inc	hl
	ld	a,12 (ix)
	ld	(hl),a
;ugui/ugui.c:7183: obj->a_rel.xe = xe;
	ld	hl,#0x0004
	add	hl,de
	ld	a,13 (ix)
	ld	(hl),a
	inc	hl
	ld	a,14 (ix)
	ld	(hl),a
;ugui/ugui.c:7184: obj->a_rel.ye = ye;
	ld	hl,#0x0006
	add	hl,de
	ld	a,15 (ix)
	ld	(hl),a
	inc	hl
	ld	a,16 (ix)
	ld	(hl),a
;ugui/ugui.c:7185: obj->a_abs.xs = -1;
	ld	hl,#0x0004
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7186: obj->a_abs.ys = -1;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7187: obj->a_abs.xe = -1;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7188: obj->a_abs.ye = -1;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7189: obj->id = id;
	ld	hl,#0x0015
	add	hl,bc
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:7190: obj->state |= OBJ_STATE_VISIBLE | OBJ_STATE_REDRAW | OBJ_STATE_VALID | OBJ_STATE_TOUCH_ENABLE;
	ld	a,(bc)
	or	a, #0xCA
	ld	-8 (ix), a
	ld	(bc),a
;ugui/ugui.c:7191: obj->data = (void*)chb;
	ld	hl,#0x0017
	add	hl,bc
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:7194: obj->state &= ~OBJ_STATE_FREE;
	ld	a,-8 (ix)
	and	a, #0xFE
	ld	(bc),a
;ugui/ugui.c:7196: return UG_RESULT_OK;
	ld	l,#0x00
00106$:
	ld	sp, ix
	pop	ix
	ret
___str_1:
	.ascii "-"
	.db 0x00
;ugui/ugui.c:7199: UG_RESULT UG_CheckboxDelete( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxDelete
; ---------------------------------
_UG_CheckboxDelete::
;ugui/ugui.c:7201: return _UG_DeleteObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_DeleteObject
	pop	af
	pop	af
	ret
;ugui/ugui.c:7204: UG_RESULT UG_CheckboxShow( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxShow
; ---------------------------------
_UG_CheckboxShow::
;ugui/ugui.c:7208: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
;ugui/ugui.c:7209: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,h
	or	a,l
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:7211: obj->state |= OBJ_STATE_VISIBLE;
	set	3, (hl)
	ld	a, (hl)
;ugui/ugui.c:7212: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	or	a, #0x60
	ld	(hl),a
;ugui/ugui.c:7214: return UG_RESULT_OK;
	ld	l,#0x00
	ret
;ugui/ugui.c:7217: UG_RESULT UG_CheckboxHide( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxHide
; ---------------------------------
_UG_CheckboxHide::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7222: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7223: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7225: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7227: btn->state &= ~CHB_STATE_PRESSED;
	ld	a,(hl)
	and	a, #0xFE
	ld	(hl),a
;ugui/ugui.c:7228: obj->touch_state = OBJ_TOUCH_STATE_INIT;
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:7229: obj->event = OBJ_EVENT_NONE;
	ld	hl,#0x0016
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:7230: obj->state &= ~OBJ_STATE_VISIBLE;
	ld	a,(de)
	and	a, #0xF7
	ld	(de),a
;ugui/ugui.c:7231: obj->state |= OBJ_STATE_UPDATE;
	ld	a,(de)
	set	5, a
	ld	(de),a
;ugui/ugui.c:7233: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7236: UG_RESULT UG_CheckboxSetCheched( UG_WINDOW* wnd, UG_U8 id, UG_U8 ch )
;	---------------------------------
; Function UG_CheckboxSetCheched
; ---------------------------------
_UG_CheckboxSetCheched::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7241: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7242: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7244: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7245: btn->checked = ch;
	ld	bc,#0x0019
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:7246: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7248: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7252: UG_RESULT UG_CheckboxSetForeColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR fc )
;	---------------------------------
; Function UG_CheckboxSetForeColor
; ---------------------------------
_UG_CheckboxSetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7257: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:7258: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7260: btn = (UG_CHECKBOX*)(obj->data);
	push	bc
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7261: btn->fc = fc;
	inc	hl
	inc	hl
	ld	d,h
	push	bc
	ld	e, l
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:7262: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:7264: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7267: UG_RESULT UG_CheckboxSetBackColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR bc )
;	---------------------------------
; Function UG_CheckboxSetBackColor
; ---------------------------------
_UG_CheckboxSetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7272: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7273: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7275: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7276: btn->bc = bc;
	ld	bc,#0x0006
	add	hl,bc
	push	de
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	de
;ugui/ugui.c:7277: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7279: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7282: UG_RESULT UG_CheckboxSetAlternateForeColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR afc )
;	---------------------------------
; Function UG_CheckboxSetAlternateForeColor
; ---------------------------------
_UG_CheckboxSetAlternateForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7287: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7288: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7290: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7291: btn->afc = afc;
	ld	bc,#0x000A
	add	hl,bc
	push	de
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	de
;ugui/ugui.c:7292: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7294: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7297: UG_RESULT UG_CheckboxSetAlternateBackColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR abc )
;	---------------------------------
; Function UG_CheckboxSetAlternateBackColor
; ---------------------------------
_UG_CheckboxSetAlternateBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7302: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7303: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7305: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7306: btn->abc = abc;
	ld	bc,#0x000E
	add	hl,bc
	push	de
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	de
;ugui/ugui.c:7307: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7309: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7312: UG_RESULT UG_CheckboxSetText( UG_WINDOW* wnd, UG_U8 id, char* str )
;	---------------------------------
; Function UG_CheckboxSetText
; ---------------------------------
_UG_CheckboxSetText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7317: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7318: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7320: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7321: btn->str = str;
	ld	bc,#0x0017
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:7322: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7324: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7327: UG_RESULT UG_CheckboxSetFont( UG_WINDOW* wnd, UG_U8 id, const UG_FONT* font )
;	---------------------------------
; Function UG_CheckboxSetFont
; ---------------------------------
_UG_CheckboxSetFont::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7332: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7333: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7335: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7336: btn->font = font;
	ld	bc,#0x0012
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:7337: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7339: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7342: UG_RESULT UG_CheckboxSetStyle( UG_WINDOW* wnd, UG_U8 id, UG_U8 style )
;	---------------------------------
; Function UG_CheckboxSetStyle
; ---------------------------------
_UG_CheckboxSetStyle::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:7347: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:7348: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00116$
00102$:
;ugui/ugui.c:7350: chk = (UG_CHECKBOX*)(obj->data);
	push	bc
	pop	iy
	ld	h,23 (iy)
	ld	l,24 (iy)
	ld	-2 (ix),h
	ld	-1 (ix),l
;ugui/ugui.c:7353: chk->style &= ~(CHB_STYLE_USE_ALTERNATE_COLORS | CHB_STYLE_TOGGLE_COLORS | CHB_STYLE_NO_BORDERS | CHB_STYLE_NO_FILL);
	pop	de
	push	de
	inc	de
	ld	a,(de)
	and	a, #0xE1
	ld	(de),a
;ugui/ugui.c:7354: chk->state |= CHB_STATE_ALWAYS_REDRAW;
	pop	hl
	push	hl
	ld	a,(hl)
	set	1, a
	pop	hl
	push	hl
	ld	(hl),a
;ugui/ugui.c:7355: if ( style & CHB_STYLE_NO_BORDERS )
	bit	3, 7 (ix)
	jr	Z,00104$
;ugui/ugui.c:7357: chk->style |= CHB_STYLE_NO_BORDERS;
	ld	a,(de)
	set	3, a
	ld	(de),a
00104$:
;ugui/ugui.c:7359: if ( style & CHB_STYLE_NO_FILL )
	bit	4, 7 (ix)
	jr	Z,00106$
;ugui/ugui.c:7361: chk->style |= CHB_STYLE_NO_FILL;
	ld	a,(de)
	set	4, a
	ld	(de),a
00106$:
;ugui/ugui.c:7363: if ( style & CHB_STYLE_TOGGLE_COLORS )
	bit	1, 7 (ix)
	jr	Z,00111$
;ugui/ugui.c:7365: chk->style |= CHB_STYLE_TOGGLE_COLORS;
	ld	a,(de)
	set	1, a
	ld	(de),a
	jr	00112$
00111$:
;ugui/ugui.c:7367: else if ( style & CHB_STYLE_USE_ALTERNATE_COLORS )
	bit	2, 7 (ix)
	jr	Z,00108$
;ugui/ugui.c:7369: chk->style |= CHB_STYLE_USE_ALTERNATE_COLORS;
	ld	a,(de)
	set	2, a
	ld	(de),a
	jr	00112$
00108$:
;ugui/ugui.c:7373: chk->state &= ~CHB_STATE_ALWAYS_REDRAW;
	pop	hl
	push	hl
	ld	a,(hl)
	and	a, #0xFD
	pop	hl
	push	hl
	ld	(hl),a
00112$:
;ugui/ugui.c:7377: if ( style & CHB_STYLE_3D )
	ld	a,7 (ix)
;ugui/ugui.c:7353: chk->style &= ~(CHB_STYLE_USE_ALTERNATE_COLORS | CHB_STYLE_TOGGLE_COLORS | CHB_STYLE_NO_BORDERS | CHB_STYLE_NO_FILL);
	push	af
	ld	a,(de)
	ld	l,a
	pop	af
;ugui/ugui.c:7377: if ( style & CHB_STYLE_3D )
	rrca
	jr	NC,00114$
;ugui/ugui.c:7379: chk->style |= CHB_STYLE_3D;
	ld	a,l
	set	0, a
	ld	(de),a
	jr	00115$
00114$:
;ugui/ugui.c:7383: chk->style &= ~CHB_STYLE_3D;
	ld	a,l
	and	a, #0xFE
	ld	(de),a
00115$:
;ugui/ugui.c:7385: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:7387: return UG_RESULT_OK;
	ld	l,#0x00
00116$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7390: UG_RESULT UG_CheckboxSetHSpace( UG_WINDOW* wnd, UG_U8 id, UG_S8 hs )
;	---------------------------------
; Function UG_CheckboxSetHSpace
; ---------------------------------
_UG_CheckboxSetHSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7395: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7396: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7398: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7399: btn->h_space = hs;
	ld	bc,#0x0015
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:7400: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7402: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7405: UG_RESULT UG_CheckboxSetVSpace( UG_WINDOW* wnd, UG_U8 id, UG_S8 vs )
;	---------------------------------
; Function UG_CheckboxSetVSpace
; ---------------------------------
_UG_CheckboxSetVSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7410: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7411: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7413: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7414: btn->v_space = vs;
	ld	bc,#0x0016
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:7415: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7417: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7420: UG_RESULT UG_CheckboxSetAlignment( UG_WINDOW* wnd, UG_U8 id, UG_U8 align )
;	---------------------------------
; Function UG_CheckboxSetAlignment
; ---------------------------------
_UG_CheckboxSetAlignment::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7425: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7426: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7428: btn = (UG_CHECKBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7429: btn->align = align;
	ld	bc,#0x0014
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:7430: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7432: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7435: UG_U8 UG_CheckboxGetChecked( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetChecked
; ---------------------------------
_UG_CheckboxGetChecked::
;ugui/ugui.c:7439: UG_U8 c = 0;
	ld	e,#0x00
;ugui/ugui.c:7441: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7442: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7444: btn = (UG_CHECKBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7445: c = btn->checked;
	ld	de, #0x0019
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:7447: return c;
	ld	l,e
	ret
;ugui/ugui.c:7450: UG_COLOR UG_CheckboxGetForeColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetForeColor
; ---------------------------------
_UG_CheckboxGetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:7454: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:7456: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:7457: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7459: btn = (UG_CHECKBOX*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7460: c = btn->fc;
	inc	hl
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7462: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7465: UG_COLOR UG_CheckboxGetBackColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetBackColor
; ---------------------------------
_UG_CheckboxGetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:7469: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:7471: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:7472: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7474: btn = (UG_CHECKBOX*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7475: c = btn->bc;
	ld	de, #0x0006
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7477: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7480: UG_COLOR UG_CheckboxGetAlternateForeColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetAlternateForeColor
; ---------------------------------
_UG_CheckboxGetAlternateForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:7484: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:7486: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:7487: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7489: btn = (UG_CHECKBOX*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7490: c = btn->afc;
	ld	de, #0x000A
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7492: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7495: UG_COLOR UG_CheckboxGetAlternateBackColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetAlternateBackColor
; ---------------------------------
_UG_CheckboxGetAlternateBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:7499: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:7501: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:7502: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7504: btn = (UG_CHECKBOX*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7505: c = btn->abc;
	ld	de, #0x000E
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7507: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7510: char* UG_CheckboxGetText( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetText
; ---------------------------------
_UG_CheckboxGetText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7514: char* str = NULL;
	ld	de,#0x0000
;ugui/ugui.c:7516: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	de
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7517: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7519: btn = (UG_CHECKBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7520: str = btn->str;
	ld	de, #0x0017
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7522: return str;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:7525: UG_FONT* UG_CheckboxGetFont( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetFont
; ---------------------------------
_UG_CheckboxGetFont::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7529: UG_FONT* font = NULL;
	ld	de,#0x0000
;ugui/ugui.c:7531: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	de
	ld	d, 6 (ix)
	ld	e,#0x04
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7532: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7534: btn = (UG_CHECKBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7535: font = (UG_FONT*)btn->font;
	ld	de, #0x0012
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7537: return font;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:7540: UG_U8 UG_CheckboxGetStyle( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetStyle
; ---------------------------------
_UG_CheckboxGetStyle::
;ugui/ugui.c:7544: UG_U8 style = 0;
	ld	e,#0x00
;ugui/ugui.c:7546: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7547: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7549: btn = (UG_CHECKBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7550: style = btn->style;
	inc	hl
	ld	e,(hl)
00102$:
;ugui/ugui.c:7552: return style;
	ld	l,e
	ret
;ugui/ugui.c:7555: UG_S8 UG_CheckboxGetHSpace( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetHSpace
; ---------------------------------
_UG_CheckboxGetHSpace::
;ugui/ugui.c:7559: UG_S8 hs = 0;
	ld	e,#0x00
;ugui/ugui.c:7561: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7562: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7564: btn = (UG_CHECKBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7565: hs = btn->h_space;
	ld	de, #0x0015
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:7567: return hs;
	ld	l,e
	ret
;ugui/ugui.c:7570: UG_S8 UG_CheckboxGetVSpace( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetVSpace
; ---------------------------------
_UG_CheckboxGetVSpace::
;ugui/ugui.c:7574: UG_S8 vs = 0;
	ld	e,#0x00
;ugui/ugui.c:7576: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7577: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7579: btn = (UG_CHECKBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7580: vs = btn->v_space;
	ld	de, #0x0016
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:7582: return vs;
	ld	l,e
	ret
;ugui/ugui.c:7585: UG_U8 UG_CheckboxGetAlignment( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_CheckboxGetAlignment
; ---------------------------------
_UG_CheckboxGetAlignment::
;ugui/ugui.c:7589: UG_U8 align = 0;
	ld	e,#0x00
;ugui/ugui.c:7591: obj = _UG_SearchObject( wnd, OBJ_TYPE_CHECKBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7592: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7594: btn = (UG_CHECKBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7595: align = btn->align;
	ld	de, #0x0014
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:7597: return align;
	ld	l,e
	ret
;ugui/ugui.c:7601: void _UG_CheckboxUpdate(UG_WINDOW* wnd, UG_OBJECT* obj)
;	---------------------------------
; Function _UG_CheckboxUpdate
; ---------------------------------
__UG_CheckboxUpdate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-85
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7610: chb = (UG_CHECKBOX*)(obj->data);
	ld	a,6 (ix)
	ld	-14 (ix),a
	ld	a,7 (ix)
	ld	-13 (ix),a
	ld	a,-14 (ix)
	ld	-12 (ix),a
	ld	a,-13 (ix)
	ld	-11 (ix),a
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	de, #0x0017
	add	hl, de
	ld	a,(hl)
	ld	-12 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-11 (ix),a
	ld	a,-12 (ix)
	ld	-84 (ix),a
	ld	a,-11 (ix)
	ld	-83 (ix),a
;ugui/ugui.c:7615: if ( (obj->touch_state & OBJ_TOUCH_STATE_CHANGED) )
	ld	c,-14 (ix)
	ld	b,-13 (ix)
	inc	bc
	ld	a,(bc)
	ld	h,a
	ld	l,h
;ugui/ugui.c:7637: chb->checked = !chb->checked; 
	ld	a,-84 (ix)
	add	a, #0x19
	ld	-12 (ix),a
	ld	a,-83 (ix)
	adc	a, #0x00
	ld	-11 (ix),a
;ugui/ugui.c:7615: if ( (obj->touch_state & OBJ_TOUCH_STATE_CHANGED) )
	bit	0, l
	jp	Z,00109$
;ugui/ugui.c:7620: obj->event = CHB_EVENT_CLICKED;
	ld	a,-14 (ix)
	add	a, #0x16
	ld	e,a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	d,a
;ugui/ugui.c:7618: if ( obj->touch_state & OBJ_TOUCH_STATE_CLICK_ON_OBJECT )
	add	hl, hl
	jr	NC,00102$
;ugui/ugui.c:7620: obj->event = CHB_EVENT_CLICKED;
	ld	a,#0x01
	ld	(de),a
;ugui/ugui.c:7621: obj->state |= OBJ_STATE_UPDATE;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a,(hl)
	set	5, a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),a
00102$:
;ugui/ugui.c:7624: if ( obj->touch_state & OBJ_TOUCH_STATE_PRESSED_ON_OBJECT )
	ld	a,(bc)
	ld	-10 (ix),a
;ugui/ugui.c:7626: chb->state |= CHB_STATE_PRESSED;
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	ld	a,(hl)
;ugui/ugui.c:7624: if ( obj->touch_state & OBJ_TOUCH_STATE_PRESSED_ON_OBJECT )
	bit	1, -10 (ix)
	jr	Z,00106$
;ugui/ugui.c:7626: chb->state |= CHB_STATE_PRESSED;
	set	0, a
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	ld	(hl),a
;ugui/ugui.c:7627: obj->state |= OBJ_STATE_UPDATE;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a,(hl)
	set	5, a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),a
;ugui/ugui.c:7628: obj->event = OBJ_EVENT_PRESSED;
	ld	a,#0x04
	ld	(de),a
	jr	00107$
00106$:
;ugui/ugui.c:7631: else if ( chb->state & CHB_STATE_PRESSED )
	bit	0, a
	jr	Z,00107$
;ugui/ugui.c:7633: chb->state &= ~CHB_STATE_PRESSED;
	and	a, #0xFE
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	ld	(hl),a
;ugui/ugui.c:7634: obj->state |= OBJ_STATE_UPDATE;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a,(hl)
	set	5, a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),a
;ugui/ugui.c:7635: obj->event = OBJ_EVENT_RELEASED;
	ld	a,#0x05
	ld	(de),a
;ugui/ugui.c:7637: chb->checked = !chb->checked; 
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	d,a
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl),d
00107$:
;ugui/ugui.c:7639: obj->touch_state &= ~OBJ_TOUCH_STATE_CHANGED;
	ld	a,(bc)
	and	a, #0xFE
	ld	(bc),a
00109$:
;ugui/ugui.c:7645: if ( obj->state & OBJ_STATE_UPDATE )
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	bit	5,(hl)
	jp	Z,00141$
;ugui/ugui.c:7647: UG_WindowGetArea(wnd,&a);
	ld	hl,#0x001C
	add	hl,sp
	ld	e,l
	ld	d,h
	push	de
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowGetArea
	pop	af
	pop	af
	pop	de
;ugui/ugui.c:7648: obj->a_abs.xs = obj->a_rel.xs + a.xs;
	ld	a,-14 (ix)
	add	a, #0x04
	ld	-34 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-33 (ix),a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	bc, #0x000C
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:7649: obj->a_abs.ys = obj->a_rel.ys + a.ys;
	ld	a,-14 (ix)
	add	a, #0x06
	ld	-9 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-8 (ix),a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	bc, #0x000E
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	pop	iy
	inc	iy
	inc	iy
	ld	l,0 (iy)
	ld	h,1 (iy)
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:7650: obj->a_abs.xe = obj->a_rel.xe + a.xs;
	ld	a,-14 (ix)
	add	a, #0x08
	ld	-5 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	bc, #0x0010
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ex	de,hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:7651: obj->a_abs.ye = obj->a_rel.ye + a.ys;
	ld	a,-14 (ix)
	add	a, #0x0A
	ld	-2 (ix),a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:7652: if ( obj->a_abs.ye > wnd->ye ) return;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-46 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-45 (ix),a
	ld	a,4 (ix)
	ld	-42 (ix),a
	ld	a,5 (ix)
	ld	-41 (ix),a
	ld	l,-42 (ix)
	ld	h,-41 (ix)
	ld	bc, #0x0012
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,c
	sub	a, d
	ld	a,h
	sbc	a, e
	jp	PO, 00240$
	xor	a, #0x80
00240$:
	jp	P,00111$
	jp	00141$
00111$:
;ugui/ugui.c:7653: if ( obj->a_abs.xe > wnd->xe ) return;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	-30 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-29 (ix),a
	ld	l,-42 (ix)
	ld	h,-41 (ix)
	ld	de, #0x0010
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,d
	sub	a, -30 (ix)
	ld	a,h
	sbc	a, -29 (ix)
	jp	PO, 00241$
	xor	a, #0x80
00241$:
	jp	P,00113$
	jp	00141$
00113$:
;ugui/ugui.c:7655: if ( obj->state & OBJ_STATE_VISIBLE )
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a,(hl)
	ld	-10 (ix),a
;ugui/ugui.c:7658: d  = ( chb->style & CHB_STYLE_3D )? 3:1;
	ld	a,-84 (ix)
	add	a, #0x01
	ld	-16 (ix),a
	ld	a,-83 (ix)
	adc	a, #0x00
	ld	-15 (ix),a
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	ld	-3 (ix),a
;ugui/ugui.c:7655: if ( obj->state & OBJ_STATE_VISIBLE )
	bit	3, -10 (ix)
	jp	Z,00137$
;ugui/ugui.c:7658: d  = ( chb->style & CHB_STYLE_3D )? 3:1;
	ld	a,-3 (ix)
	rrca
	jr	NC,00143$
	ld	a,#0x03
	jr	00144$
00143$:
	ld	a,#0x01
00144$:
	ld	-49 (ix),a
;ugui/ugui.c:7659: d2 = (chb->font->char_width < chb->font->char_height) ? chb->font->char_height : chb->font->char_width;
	ld	a,-84 (ix)
	add	a, #0x12
	ld	-7 (ix),a
	ld	a,-83 (ix)
	adc	a, #0x00
	ld	-6 (ix),a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	pop	iy
	ld	a,3 (iy)
	ld	-48 (ix),a
	ld	a,4 (iy)
	ld	-47 (ix),a
	push	de
	pop	iy
	ld	a,5 (iy)
	ld	-44 (ix),a
	ld	a,6 (iy)
	ld	-43 (ix),a
	ld	a,-48 (ix)
	sub	a, -44 (ix)
	ld	a,-47 (ix)
	sbc	a, -43 (ix)
	jp	PO, 00244$
	xor	a, #0x80
00244$:
	jp	P,00145$
	jr	00146$
00145$:
	ld	a,-48 (ix)
	ld	-44 (ix),a
	ld	a,-47 (ix)
	ld	-43 (ix),a
00146$:
	ld	a,-44 (ix)
	ld	-85 (ix),a
;ugui/ugui.c:7667: txt.bc = chb->bc;
	ld	a,-84 (ix)
	add	a, #0x06
	ld	-44 (ix),a
	ld	a,-83 (ix)
	adc	a, #0x00
	ld	-43 (ix),a
;ugui/ugui.c:7668: txt.fc = chb->fc;
	ld	a,-84 (ix)
	add	a, #0x02
	ld	-48 (ix),a
	ld	a,-83 (ix)
	adc	a, #0x00
	ld	-47 (ix),a
;ugui/ugui.c:7682: txt.bc = chb->abc;
	ld	a,-84 (ix)
	add	a, #0x0E
	ld	-40 (ix),a
	ld	a,-83 (ix)
	adc	a, #0x00
	ld	-39 (ix),a
;ugui/ugui.c:7683: txt.fc = chb->afc;
	ld	a,-84 (ix)
	add	a, #0x0A
	ld	-38 (ix),a
	ld	a,-83 (ix)
	adc	a, #0x00
	ld	-37 (ix),a
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	a,-49 (ix)
	ld	-36 (ix),a
	ld	-35 (ix),#0x00
;ugui/ugui.c:7694: txt.a.xs = obj->a_abs.xs + d2 + 3*d;
	ld	a,-85 (ix)
	ld	-32 (ix),a
	ld	-31 (ix),#0x00
;ugui/ugui.c:7662: if ( (obj->state & OBJ_STATE_REDRAW) || (chb->state & CHB_STATE_ALWAYS_REDRAW) )
	bit	6, -10 (ix)
	jr	NZ,00123$
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	bit	1,(hl)
	jp	Z,00124$
00123$:
;ugui/ugui.c:7665: _UG_SendObjectPrerenderEvent(wnd, obj);
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,-42 (ix)
	ld	h,-41 (ix)
	push	hl
	call	__UG_SendObjectPrerenderEvent
	pop	af
	pop	af
;ugui/ugui.c:7667: txt.bc = chb->bc;
	ld	hl,#0x0003
	add	hl,sp
	ld	-28 (ix),l
	ld	-27 (ix),h
	ld	a,-28 (ix)
	add	a, #0x10
	ld	-26 (ix),a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	-25 (ix),a
	ld	l,-44 (ix)
	ld	h,-43 (ix)
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;ugui/ugui.c:7668: txt.fc = chb->fc;
	ld	a,-28 (ix)
	add	a, #0x0C
	ld	-24 (ix),a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	-23 (ix),a
	ld	l,-48 (ix)
	ld	h,-47 (ix)
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;ugui/ugui.c:7670: if( chb->state & CHB_STATE_PRESSED )
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	ld	a,(hl)
	rrca
	jp	NC,00120$
;ugui/ugui.c:7673: if( chb->style & CHB_STYLE_TOGGLE_COLORS )
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	ld	-10 (ix),a
	bit	1, -10 (ix)
	jr	Z,00117$
;ugui/ugui.c:7676: txt.bc = chb->fc;
	ld	e,-48 (ix)
	ld	d,-47 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-26 (ix)
	ld	d,-25 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7677: txt.fc = chb->bc;
	ld	e,-44 (ix)
	ld	d,-43 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ld	bc, #0x0004
	ldir
	jr	00120$
00117$:
;ugui/ugui.c:7680: else if ( chb->style & CHB_STYLE_USE_ALTERNATE_COLORS )
	bit	2, -10 (ix)
	jr	Z,00120$
;ugui/ugui.c:7682: txt.bc = chb->abc;
	ld	l,-40 (ix)
	ld	h,-39 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:7683: txt.fc = chb->afc;
	ld	l,-38 (ix)
	ld	h,-37 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
00120$:
;ugui/ugui.c:7686: if ( !(chb->style & CHB_STYLE_NO_FILL) )
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	bit	4, a
	jp	NZ,00122$
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	e,-26 (ix)
	ld	d,-25 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,d
	sub	a, -36 (ix)
	ld	e,a
	ld	a,h
	sbc	a, -35 (ix)
	ld	d,a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	sub	a, -36 (ix)
	ld	-24 (ix),a
	ld	a,b
	sbc	a, -35 (ix)
	ld	-23 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,b
	add	a, -36 (ix)
	ld	-26 (ix),a
	ld	a,h
	adc	a, -35 (ix)
	ld	-25 (ix),a
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	add	a, -36 (ix)
	ld	c,a
	ld	a,b
	adc	a, -35 (ix)
	ld	b,a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	push	de
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	push	bc
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00122$:
;ugui/ugui.c:7694: txt.a.xs = obj->a_abs.xs + d2 + 3*d;
	ld	a,-28 (ix)
	add	a, #0x04
	ld	-22 (ix),a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	-21 (ix),a
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-24 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-23 (ix),a
	ld	a,-24 (ix)
	add	a, -32 (ix)
	ld	-24 (ix),a
	ld	a,-23 (ix)
	adc	a, -31 (ix)
	ld	-23 (ix),a
	ld	c,-49 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-26 (ix),l
	ld	-25 (ix),h
	ld	a,-24 (ix)
	add	a, -26 (ix)
	ld	-24 (ix),a
	ld	a,-23 (ix)
	adc	a, -25 (ix)
	ld	-23 (ix),a
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,-24 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-23 (ix)
	ld	(hl),a
;ugui/ugui.c:7695: txt.a.ys = obj->a_abs.ys + d;
	ld	a,-28 (ix)
	add	a, #0x06
	ld	-22 (ix),a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	-21 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,d
	add	a, -36 (ix)
	ld	-24 (ix),a
	ld	a,h
	adc	a, -35 (ix)
	ld	-23 (ix),a
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,-24 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-23 (ix)
	ld	(hl),a
;ugui/ugui.c:7696: txt.a.xe = obj->a_abs.xe;
	ld	a,-28 (ix)
	add	a, #0x08
	ld	e,a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	d,a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;ugui/ugui.c:7697: txt.a.ye = obj->a_abs.ye;
	ld	a,-28 (ix)
	add	a, #0x0A
	ld	e,a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	d,a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;ugui/ugui.c:7698: txt.align = chb->align;
	ld	a,-28 (ix)
	add	a, #0x14
	ld	e,a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	d,a
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	ld	bc, #0x0014
	add	hl, bc
	ld	a,(hl)
	ld	(de),a
;ugui/ugui.c:7699: txt.font = chb->font;
	ld	e,-28 (ix)
	ld	d,-27 (ix)
	inc	de
	inc	de
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;ugui/ugui.c:7700: txt.h_space = 2;
	ld	a,-28 (ix)
	add	a, #0x15
	ld	l,a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	h,a
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:7701: txt.v_space = 2;
	ld	a,-28 (ix)
	add	a, #0x17
	ld	l,a
	ld	a,-27 (ix)
	adc	a, #0x00
	ld	h,a
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:7702: txt.str = chb->str;
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	ld	de, #0x0017
	add	hl, de
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;ugui/ugui.c:7703: _UG_PutText( &txt );
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	call	__UG_PutText
	pop	af
;ugui/ugui.c:7704: obj->state &= ~OBJ_STATE_REDRAW;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a,(hl)
	and	a, #0xBF
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),a
;ugui/ugui.c:7706: _UG_SendObjectPostrenderEvent(wnd, obj);
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,-42 (ix)
	ld	h,-41 (ix)
	push	hl
	call	__UG_SendObjectPostrenderEvent
	pop	af
	pop	af
00124$:
;ugui/ugui.c:7711: if (chb->checked)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a,(hl)
	ld	-22 (ix),a
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;ugui/ugui.c:7713: UG_DrawLine(obj->a_abs.xs+d+1,  obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-2, chb->fc);
	ld	l,-32 (ix)
	ld	h,-31 (ix)
	add	hl,de
	ld	a,c
	add	a, -32 (ix)
	ld	-24 (ix),a
	ld	a,b
	adc	a, -31 (ix)
	ld	-23 (ix),a
	ld	a,e
	add	a, -36 (ix)
	ld	-26 (ix),a
	ld	a,d
	adc	a, -35 (ix)
	ld	-25 (ix),a
	ld	a,c
	add	a, -36 (ix)
	ld	e,a
	ld	a,b
	adc	a, -35 (ix)
	ld	d,a
	ld	c,-36 (ix)
	ld	b,-35 (ix)
	add	hl,bc
	ld	a,-24 (ix)
	add	a, -36 (ix)
	ld	c,a
	ld	a,-23 (ix)
	adc	a, -35 (ix)
	ld	b,a
	inc	de
	ld	-24 (ix),e
	ld	-23 (ix),d
	ld	a,l
	add	a,#0xFE
	ld	-28 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-27 (ix),a
	ld	a,c
	add	a,#0xFF
	ld	-7 (ix),a
	ld	a,b
	adc	a,#0xFF
	ld	-6 (ix),a
;ugui/ugui.c:7711: if (chb->checked)
	ld	a,-22 (ix)
	or	a, a
	jp	Z,00127$
;ugui/ugui.c:7713: UG_DrawLine(obj->a_abs.xs+d+1,  obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-2, chb->fc);
	ld	e,-48 (ix)
	ld	d,-47 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7714: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-1, chb->fc);
	ld	e,-48 (ix)
	ld	d,-47 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
;ugui/ugui.c:7714: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-1, chb->fc);
	ld	a,-32 (ix)
	add	a, -2 (ix)
	ld	-5 (ix),a
	ld	a,-31 (ix)
	adc	a, -1 (ix)
	ld	-4 (ix),a
	ld	a,-36 (ix)
	add	a, -5 (ix)
	ld	-5 (ix),a
	ld	a,-35 (ix)
	adc	a, -4 (ix)
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	dec	hl
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-12 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-11 (ix),a
	ld	a,-32 (ix)
	add	a, -12 (ix)
	ld	-18 (ix),a
	ld	a,-31 (ix)
	adc	a, -11 (ix)
	ld	-17 (ix),a
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	dec	hl
	ld	-18 (ix),l
	ld	-17 (ix),h
	ld	a,-2 (ix)
	add	a, -36 (ix)
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a, -35 (ix)
	ld	-1 (ix),a
	ld	a,-12 (ix)
	add	a, -36 (ix)
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a, -35 (ix)
	ld	-11 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7715: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d+1, obj->a_abs.xs+d2+d-2, obj->a_abs.ys+d2+d-1, chb->fc);
	ld	e,-48 (ix)
	ld	d,-47 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7715: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d+1, obj->a_abs.xs+d2+d-2, obj->a_abs.ys+d2+d-1, chb->fc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-2 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-1 (ix),a
	ld	a,-36 (ix)
	add	a, -2 (ix)
	ld	-2 (ix),a
	ld	a,-35 (ix)
	adc	a, -1 (ix)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	dec	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-5 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	ld	a,-32 (ix)
	add	a, -5 (ix)
	ld	-12 (ix),a
	ld	a,-31 (ix)
	adc	a, -4 (ix)
	ld	-11 (ix),a
	ld	a,-12 (ix)
	add	a, -36 (ix)
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a, -35 (ix)
	ld	-11 (ix),a
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	dec	hl
	dec	hl
	ld	-12 (ix),l
	ld	-11 (ix),h
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	inc	-18 (ix)
	jr	NZ,00253$
	inc	-17 (ix)
00253$:
	ld	a,-5 (ix)
	add	a, -36 (ix)
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, -35 (ix)
	ld	-4 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7717: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d+1, obj->a_abs.xs+d+1, obj->a_abs.ys+d2+d-1, chb->fc);
	ld	e,-48 (ix)
	ld	d,-47 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7717: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d+1, obj->a_abs.xs+d+1, obj->a_abs.ys+d2+d-1, chb->fc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-2 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-1 (ix),a
	ld	a,-36 (ix)
	add	a, -2 (ix)
	ld	-2 (ix),a
	ld	a,-35 (ix)
	adc	a, -1 (ix)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	dec	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-5 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	ld	a,-5 (ix)
	add	a, -36 (ix)
	ld	-12 (ix),a
	ld	a,-4 (ix)
	adc	a, -35 (ix)
	ld	-11 (ix),a
	inc	-12 (ix)
	jr	NZ,00254$
	inc	-11 (ix)
00254$:
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	inc	-18 (ix)
	jr	NZ,00255$
	inc	-17 (ix)
00255$:
	ld	a,-32 (ix)
	add	a, -5 (ix)
	ld	-5 (ix),a
	ld	a,-31 (ix)
	adc	a, -4 (ix)
	ld	-4 (ix),a
	ld	a,-5 (ix)
	add	a, -36 (ix)
	ld	-5 (ix),a
	ld	a,-4 (ix)
	adc	a, -35 (ix)
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	dec	hl
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7718: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-1, chb->fc);
	ld	e,-48 (ix)
	ld	d,-47 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7718: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-1, chb->fc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-2 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-1 (ix),a
	ld	a,-36 (ix)
	add	a, -2 (ix)
	ld	-2 (ix),a
	ld	a,-35 (ix)
	adc	a, -1 (ix)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	dec	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-5 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	ld	a,-5 (ix)
	add	a, -36 (ix)
	ld	-12 (ix),a
	ld	a,-4 (ix)
	adc	a, -35 (ix)
	ld	-11 (ix),a
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	ld	a,-32 (ix)
	add	a, -5 (ix)
	ld	-5 (ix),a
	ld	a,-31 (ix)
	adc	a, -4 (ix)
	ld	-4 (ix),a
	ld	a,-36 (ix)
	add	a, -5 (ix)
	ld	-5 (ix),a
	ld	a,-35 (ix)
	adc	a, -4 (ix)
	ld	-4 (ix),a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	dec	hl
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7719: UG_DrawLine(obj->a_abs.xs+d2+d-2,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-2, chb->fc);
	ld	e,-48 (ix)
	ld	d,-47 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7719: UG_DrawLine(obj->a_abs.xs+d2+d-2,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-2, chb->fc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-48 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-47 (ix),a
	ld	a,-36 (ix)
	add	a, -48 (ix)
	ld	-48 (ix),a
	ld	a,-35 (ix)
	adc	a, -47 (ix)
	ld	-47 (ix),a
	ld	l,-48 (ix)
	ld	h,-47 (ix)
	dec	hl
	dec	hl
	ld	-48 (ix),l
	ld	-47 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	ld	a,-2 (ix)
	add	a, -36 (ix)
	ld	-5 (ix),a
	ld	a,-1 (ix)
	adc	a, -35 (ix)
	ld	-4 (ix),a
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	ld	a,-32 (ix)
	add	a, -2 (ix)
	ld	-2 (ix),a
	ld	a,-31 (ix)
	adc	a, -1 (ix)
	ld	-1 (ix),a
	ld	a,-36 (ix)
	add	a, -2 (ix)
	ld	-2 (ix),a
	ld	a,-35 (ix)
	adc	a, -1 (ix)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	dec	hl
	dec	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-48 (ix)
	ld	h,-47 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	jp	00128$
00127$:
;ugui/ugui.c:7723: UG_DrawLine(obj->a_abs.xs+d+1,  obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-2, chb->bc);
	ld	e,-44 (ix)
	ld	d,-43 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7724: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-1, chb->bc);
	ld	e,-44 (ix)
	ld	d,-43 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7724: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-1, chb->bc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-24 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-23 (ix),a
	ld	a,-36 (ix)
	add	a, -24 (ix)
	ld	-24 (ix),a
	ld	a,-35 (ix)
	adc	a, -23 (ix)
	ld	-23 (ix),a
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	dec	hl
	ld	-24 (ix),l
	ld	-23 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-26 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-25 (ix),a
	ld	a,-32 (ix)
	add	a, -26 (ix)
	ld	-28 (ix),a
	ld	a,-31 (ix)
	adc	a, -25 (ix)
	ld	-27 (ix),a
	ld	a,-28 (ix)
	add	a, -36 (ix)
	ld	-28 (ix),a
	ld	a,-27 (ix)
	adc	a, -35 (ix)
	ld	-27 (ix),a
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	dec	hl
	ld	-28 (ix),l
	ld	-27 (ix),h
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	ld	a,-26 (ix)
	add	a, -36 (ix)
	ld	-26 (ix),a
	ld	a,-25 (ix)
	adc	a, -35 (ix)
	ld	-25 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7725: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d+1, obj->a_abs.xs+d2+d-2, obj->a_abs.ys+d2+d-1, chb->bc);
	ld	e,-44 (ix)
	ld	d,-43 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7725: UG_DrawLine(obj->a_abs.xs+d,    obj->a_abs.ys+d+1, obj->a_abs.xs+d2+d-2, obj->a_abs.ys+d2+d-1, chb->bc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-24 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-23 (ix),a
	ld	a,-36 (ix)
	add	a, -24 (ix)
	ld	-24 (ix),a
	ld	a,-35 (ix)
	adc	a, -23 (ix)
	ld	-23 (ix),a
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	dec	hl
	ld	-24 (ix),l
	ld	-23 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-26 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-25 (ix),a
	ld	a,-32 (ix)
	add	a, -26 (ix)
	ld	-28 (ix),a
	ld	a,-31 (ix)
	adc	a, -25 (ix)
	ld	-27 (ix),a
	ld	a,-28 (ix)
	add	a, -36 (ix)
	ld	-28 (ix),a
	ld	a,-27 (ix)
	adc	a, -35 (ix)
	ld	-27 (ix),a
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	dec	hl
	dec	hl
	ld	-28 (ix),l
	ld	-27 (ix),h
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	inc	-18 (ix)
	jr	NZ,00256$
	inc	-17 (ix)
00256$:
	ld	a,-26 (ix)
	add	a, -36 (ix)
	ld	-26 (ix),a
	ld	a,-25 (ix)
	adc	a, -35 (ix)
	ld	-25 (ix),a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7727: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d+1, obj->a_abs.xs+d+1, obj->a_abs.ys+d2+d-1, chb->bc);
	ld	e,-44 (ix)
	ld	d,-43 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7727: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d+1, obj->a_abs.xs+d+1, obj->a_abs.ys+d2+d-1, chb->bc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-24 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-23 (ix),a
	ld	a,-36 (ix)
	add	a, -24 (ix)
	ld	-24 (ix),a
	ld	a,-35 (ix)
	adc	a, -23 (ix)
	ld	-23 (ix),a
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	dec	hl
	ld	-24 (ix),l
	ld	-23 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-26 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-25 (ix),a
	ld	a,-26 (ix)
	add	a, -36 (ix)
	ld	-28 (ix),a
	ld	a,-25 (ix)
	adc	a, -35 (ix)
	ld	-27 (ix),a
	inc	-28 (ix)
	jr	NZ,00257$
	inc	-27 (ix)
00257$:
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	inc	-18 (ix)
	jr	NZ,00258$
	inc	-17 (ix)
00258$:
	ld	a,-32 (ix)
	add	a, -26 (ix)
	ld	-26 (ix),a
	ld	a,-31 (ix)
	adc	a, -25 (ix)
	ld	-25 (ix),a
	ld	a,-26 (ix)
	add	a, -36 (ix)
	ld	-26 (ix),a
	ld	a,-25 (ix)
	adc	a, -35 (ix)
	ld	-25 (ix),a
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	dec	hl
	ld	-26 (ix),l
	ld	-25 (ix),h
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7728: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-1, chb->bc);
	ld	e,-44 (ix)
	ld	d,-43 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7728: UG_DrawLine(obj->a_abs.xs+d2+d-1,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-1, chb->bc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-24 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-23 (ix),a
	ld	a,-36 (ix)
	add	a, -24 (ix)
	ld	-24 (ix),a
	ld	a,-35 (ix)
	adc	a, -23 (ix)
	ld	-23 (ix),a
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	dec	hl
	ld	-24 (ix),l
	ld	-23 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-26 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-25 (ix),a
	ld	a,-26 (ix)
	add	a, -36 (ix)
	ld	-28 (ix),a
	ld	a,-25 (ix)
	adc	a, -35 (ix)
	ld	-27 (ix),a
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	ld	a,-32 (ix)
	add	a, -26 (ix)
	ld	-26 (ix),a
	ld	a,-31 (ix)
	adc	a, -25 (ix)
	ld	-25 (ix),a
	ld	a,-36 (ix)
	add	a, -26 (ix)
	ld	-26 (ix),a
	ld	a,-35 (ix)
	adc	a, -25 (ix)
	ld	-25 (ix),a
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	dec	hl
	ld	-26 (ix),l
	ld	-25 (ix),h
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7729: UG_DrawLine(obj->a_abs.xs+d2+d-2,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-2, chb->bc);
	ld	e,-44 (ix)
	ld	d,-43 (ix)
	ld	hl, #0x003F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
;ugui/ugui.c:7729: UG_DrawLine(obj->a_abs.xs+d2+d-2,  obj->a_abs.ys+d,   obj->a_abs.xs+d,   obj->a_abs.ys+d2+d-2, chb->bc);
	ld	a,-32 (ix)
	add	a, -18 (ix)
	ld	-24 (ix),a
	ld	a,-31 (ix)
	adc	a, -17 (ix)
	ld	-23 (ix),a
	ld	a,-36 (ix)
	add	a, -24 (ix)
	ld	-24 (ix),a
	ld	a,-35 (ix)
	adc	a, -23 (ix)
	ld	-23 (ix),a
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	dec	hl
	dec	hl
	ld	-24 (ix),l
	ld	-23 (ix),h
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-26 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-25 (ix),a
	ld	a,-26 (ix)
	add	a, -36 (ix)
	ld	-28 (ix),a
	ld	a,-25 (ix)
	adc	a, -35 (ix)
	ld	-27 (ix),a
	ld	a,-18 (ix)
	add	a, -36 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -35 (ix)
	ld	-17 (ix),a
	ld	a,-32 (ix)
	add	a, -26 (ix)
	ld	-26 (ix),a
	ld	a,-31 (ix)
	adc	a, -25 (ix)
	ld	-25 (ix),a
	ld	a,-36 (ix)
	add	a, -26 (ix)
	ld	-26 (ix),a
	ld	a,-35 (ix)
	adc	a, -25 (ix)
	ld	-25 (ix),a
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	dec	hl
	dec	hl
	ld	-26 (ix),l
	ld	-25 (ix),h
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	push	hl
	call	_UG_DrawLine
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00128$:
;ugui/ugui.c:7732: if ( !(chb->style & CHB_STYLE_NO_BORDERS) )
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	bit	3, a
	jp	NZ,00138$
;ugui/ugui.c:7734: if ( chb->style & CHB_STYLE_3D )
	ld	-18 (ix),a
;ugui/ugui.c:7626: chb->state |= CHB_STATE_PRESSED;
	ld	l,-84 (ix)
	ld	h,-83 (ix)
	ld	d,(hl)
;ugui/ugui.c:7687: UG_FillFrame(obj->a_abs.xs+d, obj->a_abs.ys+d, obj->a_abs.xe-d, obj->a_abs.ye-d, txt.bc);
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-22 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-21 (ix),a
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	a,(hl)
	ld	-24 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-23 (ix),a
;ugui/ugui.c:7631: else if ( chb->state & CHB_STATE_PRESSED )
	ld	-26 (ix),d
;ugui/ugui.c:7713: UG_DrawLine(obj->a_abs.xs+d+1,  obj->a_abs.ys+d,   obj->a_abs.xs+d2+d-1, obj->a_abs.ys+d2+d-2, chb->fc);
	ld	a,-22 (ix)
	add	a, -32 (ix)
	ld	-28 (ix),a
	ld	a,-21 (ix)
	adc	a, -31 (ix)
	ld	-27 (ix),a
	ld	a,-24 (ix)
	add	a, -32 (ix)
	ld	-32 (ix),a
	ld	a,-23 (ix)
	adc	a, -31 (ix)
	ld	-31 (ix),a
;ugui/ugui.c:7736: _UG_DrawObjectFrame(obj->a_abs.xs,obj->a_abs.ys,obj->a_abs.xs+d2+2*d-1,obj->a_abs.ys+d2+2*d-1, (chb->state&CHB_STATE_PRESSED)?(UG_COLOR*)pal_checkbox_pressed:(UG_COLOR*)pal_checkbox_released);
	sla	-36 (ix)
	rl	-35 (ix)
	ld	a,-26 (ix)
	and	a, #0x01
	ld	-26 (ix),a
	ld	a,-28 (ix)
	add	a, -36 (ix)
	ld	l,a
	ld	a,-27 (ix)
	adc	a, -35 (ix)
	ld	h,a
	ld	a,-32 (ix)
	add	a, -36 (ix)
	ld	e,a
	ld	a,-31 (ix)
	adc	a, -35 (ix)
	ld	d,a
	ld	a,l
	add	a,#0xFF
	ld	-28 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-27 (ix),a
	ld	a,e
	add	a,#0xFF
	ld	-32 (ix),a
	ld	a,d
	adc	a,#0xFF
	ld	-31 (ix),a
;ugui/ugui.c:7734: if ( chb->style & CHB_STYLE_3D )
	bit	0, -18 (ix)
	jr	Z,00130$
;ugui/ugui.c:7736: _UG_DrawObjectFrame(obj->a_abs.xs,obj->a_abs.ys,obj->a_abs.xs+d2+2*d-1,obj->a_abs.ys+d2+2*d-1, (chb->state&CHB_STATE_PRESSED)?(UG_COLOR*)pal_checkbox_pressed:(UG_COLOR*)pal_checkbox_released);
	ld	a,-26 (ix)
	or	a, a
	jr	Z,00147$
	ld	bc,#_pal_checkbox_pressed+0
	jr	00148$
00147$:
	ld	bc,#_pal_checkbox_released+0
00148$:
	push	bc
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-32 (ix)
	ld	h,-31 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	call	__UG_DrawObjectFrame
	ld	hl,#10
	add	hl,sp
	ld	sp,hl
	jp	00138$
00130$:
;ugui/ugui.c:7740: UG_DrawFrame(obj->a_abs.xs,obj->a_abs.ys,obj->a_abs.xs+d2+2*d-1,obj->a_abs.ys+d2+2*d-1,(chb->state&CHB_STATE_PRESSED)?chb->abc:chb->afc);
	ld	a,-26 (ix)
	or	a, a
	jr	Z,00149$
	ld	l,-40 (ix)
	ld	h,-39 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jr	00150$
00149$:
	ld	l,-38 (ix)
	ld	h,-37 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00150$:
	push	de
	push	bc
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	ld	l,-32 (ix)
	ld	h,-31 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	call	_UG_DrawFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	jr	00138$
00137$:
;ugui/ugui.c:7746: if ( !(chb->style & CHB_STYLE_NO_FILL) )
	bit	4, -3 (ix)
	jr	NZ,00138$
;ugui/ugui.c:7747: UG_FillFrame(obj->a_abs.xs, obj->a_abs.ys, obj->a_abs.xe, obj->a_abs.ye, wnd->bc);
	ld	c,-42 (ix)
	ld	b,-41 (ix)
	push	bc
	pop	iy
	ld	a,8 (iy)
	ld	-22 (ix),a
	ld	a,9 (iy)
	ld	-21 (ix),a
	ld	a,10 (iy)
	ld	-20 (ix),a
	ld	a,11 (iy)
	ld	-19 (ix),a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-34 (ix)
	ld	h,-33 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	l,-46 (ix)
	ld	h,-45 (ix)
	push	hl
	ld	l,-30 (ix)
	ld	h,-29 (ix)
	push	hl
	push	de
	push	bc
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
00138$:
;ugui/ugui.c:7749: obj->state &= ~OBJ_STATE_UPDATE;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	a,(hl)
	and	a, #0xDF
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),a
00141$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7757: UG_RESULT UG_TextboxCreate( UG_WINDOW* wnd, UG_TEXTBOX* txb, UG_U8 id, UG_S16 xs, UG_S16 ys, UG_S16 xe, UG_S16 ye )
;	---------------------------------
; Function UG_TextboxCreate
; ---------------------------------
_UG_TextboxCreate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:7761: obj = _UG_GetFreeObject( wnd );
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_GetFreeObject
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:7762: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jp	00106$
00102$:
;ugui/ugui.c:7765: txb->str = NULL;
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	l, e
	ld	h, d
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;ugui/ugui.c:7766: if (gui != NULL) txb->font = &gui->font;
	ld	hl,#0x0002
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	a,(#_gui + 1)
	ld	hl,#_gui + 0
	or	a,(hl)
	jr	Z,00104$
	ld	hl,(_gui)
	ld	a,l
	add	a, #0x25
	ld	-4 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-3 (ix)
	ld	(hl),a
	jr	00105$
00104$:
;ugui/ugui.c:7767: else txb->font = NULL;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00105$:
;ugui/ugui.c:7768: txb->style = 0; /* reserved */
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:7769: txb->fc = wnd->fc;
	ld	hl,#0x0005
	add	hl,de
	ld	-4 (ix),l
	ld	-3 (ix),h
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-7 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	push	de
	push	bc
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:7770: txb->bc = wnd->bc;
	ld	hl,#0x0009
	add	hl,de
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,8 (iy)
	ld	-12 (ix),a
	ld	a,9 (iy)
	ld	-11 (ix),a
	ld	a,10 (iy)
	ld	-10 (ix),a
	ld	a,11 (iy)
	ld	-9 (ix),a
	push	de
	push	bc
	ld	e,-8 (ix)
	ld	d,-7 (ix)
	ld	hl, #0x0004
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:7771: txb->align = ALIGN_CENTER;
	ld	hl,#0x000D
	add	hl,de
	ld	(hl),#0x12
;ugui/ugui.c:7772: txb->h_space = 0;
	ld	hl,#0x000E
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:7773: txb->v_space = 0;
	ld	hl,#0x000F
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:7776: obj->update = _UG_TextboxUpdate;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl),#<(__UG_TextboxUpdate)
	inc	hl
	ld	(hl),#>(__UG_TextboxUpdate)
;ugui/ugui.c:7777: obj->touch_state = OBJ_TOUCH_STATE_INIT;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:7778: obj->type = OBJ_TYPE_TEXTBOX;
	ld	hl,#0x0014
	add	hl,bc
	ld	(hl),#0x02
;ugui/ugui.c:7779: obj->event = OBJ_EVENT_NONE;
	ld	hl,#0x0016
	add	hl,bc
	ld	(hl),#0x00
;ugui/ugui.c:7780: obj->a_rel.xs = xs;
	ld	hl,#0x000C
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	a,9 (ix)
	ld	(hl),a
	inc	hl
	ld	a,10 (ix)
	ld	(hl),a
;ugui/ugui.c:7781: obj->a_rel.ys = ys;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,11 (ix)
	ld	(hl),a
	inc	hl
	ld	a,12 (ix)
	ld	(hl),a
;ugui/ugui.c:7782: obj->a_rel.xe = xe;
	ld	hl,#0x0004
	add	hl,de
	ld	a,13 (ix)
	ld	(hl),a
	inc	hl
	ld	a,14 (ix)
	ld	(hl),a
;ugui/ugui.c:7783: obj->a_rel.ye = ye;
	ld	hl,#0x0006
	add	hl,de
	ld	a,15 (ix)
	ld	(hl),a
	inc	hl
	ld	a,16 (ix)
	ld	(hl),a
;ugui/ugui.c:7784: obj->a_abs.xs = -1;
	ld	hl,#0x0004
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7785: obj->a_abs.ys = -1;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7786: obj->a_abs.xe = -1;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7787: obj->a_abs.ye = -1;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:7788: obj->id = id;
	ld	hl,#0x0015
	add	hl,bc
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:7789: obj->state |= OBJ_STATE_VISIBLE | OBJ_STATE_REDRAW | OBJ_STATE_VALID;
	ld	a,(bc)
	or	a, #0x4A
	ld	-12 (ix), a
	ld	(bc),a
;ugui/ugui.c:7790: obj->data = (void*)txb;
	ld	hl,#0x0017
	add	hl,bc
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:7793: obj->state &= ~OBJ_STATE_FREE;
	ld	a,-12 (ix)
	and	a, #0xFE
	ld	(bc),a
;ugui/ugui.c:7795: return UG_RESULT_OK;
	ld	l,#0x00
00106$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7798: UG_RESULT UG_TextboxDelete( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxDelete
; ---------------------------------
_UG_TextboxDelete::
;ugui/ugui.c:7800: return _UG_DeleteObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x02
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_DeleteObject
	pop	af
	pop	af
	ret
;ugui/ugui.c:7803: UG_RESULT UG_TextboxShow( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxShow
; ---------------------------------
_UG_TextboxShow::
;ugui/ugui.c:7807: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x02
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
;ugui/ugui.c:7808: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,h
	or	a,l
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:7810: obj->state |= OBJ_STATE_VISIBLE;
	set	3, (hl)
	ld	a, (hl)
;ugui/ugui.c:7811: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	or	a, #0x60
	ld	(hl),a
;ugui/ugui.c:7813: return UG_RESULT_OK;
	ld	l,#0x00
	ret
;ugui/ugui.c:7816: UG_RESULT UG_TextboxHide( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxHide
; ---------------------------------
_UG_TextboxHide::
;ugui/ugui.c:7820: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x02
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
;ugui/ugui.c:7821: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,h
	or	a,l
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:7823: obj->state &= ~OBJ_STATE_VISIBLE;
	ld	a,(hl)
	and	a, #0xF7
	ld	(hl),a
;ugui/ugui.c:7824: obj->state |= OBJ_STATE_UPDATE;
	set	5, (hl)
	ld	a, (hl)
;ugui/ugui.c:7826: return UG_RESULT_OK;
	ld	l,#0x00
	ret
;ugui/ugui.c:7829: UG_RESULT UG_TextboxSetForeColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR fc )
;	---------------------------------
; Function UG_TextboxSetForeColor
; ---------------------------------
_UG_TextboxSetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7834: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;ugui/ugui.c:7835: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,b
	or	a,c
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7837: txb = (UG_TEXTBOX*)(obj->data);
	push	bc
	pop	iy
	ld	e,23 (iy)
	ld	d,24 (iy)
;ugui/ugui.c:7838: txb->fc = fc;
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	push	bc
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;ugui/ugui.c:7839: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(bc)
	or	a, #0x60
	ld	(bc),a
;ugui/ugui.c:7841: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7844: UG_RESULT UG_TextboxSetBackColor( UG_WINDOW* wnd, UG_U8 id, UG_COLOR bc )
;	---------------------------------
; Function UG_TextboxSetBackColor
; ---------------------------------
_UG_TextboxSetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7849: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7850: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7852: txb = (UG_TEXTBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7853: txb->bc = bc;
	ld	bc,#0x0009
	add	hl,bc
	push	de
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	de
;ugui/ugui.c:7854: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7856: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7859: UG_RESULT UG_TextboxSetText( UG_WINDOW* wnd, UG_U8 id, char* str )
;	---------------------------------
; Function UG_TextboxSetText
; ---------------------------------
_UG_TextboxSetText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7864: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7865: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7867: txb = (UG_TEXTBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7868: txb->str = str;
	ld	a,7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:7869: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7871: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7874: UG_RESULT UG_TextboxSetFont( UG_WINDOW* wnd, UG_U8 id, const UG_FONT* font )
;	---------------------------------
; Function UG_TextboxSetFont
; ---------------------------------
_UG_TextboxSetFont::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7879: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7880: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7882: txb = (UG_TEXTBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7883: txb->font = font;
	inc	hl
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:7884: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7886: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7889: UG_RESULT UG_TextboxSetHSpace( UG_WINDOW* wnd, UG_U8 id, UG_S8 hs )
;	---------------------------------
; Function UG_TextboxSetHSpace
; ---------------------------------
_UG_TextboxSetHSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7894: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7895: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7897: txb = (UG_TEXTBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7898: txb->h_space = hs;
	ld	bc,#0x000E
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:7899: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7901: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7904: UG_RESULT UG_TextboxSetVSpace( UG_WINDOW* wnd, UG_U8 id, UG_S8 vs )
;	---------------------------------
; Function UG_TextboxSetVSpace
; ---------------------------------
_UG_TextboxSetVSpace::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7909: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7910: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7912: txb = (UG_TEXTBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7913: txb->v_space = vs;
	ld	bc,#0x000F
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:7914: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7916: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7919: UG_RESULT UG_TextboxSetAlignment( UG_WINDOW* wnd, UG_U8 id, UG_U8 align )
;	---------------------------------
; Function UG_TextboxSetAlignment
; ---------------------------------
_UG_TextboxSetAlignment::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7924: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:7925: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:7927: txb = (UG_TEXTBOX*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:7928: txb->align = align;
	ld	bc,#0x000D
	add	hl,bc
	ld	a,7 (ix)
	ld	(hl),a
;ugui/ugui.c:7929: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:7931: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:7934: UG_COLOR UG_TextboxGetForeColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxGetForeColor
; ---------------------------------
_UG_TextboxGetForeColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:7938: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:7940: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:7941: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7943: txb = (UG_TEXTBOX*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7944: c = txb->fc;
	ld	de, #0x0005
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7946: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7949: UG_COLOR UG_TextboxGetBackColor( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxGetBackColor
; ---------------------------------
_UG_TextboxGetBackColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;ugui/ugui.c:7953: UG_COLOR c = C_BLACK;
	ld	bc,#0x0000
	ld	de,#0x0000
;ugui/ugui.c:7955: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	push	bc
	push	de
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	pop	bc
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:7956: if ( obj != NULL )
	ld	a,h
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7958: txb = (UG_TEXTBOX*)(obj->data);
	pop	hl
	push	hl
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7959: c = txb->bc;
	ld	de, #0x0009
	add	hl, de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7961: return c;
	ld	l,c
	ld	h,b
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:7964: char* UG_TextboxGetText( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxGetText
; ---------------------------------
_UG_TextboxGetText::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7968: char* str = NULL;
	ld	de,#0x0000
;ugui/ugui.c:7970: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	push	de
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7971: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7973: txb = (UG_TEXTBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7974: str = txb->str;
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7976: return str;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:7979: UG_FONT* UG_TextboxGetFont( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxGetFont
; ---------------------------------
_UG_TextboxGetFont::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:7983: UG_FONT* font = NULL;
	ld	de,#0x0000
;ugui/ugui.c:7985: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	push	de
	ld	d, 6 (ix)
	ld	e,#0x02
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:7986: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:7988: txb = (UG_TEXTBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:7989: font = (UG_FONT*)txb->font;
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
00102$:
;ugui/ugui.c:7991: return font;
	ex	de,hl
	pop	ix
	ret
;ugui/ugui.c:7994: UG_S8 UG_TextboxGetHSpace( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxGetHSpace
; ---------------------------------
_UG_TextboxGetHSpace::
;ugui/ugui.c:7998: UG_S8 hs = 0;
	ld	e,#0x00
;ugui/ugui.c:8000: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x02
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:8001: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:8003: txb = (UG_TEXTBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:8004: hs = txb->h_space;
	ld	de, #0x000E
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:8006: return hs;
	ld	l,e
	ret
;ugui/ugui.c:8009: UG_S8 UG_TextboxGetVSpace( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxGetVSpace
; ---------------------------------
_UG_TextboxGetVSpace::
;ugui/ugui.c:8013: UG_S8 vs = 0;
	ld	e,#0x00
;ugui/ugui.c:8015: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x02
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:8016: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:8018: txb = (UG_TEXTBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:8019: vs = txb->v_space;
	ld	de, #0x000F
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:8021: return vs;
	ld	l,e
	ret
;ugui/ugui.c:8024: UG_U8 UG_TextboxGetAlignment( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_TextboxGetAlignment
; ---------------------------------
_UG_TextboxGetAlignment::
;ugui/ugui.c:8028: UG_U8 align = 0;
	ld	e,#0x00
;ugui/ugui.c:8030: obj = _UG_SearchObject( wnd, OBJ_TYPE_TEXTBOX, id );
	push	de
	ld	hl, #6+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x02
	push	de
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
	pop	de
	ld	c, l
;ugui/ugui.c:8031: if ( obj != NULL )
	ld	a,h
	ld	b,a
	or	a,l
	jr	Z,00102$
;ugui/ugui.c:8033: txb = (UG_TEXTBOX*)(obj->data);
	ld	l, c
	ld	h, b
	ld	de, #0x0017
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
;ugui/ugui.c:8034: align = txb->align;
	ld	de, #0x000D
	add	hl, de
	ld	e,(hl)
00102$:
;ugui/ugui.c:8036: return align;
	ld	l,e
	ret
;ugui/ugui.c:8039: void _UG_TextboxUpdate(UG_WINDOW* wnd, UG_OBJECT* obj)
;	---------------------------------
; Function _UG_TextboxUpdate
; ---------------------------------
__UG_TextboxUpdate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-59
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:8046: txb = (UG_TEXTBOX*)(obj->data);
	ld	e,6 (ix)
	ld	d,7 (ix)
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:8057: if ( obj->state & OBJ_STATE_UPDATE )
	ld	a,(de)
	ld	b,a
	bit	5, b
	jp	Z,00112$
;ugui/ugui.c:8065: obj->a_abs.xs = obj->a_rel.xs + a.xs;
	ld	hl,#0x0004
	add	hl,de
	ld	-22 (ix),l
	ld	-21 (ix),h
;ugui/ugui.c:8066: obj->a_abs.ys = obj->a_rel.ys + a.ys;
	ld	hl,#0x0006
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
;ugui/ugui.c:8067: obj->a_abs.xe = obj->a_rel.xe + a.xs;
	ld	hl,#0x0008
	add	hl,de
	ld	-18 (ix),l
	ld	-17 (ix),h
;ugui/ugui.c:8068: obj->a_abs.ye = obj->a_rel.ye + a.ys;
	ld	hl,#0x000A
	add	hl,de
	ld	-4 (ix),l
	ld	-3 (ix),h
;ugui/ugui.c:8069: if ( obj->a_abs.ye >= wnd->ye ) return;
	ld	a,4 (ix)
	ld	-20 (ix),a
	ld	a,5 (ix)
	ld	-19 (ix),a
;ugui/ugui.c:8059: if ( obj->state & OBJ_STATE_VISIBLE )
	bit	3, b
	jp	Z,00108$
;ugui/ugui.c:8062: if ( obj->state & OBJ_STATE_REDRAW )
	bit	6, b
	jp	Z,00109$
;ugui/ugui.c:8064: UG_WindowGetArea(wnd,&a);
	ld	hl,#0x001B
	add	hl,sp
	ld	-16 (ix),l
	ld	-15 (ix),h
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	push	de
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowGetArea
	pop	af
	pop	af
	pop	de
;ugui/ugui.c:8065: obj->a_abs.xs = obj->a_rel.xs + a.xs;
	ld	l, e
	ld	h, d
	ld	bc, #0x000C
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:8066: obj->a_abs.ys = obj->a_rel.ys + a.ys;
	ld	l, e
	ld	h, d
	ld	bc, #0x000E
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	hl
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	inc	hl
	inc	hl
	push	hl
	pop	iy
	pop	hl
	ld	l,0 (iy)
	ld	h,1 (iy)
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:8067: obj->a_abs.xe = obj->a_rel.xe + a.xs;
	ld	l, e
	ld	h, d
	ld	bc, #0x0010
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:8068: obj->a_abs.ye = obj->a_rel.ye + a.ys;
	ld	l, e
	ld	h, d
	ld	bc, #0x0012
	add	hl, bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,0 (iy)
	ld	h,1 (iy)
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:8069: if ( obj->a_abs.ye >= wnd->ye ) return;
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	bc
	ld	bc, #0x0012
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	ld	h,a
	ld	a,c
	sub	a, h
	ld	a,b
	sbc	a, l
	jp	PO, 00137$
	xor	a, #0x80
00137$:
	jp	M,00102$
	jp	00112$
00102$:
;ugui/ugui.c:8070: if ( obj->a_abs.xe >= wnd->xe ) return;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	bc
	ld	bc, #0x0010
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	ld	h,a
	ld	a,c
	sub	a, h
	ld	a,b
	sbc	a, l
	jp	PO, 00138$
	xor	a, #0x80
00138$:
	jp	M,00104$
	jp	00112$
00104$:
;ugui/ugui.c:8072: _UG_SendObjectPrerenderEvent(wnd, obj);
	push	de
	push	de
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	call	__UG_SendObjectPrerenderEvent
	pop	af
	pop	af
	pop	de
;ugui/ugui.c:8075: txt.bc = txb->bc;
	ld	hl,#0x0002
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	iy,#0x0010
	add	iy, bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	-14 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-13 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-12 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-11 (ix),a
	push	de
	push	bc
	push	iy
	pop	de
	ld	hl, #0x0031
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:8076: txt.fc = txb->fc;
	ld	iy,#0x000C
	add	iy, bc
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-10 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-7 (ix),a
	push	de
	push	bc
	push	iy
	pop	de
	ld	hl, #0x0035
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;ugui/ugui.c:8078: UG_FillFrame(obj->a_abs.xs, obj->a_abs.ys, obj->a_abs.xe, obj->a_abs.ye, txt.bc);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-10 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-9 (ix),a
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a,(hl)
	ld	-16 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-15 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,(hl)
	ld	-24 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-23 (ix),a
	push	bc
	push	de
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;ugui/ugui.c:8081: txt.a.xs = obj->a_abs.xs;
	ld	iy,#0x0004
	add	iy, bc
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	0 (iy), a
	ld	1 (iy),h
;ugui/ugui.c:8082: txt.a.ys = obj->a_abs.ys;
	ld	iy,#0x0006
	add	iy, bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	0 (iy), a
	ld	1 (iy),h
;ugui/ugui.c:8083: txt.a.xe = obj->a_abs.xe;
	ld	iy,#0x0008
	add	iy, bc
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	0 (iy), a
	ld	1 (iy),h
;ugui/ugui.c:8084: txt.a.ye = obj->a_abs.ye;
	ld	iy,#0x000A
	add	iy, bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	0 (iy), a
	ld	1 (iy),h
;ugui/ugui.c:8085: txt.align = txb->align;
	ld	iy,#0x0014
	add	iy, bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000D
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	0 (iy), a
;ugui/ugui.c:8086: txt.font = txb->font;
	push	bc
	pop	iy
	inc	iy
	inc	iy
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	0 (iy), a
	ld	1 (iy),h
;ugui/ugui.c:8087: txt.h_space = txb->h_space;
	ld	iy,#0x0015
	add	iy, bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000E
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	l,a
	rla
	sbc	a, a
	ld	0 (iy), l
	ld	1 (iy), a
;ugui/ugui.c:8088: txt.v_space = txb->v_space;
	ld	iy,#0x0017
	add	iy, bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000F
	add	hl, bc
	pop	bc
	ld	a,(hl)
	ld	l,a
	rla
	sbc	a, a
	ld	0 (iy), l
	ld	1 (iy), a
;ugui/ugui.c:8089: txt.str = txb->str;
	pop	hl
	push	hl
	ld	a,(hl)
	ld	-24 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-23 (ix),a
	ld	l, c
	ld	h, b
	ld	a,-24 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-23 (ix)
	ld	(hl),a
;ugui/ugui.c:8090: _UG_PutText( &txt );
	push	de
	push	bc
	call	__UG_PutText
	pop	af
	pop	de
;ugui/ugui.c:8091: obj->state &= ~OBJ_STATE_REDRAW;
	ld	a,(de)
	and	a, #0xBF
	ld	(de),a
;ugui/ugui.c:8093: _UG_SendObjectPostrenderEvent(wnd, obj);
	push	de
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SendObjectPostrenderEvent
	pop	af
	pop	af
	pop	de
	jp	00109$
00108$:
;ugui/ugui.c:8099: UG_FillFrame(obj->a_abs.xs, obj->a_abs.ys, obj->a_abs.xe, obj->a_abs.ye, wnd->bc);
	ld	c,-20 (ix)
	ld	b,-19 (ix)
	push	bc
	pop	iy
	ld	a,8 (iy)
	ld	-10 (ix),a
	ld	a,9 (iy)
	ld	-9 (ix),a
	ld	a,10 (iy)
	ld	-8 (ix),a
	ld	a,11 (iy)
	ld	-7 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-24 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-23 (ix),a
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-14 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-13 (ix),a
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	push	bc
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	de
00109$:
;ugui/ugui.c:8101: obj->state &= ~OBJ_STATE_UPDATE;
	ld	a,(de)
	and	a, #0xDF
	ld	(de),a
00112$:
	ld	sp, ix
	pop	ix
	ret
;ugui/ugui.c:8108: UG_RESULT UG_ImageCreate( UG_WINDOW* wnd, UG_IMAGE* img, UG_U8 id, UG_S16 xs, UG_S16 ys, UG_S16 xe, UG_S16 ye )
;	---------------------------------
; Function UG_ImageCreate
; ---------------------------------
_UG_ImageCreate::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;ugui/ugui.c:8112: obj = _UG_GetFreeObject( wnd );
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_GetFreeObject
	pop	af
	ex	de,hl
;ugui/ugui.c:8113: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jp	00103$
00102$:
;ugui/ugui.c:8116: img->img = NULL;
	ld	l,6 (ix)
	ld	h,7 (ix)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	dec	hl
;ugui/ugui.c:8117: img->type = IMG_TYPE_BMP;
	inc	hl
	inc	hl
	ld	(hl),#0x01
;ugui/ugui.c:8120: obj->update = _UG_ImageUpdate;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#<(__UG_ImageUpdate)
	inc	hl
	ld	(hl),#>(__UG_ImageUpdate)
;ugui/ugui.c:8121: obj->touch_state = OBJ_TOUCH_STATE_INIT;
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl),#0x00
;ugui/ugui.c:8122: obj->type = OBJ_TYPE_IMAGE;
	ld	hl,#0x0014
	add	hl,de
	ld	(hl),#0x03
;ugui/ugui.c:8123: obj->event = OBJ_EVENT_NONE;
	ld	hl,#0x0016
	add	hl,de
	ld	(hl),#0x00
;ugui/ugui.c:8124: obj->a_rel.xs = xs;
	ld	hl,#0x000C
	add	hl,de
	ld	a,9 (ix)
	ld	(hl),a
	inc	hl
	ld	a,10 (ix)
	ld	(hl),a
;ugui/ugui.c:8125: obj->a_rel.ys = ys;
	ld	hl,#0x000E
	add	hl,de
	ld	a,11 (ix)
	ld	(hl),a
	inc	hl
	ld	a,12 (ix)
	ld	(hl),a
;ugui/ugui.c:8126: obj->a_rel.xe = xe;
	ld	hl,#0x0010
	add	hl,de
	ld	a,13 (ix)
	ld	(hl),a
	inc	hl
	ld	a,14 (ix)
	ld	(hl),a
;ugui/ugui.c:8127: obj->a_rel.ye = ye;
	ld	hl,#0x0012
	add	hl,de
	ld	a,15 (ix)
	ld	(hl),a
	inc	hl
	ld	a,16 (ix)
	ld	(hl),a
;ugui/ugui.c:8128: obj->a_abs.xs = -1;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:8129: obj->a_abs.ys = -1;
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:8130: obj->a_abs.xe = -1;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:8131: obj->a_abs.ye = -1;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;ugui/ugui.c:8132: obj->id = id;
	ld	hl,#0x0015
	add	hl,de
	ld	a,8 (ix)
	ld	(hl),a
;ugui/ugui.c:8133: obj->state |= OBJ_STATE_VISIBLE | OBJ_STATE_REDRAW | OBJ_STATE_VALID;
	ld	a,(de)
	or	a, #0x4A
	ld	-1 (ix), a
	ld	(de),a
;ugui/ugui.c:8134: obj->data = (void*)img;
	ld	hl,#0x0017
	add	hl,de
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;ugui/ugui.c:8137: obj->state &= ~OBJ_STATE_FREE;
	ld	a,-1 (ix)
	and	a, #0xFE
	ld	(de),a
;ugui/ugui.c:8139: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	inc	sp
	pop	ix
	ret
;ugui/ugui.c:8142: UG_RESULT UG_ImageDelete( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ImageDelete
; ---------------------------------
_UG_ImageDelete::
;ugui/ugui.c:8144: return _UG_DeleteObject( wnd, OBJ_TYPE_IMAGE, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x03
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_DeleteObject
	pop	af
	pop	af
	ret
;ugui/ugui.c:8147: UG_RESULT UG_ImageShow( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ImageShow
; ---------------------------------
_UG_ImageShow::
;ugui/ugui.c:8151: obj = _UG_SearchObject( wnd, OBJ_TYPE_IMAGE, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x03
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
;ugui/ugui.c:8152: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,h
	or	a,l
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:8154: obj->state |= OBJ_STATE_VISIBLE;
	set	3, (hl)
	ld	a, (hl)
;ugui/ugui.c:8155: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	or	a, #0x60
	ld	(hl),a
;ugui/ugui.c:8157: return UG_RESULT_OK;
	ld	l,#0x00
	ret
;ugui/ugui.c:8160: UG_RESULT UG_ImageHide( UG_WINDOW* wnd, UG_U8 id )
;	---------------------------------
; Function UG_ImageHide
; ---------------------------------
_UG_ImageHide::
;ugui/ugui.c:8164: obj = _UG_SearchObject( wnd, OBJ_TYPE_IMAGE, id );
	ld	hl, #4+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x03
	push	de
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	__UG_SearchObject
	pop	af
	pop	af
;ugui/ugui.c:8165: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,h
	or	a,l
	jr	NZ,00102$
	ld	l,#0xFF
	ret
00102$:
;ugui/ugui.c:8167: obj->state &= ~OBJ_STATE_VISIBLE;
	ld	a,(hl)
	and	a, #0xF7
	ld	(hl),a
;ugui/ugui.c:8168: obj->state |= OBJ_STATE_UPDATE;
	set	5, (hl)
	ld	a, (hl)
;ugui/ugui.c:8170: return UG_RESULT_OK;
	ld	l,#0x00
	ret
;ugui/ugui.c:8173: UG_RESULT UG_ImageSetBMP( UG_WINDOW* wnd, UG_U8 id, const UG_BMP* bmp )
;	---------------------------------
; Function UG_ImageSetBMP
; ---------------------------------
_UG_ImageSetBMP::
	push	ix
	ld	ix,#0
	add	ix,sp
;ugui/ugui.c:8178: obj = _UG_SearchObject( wnd, OBJ_TYPE_IMAGE, id );
	ld	d, 6 (ix)
	ld	e,#0x03
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__UG_SearchObject
	pop	af
	pop	af
	ex	de,hl
;ugui/ugui.c:8179: if ( obj == NULL ) return UG_RESULT_FAIL;
	ld	a,d
	or	a,e
	jr	NZ,00102$
	ld	l,#0xFF
	jr	00103$
00102$:
;ugui/ugui.c:8181: img = (UG_IMAGE*)(obj->data);
	push	de
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
;ugui/ugui.c:8182: img->img = (void*)bmp;
	ld	b,7 (ix)
	ld	c,8 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),c
	dec	hl
;ugui/ugui.c:8183: img->type = IMG_TYPE_BMP;
	inc	hl
	inc	hl
	ld	(hl),#0x01
;ugui/ugui.c:8184: obj->state |= OBJ_STATE_UPDATE | OBJ_STATE_REDRAW;
	ld	a,(de)
	or	a, #0x60
	ld	(de),a
;ugui/ugui.c:8186: return UG_RESULT_OK;
	ld	l,#0x00
00103$:
	pop	ix
	ret
;ugui/ugui.c:8189: void _UG_ImageUpdate(UG_WINDOW* wnd, UG_OBJECT* obj)
;	---------------------------------
; Function _UG_ImageUpdate
; ---------------------------------
__UG_ImageUpdate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-30
	add	hl,sp
	ld	sp,hl
;ugui/ugui.c:8195: img = (UG_IMAGE*)(obj->data);
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	pop	iy
	ld	l,23 (iy)
	ld	h,24 (iy)
	inc	sp
	inc	sp
	push	hl
;ugui/ugui.c:8206: if ( obj->state & OBJ_STATE_UPDATE )
	ld	a,(bc)
	ld	e,a
	bit	5, e
	jp	Z,00115$
;ugui/ugui.c:8215: obj->a_abs.xs = obj->a_rel.xs + a.xs;
	ld	hl,#0x0004
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
;ugui/ugui.c:8216: obj->a_abs.ys = obj->a_rel.ys + a.ys;
	ld	hl,#0x0006
	add	hl,bc
	ld	-8 (ix),l
	ld	-7 (ix),h
;ugui/ugui.c:8217: obj->a_abs.xe = obj->a_rel.xs + ((UG_BMP*)img->img)->width + a.xs;
	ld	hl,#0x0008
	add	hl,bc
	ld	-4 (ix),l
	ld	-3 (ix),h
;ugui/ugui.c:8218: obj->a_abs.ye = obj->a_rel.ys + ((UG_BMP*)img->img)->height + a.ys;
	ld	hl,#0x000A
	add	hl,bc
	ld	-6 (ix),l
	ld	-5 (ix),h
;ugui/ugui.c:8219: if ( obj->a_abs.ye >= wnd->ye ) return;
	ld	a,4 (ix)
	ld	-20 (ix),a
	ld	a,5 (ix)
	ld	-19 (ix),a
;ugui/ugui.c:8208: if ( obj->state & OBJ_STATE_VISIBLE )
	bit	3, e
	jp	Z,00111$
;ugui/ugui.c:8211: if ( obj->state & OBJ_STATE_REDRAW )
	bit	6, e
	jp	Z,00112$
;ugui/ugui.c:8213: UG_WindowGetArea(wnd,&a);
	ld	hl,#0x0002
	add	hl,sp
	ld	-10 (ix),l
	ld	-9 (ix),h
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	bc
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_UG_WindowGetArea
	pop	af
	pop	af
	pop	bc
;ugui/ugui.c:8215: obj->a_abs.xs = obj->a_rel.xs + a.xs;
	ld	iy,#0x000C
	add	iy, bc
	ld	e,0 (iy)
	ld	d,1 (iy)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ex	de,hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:8216: obj->a_abs.ys = obj->a_rel.ys + a.ys;
	ld	hl,#0x000E
	add	hl,bc
	ld	-18 (ix),l
	ld	-17 (ix),h
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,-10 (ix)
	add	a, #0x02
	ld	-16 (ix),a
	ld	a,-9 (ix)
	adc	a, #0x00
	ld	-15 (ix),a
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ex	de,hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:8217: obj->a_abs.xe = obj->a_rel.xs + ((UG_BMP*)img->img)->width + a.xs;
	ld	e,0 (iy)
	ld	d,1 (iy)
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ex	de,hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ex	de,hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:8218: obj->a_abs.ye = obj->a_rel.ys + ((UG_BMP*)img->img)->height + a.ys;
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ex	de,hl
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ex	de,hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;ugui/ugui.c:8219: if ( obj->a_abs.ye >= wnd->ye ) return;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	bc
	ld	bc, #0x0012
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,d
	sub	a, l
	ld	a,e
	sbc	a, h
	jp	PO, 00148$
	xor	a, #0x80
00148$:
	jp	M,00102$
	jp	00115$
00102$:
;ugui/ugui.c:8220: if ( obj->a_abs.xe >= wnd->xe ) return;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	bc
	ld	bc, #0x0010
	add	hl, bc
	pop	bc
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,d
	sub	a, l
	ld	a,e
	sbc	a, h
	jp	PO, 00149$
	xor	a, #0x80
00149$:
	jp	M,00104$
	jp	00115$
00104$:
;ugui/ugui.c:8223: if ( (img->img != NULL) && (img->type & IMG_TYPE_BMP) )
	pop	hl
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a,e
	jr	Z,00106$
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	rrca
	jr	NC,00106$
;ugui/ugui.c:8225: UG_DrawBMP(obj->a_abs.xs,obj->a_abs.ys,(UG_BMP*)img->img);
	push	de
	pop	iy
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	bc
	push	iy
	push	de
	push	hl
	call	_UG_DrawBMP
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	bc
00106$:
;ugui/ugui.c:8228: obj->state &= ~OBJ_STATE_REDRAW;
	ld	a,(bc)
	and	a, #0xBF
	ld	(bc),a
	jp	00112$
00111$:
;ugui/ugui.c:8233: UG_FillFrame(obj->a_abs.xs, obj->a_abs.ys, obj->a_abs.xe, obj->a_abs.ye, wnd->bc);
	ld	e,-20 (ix)
	ld	d,-19 (ix)
	push	de
	pop	iy
	ld	a,8 (iy)
	ld	-14 (ix),a
	ld	a,9 (iy)
	ld	-13 (ix),a
	ld	a,10 (iy)
	ld	-12 (ix),a
	ld	a,11 (iy)
	ld	-11 (ix),a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-16 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-15 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-10 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-9 (ix),a
	push	bc
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	push	de
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	push	hl
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	call	_UG_FillFrame
	ld	hl,#12
	add	hl,sp
	ld	sp,hl
	pop	bc
00112$:
;ugui/ugui.c:8235: obj->state &= ~OBJ_STATE_UPDATE;
	ld	a,(bc)
	and	a, #0xDF
	ld	(bc),a
00115$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
