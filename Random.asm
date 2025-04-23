; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc

.data
stringLength    DWORD   10                      ; Length of the random string
randomString    BYTE    11 DUP(0)               ; 10 characters + null terminator
msgPrompt       BYTE    "Generated Random String: ", 0

.code
main PROC
    mov edx, OFFSET msgPrompt
    call WriteString
    mov ecx, stringLength         ; loop counter = length of the string
    mov esi, OFFSET randomString ; point ESI to start of output string

    call Randomize
L1:
    mov eax, 26                   ; range: 0-25
    call RandomRange              ; returns EAX in range 0 to 25
    add al, 65                   ; convert to ASCII uppercase
    mov [esi], al                ; store character
    inc esi                      ; move to next byte in string
    loop L1

    mov edx, OFFSET randomString
    call WriteString

    exit

main endp
end main