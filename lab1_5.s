.text
    .globl main
main:
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, endl
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, endl
    syscall

    add $t2, $t1, $t0
    subu $t3, $t0, $t1

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, endl
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall

.data
endl:    .asciiz "\n"
