run: foo
	./foo

foo: foo.S
	gcc foo.S -o foo

