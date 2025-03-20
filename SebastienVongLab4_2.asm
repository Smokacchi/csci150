;Write a program with a loop and indexed addressing that exchanges every pair of values in an array
;with an even number of elements. Therefore, item i will exchange with item i+1, and item i+2 will
;exchange with item i+3, and so on.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myArray		BYTE	10h, 20h, 30h, 40h, 50h, 60h



.code
main proc
	mov		esi, OFFSET myArray
	mov		ecx, SIZEOF myArray

L1:
	mov al, [esi]
	mov dl, al
	mov bl, [esi+1]
	mov al, bl
	mov bl, dl
	inc esi
	inc esi
	loop L1


	invoke ExitProcess,0
main endp
end main