.text
    .globl main
main:
    la $a0, dividend
    li $v0, 4
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    la $a0, divisor
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    div $t0, $t1

    mflo $t4
    mfhi $t5

    la $a0, quotient
    li $v0, 4
    syscall
    move $a0, $t4

    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    la $a0, remainder
    li $v0, 4
    syscall


    move $a0, $t5
    li $v0, 1
    syscall

    la $a0, endl
    li $v0, 4
    syscall

    li $v0, 10
    syscall

.data
dividend:   .asciiz "Enter dividend: "
divisor:    .asciiz "Enter divisor: "
endl:       .asciiz "\n"
quotient:   .asciiz "quotient is: "
remainder:  .asciiz "remainder is: "
