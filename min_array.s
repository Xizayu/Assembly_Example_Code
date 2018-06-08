.text
    .globl main
main:
    la $a0, output
    li $v0, 4
    syscall

    la $t0, array

    lw $t1, ($t0)
    li $t2, 1
    li $t3, 10

while:
    beq $t2, $t3, end
    addi $t2, $t2, 1
    addi $t0, $t0, 4
    lw $t5, ($t0)
    slt $t4, $t5, $t1
    beq $t4, $zero, noupdate
    move $t1, $t5
noupdate:
    j while

end:
    move $a0, $t1
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    li $v0, 10
    syscall

.data
array:    .word 0x9
    .word 0xa
    .word 0xf
    .word 0x23
    .word 0x22
    .word 0xda
    .word 0xff
    .word 0xbaf
    .word 0xbb
    .word 0x10
    .word 0x6

output: .asciiz "The min number of the array is: "
endl:   .asciiz "\n"
