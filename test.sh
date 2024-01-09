#!/bin/sh

g++ -o test.out $(find . -name '*.cpp') -m64 -lm && ./test.out