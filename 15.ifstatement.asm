.data
	message: .asciiz "both number is equal"
	warning: .asciiz "nothing happened"
.text
	main:
		addi $t0, $zero, 200
		addi $t1, $zero, 200
	
		beq $t0, $t1, numberequal 
		   
		li $v0, 10
		syscall 
	

	numberequal:
		li $v0, 4
		la $a0, message
		syscall
	
	
	
