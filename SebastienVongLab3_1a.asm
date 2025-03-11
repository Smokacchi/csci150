;Write a program that defines symbolic constants for all seven days of the week using integer values.
;then declare a variable in .data block and initialize it as an array using those symbolic constants

;Do the same as above using TEXTEQU directive.
;then as above, declare a variable in .data block and initialize it as an array using those symbolic constants
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	Sunday = 1
	Monday = 2
	Tuesday = 3
	Wednesday = 4
	Thursday = 5
	Friday = 6
	Saturday = 7
	days BYTE Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday

.code
main proc
	mov al, days

	invoke ExitProcess,0
main endp
end main