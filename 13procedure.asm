#simple program with function(procedure)
.data
	message:	.asciiz  "welcome to konoha, \ni am last Kazekage"
.text
	main:
		jal  messageforyou
				
		li $v0, 10
		syscall

	messageforyou:
		li $v0, 4
		la $a0, message
		syscall 
		
		jr $ra