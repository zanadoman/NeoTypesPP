#include "NeoTypes.hpp"

namespace NeoTypes
{
    uint64 strLength(const char* Literal)
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

    string::string(const char* Literal)
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
            printf("string(): Memory allocation failed\nParams: Literal: %s\n", Literal);
            exit(1);
        }

        memCopyTo(Literal, this->Literal, this->Length);
    }

    string::string(const string* String)
    {
        if (String == NULL)
        {
            printf("string(): String must not be NULL\nParams: String: %p\n", String);
            exit(1);
        }

        this->Length = String->Length;
        this->Literal = (char*)malloc(sizeof(char*) * this->Length);
        if (this->Literal == NULL)
        {
            printf("string(): Memory allocation failed\nParams: String: %s\n", String->Literal);
            exit(1);
        }

        memCopyTo(String->Literal, this->Literal, this->Length);
    }

    string::~string()
    {
        free(this->Literal);
    }

    uint8 string::operator=(const char* Literal)
    {
        if (Literal == NULL)
        {
            printf("string=: Literal must not be NULL\nParams: Literal: %p\n", Literal);
            exit(1);
        }

        this->Length = strLength(Literal);
        this->Literal = (char*)realloc(this->Literal, sizeof(char*) * this->Length);
        if (this->Literal == NULL)
        {
            printf("string=: Memory allocation failed\nParams: Literal: %s\n", Literal);
            exit(1);
        }

        memCopyTo(Literal, this->Literal, this->Length);

        return 0;
    }

    uint8 string::operator=(const string* String)
    {
        if (String == NULL)
        {
            printf("string=: String must not be NULL\nParams: String: %p\n", String);
            exit(1);
        }

        this->Length = String->Length;
        this->Literal = (char*)realloc(this->Literal, sizeof(char*) * this->Length);
        if (this->Literal == NULL)
        {
            printf("string=: Memory allocation failed\nParams: String: %s\n", String->Literal);
            exit(1);
        }

        memCopyTo(String->Literal, this->Literal, this->Length);

        return 0;
    }

    uint8 string::operator+=(char Character)
    {
        this->Literal = (char*)realloc(this->Literal, sizeof(char*) * ++this->Length);
        if (this->Literal == NULL)
        {
            printf("string+=: Memory allocation failed\nParams: Character: %c\n", Character);
            exit(1);
        }

        this->Literal[this->Length - 2] = Character;
        this->Literal[this->Length - 1] = '\0';

        return 0;
    }

    uint8 string::operator+=(const char* Literal)
    {
        uint64 cache;

        cache = strLength(Literal);

        this->Length += cache - 1;
        this->Literal = (char*)realloc(this->Literal, sizeof(char*) * this->Length);
        if (this->Literal == NULL)
        {
            printf("string+=: Memory allocation failed\nParams: Literal: %s\n", Literal);
            exit(1);
        }

        memCopyTo(Literal, this->Literal + this->Length - cache, cache);

        return 0;
    }

    char* string::Get()
    {
        return this->Literal;
    }
}