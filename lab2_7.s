.text
    .globl main
main:
    lw $t0, int111
    lw $t1, int222

    mult $t0, $t1

    move $t8, $zero
    mflo $t6
    mfhi $t7
    add $t8, $t6, $t7

    li $s0, 0x10010018
    sw $t8, ($s0)

    multu $t0, $t1

    move $t8, $zero
    mflo $t6
    mfhi $t7
    add $t8, $t6, $t7

    sw $t8, 4($s0)

    li $v0, 10
    syscall

.data
int1:   .word 0xa
int2:   .word 0x9
int11:  .word 0x2
int22:  .word 0xffffffff
int111: .word 0x90000000
int222: .word 0x90000000
