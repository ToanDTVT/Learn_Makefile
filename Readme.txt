================= USE MAKEFILE =================
I should make clean about something like: 
------------------------
I. Assignment Operators:
------------------------
   - '='  : Verbatim assignment
           (Reference variables that might change later) 

   - ':=' : Simple expansion
           (Advoid surprises and ensure fixed values immidiately)

   - '?=' : Conditional assignment 
           (Allow values to be overridden (great for user config default))

   - '+=' : Append to 
           (Add more content to existing variables (path, flags,...))

   - '!=' : Shell output 
           (Capture output of shell commands)

-----------------------
II. Built-in Functions:
-----------------------
Built-in Functions in Makefile are available functions provided by make, these help you process strings, list folders, change variable, get information of systems,...

How to use it: $(function-name arguments)  
*use '$()' or '${}' to call function 

Commonly used function groups: 
|1|. String manipulation:
     - 'subst'      : $(subst old-char, new-char, string)
     - 'patsubst'   : $(patsubst old-pattern, new-pattern, string)
     - 'strip'      : $
     - 'findstring' : $(findstring substring, string)
     - 'filter'     : $(filter pattern, list)
     - 'filter-out' : $(filter-out pattern, list)

|2|. Folder and Path:
     - 'dir'      : $(dir main/main.c) --> main/       #(Get folder from Path)
     - 'notdir'   : $(notdir main/main.c) --> main.c   #(Get file from Path)
     - 'basename' : $(basename main.c) --> main        #(Remove file extension)
     - 'suffix'   : $(suffix main.c) --> .c            #(Get file extension)
     - 'wildcard' : $(wildcard Src/*.c)                #(Find all folders/files base on pattern)

|3|. Logic and Condition:
     - 'if'  : $(if $(DEBUG), debug=yes, debug=no)                 #(Basic condition, like if-else)
     - 'or'  : $(or $(DEBUG), 1) --> if DEBUG is empty, return 1   #(Return the first non-empty value) 
     - 'and' : $(and a, b) --> b                                   #(Return the last value if all right )

----------------------
III. Rules           :
----------------------
- Rules are shell commands emitted by Make to produce an output file.
- Rules use pattern matching on file types. The rule Make uses depend on how the recipe is configured.
- There are many implicit rules built into Make for different file types.
- Implicit rules become obsolete very quickly.
- Basic structure of a Rule:
             target: dependencies
             <Tab>command
  + 'target'       : is the file that will be created (usually .o, .exe,....).
  + 'dependencies' : are files needed to create 'target'.
  + 'command'      : are shell commands executed when 'target' needs to be built.
                     (note: must start with Tab, not space!)

  *Example*:
             main.o: main.c file1.h
               gcc -c main.c -o main.o 
   #That mean: If 'main.o' doesn't exist or 'main.c' or 'file1.h' has been edited
           --> Recompile 'main.c' and generate 'main.o'

- Automatic with Pattern Rules:
  Suppose we have multiple '.c' files, we can use Pattern Rule like this:
              %.o: %.c
               gcc -c $< -o $@
  + '%'  : pattern
  + '$@' : Name of file 'target'
  + '$<' : The first source file
  + '$^' : All dependencies 
      ---->    gcc -c $< -o $@
          =    gcc -c main.c -o main.o 

- Phony rule: this rule doesn't create real files, use for commands like 'clean', 'all',....


