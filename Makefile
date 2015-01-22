run: jit
	./jit


jit: jit.S
	gcc jit.S -o jit

evenodd: evenodd.S
	gcc evenodd.S -o evenodd

evenodd_C: evenodd_C.c
	gcc -Wall -O3 evenodd_C.c -o evenodd_C
