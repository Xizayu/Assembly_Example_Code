.text
    .globl main
main:

    li $t0, 1
    li $t8, 1
    li $t9, 8
    la $a0, input
    li $v0, 4
    syscall
    la $a0, endl
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    la $a0, input
    li $v0, 4
    syscall
    la $a0, endl
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    move $t5, $zero
    li $t7, 1
loop:    and $t3, $t1, $t0
    and $t4, $t2, $t0
    xor $t6, $t3, $t4
    add $t7, $t7, $t8
    beq $t6, $zero, skip
    add $t5, $t5, $t8
skip:   srl $t1, $t1, 1
    srl $t2, $t2, 1
    bne $t7, $t9, loop

    la $a0, hamilton
    li $v0, 4
    syscall
    la $a0, endl
    syscall

    move $a0, $t5
    li $v0, 1
    syscall

    li $v0, 10
    syscall


.data
input:  .asciiz "Give a number: "
endl:   .asciiz "\n"
hamilton:   .asciiz "Hamilton distance is: "
