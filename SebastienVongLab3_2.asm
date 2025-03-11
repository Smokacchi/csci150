;Create a program that declares a varaiable for a string and initializes it with a 5 or 6 letter word
;Initialize it in upper case.

;then declare another variable under it uninitialized, convert the word into lower case, then copy it
;into the second variable.
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myWord			BYTE	"LMBASS", 0 ;initializes word
	lowercaseWord	BYTE	?			; set uninitialized variable

.code
main proc
										;add 32 to each byte in myWord to get the lowercase version
										;store each byte into lowercaseWord
	mov al, myWord
	add al, 32
	mov lowercaseWord, al
	mov al, myWord + 1
	add al, 32
	mov lowercaseWord + 1, al
	mov al, myWord + 2
	add al, 32
	mov lowercaseWord + 2, al
	mov al, myWord + 3
	add al, 32
	mov lowercaseWord + 3, al
	mov al, myWord + 4
	add al, 32
	mov lowercaseWord + 4, al
	mov al, myWord + 5
	add al, 32
	mov lowercaseWord + 5, al
	


	invoke ExitProcess,0
main endp
end main