#define false 0
#define	true 1

	.intel_syntax noprefix
	.globl	main

oddP: ;; eax -> eax
	cmp eax,0
	bne oddP_1
	mov eax, false
	ret
oddP_1:	sub eax,1
	jmp evenP
	
evenP:	
	cmp eax,0
	beq evenP_end
	sub eax,1
	jmp oddP
evenP_end:
	mov eax, true
	ret
	
main:
	mov eax,7
	jmp evenP
