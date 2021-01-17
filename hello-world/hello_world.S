.global _start
.align 2

_start:
    mov   X0,   #1
    adr   X1,   string
    mov   X2,   #14
    mov   X16,  #4
    svc   #0x80
    
    mov   X0,   #0
    mov   X16,  #1
    svc   #0x80
    
string: .ascii "Hello, world!\n"
