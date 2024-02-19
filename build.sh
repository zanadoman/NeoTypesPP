#!/bin/bash

g++ -m64 -std=gnu++23 -O3 -c src/*.cpp
ar rcs "build/lib/linux/libNeoTypes++.a" ./*.o
rm ./*.o

x86_64-w64-mingw32-g++ -m64 -std=gnu++23 -O3 -c src/*.cpp
ar rcs "build/lib/windows/libNeoTypes++.a" ./*.o
rm ./*.o

cp src/*.hpp build/inc
