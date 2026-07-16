[org 0x7c00]      ; BIOS loads the boot sector at memory address 0x7c00

mov ah, 0x0e      ; BIOS function 0x0e: Teletype (TTY) output
mov al, 'X'       ; The character we want to print to the screen
int 0x10          ; Call BIOS video interrupt to render the character

hang:
    jmp hang      ; Infinite loop to keep the CPU from executing random memory

times 510-($-$$) db 0 ; Pad the rest of the 510 bytes with zeros
dw 0xaa55         ; The 2-byte magic boot signature (0x55, 0xAA)
