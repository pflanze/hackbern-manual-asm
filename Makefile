run: foo
	./foo

foo: foo.S
	gcc foo.S -o foo

evenodd: evenodd.c
	gcc -Wall -O2 evenodd.c -o evenodd
