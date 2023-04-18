.data
	message:	.asciiz "enter the float number: "
	zeroasfloat:	.float 0.0
.text
	lwc1 $f4, zeroasfloat
	
	li $v0, 4		#dispaly message
	la $a0, message
	syscall
	
	li $v0, 6		#rad user input for float
	syscall
	
	li $v0, 2		#dispaly value
	add.s $f12, $f0, $f4
	syscall