#include "NeoTypes.hpp"

namespace NeoTypes
{
    uint64 strLength(char* Literal)
    {
        uint64 result;

        if (Literal == NULL)
        {
            printf("strLength(): Literal must not be NULL\nParams: Literal: %p\n", Literal);
            exit(1);
        }

        result = 0;
        while (Literal[result++] != '\0');

        return result;
    }

    string::string()
    {
        this->Literal = (char*)malloc(sizeof(char*));
        if (this->Literal == NULL)
        {
            printf("string(): Memory allocation failed\n");
            exit(1);
        }

        this->Literal[0] = '\0';
        this->Length = 1;
    }

    string::string(char* Literal)
    {
        if (Literal == NULL)
        {
            printf("string(): Literal must not be NULL\nParams: Literal: %p\n", Literal);
            exit(1);
        }

        this->Length = strLength(Literal);
        this->Literal = (char*)malloc(sizeof(char*) * this->Length);
        if (this->Literal == NULL)
        {
            printf("string(): Memory allocation failed\nParams: Literal: %p\n", Literal);
            exit(1);
        }

        memCopyTo(Literal, this->Literal, this->Length);
    }

    string::~string()
    {
        free(this->Literal);
    }

    char* string::Get()
    {
        return this->Literal;
    }

    void string::operator=(char* Literal)
    {
        if (Literal == NULL)
        {
            printf("string(): Literal must not be NULL\nParams: Literal: %p\n", Literal);
            exit(1);
        }

        this->Length = strLength(Literal);
        this->Literal = (char*)realloc(this->Literal, sizeof(char*) * this->Length);
        if (this->Literal == NULL)
        {
            printf("string(): Memory allocation failed\nParams: Literal: %p\n", Literal);
            exit(1);
        }

        memCopyTo(Literal, this->Literal, this->Length);
    }

    bool string::operator==(string String)
    {
        if (this->Length != String.Length)
        {
            return false;
        }

        
    }
}