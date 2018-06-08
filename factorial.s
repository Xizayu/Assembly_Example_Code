.text
    .globl main
main:
    lw $a0, number

    jalr factorial

    move $t0, $v0
    la $a0, factor
    li $v0, 4
    syscall

    move $a0, $t0
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    li $v0, 10
    syscall

factorial:
    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $a0, 0($sp)
    addi $t0, $t0, 2
    slt $t0, $a0, $t0
    beq $t0, $zero, else
    li $v0, 1
    addi $sp, $sp, 8
    jr $ra

else:
    addi $a0, $a0, -1
    jal factorial

    lw $ra, 4($sp)
    lw $a0, 0($sp)
    addi $sp, $sp, 8
    mul $v0, $a0, $v0
    jr $ra

.data
number: .word 0x5
factor: .asciiz "Factorial of 5 is: "
endl:   .asciiz "\n"
