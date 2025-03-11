;Do the same as above using TEXTEQU directive.
;then as above, declare a variable in .data block and initialize it as an array using those symbolic constants
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	Sunday		TEXTEQU	<"Sunday">
	Monday		TEXTEQU	<"Monday">
	Tuesday		TEXTEQU <"Tuesday">
	Wednesday	TEXTEQU <"Wednesday">
	Thursday	TEXTEQU <"Thursday">
	Friday		TEXTEQU <"Friday">
	Saturday	TEXTEQU <"Saturday">
	days		BYTE	Sunday, Tuesday, Wednesday, Thursday, Friday, Saturday
.code
main proc
	mov al, days

	invoke ExitProcess,0
main endp
end main