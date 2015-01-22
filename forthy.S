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
	mov DWORD PTR [esp], OFFSET FLAT:.hello
	call puts
	mov eax, 0
	leave
	ret
