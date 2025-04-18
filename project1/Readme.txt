1. I created the project1 with structure like:
			/project1: --> Inc: file1.h
			           --> Src: file1.c
								 --> main: main.c   (this is main program)

2. How I can compile file main.c and build it:
	- After programming file main.c, turn back to dir: /project1/.
		+ Run command:
									gcc main.c -o main
			(gcc: GNU C Compiler; -o is 'output')
			(This command will compile file main.c and create output file has a name is 'main')

		+ Check directory, you can see: 
			/project1: --> Inc: file1.h 
								 --> Src: file1.c 
								 --> main: main.c 
								  				 main     (This is file was created after running above command)

		+ Run this command at directory that contain file 'main':
									./main   
			(This command will excutable file 'main' and run program, the result will show on terminal)
									
