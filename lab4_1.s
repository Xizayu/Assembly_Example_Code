.text
    .globl main
main:
    li $a0, -10
    li $a1, -30
    li $a2, 120
    li $a3, 200

    jalr procedure

    move $t0, $v0
    move $t1, $v1

    la $a0, max
    li $v0, 4
    syscall
    move $a0, $t0
    li $v0, 1
    syscall
    la $a0, endl
    li $v0, 4
    syscall
    la $a0, min
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

procedure:
    addi $sp, $sp,-20
    sw  $ra, 16($sp)
    sw  $a0, 12($sp)
    sw  $a1, 8($sp)
    sw  $a2, 4($sp)
    sw  $a3, 0($sp)

    move $v0, $a1
    move $v1, $a3

    lw  $ra, 16($sp)
    lw  $a0, 12($sp)
    lw  $a1, 8($sp)
    lw  $a2, 4($sp)
    lw  $a3, 0($sp)
    addi $sp, $sp, 20
    jr $ra


.data
max:    .asciiz "Max is: "
min:    .asciiz "Min is: "
endl:   .asciiz "\n"
