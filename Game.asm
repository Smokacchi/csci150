;Snake Game
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc
.data
	Xpos SBYTE 40
	Ypos SBYTE 12
.code
main PROC
	mov dh, Ypos
	mov dl, Xpos
	call GotoXY
L1:
	mov eax, 10
	call Delay
	call ReadKey
	jnz L2
	jmp L1
L2:
	cmp ax, 4800h
	je L3
	cmp ax, 5000h
	je L4
	cmp ax, 4D00h
	je L5
	cmp ax, 4B00h
	je L6
	jmp L1
L3:
	add Ypos, -1
	mov dh, Ypos
	mov dl, Xpos
	call GotoXY
	mov al, '*'
	call WriteChar
	jmp L1
L4:
	add Ypos, 1
	mov dh, Ypos
	mov dl, Xpos
	call GotoXY
	mov al, '*'
	call WriteChar
	jmp L1
L5:
	add Xpos, 1
	mov dh, Ypos
	mov dl, Xpos
	call GotoXY
	mov al, '*'
	call WriteChar
	jmp L1
L6:
	add Xpos, -1
	mov dh, Ypos
	mov dl, Xpos
	call GotoXY
	mov al, '*'
	call WriteChar
	jmp L1

		exit


	invoke ExitProcess,0
main endp
end main