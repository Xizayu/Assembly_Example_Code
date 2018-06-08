.text
    .globl main

main:
    la $a0, input
    li $v0, 4
    syscall

    li $v0, 6
    syscall

    mov.s $f12, $f0
    li $v0, 2
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    li $v0, 10
    syscall

.data
input: .asciiz "Give a number: "
endl:  .asciiz "\n"
