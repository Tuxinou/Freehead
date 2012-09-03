all: extract blp2totga

win32: extract.exe blp2totga.exe

clean: 
	rm -Rf extract icons blp2totga extract.exe blp2totga.exe libmpq/*.{o,a} images icons.7z

extract: extract.cpp mpq_libmpq.cpp libmpq/libmpq.a
	g++ extract.cpp mpq_libmpq.cpp libmpq/libmpq.a -o extract

extract.exe: extract.cpp mpq_libmpq.cpp libmpq/libmpq-win32.a
	i586-mingw32msvc-g++ extract.cpp mpq_libmpq.cpp libmpq/libmpq-win32.a -o extract.exe

blp2totga.exe: blp2totga.c
	i586-mingw32msvc-gcc blp2totga.c -o blp2totga.exe

icons: blp2totga extract mkwebicons
	./mkwebicons

distr: icons/
	mkdir images
	mv icons images
	7zr a icons.7z images
