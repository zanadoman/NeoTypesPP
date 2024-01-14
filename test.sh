#!/bin/sh

g++ -o test.out $(find . -name '*.cpp') -m64 -std=gnu++17 -lm && time ./test.out