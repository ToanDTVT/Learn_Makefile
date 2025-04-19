========== USE MAKEFILE ===========
My workspace is in directory 'project2/':

Makefile: 
        app: output/main.o output/file1.o
        	gcc -o app output/main.o output/file1.o
        
        output/main.o: main/main.c Inc/file1.h
        	gcc -IInc -c main/main.c -o output/main.o 
        
        output/file1.o: Src/file1.c Inc/file1.h
        	gcc -IInc -c Src/file1.c -o output/file1.o 
        
        clean: 
        	rm -f *.o app 

Complain: 
- Khi chạy lệnh 'make':
  + Lúc này, 'app' là file mục tiêu sẽ được tạo ra với điều kiện phải phụ thuộc vào 2 file main.o và file1.o
    (Do ta làm việc ở folder project2/, nên để khai báo các file ta phải nhìn vào thư mục chứa nó)
    (Nói các khác, ta nói cho 'app' biết các file 'main.o' và 'file1.o' nằm ở đâu)

  + 'app' sẽ được tạo ra thông qua câu lệnh:
          	gcc -o app output/main.o output/file1.o

  + Nếu 'main.o' và 'file1.o' không tồn tại, nó sẽ được tạo tự động qua các dòng sau:
            output/main.o: main/main.c Inc/file1.h
        	    gcc -IInc -c main/main.c -o output/main.o 
        
            output/file1.o: Src/file1.c Inc/file1.h
        	    gcc -IInc -c Src/file1.c -o output/file1.o 

- Chạy lệnh './app' chương trình sẽ được thực thi

====================================
Vậy về cơ bản, nếu ta viết như vậy thì tác dụng cũng không khác shellscript.
Giả sử ta tạo ra thêm file2.c, file3.c, .... thì ta lại phải chỉnh sửa Makefile một cách thủ công.
Do đó, ta sẽ phải viết Makefile một cách linh hoạt hơn.
Sẽ được cải tiến ở project3
