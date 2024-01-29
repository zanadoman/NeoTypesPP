#!/bin/sh

cp Source/*.hpp 'Linux (x86_64)'
g++ -Wall -Wextra -O3 -c Source/*.cpp -m64 -std=gnu++23
ar rcs 'Linux (x86_64)/libNeoTypes++.a' *.o
rm *.o

cp Source/*.hpp 'Windows (x86_64)'
x86_64-w64-mingw32-g++ -O3 -c Source/*.cpp -m64 -std=gnu++23
ar rcs 'Windows (x86_64)/libNeoTypes++.a' *.o
rm *.o