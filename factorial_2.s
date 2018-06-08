.text
    .globl main
main:
    lw $t0, num
    addi $t0, $t0, 1

    li $t1, 1
    li $t2, 1

while:
    mul $t3, $t1, $t2
    addi $t2, $t2, 1
    move $t1, $t3
    bne $t2, $t0, while

    la $a0, fact
    li $v0, 4
    syscall

    move $a0, $t1
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    li $v0, 10
    syscall





.data
fact:   .asciiz "Factorial of 5 is: "
endl:   .asciiz "\n"
num:    .word 0x5
