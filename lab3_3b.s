.text
    .globl main
main:
    li $t1, 0
    li $t3, 1

    la $a0, input
    li $v0, 4
    syscall
    la $a0, endl
    syscall

    li $v0, 5
    syscall
    move $t4, $v0

    li $s0, 't'
while:  lbu $t0, string($t1)
    beq $t0, $s0, end
    jr continue
    beq $t3, $t4, end
continue:    addi $t3, $t3, 1
    sb $t0, copy($t1)
    addi $t1, $t1, 1
    j while
end:    li $t2, 0
    sb $t2, copy($t1)
    la $a0, copy
    li $v0, 4
    syscall
    li $v0, 10
    syscall

.data
input:  .asciiz "Give a number: "
endl:   .asciiz "\n"
string: .asciiz "Mary had a little lamb"
copy:   .space 80
