.text
    .globl main
main:
    li $t0 0x1001002c
    la $t1 str1
    la $t2 str2
    move $t3, $zero
    li $t6, 10



loop:
    lbu $t4, ($t1)
    sb $t4, ($t0)
    addi $t0, $t0, 1
    lbu $t5, ($t2)
    sb $t5, ($t0)
    addi $t0, $t0, 1
    li $v0, 11
    move $a0, $t4
    syscall
    move $a0, $t5
    syscall
    addi $t3, $t3, 1
    addi $t1, $t1, 1
    addi $t2, $t2, 1
    bne $t3, $t6, loop

    li $v0, 10
    syscall


.data
str1:   .asciiz "0123456789"
str2:   .asciiz "abcdefghij"
endl:   .asciiz "\n"
