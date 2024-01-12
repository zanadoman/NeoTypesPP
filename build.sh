#!/bin/sh

cp Source/*.hpp 'Linux (x86_64)'
gcc -c Source/*.cpp -m64 -std=gnu++17
ar rcs 'Linux (x86_64)/libNeoTypes++.a' *.o
rm *.o

cp Source/*.hpp 'Windows (x86_64)'
x86_64-w64-mingw32-gcc -c Source/*.cpp -m64 -std=gnu++17
ar rcs 'Windows (x86_64)/libNeoTypes++.a' *.o
rm *.o