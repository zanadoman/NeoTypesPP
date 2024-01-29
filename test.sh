#!/bin/sh

g++ -Wall -Wextra -O3 -o test.out $(find . -name '*.cpp') -m64 -std=gnu++23 -lm && time ./test.out