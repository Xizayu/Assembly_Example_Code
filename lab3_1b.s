.text
    .globl main

main:
    la $a0, input
    li $v0, 4
    syscall
    la $a0, endl
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    la $t8, skip

    addi $t2, 2
    div $t0, $t2
    mfhi $t3
    bne $t3, $zero, skip1
    la $a0, with2
    li $v0, 4
    syscall
    la $a0, endl
    syscall
    jr $t8

skip1:    move $t2, $zero
    addi $t2, 3
    div $t0, $t2
    mfhi $t3
    bne $t3, $zero, skip2
    la $a0, with3
    li $v0, 4
    syscall
    la $a0, endl
    syscall
    jr $t8

skip2:    move $t2, $zero
    addi $t2, 5
    div $t0, $t2
    mfhi $t3
    bne $t3, $zero, skip
    la $a0, with5
    li $v0, 4
    syscall
    la $a0, endl
    syscall
    jr $t8

skip:   li $v0, 10
    syscall


.data
input:  .asciiz "Give a number: "
endl:   .asciiz "\n"
with2:  .asciiz "It can be divided by 2"
with3:  .asciiz "It can be divided by 3"
with5:  .asciiz "It can be divided by 5"
