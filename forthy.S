	.intel_syntax noprefix
	.globl main

hello:	
	.asciz "Hello World\n"
	
main:
	push hello
	call puts
	mov eax, 0
	ret
