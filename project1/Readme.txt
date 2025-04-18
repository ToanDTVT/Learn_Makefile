1. I created the project1 with structure like:
			/project1: --> Inc: file1.h
			           --> Src: file1.c
								 --> main: main.c   (this is main program)

2. How I can compile file main.c and build it:
	- After programming file main.c, turn back to dir: /project1/.
		+ Run command:
									gcc main.c -o result1
			(gcc: GNU C Compiler; -o is 'output')
			(This command will compile file main.c and create output file has a name is 'result1')

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
