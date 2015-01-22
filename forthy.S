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
	add esp, 4
	mov eax, 0
	ret
