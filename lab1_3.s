.text
    .globl main
main:
    ulw $t0, three
    ulh $t1, half
    li $v0, 10
    syscall

.data
.align 0
one:    .byte 0x01
        .byte 0x02
        .byte 0x03
        .byte 0x04
        .byte 0x05
        .byte 0x06
        .byte 0x07
half:   .half 0x6677
two:    .byte 0x81
        .byte 0x82
        .byte 0x83
        .byte 0x84
three:  .word 0x12345678
        .word 0x87654321
