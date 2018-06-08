.text
    .globl main
main:
    la $a0, input
    li $v0, 4
    syscall

    li $v0, 8
    la $a0, buffer
    li $a1, 50
    syscall

    move $t0, $a0
    move $t1, $a1

    li $v0, 4
    la $a0, endl
    syscall

    li $s0, '\n'
    li $t7, 0
    li $t6, 96
    li $t5, 123
    li $t8, 0

while:  lbu $t3, ($t0)

    slt $t1, $t3, $t5
    beq $t1, $zero, skip
    slt $t1, $t6, $t3
    beq $t1, $zero, skip
    addi $t8, $t3, -32
skip:   addi $t0, $t0, 1
        beq $t8, $zero, next
        move $a0, $t8
        li $v0, 11
        syscall
        move $t8, $zero
        jr end
next:   move $a0, $t3
        li $v0, 11
        syscall
end:    bne $t3, $s0, while

    li $v0, 10
    syscall

.data
buffer: .space 50
input:  .asciiz "Give a string:(max 50 characters) "
endl:   .asciiz "\n"
