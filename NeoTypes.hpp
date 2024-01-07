#ifndef NEOTYPES_HPP
#define NEOTYPES_HPP

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <math.h>

typedef unsigned char uint8;
typedef signed char sint8;
typedef unsigned short uint16;
typedef signed short sint16;
typedef unsigned int uint32;
typedef signed int sint32;
typedef unsigned long long uint64;
typedef signed long long sint64;

#include "NeoArray.hpp"

namespace NeoTypes
{

    uint64 strLength(char* Literal);
    class string
    {
        public:
            uint64 Length;

            string();
            string(char* Literal);
            ~string();
            char* Get();

        private:
            char* Literal;
    };

    void* memCopy(void* Source, uint64 Size);
    uint8 memCopyTo(void* Source, void* Destination, uint64 Size);
    void* memLoad(char* FilePath, uint64 Size);
    uint8 memLoadTo(char* FilePath, void* Destination, uint64 Size);
    uint8 memSave(void* Source, uint64 Size, char* FilePath);
}

#endif