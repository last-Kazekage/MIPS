#divide by using div -2 parameter
.data

.text
	addi $t0, $zero, 100
	addi $t1, $zero, 6
	
	div $t0, $t1
	
	mflo $s0
	mfhi $s1
	
	li $v0, 1
	add $a0, $zero, $s0
	syscall