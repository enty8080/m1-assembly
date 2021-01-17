.global _start
.align 2

_start:
    mov x10, #0
    cmp x10, #1
    beq yes
    bne no

    mov x0, #0
    mov x16, #1
    svc #0x80

yes:
    mov x0, #1
    adr x1, true
    mov x2, #5
    mov x16, #4
    svc #0x80
    ret

no:
    mov x0, #1
    adr x1, false
    mov x2, #6
    mov x16, #4
    svc #0x80
    ret

true:
    .ascii "true\n"

false:
    .ascii "false\n"
