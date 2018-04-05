;	as hello_world.s -o hello_world.o 
;	ld hello_world.o -e _main -o [Name] 
	
.section __DATA,__data
str:
	.asciz "Hello World!\n"
.section __TEXT,__text
.global _main
_main:
	movl $0x2000004, %eax		;Preparing system call 4
	movl $1, %edi				;STDOUT file descriptor is 1
	movq str@GOTPCREL(%rip), %rsi ;The value to print
	movq $100, %rdx				  ;The size of the value to print
	syscall

	movl $0, %ebx
	movl $0x2000001, %eax		;Exit 0
	syscall
