
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	bVal		BYTE	1
	mVal		WORD	2
	dVal		DWORD	3
	dVal2		DWORD	4
	myBytes		BYTE	10, 20, 30, 40
	myArray		WORD	1, 2, 3, 4, 5
	myDouble	DWORD	12345678h

.code
main proc
	mov		esi,	OFFSET bVal
	mov		esi,	OFFSET mVal
	mov		esi,	OFFSET dVal
	mov		esi,	OFFSET dVal2
	mov		esi,	OFFSET myArray + 4
	mov		dx,		myArray

	mov		ax,		WORD PTR myDouble
	mov		eax,	TYPE bVal
	mov		eax,	TYPE mVal
	mov		eax,	TYPE dVal
	mov		eax,	TYPE dVal2

	mov		eax, LENGTHOF myArray
	mov		eax, LENGTHOF myDouble
	mov		eax, LENGTHOF myBytes


	invoke ExitProcess,0
main endp
end main