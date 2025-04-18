
=====================WITHOUT MAKEFILE==============================

1. I created the project1 with structure like:
			/project1: --> Inc: file1.h
			           --> Src: file1.c
								 --> main: main.c   (this is main program and then it is independence program)

2. How I can compile file main.c and build it:
	- After programming file main.c, turn back to dir: /project1/.
		+ Run command:
									gcc main.c -o result1
			(gcc: GNU C Compiler; -o is 'output')
			(This command will compile file main.c and create output file has a name is 'result1')

			           --> Src: file1.c
								 --> main: main.c   (this is main program and then it is independence program)
			**NOTE: If you run the command: 'gcc -c main.c'   (This command without '-o'), gcc will generate a file called 'main.o', this is 'object file'

		+ Check directory, you can see: 
			/project1: --> Inc: file1.h 
								 --> Src: file1.c 
								 --> main: main.c 
								  				 result1     (This is file was created after running above command)

		+ Run this command at directory that contain file 'result1':
									./result1   
			(This command will excutable file 'main' and run program, the result will show on terminal)
			**NOTE: If you edit file 'main.c', save and run command './result1', you still have the result of old version (the version before edit)
							You have to rebuild/recompile file 'main.c' to have the result of new version
							Or you can create new output file with name 'result2', then you have 2 results and compare them.
			**Then tree folder will look like: 
      /project1: --> Inc: file1.h 
								 --> Src: file1.c 
								 --> main: main.c 
								  				 result1  (this is the result before edit)
													 result2  (this is the result after edit)

		+ Now, I create a output folder that contain all object files, tree folder look like:
      /project1: --> Inc: file1.h 
								 --> Src: file1.c 
								 --> main: main.c 
								  				 result1  (this is the result before edit)
													 result2  (this is the result after edit)
         				 --> output: main.o
								             file1.o 
		  # In this case, 'main.c' call the function at 'file1.h'. To d
			# To do this thing, I should use flag name '-I' ('-I' stands for 'Include Path', it tell the compiler where to look for header files)
      # Therefore, 'main.o' and 'file1.o' will be created by the command:
										gcc -IInc -c main/main.c -o output/main.o            
										gcc -IInc -c Src/file1.c -o output/file1.o 
			# After 2 above commands, I will create a file that can execute both file 'main.o' and 'file1.o', with this command:
										gcc -o app output/main.o output/file1.o        (The executable file is 'app')
	  
		+ Run command './app', it will show result 


	=======================================================================
	So you can see, to build a project that go through many steps and this is just a simple project. So if we build the large project that include with a lots files, we can't compile it step by step. Then we should use Makefile
	I do the same project but that use Makefile at 'project2'
