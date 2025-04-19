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
     - 'dir'      :
     - 'notdir'   :
     - 'basename' :
     - 'suffix'   :
     - 'wilcard'  :

|3|. Logic and Condition:
     - 'if'  :
     - 'or'  :
     - 'and' :

----------------------
III. Rules           :
----------------------
- Rules are shell commands emitted by Make to produce an output file.
- Rules use pattern matching on file types. The rule Make uses depend on how the recipe is configured.
- There are many implicit rules built into Make for different file types.
- Implicit rules become obsolete very quickly.





