CFLAGS?=-Os -pedantic -Wall -std=c++11

all:
	clang++ $(CFLAGS) finn.cpp -lX11 -L/usr/lib/ -lglfw3 -lXxf86vm -lXrandr -lXinerama -lXcursor -lXrender -lGL -o finn 

clean:
	rm -f finn 

