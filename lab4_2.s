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

    move $a0, $t0
    jalr procedure

    li $v0, 10
    syscall

procedure:
    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $a0, 0($sp)

    li $v0, 1
    syscall
    
    beq $a0, $zero, end

    la $a0, endl
    li $v0, 4
    syscall
    lw $a0, 0($sp)
    addi $a0, -1
    jal procedure

end:
    lw $ra, 4($sp)
    lw $a0, 0($sp)
    addi $sp, $sp, 8
    jr $ra

.data
input:  .asciiz "Give a number: "
endl:   .asciiz "\n"
