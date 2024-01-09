#pragma once

#include <cstddef>
#include <stdio.h>
#include <stdlib.h>
#include <initializer_list>
#include <math.h>

namespace neo
{
    //_____________________________________________NeoTypes.hpp____________________________________________//

    typedef unsigned char uint8;
    typedef signed char sint8;
    typedef unsigned short uint16;
    typedef signed short sint16;
    typedef unsigned int uint32;
    typedef signed int sint32;
    typedef unsigned long long uint64;
    typedef signed long long sint64;

    //_____________________________________________NeoArray.hpp____________________________________________//

    template <typename type> class array
    {
        public:
            array();
            array(uint64 Length);
            array(std::initializer_list<type> Elements);
            array(std::initializer_list<array<type>*> Arrays);
            ~array();

            uint64 Length();
            type* operator [] (uint64 Index);

            uint64 operator = (std::initializer_list<type> Elements);
            uint64 operator = (std::initializer_list<array<type>*> Arrays);
            uint64 operator -= (std::initializer_list<type> Elements);
            uint64 operator -= (std::initializer_list<array<type>*> Arrays);
            uint64 operator += (std::initializer_list<type> Elements);
            uint64 operator += (std::initializer_list<array<type>*> Arrays);
            bool operator == (array<type>* Array);
            bool operator != (array<type>* Array);

            uint64 Resize(uint64 Length);
            uint64 Insert(uint64 Index, std::initializer_list<type> Elements);
            uint64 Insert(uint64 Index, std::initializer_list<array <type>*> Arrays);
            uint64 Remove(uint64 Index);
            bool Contains(std::initializer_list<type> Elements);
            bool Contains(std::initializer_list<array <type>*> Arrays);
            uint64 Reverse();
            uint64 Clear();

        private:
            uint64 length;
            type* elements;
    };

    //____________________________________________NeoString.hpp____________________________________________//

    class string
    {
        public:
            uint64 Length;

            string();
            string(const char* Literal);
            string(const string* String);
            ~string();

            const char* operator () ();
            char& operator [] (uint64 Index);
            const char* operator = (const char* Literal);
            const char* operator = (const string* String);
            const char* operator = (uint64 Number);
            const char* operator = (sint64 Number);
            const char* operator = (double Number);
            const char* operator += (char Character);
            const char* operator += (const char* Literal);
            const char* operator += (const string* String);
            const char* operator += (uint64 Number);
            const char* operator += (sint64 Number);
            const char* operator += (double Number);
            bool operator == (const char* Literal);
            bool operator == (const string* String);
            bool operator != (const char* Literal);
            bool operator != (const string* String);

            const char* Read();
            array<string*>* Split(char Separator);
            uint64 ToUINT();
            sint64 ToSINT();
            double ToDOUBLE();

        private:
            char* Literal;
            uint8 Clear();
    };
    uint64 strLength(const char* Literal);

    //____________________________________________NeoMemory.hpp____________________________________________//

    bool memCompare(const void* Source1, const void* Source2, uint64 Size);
    void* memCopy(const void* Source, uint64 Size);
    uint8 memCopyTo(const void* Source, void* Destination, uint64 Size);
    void* memLoad(const char* FilePath, uint64 Size);
    uint8 memLoadTo(const char* FilePath, void* Destination, uint64 Size);
    uint8 memSave(const void* Source, uint64 Size, const char* FilePath);

    //_____________________________________________NeoArray.cpp____________________________________________//

    template <typename type> array<type>::array()
    {
        this->length = 0;
        this->elements = NULL;
    }

    template <typename type> array<type>::array(uint64 Length)
    {
        if ((this->length = Length) == 0)
        {
            this->elements = NULL;
        }
        else
        {
            if ((this->elements = (type*)calloc(this->length, sizeof(type))) == NULL)
            {
                printf("array(): Memory allocation failed\nParams: Length: %lld\n", Length);
                exit(1);
            }
        }
    }

    template <typename type> array<type>::array(std::initializer_list<type> Elements)
    {
        if ((this->length = Elements.size()) == 0)
        {
            this->elements = NULL;
        }
        else
        {
            if ((this->elements = (type*)malloc(sizeof(type) * this->length)) == NULL)
            {
                printf("array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n", sizeof(type), Elements.size());
                exit(1);
            }

            memCopyTo(Elements.begin(), this->elements, sizeof(type) * this->length);
        }
    }

