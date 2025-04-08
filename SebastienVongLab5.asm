;Write a 32-bit program that prompts the user to enter 4 doublr words. Use each byte of the user input as a combination of text
;and background color. Print to the console, "Hello World", in each of those combinations of text and background color. Be sure to
;insert a new line after each print of "Hello World". Be sure to set back to default background and text dcolor before ending the program.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data
	hexVal		DWORD 4 DUP(?)
	prompt		BYTE "Hello World",0
.code
main proc
	mov ecx,	LENGTHOF hexVal	
	mov esi,	OFFSET hexVal
									;Save four 32 bit(8 bytes) numbers into memory and then convert the value given into colors and
									;printing the result
L1:
	call		ReadHex				;reads 32 bit hex value given by user
	mov			[esi],	eax			
	add			esi,	TYPE DWORD
	loop L1						
	mov ecx,	LENGTHOF hexVal
L2:
	mov			al, BYTE PTR hexVal[esi]
	call		SetTextColor
	mov edx,	OFFSET prompt
	call		WriteString
	inc			esi
	loop L2
	mov eax, 0Fh
	call SetTextColor


	invoke ExitProcess,0
main endp
end main