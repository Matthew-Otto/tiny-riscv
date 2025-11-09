    .section .text
    .global _start
    .global _exit

_start:
    call main

_exit:
    ebreak              # tell simulator program finished
1:  j 1b               # infinite loop
