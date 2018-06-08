.text
    .globl main
main:
    lw $t0, hex1
    lw $t1, hex2

    move $a0, $t0
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    move $a0, $t1
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    add $t3, $t0, $t1
    addu $t4, $t0, $t1

    move $a0, $t3
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    move $a0, $t4
    li $v0, 1
    syscall

    li $v0, 10
    syscall

.data
int1:   .word 1073741823
int2:   .word 1073741823

hex1:   .word 0x3FFFFFFF
hex2:   .word 0x3FFFFFFF
endl:   .asciiz "\n"
