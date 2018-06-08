.text
    .globl main
main:
    move $t0, $t6
    srl $t1, $t0, 1
    add $t6, $t0, $t1

    li $v0, 10
    syscall
.data
