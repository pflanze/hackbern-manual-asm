	.intel_syntax noprefix

	.section	.rodata
.hello:	
	.string "Hello World\n"

	.text
	.globl main
	
main:
	# push hello
	push ebp
	mov ebp, esp
	and esp, -16
	sub esp, 16
	mov [esp],.hello
	call puts
	mov eax, 0
	ret
