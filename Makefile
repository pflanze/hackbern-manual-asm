run: foo
	./foo

foo: foo.S
	gcc foo.S -o foo

evenodd: evenodd.c
	gcc -Wall -O3 evenodd.c -o evenodd
