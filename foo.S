#define FALSE 0
#define	TRUE 1

	.intel_syntax noprefix
	.globl	main

oddP:
	cmp eax,0
	je oddP_end
	sub eax,1
	jmp evenP
oddP_end:
	mov eax, FALSE
	ret
	
evenP:	
	cmp eax,0
	je evenP_end
	sub eax,1
	jmp oddP
evenP_end:
	mov eax, TRUE
	ret
	
main:
	mov eax,1000090000
	call evenP
	xor eax, 1
	ret
