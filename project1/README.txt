==================WITHOUT MAKEFILE=========================

1. I created the project1 with structure like:
       *project1: --> Inc: file1.h
                  --> Src: file1.c
                  --> main: main.c (This is main program, then it not even call a function at file1.h)

2. How can I compile and build it:
   + Run command:
                 gcc -c main.c -o result1
     (gcc: GNU C Compile; -o is 'output')
     (This command compile file 'main.c' and create output file has a name 'result1')
     **NOTE: If you run command without '-o', gcc will generate a file called 'main.o' (this is a object file)

   + Check directory, you can see:
       *project1: --> Inc: file1.h
                  --> Src: file1.c
                  --> main: main.c (This is main program, then it not even call a function at file1.h)
                            result1 (This file was created after running above command)

   + Run this command at directory that contain file 'result1':
                 ./result1
     (This command will execute file 'result1' and run program, the result will be showed on the terminal)
     **NOTE: If you edit file 'main.c' and run './result1', It still show the result of old version (the version before editting).
             You should rebuild/compile file 'main.c' again to have a new result.
             Or you can create the new output file with named 'result2'. Then you have 2 results (compare them).

   + Now, I create the ouput folder that contain all object files, tree folder look like:
     # In this case, 'main.c' call the function at 'file1.h'.
     # To do this thing, I use flag '-I' ('-I' stands for 'Include Path', it tells the compiler where to look for the header files).
     # Therefore, 'main.o' and 'file1.o' have to be created by the commands:
                 gcc -IInc -c main/main.c -o output/main.o 
                 gcc -IInc -c Src/file1.c -o output/file1.o 
     # After 2 above commands, I create a 'app' file that can execute both of them with this command:
                 gcc -o app output/main.o output/file1.o           ('app' is the object file)

   + Run command './app', it will show result

============================================================
So you can see, to build a simple project that go through many steps. Then what is come if we build the large project with a lots file, we couldn't go step by step like this. That's why I decide to use Makefile. I will use it at project2. 
