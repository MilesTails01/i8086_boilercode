;	#############################################################
;	#							MAIN.ASM						#
;	#############################################################

;	#############################################################
;	#							STACK							#
;	#############################################################
STACK SEGMENT PARA STACK
	db 64 dup(0)
STACK ENDS

;	#############################################################
;	#							DATA							#
;	#############################################################
DATA SEGMENT PARA 'DATA'
	string db 'Hello World','$'
	include \src\utils.inc
DATA ENDS

;	#############################################################
;	#							CODE							#
;	#############################################################
CODE SEGMENT PARA 'CODE'
	ASSUME cs:CODE, ds:DATA, ss:STACK

startup:
	mov	ax, DATA
	mov	ds, ax
	mov	ax, STACK
	mov	ss, ax

	lea dx, string
	call PRINT

	mov	ah, 4Ch
	int 21h

CODE ENDS
END startup
	