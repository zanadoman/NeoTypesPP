#!/bin/sh

cp Source/*.hpp 'Linux (x86_64)'
g++ -m64 -std=gnu++23 -O3 -Werror -Wall -Wextra -c Source/*.cpp
ar rcs 'Linux (x86_64)/libNeoTypes++.a' *.o
rm *.o

cp Source/*.hpp 'Windows (x86_64)'
x86_64-w64-mingw32-g++ -m64 -std=gnu++23 -O3 -c Source/*.cpp
ar rcs 'Windows (x86_64)/libNeoTypes++.a' *.o
rm *.o