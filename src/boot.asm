jmp  $
times 510-($-$$) db 0      ; fill whole file until it reaches 510 bytes
dw   0xaa55                ; place magic number at 511th and 512th byte
