all:	libmpq.a
win32: libmpq-win32.a

clean: 
	rm -f *.a *.o

libmpq.a: *.c *.cpp
	g++ -I. -c *.cpp
	gcc -I. -c *.c
	ar cru libmpq.a *.o
libmpq-win32.a: *.c *.cpp
	i586-mingw32msvc-g++ -I. -c *.cpp
	i586-mingw32msvc-gcc -I. -c *.c
	i586-mingw32msvc-ar libmpq-win32.a cru *.o
