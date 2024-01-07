#ifndef NEOARRAY_HPP
#define NEOARRAY_HPP

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

namespace NeoTypes
{
    template <typename type> class array
    {
        public:
            uint64 Length;

            array();
            array(uint64 Length);
            ~array();

            type& operator[](uint64 Index);

            uint8 Resize(uint64 Length);
            uint8 Insert(uint64 Index, const type Value);
            uint8 Remove(uint64 Index);
            bool Contains(const type Value);
            uint8 Reverse();
            uint8 Clear();

        private:
            type* Elements;
    };

    template <typename type> array<type>::array()
    {
        this->Elements = NULL;
        this->Length = 0;
    }

    template <typename type> array<type>::array(uint64 Length)
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

    template <typename type> array<type>::~array()
    {
        free(this->Elements);
    }

    template <typename type> type& array<type>::operator[](uint64 Index)
    {
        if (this->Length <= Index)
        {
            printf("array[]: Index out of range\nParams: Index: %lld\n", Index);
            exit(1);
        }

        return this->Elements[Index];
    }

    template <typename type> uint8 array<type>::Resize(uint64 Length)
    {
        if (Length == 0)
        {
            free(this->Elements);
            this->Elements = NULL;
            this->Length = 0;
        }
        else
        {
            this->Elements = (type*)realloc(this->Elements, sizeof(type) * Length);
            if (this->Elements == NULL)
            {
                printf("array.Resize(): Memory allocation failed\nParams: Length: %lld\n", Length);
                exit(1);
            }
            this->Length = Length;
        }

        return 0;
    }

    template <typename type> uint8 array<type>::Insert(uint64 Index, const type Value)
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

    template <typename type> uint8 array<type>::Remove(uint64 Index)
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

    template <typename type> bool array<type>::Contains(const type Value)
    {
        for (uint64 i = 0; i < this->Length; i++)
        {
            if (this->Elements[i] == Value)
            {
                return true;
            }
        }

        return false;
    }

    template <typename type> uint8 array<type>::Reverse()
    {
        type tmp;

        for (uint64 i = 0; i < this->Length / 2; i++)
        {
            tmp = this->Elements[i];
            this->Elements[i] = this->Elements[this->Length - 1 - i];
            this->Elements[this->Length - 1 - i] = tmp;
        }

        return 0;
    }

    template <typename type> uint8 array<type>::Clear()
    {
        free(this->Elements);
        this->Elements = NULL;
        this->Length = 0;

        return 0;
    }
}

#endif