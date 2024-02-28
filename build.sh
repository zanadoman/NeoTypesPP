#!/bin/bash

g++ -m64 -std=gnu++23 -O3 -c -fPIC src/*.cpp
g++ -shared -o "build/lib/linux/libNeoTypes++.so" ./*.o
rm ./*.o

x86_64-w64-mingw32-g++ -m64 -std=gnu++23 -O3 -c src/*.cpp
x86_64-w64-mingw32-g++ -shared -o "build/lib/windows/libNeoTypes++.dll" ./*.o
rm ./*.o

cp src/*.hpp build/inc