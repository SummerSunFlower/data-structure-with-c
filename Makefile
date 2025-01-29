CC = gcc
CFLAGS = -Wall -g

all: test2 doubly_linked_list

test2: test2.o
	$(CC) $(CFLAGS) -o test2 test2.o

doubly_linked_list: doubly_linked_list.o
	$(CC) $(CFLAGS) -o doubly_linked_list doubly_linked_list.o

test2.o: test2.c
	$(CC) $(CFLAGS) -c test2.c

doubly_linked_list.o: doubly_linked_list.c
	$(CC) $(CFLAGS) -c doubly_linked_list.c

clean:
	rm -f *.o test2 doubly_linked_list