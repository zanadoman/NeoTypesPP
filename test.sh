#!/bin/sh

g++ -o test.out $(find . -name '*.cpp') -lm && ./test.out