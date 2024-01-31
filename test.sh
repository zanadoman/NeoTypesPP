#!/bin/sh

g++ -m64 -std=gnu++23 -O3 -Werror -Wall -Wextra -o test.out $(find . -name '*.cpp') -lm && time ./test.out