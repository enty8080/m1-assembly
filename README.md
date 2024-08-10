# M1 Assembly

Some samples and tutorial for Apple's M1 arm64 CPU.

## Registers

* **x0-x8** - 9 arguments to syscall
* **x16/w8** - System Call function number
* **x0-x1** - 2 return values (in case of fork)

## Building

**Dependencies:** [HatAsm - Advanced Assembler](https://github.com/EntySec/HatAsm)

```
cd hello
make
./hello
```
