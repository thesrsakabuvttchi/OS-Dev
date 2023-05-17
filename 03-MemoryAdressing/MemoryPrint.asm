start:
    mov ah,0x0e
    mov bx,message
    add bx,0x7c00       ;ADD 0x7c00 here to account for the offset

    loop:
        mov al,[bx]
        int 0x10
        add bx,0x01
        cmp al,0x00
        jne loop

message:
    db "Booting OS....",0

times (510)-($-start) db 0x00
dw 0xaa55