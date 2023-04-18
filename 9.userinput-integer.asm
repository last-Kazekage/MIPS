.data
	question:	.asciiz "enter your favorite number"
	message:	.asciiz "\nyour favorite number is "	
.text
	li $v0, 4 	#4-string or text
	la $a0, question
	syscall
	
	li $v0, 5	#5-get number from user
	syscall
	
	move $t0,$v0	#store number into t0
	
	li $v0, 4	
	la $a0, message
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall  
	
	