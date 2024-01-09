#ifndef NEOTYPESPP_HPP
#define NEOTYPESPP_HPP

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
            uint64 Length;

            array();
            array(uint64 Length);
            array(std::initializer_list<type> Elements);
            array(std::initializer_list<const array <type>*> Arrays);
            ~array();

            type* operator [] (uint64 Index);
            uint64 operator = (std::initializer_list<type> Elements);
            uint64 operator = (std::initializer_list<const array <type>*> Arrays);
            uint64 operator -= (std::initializer_list<type> Elements);
            uint64 operator -= (std::initializer_list<const array <type>*> Arrays);
            uint64 operator += (std::initializer_list<type> Elements);
            uint64 operator += (std::initializer_list<const array <type>*> Arrays);
            bool operator == (const array<type>* Array);
            bool operator != (const array<type>* Array);

            uint64 Resize(uint64 Length);
            uint64 Insert(uint64 Index, std::initializer_list<type> Elements);
            uint64 Insert(uint64 Index, std::initializer_list<const array <type>*> Arrays);
            uint64 Remove(uint64 Index);
            bool Contains(const type Value);
            uint64 Reverse();
            uint64 Clear();

        private:
            type* Elements;
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
        this->Length = 0;
        this->Elements = NULL;
    }

    template <typename type> array<type>::array(uint64 Length)
    {
        if ((this->Length = Length) == 0)
        {
            this->Elements = NULL;
        }
        else
        {
            if ((this->Elements = (type*)calloc(this->Length, sizeof(type))) == NULL)
            {
                printf("array(): Memory allocation failed\nParams: Length: %lld\n", Length);
                exit(1);
            }
        }
    }

    template <typename type> array<type>::array(std::initializer_list<type> Elements)
    {
        if ((this->Length = Elements.size()) == 0)
        {
            this->Elements = NULL;
        }
        else
        {
            if ((this->Elements = (type*)malloc(sizeof(type) * this->Length)) == NULL)
            {
                printf("array(): Memory allocation failed\nParams: Elements(size): %d\n", sizeof(type));
                exit(1);
            }

            memCopyTo(Elements.begin(), this->Elements, sizeof(type) * this->Length);
        }
    }

    template <typename type> array<type>::array(std::initializer_list<const array<type>*> Arrays)
    {
        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays[i] == NULL)
            {
                printf("array(): Array must not be NULL\nParams: Arrays(type): %d\n", sizeof(type));
                exit(1);
            }
        }

        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if ((this->Length = Arrays.begin()[i]->Length) == 0)
            {
                this->Elements = NULL;
            }
            else
            {
                if ((this->Elements = (type*)malloc(sizeof(type) * this->Length)) == NULL)
                {
                    printf("array(): Memory allocation failed\nParams: Arrays(type): %d\n", sizeof(type));
                    exit(1);
                }

                memCopyTo(Arrays.begin()[i]->Elements, this->Elements, sizeof(type) * this->Length);
            }
        }
    }

    template <typename type> array<type>::~array()
    {
        free(this->Elements);
    }

    template <typename type> type* array<type>::operator [] (uint64 Index)
    {
        if (this->Length <= Index)
        {
            printf("array[]: Index out of range\nParams: Index: %lld\n", Index);
            exit(1);
        }

        return &this->Elements[Index];
    }

    template <typename type> uint64 array<type>::operator = (std::initializer_list<type> Elements)
    {
        if ((this->Length = Elements.size()) == 0)
        {
            free(this->Elements);
            this->Elements = NULL;
        }
        else
        {
            if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * this->Length)) == NULL)
            {
                printf("array=: Memory allocation failed\nParams: Elements(type): %d\n", sizeof(type));
                exit(1);
            }

            memCopyTo(Elements.begin(), this->Elements, sizeof(type) * this->Length);
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::operator = (std::initializer_list<const array <type>*> Arrays)
    {
        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays[i] == NULL)
            {
                printf("array=: Array must not be NULL\nParams: Arrays(type): %d\n", sizeof(type));
                exit(1);
            }
        }

        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if ((this->Length = Arrays.begin()[i]->Length) == 0)
            {
                free(this->Elements);
                this->Elements = NULL;
            }
            else
            {
                if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * this->Length)) == NULL)
                {
                    printf("array=: Memory allocation failed\nParams: Arrays(type): %d\n", sizeof(type));
                    exit(1);
                }

                memCopyTo(Arrays.begin()[i]->Elements, this->Elements, sizeof(type) * this->Length);
            }
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::operator -= (std::initializer_list<type> Elements)
    {
        if (Elements.size() != 0)
        {
            if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * (this->Length += Elements.size()))) == NULL)
            {
                printf("array-=: Memory allocation failed\nParams: Elements(type): %d\n", sizeof(type));
                exit(1);
            }

            for (uint64 i = this->Length - 1; Elements.size() <= i; i--)
            {
                this->Elements[i] = this->Elements[i - Elements.size()];
            }

            memCopyTo(Elements.begin(), this->Elements, sizeof(type) * Elements.size());
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::operator -= (std::initializer_list<const array <type>*> Arrays)
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
                if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * (this->Length += Arrays.begin()[i]->Length))) == NULL)
                {
                    printf("array-=: Memory allocation failed\nParams: Arrays(type): %d\n", sizeof(type));
                    exit(1);
                }

                for (uint64 i = this->Length - 1; Arrays.begin()[i]->Length <= i; i--)
                {
                    this->Elements[i] = this->Elements[i - Arrays.begin()[i]->Length];
                }

                memCopyTo(Arrays.begin()[i]->Elements, &this->Elements[index], sizeof(type) * Arrays.begin()[i]->Length);
                index += Arrays.begin()[i]->Length;
            }
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::operator += (std::initializer_list<type> Elements)
    {
        if (Elements.size() != 0)
        {
            if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * (this->Length += Elements.size()))) == NULL)
            {
                printf("array+=: Memory allocation failed\nParams: Elements(type): %d\n", sizeof(type));
                exit(1);
            }

            memCopyTo(Elements.begin(), &this->Elements[this->Length - Elements.size()], sizeof(type) * Elements.size());
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::operator += (std::initializer_list<const array<type>*> Arrays)
    {
        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i] == NULL)
            {
                printf("array+=: Array must not be NULL\nParams: Arrays(type): %d\n", sizeof(type));
                exit(1);
            }
        }

        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i]->Length != 0)
            {
                if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * (this->Length += Arrays.begin()[i]->Length))) == NULL)
                {
                    printf("array+=: Memory allocation failed\nParams: Arrays(type): %d\n", sizeof(type));
                    exit(1);
                }

                memCopyTo(Arrays.begin()[i]->Elements, &this->Elements[this->Length - Arrays.begin()[i]->Length], sizeof(type) * Arrays.begin()[i]->Length);
            }
        }

        return this->Length;
    }

    template <typename type> bool array<type>::operator == (const array<type>* Array)
    {
        if (Array == NULL || this->Length != Array->Length)
        {
            return false;
        }

        return memCompare(this->Elements, Array->Elements, sizeof(type) * this->Length);
    }

    template <typename type> bool array<type>::operator != (const array<type>* Array)
    {
        return !(*this == Array);
    }

    template <typename type> uint64 array<type>::Resize(uint64 Length)
    {
        if (this->Length != Length)
        {
            if (Length == 0)
            {
                this->Length = 0;
                free(this->Elements);
                this->Elements = NULL;
            }
            else
            {
                if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * Length)) == NULL)
                {
                    printf("array.Resize(): Memory allocation failed\nParams: Length: %lld\n", Length);
                    exit(1);
                }

                if (this->Length < Length)
                {
                    for (uint64 i = Length - (Length - this->Length); i < Length; i++)
                    {
                        this->Elements[i] = 0;
                    }
                }
                this->Length = Length;
            }
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::Insert(uint64 Index, std::initializer_list<type> Elements)
    {
        if (this->Length < Index)
        {
            printf("array.Insert(): Index out of range\nParams: Index: %lld, Elements(type): %d\n", Index, sizeof(type));
            exit(1);
        }

        if (Elements.size() != 0)
        {
            if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * (this->Length += Elements.size()))) == NULL)
            {
                printf("array.Insert(): Memory allocation failed\nParams: Index: %lld, Elements(type): %d\n", Index, sizeof(type));
                exit(1);
            }

            for (uint64 i = this->Length - 1; Index + Elements.size() <= i; i--)
            {
                this->Elements[i] = this->Elements[i - Elements.size()];
            }

            memCopyTo(Elements.begin(), &this->Elements[Index], sizeof(type) * Elements.size());
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::Insert(uint64 Index, std::initializer_list<const array<type>*> Arrays)
    {
        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i] == NULL)
            {
                printf("array.Insert(): Array must not be NULL\nParams: Index: %lld, Arrays(type): %d\n", Index, sizeof(type));
                exit(1);
            }
        }
        if (this->Length < Index)
        {
            printf("array.Insert(): Index out of range\nParams: Index: %lld, Arrays(type): %d\n", Index, sizeof(type));
            exit(1);
        }

        for (uint64 i = 0; i < Arrays.size(); i++)
        {
            if (Arrays.begin()[i]->Length != 0)
            {
                if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * (this->Length += Arrays.begin()[i]->Length))) == NULL)
                {
                    printf("array.Insert(): Memory allocation failed\nParams: Index: %lld, Arrays(type): %d\n", Index, sizeof(type));
                    exit(1);
                }

                for (uint64 j = this->Length - 1; Index + Arrays.begin()[i]->Length <= j; j--)
                {
                    this->Elements[j] = this->Elements[j - Arrays.begin()[i]->Length];
                }

                memCopyTo(Arrays.begin()[i]->Elements, &this->Elements[Index], sizeof(type) * Arrays.begin()[i]->Length);
                Index += Arrays.begin()[i]->Length;
            }
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::Remove(uint64 Index)
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

            if ((this->Elements = (type*)realloc(this->Elements, sizeof(type) * this->Length)) == NULL)
            {
                printf("array.Remove(): Memory allocation failed\nParams: Index: %lld\n", Index);
                exit(1);
            }
        }

        return this->Length;
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

    template <typename type> uint64 array<type>::Reverse()
    {
        type tmp;

        for (uint64 i = 0; i < this->Length / 2; i++)
        {
            tmp = this->Elements[i];
            this->Elements[i] = this->Elements[this->Length - 1 - i];
            this->Elements[this->Length - 1 - i] = tmp;
        }

        return this->Length;
    }

    template <typename type> uint64 array<type>::Clear()
    {
        this->Length = 0;
        free(this->Elements);
        this->Elements = NULL;

        return this->Length;
    }
}

#endif