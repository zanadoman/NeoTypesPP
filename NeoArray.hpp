#ifndef NEOARRAY_HPP
#define NEOARRAY_HPP

#include "NeoCommon.hpp"
#include <cstdarg>
#include <cstdlib>

namespace NeoTypes
{
    template <typename type> class array
    {
        public:
            uint64 Length;

            array(uint64 Length)
            {
                if (Length == 0)
                {
                    this->Elements = NULL;
                    this->Length = 0;
                }
                else
                {
                    this->Elements = (type*)calloc(Length, sizeof(type));
                    if (this->Elements == NULL)
                    {
                        printf("array(): Memory allocation failed\nParams: Length: %lld\n", Length);
                        exit(1);
                    }
                    this->Length = Length;
                }
            }

            ~array()
            {
                free(this->Elements);
            }

            type& operator[](uint64 Index)
            {
                if (this->Length <= Index)
                {
                    printf("array[]: Index out of range\nParams: Index: %lld\n", Index);
                    exit(1);
                }

                return this->Elements[Index];
            }

            uint8 Init(uint64 Length, type Values, ...)
            {
                va_list args;

                if (Length == 0)
                {
                    printf("array.Init(): Length must not be 0\nParams: Length: %lld, Values(sizeof): %d\n", Length, sizeof(type));
                    exit(1);
                }

                this->Elements = (type*)realloc(this->Elements, sizeof(type) * Length);
                if (this->Elements == NULL)
                {
                    printf("array.Init(): Memory allocation failed\nParams: Length: %lld\n", Length);
                    exit(1);
                }
                this->Length = Length;

                va_start(args, Values);
                this->Elements[0] = Values;
                for (uint64 i = 1; i < Length; i++)
                {
                    this->Elements[i] = va_arg(args, type);
                }
                va_end(args);

                return 0;
            }

            uint8 Resize(uint64 Length)
            {
                this->Elements = (type*)realloc(this->Elements, sizeof(type) * Length);
                if (this->Elements == NULL)
                {
                    printf("array.Resize(): Memory allocation failed\nParams: Length: %lld\n", Length);
                    exit(1);
                }
                this->Length = Length;

                return 0;
            }

            uint8 Insert(uint64 Index, type Value)
            {
                if (this->Length < Index)
                {
                    printf("array.Insert(): Index out of range\nParams: Index: %lld, Value(sizeof): %d\n", Index, sizeof(type));
                    exit(1);
                }

                this->Elements = (type*)realloc(this->Elements, sizeof(type) * ++this->Length);
                if (this->Elements == NULL)
                {
                    printf("array.Insert(): Memory allocation failed\nParams: Index: %lld, Value(sizeof): %d\n", Index, sizeof(type));
                    exit(1);
                }

                for (uint64 i = this->Length - 1; Index < i; i--)
                {
                    this->Elements[i] = this->Elements[i - 1];
                }
                this->Elements[Index] = Value;

                return 0;
            }

            uint8 Remove(uint64 Index)
            {
                if (this->Length <= Index)
                {
                    printf("array.Remove(): Index out of range\nParams: Index: %lld\n", Index);
                    exit(1);
                }
                if (this->Length == 0)
                {
                    printf("array.Remove(): Array must not be empty\nParams: Index: %lld\n", Index);
                    exit(1);
                }

                if (--this->Length == 0)
                {
                    free(this->Elements);
                    this->Elements = NULL;
                }
                else 
                {
                    for (uint64 i = Index; i < this->Length; i++)
                    {
                        this->Elements[i] = this->Elements[i + 1];
                    }

                    this->Elements = (type*)realloc(this->Elements, sizeof(type) * this->Length);
                    if (this->Elements == NULL)
                    {
                        printf("array.Remove(): Memory allocation failed\nParams: Index: %lld\n", Index);
                        exit(1);
                    }
                }

                return 0;
            }

            uint8 Clear()
            {
                free(this->Elements);
                this->Elements = NULL;
                this->Length = 0;

                return 0;
            }

        private:
            type* Elements;
    };
}

#endif