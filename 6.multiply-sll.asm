#multiply using sll
.data

.text
	addi $s0, $zero, 10
	
	sll $t0, $s0, 2
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
