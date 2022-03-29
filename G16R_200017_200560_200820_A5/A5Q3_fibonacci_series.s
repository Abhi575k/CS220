.data
separation:	.asciiz	", "

.text

.globl main

main:
	addi $t0, $zero, 0			#	element1 = 0
	addi $t1, $zero, 1			#	element2 = 1
	addi $s0, $zero, 230		#	elementlast <= 500
	addi $t2, $zero, 1			#	element count

run:
	li $v0, 1					#	print integer
	move $a0, $t0
	syscall

	slt $t3, $t2, $s0			#	terminating condition
	beq $t3, $zero, end

	li $v0, 4					#	print string
	la $a0, separation
	syscall

	move $t2, $t0
	move $t0, $t1
	add $t1, $t1, $t2
	addi $t2, $t2, 1			#	increase element count

	j run

end:
	j $ra
