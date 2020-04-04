# helloworld is a binary file

#使用宏
CC = gcc
helloworld: test.o
	echo "good"
	${CC} -o $@ $^

test.o: test.c
	${CC} -c -o $@ $^

clean:
	rm -f helloworld test.o