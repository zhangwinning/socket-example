#使用宏
CC = gcc

all: server client

server: server.c
	$(CC) -o $@ $^

client: client.c
	$(CC) -o $@ $^
clean:
	rm -f server.o server client.o client