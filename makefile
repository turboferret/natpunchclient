CC = g++
CXX = g++
CXXFLAGS = -g -Wall
LDFLAGS = -g
LDLIBS =

SDIR=src
ODIR=obj

OBJS=main.o

default: natpunchclient

main.o: src/main.cpp
	$(CC) -c src/main.cpp

natpunchclient: main.o
	$(CC) main.o -o natpunchclient

clean:
	rm -f obj/*.o
