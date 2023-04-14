.data
    myMessage:	.asciiz "hello konoha \n"

.text
    li $v0, 4               ; loads the value 4 into register $v0, which is the register that holds the system call code for printing strings in MIPS.
    la $a0, myMessage       ;loads the address of the "myMessage" label into register $a0, which is the register that holds the first argument for a system call in MIPS
    syscall
