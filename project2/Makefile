app: output/main.o output/file1.o
	gcc -o app output/main.o output/file1.o

output/main.o: main/main.c Inc/file1.h
	gcc -IInc -c main/main.c -o output/main.o 

output/file1.o: Src/file1.c Inc/file1.h
	gcc -IInc -c Src/file1.c -o output/file1.o 

clean: 
	rm -f output/*.o app 
