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

    uint8 string::operator=(char* Literal)
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

        return 0;
    }

    uint8 string::operator=(string* String)
    {
        if (String == NULL)
        {
            printf("string(): String must not be NULL\nParams: String: %p\n", String);
            exit(1);
        }

        this->Length = String->Length;
        this->Literal = (char*)realloc(this->Literal, sizeof(char*) * this->Length);
        if (this->Literal == NULL)
        {
            printf("string(): Memory allocation failed\nParams: String: %p\n", String);
            exit(1);
        }

        memCopyTo(String->Literal, this->Literal, this->Length);

        return 0;
    }

    bool string::operator==(string* String)
    {
        if (String == NULL)
        {
            return false;
        }

        if (this->Length != String->Length)
        {
            return false;
        }

        return memCompare(this->Literal, String->Literal, this->Length);
    }

    bool string::operator==(char* Literal)
    {
        if (Literal == NULL)
        {
            return false;
        }

        if (this->Length != strLength(Literal))
        {
            return false;
        }

        return memCompare(this->Literal, Literal, this->Length);
    }

    bool string::operator!=(char* Literal)
    {
        if (Literal == NULL)
        {
            return true;
        }

        if (this->Length != strLength(Literal))
        {
            return true;
        }

        return !memCompare(this->Literal, Literal, this->Length);
    }

    bool string::operator!=(string* String)
    {
        if (String == NULL)
        {
            return true;
        }

        if (this->Length != String->Length)
        {
            return true;
        }

        return !memCompare(this->Literal, String->Literal, this->Length);
    }

    char* string::Get()
    {
        return this->Literal;
    }
}