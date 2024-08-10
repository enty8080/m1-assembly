_start:
    mov x0, 1
    adr x1, string
    mov x2, 14
    mov x16, 4
    svc 0

    mov x0, 0
    mov x16, 1
    svc 0

string:
    .ascii "Hello, world!\n"
