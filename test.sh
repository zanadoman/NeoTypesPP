#!/bin/sh

g++ -o test.out $(find . -name '*.cpp') -m64 -std=c++17 -lm && ./test.out