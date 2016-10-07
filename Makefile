CFLAGS?=-Os -pedantic -Wall -std=c++11 -I/usr/include/freetype2

all:
	#gcc $(CFLAGS) console.c /usr/lib/libX11.a -L/usr/lib/ -lXrandr -lXinerama -lXcursor -lXxf86vm -lXrender -lGL -lfontconfig -lfreetype-gl -lGLEW -lglfw -lfreetype -o fi 
	g++ $(CFLAGS) fi.cpp gap_buffer.cpp /usr/lib/libX11.a -L/usr/lib/ -lXrandr -lXinerama -lXcursor -lXxf86vm -lXrender -lGL -lfontconfig -lfreetype-gl -lGLEW -lglfw -lfreetype -o fi 


clean:
	rm -f fi 

