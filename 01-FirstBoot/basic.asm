loop:
    jmp loop ;ONE instruction (16 Bytes)

times 510-($-loop) db 00;Need to fill 512 bytes total but 2 bytes are reserved for magic number
dw 0xaa55 ; if db, then 0x55 then 0xaa