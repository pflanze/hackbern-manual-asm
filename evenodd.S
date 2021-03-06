#define FALSE 0
#define	TRUE 1

	.intel_syntax noprefix
	.globl	main

#if 0
	# unoptimized
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

#else

	# optimized
evenP:	
	cmp eax,0
	je evenP_end
	dec eax
	jmp oddP
evenP_end:
	mov eax, TRUE
	ret

oddP:
	cmp eax,0
oddP_aftercmp:	
	je oddP_end
	dec eax
	# inlined evenP
	je evenP_end
	dec eax
	# more inlines
	je oddP_end
	dec eax
	je evenP_end
	dec eax
	je oddP_end
	dec eax
	je evenP_end
	dec eax
	je oddP_end
	dec eax
	je evenP_end
	dec eax
	je oddP_end
	dec eax
	je evenP_end
	dec eax
	jmp oddP_aftercmp
oddP_end:
	mov eax, FALSE
	ret
	
#endif
	
main:
	mov eax, 2000000000
	call evenP
	xor eax, 1
	ret
