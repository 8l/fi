CFLAGS?=-Os -pedantic -Wall -std=c++11 -I/usr/include/freetype2

all:
	gcc $(CFLAGS) console.c /usr/lib/libX11.a -L/usr/lib/ -lXrandr -lXinerama -lXcursor -lXxf86vm -lXrender -lGL -lfontconfig -lfreetype-gl -lGLEW -lglfw -lfreetype -o finn 
	#gcc $(CFLAGS) markup.c /usr/lib/libX11.a -L/usr/lib/ -lXrandr -lXinerama -lXcursor -lXxf86vm -lXrender -lGL -lfontconfig -lfreetype-gl -lGLEW -lglfw -lfreetype -o finn 
	#clang++ $(CFLAGS) finn.cpp -lX11 -L/usr/lib/ -lglfw3 -lXxf86vm -lXrandr -lXinerama -lXcursor -lXrender -lGL -o finn 


clean:
	rm -f finn 

