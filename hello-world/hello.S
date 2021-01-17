.global _start
.align 2

_start:
    mov   X0,   #1      // StdOut
    adr   X1,   string  // string
    mov   X2,   #14     // length of string
    mov   X16,  #4      // write system call
    svc   #0x80
    
    mov   X0,   #0
    mov   X16,  #1
    svc   #0x80
    
string: .ascii "Hello, world!\n"
