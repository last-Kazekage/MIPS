#divide by using div
.data

.text
	addi $t0, $zero, 100
	addi $t1, $zero, 10
	div $s2, $t0, $t1
	
	
	li $v0, 1
	add $a0, $zero,$s2
	syscall
