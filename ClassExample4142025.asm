
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	numArray	DWORD	10,60,20,33,72,89,45,65,72,18
	sample		DWORD	50
	arraySize	DWORD	LENGTHOF	numArray
	sum			DWORD	0
.code
main proc
	mov		ebx, 0
	mov		esi, 0
BeginWhile:
	cmp		esi, arraySize
	jg		EndProgram
	mov		eax, numArray[esi* TYPE DWORD]
	cmp		eax, sample
	jl		L1
	add		ebx, eax
L1:
	inc		esi
	jmp		BeginWhile
	
EndProgram:
	mov		sum, ebx

	invoke ExitProcess,0
main endp
end main