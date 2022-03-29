.data

list:           .space 44
input:          .asciiz "Enter a number: "
separation:     .asciiz " "
output:         .asciiz "The numbers in sorted fashion are are: "

.text

main:
        li $t1, 10
        la $a1, list

run:
        addi $t1, $t1, -1
        li $v0, 4
        la $a0, input
        syscall

        li $v0, 5
        syscall

        sw $v0, 0($a1)
        addi $a1, $a1, 4
        bnez $t1, run
        li $t1, 9
        li $t2, 9
        la $a1, list

loop1:
        beqz $t2, ptr
        addi $t2, $t2, -1
        lw $t5, 0($a1)
        lw $t6, 4($a1)
        addi $a1, $a1, 4
        ble $t5, $t6, loop1
        sw $t5, 0($a1)
        sw $t6, -4($a1)
        bnez $t2, loop1

ptr:
        la $a1, list
        addi $t1, $t1, -1
        add $t2, $t2, $t1
        bnez $t1, loop1
        li $v0, 4
        la $a0, output
        syscall

        la $a1, list
        li $t1, 10

loop2:
        li $v0, 1
        lw $a0, 0($a1)
        syscall

        li $v0, 4
        la $a0, separation
        syscall

        addi $a1, $a1, 4
        addi $t1, $t1, -1
        bnez $t1, loop2

li $v0,10
syscall
