.text
    .globl main
main:
    li $s0, 0
    li $s1, 1
    li $s2, 2
    li $s3, 3
    li $s4, 4
    li $s5, 5


    addi $sp, $sp, -24
    sw $s0, 20($sp)
    sw $s1, 16($sp)
    sw $s2, 12($sp)
    sw $s3, 8($sp)
    sw $s4, 4($sp)
    sw $s5, 0($sp)
    addi $s5, $s5, 1



while:

    lw $a0, ($sp)
    li $v0, 1
    syscall

    addi $s0, $s0, 1
    addi $sp, $sp, 4
    bne $s0, $s5, while

    li $v0, 10
    syscall

.data
