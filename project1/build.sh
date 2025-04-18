
gcc -IInc -c main/main.c -o output/main.o
gcc -IInc -c Src/file1.c -o output/file1.o 
gcc -o app output/main.o output/file1.o 
./app 
