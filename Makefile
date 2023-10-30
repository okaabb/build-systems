#This is a Makefile for 5 source files: main.c add.c multiply.c subtract.c divide.c

final: main.o add.o multiply.o subtract.o divide.o
	gcc main.o add.o multiply.o subtract.o divide.o -o final
	gcc -c multiply.c divide.c -fpic
	gcc multiply.o divide.o -shared -o lib_calc.so
	gcc -o main main.o -L. -l_calc
	export LD_LIBRARY_PATH=:/Users/hanaaahmedhamed/desktop/siemens/build-assignment/make-starter

main.o: main.c ops.h
	gcc -c main.c

add.o: add.c ops.h
	gcc -c add.c

subtract.o: subtract.c ops.h
	gcc -c subtract.c

divide.o: divide.c ops.h
	gcc -c divide.c

multiply.o: multiply.c ops.h
	gcc -c multiply.c

clean:
	rm *.o final

