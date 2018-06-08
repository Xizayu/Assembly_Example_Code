.text
    .globl main

main:
    la $a0, input
    li $v0, 4
    syscall
    la $a0, endl
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    addi $t3, 2
    div $t0, $t3
    mfhi $t1
    bne $t1, $zero, skip1
    la $a0, with2
    li $v0, 4
    syscall
    la $a0, endl
    li $v0, 4
    syscall
skip1:  move $t3, $zero
    addi $t3, 3
    div $t0, $t3
    mfhi $t1
    bne $t1, $zero, skip2
    la $a0, with3
    li $v0, 4
    syscall
    la $a0, endl
    li $v0, 4
    syscall
skip2:  move $t3, $zero
    addi $t3, 5
    div $t0, $t3
    mfhi $t1
    bne $t1, $zero, skip3
    la $a0, with5
    li $v0, 4
    syscall
    la $a0, endl
    li $v0, 4
    syscall
skip3:  li $v0, 10
    syscall

.data
input:  .asciiz "Give a number: "
with2:  .asciiz "It can be divided by 2."
with3:  .asciiz "It can be divided by 3."
with5:  .asciiz "It can be divided by 5."
endl:   .asciiz "\n"
