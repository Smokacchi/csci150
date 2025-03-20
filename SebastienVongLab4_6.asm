;Use a loop with indirect or indexed addressing to reverse the elements of an integer array in place.
;Do not copy the elements to any other array. Use the SIZEOF, TYPE, and LENGTHOF operators to make
;the program as flexible as possible if the array size and type should be changed in the future.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myString		BYTE	"Chicken"



.code
main proc
	mov		esi, OFFSET myString
	mov		ecx, SIZEOF myString - 1

L1:
	mov		al, [esi]				;move the [esi] letter of myString into al
	mov		bl, [esi + ecx]			;move the letter at the end of myStringinto bl
	mov		dl,	al					;stores al
	mov		[esi], bl				;moves the last letter into first letter spot
	mov		[esi+ecx], dl			;moves the first letter into last letter spot
	inc		esi
	dec ecx
	loop L1


	invoke ExitProcess,0
main endp
end main