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
    //____________________________________________NeoString.c____________________________________________//

    uint64 strLength(const char* Literal);
    class string
    {
        public:
            uint64 Length;

            string();
            string(const char* Literal);
            string(const string* String);
            ~string();

            uint8 operator=(const char* Literal);
            uint8 operator=(const string* String);

            uint8 operator+=(char Character);
            uint8 operator+=(const char* Literal);
            string* operator+=(const string* String);

            bool operator==(const string* String);
            bool operator==(const char* Literal);
            bool operator!=(const string* String);
            bool operator!=(const char* Literal);

            char* Get();

        private:
            char* Literal;
    };

    //____________________________________________NeoMemory.c___________________________________________

    bool memCompare(const void* Source1, const void* Source2, uint64 Size);
    void* memCopy(const void* Source, uint64 Size);
    uint8 memCopyTo(const void* Source, void* Destination, uint64 Size);
    void* memLoad(const char* FilePath, uint64 Size);
    uint8 memLoadTo(const char* FilePath, void* Destination, uint64 Size);
    uint8 memSave(const void* Source, uint64 Size, const char* FilePath);
}

#endif