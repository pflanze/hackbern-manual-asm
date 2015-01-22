#define FALSE 0
#define	TRUE 1

	.intel_syntax noprefix
	.globl	main

oddP:
	cmp eax,0
	jne oddP_1
	mov eax, FALSE
	ret
oddP_1:	sub eax,1
	jmp evenP
	
evenP:	
	cmp eax,0
	je evenP_end
	sub eax,1
	jmp oddP
evenP_end:
	mov eax, TRUE
	ret
	
main:
	mov eax,7
	jsr evenP
	eor eax, 1
	ret