    template <typename type> array<type>::array(std::initializer_list<array<type>*> Arrays)
    {
        if (Arrays.size() == 0)
        {
            this->length = 0;
            this->elements = NULL;
        }
        else
        {
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("array(): Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("array(): Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
            }

            this->length = 0;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                this->length += Arrays.begin()[i]->length;
            }

            if ((this->elements = (type*)malloc(sizeof(type) * this->length)) == NULL)
            {
                printf("array(): Memory allocation failed\nParams: Arrays(type, length): %ld, %ld\n", sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Arrays.size(); i++)
            {
                memCopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }
    }

    template <typename type> array<type>::~array()
    {
        free(this->elements);
    }

    template <typename type> uint64 array<type>::Length()
    {
        return this->length;
    }

    template <typename type> type* array<type>::operator [] (uint64 Index)
    {
        if (this->length <= Index)
        {
            printf("array[]: Index out of range\nParams: Index: %lld\n", Index);
            exit(1);
        }

        return &this->elements[Index];
    }

    template <typename type> uint64 array<type>::operator = (std::initializer_list<type> Elements)
    {
        if ((this->length = Elements.size()) == 0)
        {
            free(this->elements);
            this->elements = NULL;
        }
        else
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("array=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n", sizeof(type), Elements.size());
                exit(1);
            }

            memCopyTo(Elements.begin(), this->elements, sizeof(type) * this->length);
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::operator = (std::initializer_list<array<type>*> Arrays)
    {
        if (Arrays.size() == 0)
        {
            this->length = 0;
            free(this->elements);
            this->elements = NULL;
        }
        else 
        {
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("array=: Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("array=: Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
            }

            this->length = 0;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                this->length += Arrays.begin()[i]->length;
            }

            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("array=: Memory allocation failed\nParams: Arrays(type, length): %ld %ld\n", sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Arrays.size(); i++)
            {
                memCopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::operator -= (std::initializer_list<type> Elements)
    {
        if (Elements.size() != 0)
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Elements.size()))) == NULL)
            {
                printf("array-=: Memory allocation failed\nParams: Elements(type): %d\n", sizeof(type));
                exit(1);
            }

            for (uint64 i = this->length - 1; Elements.size() <= i; i--)
            {
                this->elements[i] = this->elements[i - Elements.size()];
            }

