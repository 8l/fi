PREFIX?=/usr/X11R6
CFLAGS?=-Os -pedantic -Wall -std=c++11

all:
	clang++ $(CFLAGS) -I$(PREFIX)/include finn.c -L$(PREFIX)/lib -lX11 -L/usr/lib/ -lglfw3 -lXxf86vm -lXrandr -lXinerama -lXcursor -lXrender -lGL -o finn 

clean:
	rm -f finn 

