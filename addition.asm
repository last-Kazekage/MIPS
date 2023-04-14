#addition of two numbers
.data
	num1:   .word    27
	num2:   .word    10

.text
	lw $t0, num1($zero)	#lw $rt, offset($base)
	lw $t1, num2($zero)
	add $t2, $t0, $t1 
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall 
	 
