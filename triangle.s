.text
    .globl main

main:
    ulw $t0, edgeA
    ulw $t1, edgeB
    ulw $t2, edgeC

    multu $t1, $t1
    mflo $t5
    mfhi $t6
    add $t1, $t5, $t6
    multu $t2, $t2
    mflo $t5
    mfhi $t6
    add $t2, $t5, $t6
    multu $t0, $t0
    mflo $t5
    mfhi $t6
    add $t0, $t5, $t6

    addu $t3, $t1, $t2
    bne $t0, $t3, nope

    la $a0, yes
    li $v0, 4
    syscall
    j end

nope:   la $a0, no
        li $v0, 4
        syscall

end:    li $v0, 10
        syscall


.data
edgeA:  .word 0x5
edgeB:  .word 0x3
edgeC:  .word 0x5
yes:    .asciiz "It is just."
no: .asciiz "It is not just."
endl:   .asciiz "\n"
