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

namespace NeoTypes
{
    //____________________________________________NeoArray.c_____________________________________________//

    template <typename type> class array
    {
        public:
            uint64 Length;

            array();
            array(uint64 Length);
            array(const array<type>* Array);
            ~array();

            type& operator[](uint64 Index);
            array<type>* operator=(const array<type>* Array);
            type operator-=(const type Value);
            type operator+=(const type Value);
            array<type>* operator+=(const array<type>* Array);
            bool operator==(const array<type>* Array);
            bool operator!=(const array<type>* Array);

            uint8 Resize(uint64 Length);
            uint8 Insert(uint64 Index, const type Value);
            uint8 Remove(uint64 Index);
            bool Contains(const type Value);
            uint8 Reverse();
            uint8 Clear();

        private:
            type* Elements;
    };

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

            const char* operator()();
            char& operator[](uint64 Index);
            uint8 operator=(const char* Literal);
            uint8 operator=(const string* String);
            uint8 operator+=(char Character);
            uint8 operator+=(const char* Literal);
            string* operator+=(const string* String);
            bool operator==(const string* String);
            bool operator==(const char* Literal);
            bool operator!=(const string* String);
            bool operator!=(const char* Literal);

            uint8 Read();
            array<string*>* Split(char Separator);

        private:
            char* Literal;
            uint8 Clear();
    };

    //____________________________________________NeoMemory.c___________________________________________//

    bool memCompare(const void* Source1, const void* Source2, uint64 Size);
    void* memCopy(const void* Source, uint64 Size);
    uint8 memCopyTo(const void* Source, void* Destination, uint64 Size);
    void* memLoad(const char* FilePath, uint64 Size);
    uint8 memLoadTo(const char* FilePath, void* Destination, uint64 Size);
    uint8 memSave(const void* Source, uint64 Size, const char* FilePath);

    //____________________________________________NeoArray.c_____________________________________________//

    template <typename type> array<type>::array()
    {
        this->Length = 0;
        this->Elements = NULL;
    }

    template <typename type> array<type>::array(uint64 Length)
    {
        if (Length == 0)
        {
            this->Length = 0;
            this->Elements = NULL;
        }
        else
        {
            this->Length = Length;
            this->Elements = (type*)calloc(this->Length, sizeof(type));
            if (this->Elements == NULL)
            {
                printf("array(): Memory allocation failed\nParams: Length: %lld\n", Length);
                exit(1);
            }
        }
    }

    template <typename type> array<type>::array(const array<type>* Array)
    {
        if (Array == NULL)
        {
            printf("array(): Array must not be NULL\nParams: Array: %p\n", Array);
            exit(1);
        }

        if (Array->Length == 0)
        {
            this->Length = 0;
            this->Elements = NULL;
        }
        else
        {
            this->Length = Array->Length;
            this->Elements = (type*)malloc(sizeof(type) * this->Length);
            if (this->Elements == NULL)
            {
                printf("array(): Memory allocation failed\nParams: Array: %p\n", Array);
                exit(1);
            }

            memCopyTo(Array->Elements, this->Elements, sizeof(type) * this->Length);
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

    template <typename type> array<type>* array<type>::operator=(const array<type>* Array)
    {
        if (Array == NULL)
        {
            printf("array=: Array must not be NULL\nParams: Array: %p\n", Array);
            exit(1);
        }

        if (Array->Length == 0)
        {
            this->Length = 0;
            free(this->Elements);
            this->Elements = NULL;
        }
        else
        {
            this->Length = Array->Length;
            this->Elements = (type*)realloc(this->Elements, sizeof(type) * this->Length);
            if (this->Elements == NULL)
            {
                printf("array=: Memory allocation failed\nParams: Array: %p\n", Array);
                exit(1);
            }

            memCopyTo(Array->Elements, this->Elements, sizeof(type) * this->Length);
        }

        return (array<type>*)Array;
    }

    template <typename type> type array<type>::operator-=(const type Value)
    {
        this->Elements = (type*)realloc(this->Elements, sizeof(type) * ++this->Length);
        if (this->Elements == NULL)
        {
            printf("array-=: Memory allocation failed\nParams: Value(sizeof): %d\n", sizeof(type));
            exit(1);
        }

        for (uint64 i = this->Length - 1; 0 < i; i--)
        {
            this->Elements[i] = this->Elements[i - 1];
        }
        this->Elements[0] = Value;

        return (type)Value;
    }

    template <typename type> type array<type>::operator+=(const type Value)
    {
        this->Elements = (type*)realloc(this->Elements, sizeof(type) * ++this->Length);
        if (this->Elements == NULL)
        {
            printf("array+=: Memory allocation failed\nParams: Value(sizeof): %d\n", sizeof(type));
            exit(1);
        }
        this->Elements[this->Length - 1] = Value;

        return (type)Value;
    }

    template <typename type> array<type>* array<type>::operator+=(const array<type>* Array)
    {
        if (Array == NULL)
        {
            printf("array+=: Array must not be NULL\nParams: Array: %p\n", Array);
            exit(1);
        }

        this->Elements = (type*)realloc(this->Elements, sizeof(type) * (this->Length += Array->Length));
        if (this->Elements == NULL)
        {
            printf("array+=: Memory allocation failed\nParams: Array %p\n", Array);
            exit(1);
        }

        memCopyTo(Array->Elements, this->Elements + this->Length - Array->Length, sizeof(type) * Array->Length);

        return (array<type>*)Array;
    }

    template <typename type> bool array<type>::operator==(const array<type>* Array)
    {
        if (Array == NULL || this->Length != Array->Length)
        {
            return false;
        }

        return memCompare(this->Elements, Array->Elements, sizeof(type) * this->Length);
    }

    template <typename type> bool array<type>::operator!=(const array<type>* Array)
    {
        if (Array == NULL || this->Length != Array->Length)
        {
            return true;
        }

        return !memCompare(this->Elements, Array->Elements, sizeof(type) * this->Length);
    }

    template <typename type> uint8 array<type>::Resize(uint64 Length)
    {
        if (Length == 0)
        {
            this->Length = 0;
            free(this->Elements);
            this->Elements = NULL;
        }
        else
        {
            this->Length = Length;
            this->Elements = (type*)realloc(this->Elements, sizeof(type) * this->Length);
            if (this->Elements == NULL)
            {
                printf("array.Resize(): Memory allocation failed\nParams: Length: %lld\n", Length);
                exit(1);
            }
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