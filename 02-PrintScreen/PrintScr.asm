start:
mov ah, 0x0e ;BIOS Print ISR (Teletype - 16bit real mode)

mov al,"H"
int 0x10

mov al,"E"
int 0x10

mov al,"L"
int 0x10

mov al,"L"
int 0x10

mov al,"O"
int 0x10

jmp $

times 510-($-start) db 0x00
dw 0xaa55