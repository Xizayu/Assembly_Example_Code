.text
    .globl main

main:
    la $a0, input
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    la $a0, endl
    li $v0, 4
    syscall

    la $a0, fact
    syscall

    move $a0, $t0
    addi $a0, $a0, -1
    jalr fibonacci

    move $a0, $v1
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    li $v0, 10
    syscall

fibonacci:
    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $a0, 0($sp)
    li $t0, 1

    bne $a0, $zero, skip
    li $v1, 1
    j end

skip:   bne $a0, $t0, skip2
        li $v1, 1
        j end

skip2:  addi $a0, $a0, -1
        jal fibonacci
        jal subfib
        add $v1, $v1, $v0

end:    lw $ra 4($sp)
        lw $a0, 0($sp)
        addi $sp, $sp, 8
        jr $ra

subfib:
    addi $sp, $sp, -12
    sw $ra, 8($sp)
    sw $a0, 4($sp)
    sw $v1, 0($sp)


    li $t0, 1

    bne $a0, $zero, skip3
    li $v0, 1
    j end1

skip3:   bne $a0, $t0, skip4
        li $v0, 1
        j end1

skip4:  addi $a0, $a0, -1
        jal fibonacci
        move $v0, $v1

end1:   lw $ra, 8($sp)
        lw $a0, 4($sp)
        lw $v1, 0($sp)
        addi $sp, $sp, 12
        jr $ra

.data
input:  .asciiz "Give an index: "
endl:   .asciiz "\n"
fact:   .asciiz "The fibonacci number on that index is: "
