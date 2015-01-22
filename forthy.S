	.intel_syntax noprefix

	.section	.rodata
.hello:	
	.string "Hello World\n"

	.text
	.globl main
	
main:
	# push hello
	push OFFSET FLAT:.hello
	call puts
	pop eax
	mov eax, 0
	ret
