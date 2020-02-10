


$(main_file): sqlite3.o $(main_file).o
	gcc sqlite3.o $(main_file).o -o $(main_file) -lpthread -ldl

sqlite3.o:sqlite3.c
	gcc -c sqlite3.c

$(main_file).o:$(main_file).c
	gcc -c $(main_file).c

clean:
	rm *.o
