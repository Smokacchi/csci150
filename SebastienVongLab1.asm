;Calculate the expression numA = (numA+numB) - (numC+numD). Use the registers whichever way you see fit.

;Declare the integers in the.data segment.
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
numA	BYTE	40
numB	BYTE	30
numC	BYTE	20
numD	BYTE	10

.code
main proc
	mov	al, numA		;moves numA to the a register
	add al, numB		;adds numB to numA
	mov bl, numC		;moves numC to the b register
	add bl, numD		;adds numD to numC
	sub al, bl			;subtracts (numC+numD) from (numA+numB)
	mov numA, al		;moves the new number back into numA (should be 40)
	
	
	invoke ExitProcess,0
main endp
end main