#addition with function
.data 

.text
	main:
		addi $a1, $zero, 100
		addi $a1, $zero, 20
		
		jal addvalue
		
		li $v0, 1
		addi $a0, $v1, 0
		syscall
	li $v0, 10
	syscall
	
	addvalue:
		add $v1, $a1, $a2
		jr $ra
		
