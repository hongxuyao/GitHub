﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Antialias\GUIAA_SIF4.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_SIF_APIList_Prop_AA4
EXTRN	_GUI_SIF__IsInFont:PROC
EXTRN	_GUI_SIF__GetFontInfo:PROC
EXTRN	_GUI_SIF__GetCharDistX:PROC
CONST	SEGMENT
_GUI_SIF_APIList_Prop_AA4 DD FLAT:__GUI_SIF_DispChar
	DD	FLAT:_GUI_SIF__GetCharDistX
	DD	FLAT:_GUI_SIF__GetFontInfo
	DD	FLAT:_GUI_SIF__IsInFont
	ORG $+8
CONST	ENDS
PUBLIC	__$ArrayPad$
EXTRN	_GUI_AA__DrawCharAA4:PROC
EXTRN	_LCD_SetDrawMode:PROC
EXTRN	_GUI__Read32:PROC
EXTRN	_GUI__Read16:PROC
EXTRN	_GUI_SIF__GetpCharInfo:PROC
EXTRN	_GUI_Context:BYTE
EXTRN	___security_cookie:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\antialias\guiaa_sif4.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT __GUI_SIF_DispChar
_TEXT	SEGMENT
_CharInfo$8345 = -68					; size = 12
_OldDrawMode$8344 = -48					; size = 4
_DrawMode$8343 = -36					; size = 4
_pData$ = -24						; size = 4
_pCharInfo$ = -12					; size = 4
__$ArrayPad$ = -4					; size = 4
_c$ = 8							; size = 2
__GUI_SIF_DispChar PROC					; COMDAT
; Line 35
	push	ebp
	mov	ebp, esp
	sub	esp, 264				; 00000108H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-264]
	mov	ecx, 66					; 00000042H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 37
	push	12					; 0000000cH
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	push	ecx
	call	_GUI_SIF__GetpCharInfo
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _pCharInfo$[ebp], eax
; Line 38
	cmp	DWORD PTR _pCharInfo$[ebp], 0
	je	$LN2@GUI_SIF_Di
; Line 41
	lea	eax, DWORD PTR _pCharInfo$[ebp]
	push	eax
	call	_GUI__Read16
	add	esp, 4
	mov	WORD PTR _CharInfo$8345[ebp], ax
; Line 42
	lea	eax, DWORD PTR _pCharInfo$[ebp]
	push	eax
	call	_GUI__Read16
	add	esp, 4
	mov	WORD PTR _CharInfo$8345[ebp+2], ax
; Line 43
	lea	eax, DWORD PTR _pCharInfo$[ebp]
	push	eax
	call	_GUI__Read16
	add	esp, 4
	mov	WORD PTR _CharInfo$8345[ebp+4], ax
; Line 44
	lea	eax, DWORD PTR _pCharInfo$[ebp]
	push	eax
	call	_GUI__Read16
	add	esp, 4
; Line 45
	lea	eax, DWORD PTR _pCharInfo$[ebp]
	push	eax
	call	_GUI__Read32
	add	esp, 4
	mov	DWORD PTR _CharInfo$8345[ebp+8], eax
; Line 46
	mov	eax, DWORD PTR _GUI_Context+28
	mov	ecx, DWORD PTR [eax+28]
	add	ecx, DWORD PTR _CharInfo$8345[ebp+8]
	mov	DWORD PTR _pData$[ebp], ecx
; Line 47
	movsx	eax, WORD PTR _GUI_Context+42
	mov	DWORD PTR _DrawMode$8343[ebp], eax
; Line 48
	mov	eax, DWORD PTR _DrawMode$8343[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
	mov	DWORD PTR _OldDrawMode$8344[ebp], eax
; Line 54
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	movzx	ecx, WORD PTR _CharInfo$8345[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _GUI_Context+28
	movzx	eax, BYTE PTR [edx+24]
	push	eax
	movzx	ecx, WORD PTR _CharInfo$8345[ebp]
	push	ecx
	movsx	edx, WORD PTR _GUI_Context+36
	push	edx
	movsx	eax, WORD PTR _GUI_Context+34
	push	eax
	call	_GUI_AA__DrawCharAA4
	add	esp, 24					; 00000018H
; Line 55
	movzx	eax, WORD PTR _CharInfo$8345[ebp+2]
	movsx	ecx, WORD PTR _GUI_Context+34
	add	ecx, eax
	mov	WORD PTR _GUI_Context+34, cx
; Line 56
	mov	eax, DWORD PTR _OldDrawMode$8344[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
$LN2@GUI_SIF_Di:
; Line 58
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN7@GUI_SIF_Di
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 264				; 00000108H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN7@GUI_SIF_Di:
	DD	2
	DD	$LN6@GUI_SIF_Di
$LN6@GUI_SIF_Di:
	DD	-12					; fffffff4H
	DD	4
	DD	$LN4@GUI_SIF_Di
	DD	-68					; ffffffbcH
	DD	12					; 0000000cH
	DD	$LN5@GUI_SIF_Di
$LN5@GUI_SIF_Di:
	DB	67					; 00000043H
	DB	104					; 00000068H
	DB	97					; 00000061H
	DB	114					; 00000072H
	DB	73					; 00000049H
	DB	110					; 0000006eH
	DB	102					; 00000066H
	DB	111					; 0000006fH
	DB	0
$LN4@GUI_SIF_Di:
	DB	112					; 00000070H
	DB	67					; 00000043H
	DB	104					; 00000068H
	DB	97					; 00000061H
	DB	114					; 00000072H
	DB	73					; 00000049H
	DB	110					; 0000006eH
	DB	102					; 00000066H
	DB	111					; 0000006fH
	DB	0
__GUI_SIF_DispChar ENDP
_TEXT	ENDS
END