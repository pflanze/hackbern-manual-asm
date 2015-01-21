run: foo
	./foo

foo: foo.s
	gcc foo.s -o foo