            memCopyTo(Elements.begin(), this->elements, sizeof(type) * Elements.size());
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::operator -= (std::initializer_list<array<type>*> Arrays)
    {
        uint64 index;

        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i] == NULL)
            {
                printf("array-=: Array must not be NULL\nParams: Arrays(type): %d\n", sizeof(type));
                exit(1);
            }
        }

        index = 0;
        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i]->Length != 0)
            {
                if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Arrays.begin()[i]->Length))) == NULL)
                {
                    printf("array-=: Memory allocation failed\nParams: Arrays(type): %d\n", sizeof(type));
                    exit(1);
                }

                for (uint64 j = this->length - 1; Arrays.begin()[i]->Length <= j; j--)
                {
                    this->elements[j] = this->elements[j - Arrays.begin()[i]->Length];
                }

                memCopyTo(Arrays.begin()[i]->Elements, &this->elements[index], sizeof(type) * Arrays.begin()[i]->Length);
                index += Arrays.begin()[i]->Length;
            }
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::operator += (std::initializer_list<type> Elements)
    {
        if (Elements.size() != 0)
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Elements.size()))) == NULL)
            {
                printf("array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n", sizeof(type), Elements.size());
                exit(1);
            }

            memCopyTo(Elements.begin(), &this->elements[this->length - Elements.size()], sizeof(type) * Elements.size());
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::operator += (std::initializer_list<array<type>*> Arrays)
    {
        uint64 lengthPrev;

        if (Arrays.size() != 0)
        {
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                if (Arrays.begin()[i] == NULL)
                {
                    printf("array+=: Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
                if (Arrays.begin()[i] == this)
                {
                    printf("array+=: Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                    exit(1);
                }
            }

            lengthPrev = this->length;
            for (uint64 i = 0; i < Arrays.size(); i++)
            {
                this->length += Arrays.begin()[i]->length;
            }

            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("array+=: Memory allocation failed\nParams: Arrays(type, length): %ld, %ld\n", sizeof(type), Arrays.size());
                exit(1);
            }

            for (uint64 i = 0, j = lengthPrev; i < Arrays.size(); i++)
            {
                memCopyTo(Arrays.begin()[i]->elements, &this->elements[j], sizeof(type) * Arrays.begin()[i]->length);
                j += Arrays.begin()[i]->length;
            }
        }

        return this->length;
    }

    template <typename type> bool array<type>::operator == (array<type>* Array)
    {
        if (Array == NULL || this->length != Array->Length)
        {
            return false;
        }

        return memCompare(this->elements, Array->Elements, sizeof(type) * this->length);
    }

    template <typename type> bool array<type>::operator != (array<type>* Array)
    {
        return !(*this == Array);
    }

    template <typename type> uint64 array<type>::Resize(uint64 Length)
    {
        if (this->length != Length)
        {
            if (Length == 0)
            {
                this->length = 0;
                free(this->elements);
                this->elements = NULL;
            }
            else
            {
                if ((this->elements = (type*)realloc(this->elements, sizeof(type) * Length)) == NULL)
                {
                    printf("array.Resize(): Memory allocation failed\nParams: Length: %lld\n", Length);
                    exit(1);
                }

                if (this->length < Length)
                {
                    for (uint64 i = Length - (Length - this->length); i < Length; i++)
                    {
                        this->elements[i] = 0;
                    }
                }
                this->length = Length;
            }
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::Insert(uint64 Index, std::initializer_list<type> Elements)
    {
        if (this->length < Index)
        {
            printf("array.Insert(): Index out of range\nParams: Index: %lld, Elements(type): %d\n", Index, sizeof(type));
            exit(1);
        }

        if (Elements.size() != 0)
        {
            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Elements.size()))) == NULL)
            {
                printf("array.Insert(): Memory allocation failed\nParams: Index: %lld, Elements(type): %d\n", Index, sizeof(type));
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + Elements.size() <= i; i--)
            {
                this->elements[i] = this->elements[i - Elements.size()];
            }

            memCopyTo(Elements.begin(), &this->elements[Index], sizeof(type) * Elements.size());
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::Insert(uint64 Index, std::initializer_list<array<type>*> Arrays)
    {
        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i] == NULL)
            {
                printf("array.Insert(): Array must not be NULL\nParams: Index: %lld, Arrays(type): %d\n", Index, sizeof(type));
                exit(1);
            }
        }
        if (this->length < Index)
        {
            printf("array.Insert(): Index out of range\nParams: Index: %lld, Arrays(type): %d\n", Index, sizeof(type));
            exit(1);
        }

        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i]->Length != 0)
            {
                if ((this->elements = (type*)realloc(this->elements, sizeof(type) * (this->length += Arrays.begin()[i]->Length))) == NULL)
                {
                    printf("array.Insert(): Memory allocation failed\nParams: Index: %lld, Arrays(type): %d\n", Index, sizeof(type));
                    exit(1);
                }

                for (uint64 j = this->length - 1; Index + Arrays.begin()[i]->Length <= j; j--)
                {
                    this->elements[j] = this->elements[j - Arrays.begin()[i]->Length];
                }

                memCopyTo(Arrays.begin()[i]->Elements, &this->elements[Index], sizeof(type) * Arrays.begin()[i]->Length);
                Index += Arrays.begin()[i]->Length;
            }
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::Remove(uint64 Index)
    {
        if (this->length <= Index)
        {
            printf("array.Remove(): Index out of range\nParams: Index: %lld\n", Index);
            exit(1);
        }
        if (this->length == 0)
        {
            printf("array.Remove(): Array must not be empty\nParams: Index: %lld\n", Index);
            exit(1);
        }

        if (--this->length == 0)
        {
            free(this->elements);
            this->elements = NULL;
        }
        else
        {
            for (uint64 i = Index; i < this->length; i++)
            {
                this->elements[i] = this->elements[i + 1];
            }

            if ((this->elements = (type*)realloc(this->elements, sizeof(type) * this->length)) == NULL)
            {
                printf("array.Remove(): Memory allocation failed\nParams: Index: %lld\n", Index);
                exit(1);
            }
        }

        return this->length;
    }

    template <typename type> bool array<type>::Contains(std::initializer_list<type> Elements)
    {
        if (this->length == 0 || Elements.size() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < this->length; i++)
        {
            for (uint64 j = 0; j < Elements.size(); j++)
            {
                if (this->elements[i] == Elements.begin()[j])
                {
                    return true;
                }
            }
        }

        return false;
    }

    template <typename type> bool array<type>::Contains(std::initializer_list<array<type>*> Arrays)
    {
        if (this->length == 0 || Arrays.size() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i] == NULL)
            {
                printf("array.Contains(): Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                exit(1);
            }
            if (Arrays.begin()[i] == this)
            {
                printf("array.Contains(): Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n", i, sizeof(type), Arrays.size());
                exit(1);
            }
        }

        for (uint64 i = 0; i < this->length; i++)
        {
            for (uint64 j = 0; j < Arrays.size(); j++)
            {
                for (uint64 k = 0; k < Arrays.begin()[j]->length; k++)
                {
                    if (this->elements[i] == Arrays.begin()[j]->elements[k])
                    {
                        return true;
                    }
                }
            }
        }

        return false;
    }

    template <typename type> uint64 array<type>::Reverse()
    {
        type tmp;

        for (uint64 i = 0; i < this->length >> 2; i++)
        {
            tmp = this->elements[i];
            this->elements[i] = this->elements[this->length - 1 - i];
            this->elements[this->length - 1 - i] = tmp;
        }

        return this->length;
    }

    template <typename type> uint64 array<type>::Clear()
    {
        this->length = 0;
        free(this->elements);
        this->elements = NULL;

        return this->length;
    }
}