﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\MemDev\GUIDEV_GetXSize.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_MEMDEV_GetXSize
EXTRN	_GUI_ALLOC_h2p:PROC
EXTRN	_GUI_Context:BYTE
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\memdev\guidev_getxsize.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI_MEMDEV_GetXSize
_TEXT	SEGMENT
_pDevData$ = -20					; size = 4
_r$ = -8						; size = 4
_hMem$ = 8						; size = 4
_GUI_MEMDEV_GetXSize PROC				; COMDAT
; Line 41
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 42
	mov	DWORD PTR _r$[ebp], 0
; Line 45
	cmp	DWORD PTR _hMem$[ebp], 0
	jne	SHORT $LN2@GUI_MEMDEV
; Line 46
	mov	eax, DWORD PTR _GUI_Context+76
	mov	DWORD PTR _hMem$[ebp], eax
$LN2@GUI_MEMDEV:
; Line 48
	cmp	DWORD PTR _hMem$[ebp], 0
	je	SHORT $LN1@GUI_MEMDEV
; Line 49
	mov	eax, DWORD PTR _hMem$[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pDevData$[ebp], eax
; Line 50
	mov	eax, DWORD PTR _pDevData$[ebp]
	movsx	ecx, WORD PTR [eax+8]
	mov	DWORD PTR _r$[ebp], ecx
$LN1@GUI_MEMDEV:
; Line 53
	mov	eax, DWORD PTR _r$[ebp]
; Line 54
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI_MEMDEV_GetXSize ENDP
_TEXT	ENDS
END