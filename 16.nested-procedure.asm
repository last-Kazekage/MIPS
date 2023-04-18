.data
	newline: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseregister
		
		li $v0,4			#for newline
		la $a0, newline
		syscall
		
		jal printvalue
	
	li $v0, 10
	syscall
	
	increaseregister:
		addi $sp, $sp, -4		#preparing space in stack
		sw $s0, 0($sp)
		sw $ra, 4($sp)
		
		addi $s0, $s0, 40
		
		jal printvalue
		
		lw $s0, 0($sp)			#clearing stack
		lw $ra, 4($sp)
		addi $sp, $sp, 4
		
		jr $ra
		
	printvalue:
		li $v0, 1			#print value
		move $a0, $s0
		syscall
		
		jr $ra
	