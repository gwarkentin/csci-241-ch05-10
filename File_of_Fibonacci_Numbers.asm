; Program:     Chapter 5 Exercise 10  
; Description: Calculates first 47 values of Fibonacci sequence and stores them in an array and file
; Student:     Gabriel Warkentin
; Date:        02/25/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc

FIB_COUNT = 47	; number of values to generate

.data
fileHandle DWORD ?
filename BYTE "fibonacci.bin",0
fib DWORD FIB_COUNT Dup(?)

.code
main2 PROC

	; generate fib sequence
	mov esi, offset fib
	mov ecx, FIB_COUNT
	call generate_fibonacci

	; output to console
	mov esi, offset fib
	mov ecx, FIB_COUNT
DecLoop:
	mov eax, [esi]
	call WriteDec
	call CrLf
	add esi, TYPE fib						; next element in dword array
	loop DecLoop


	; write to disk
	mov edx, offset filename				; mov filename to edx
	call CreateOutputFile					; call filehandler creation proc
	mov fileHandle, eax						; leave this in eax since that's needed to write. If delayed write, mov filehandle to eax
	mov edx, offset fib						; mov array adress to edx
	mov ecx, FIB_COUNT * TYPE fib			; mov array length to ecx
	call WriteToFile						; call write procedure
	mov eax, fileHandle						; can't be certain WriteToFile doesn't mess this up
	call CloseFile							; close filehandler

	call WaitMsg

	exit
main2 ENDP

;------------------------------------------------------------
generate_fibonacci PROC USES eax ebx ecx edx
;
; Generates fibonacci values and stores in an array.
; Receives: ESI points to the array, 
;           ECX = count
; Returns: nothing
;------------------------------------------------------------
	; initialize regs
	mov eax, 0
	mov ebx, 1

L1:
	; generate next n
	mov edx, eax
	add edx, ebx
	mov eax, ebx							; eax has the value
	mov ebx, edx

	mov [esi], eax							; copy value to array
	add esi, TYPE fib						; next element in dword array
	loop L1

	ret
generate_fibonacci ENDP

END ; main2