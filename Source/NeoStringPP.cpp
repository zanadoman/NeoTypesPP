#include "NeoTypesPP.hpp"
#include <initializer_list>

namespace neo
{
    string::string()
    {
        if ((this->literal = (char*)malloc(sizeof(char) * (this->length = 1))) == NULL)
        {
            printf("string(): Memory allocation failed\nParams: Length: %lld\n", this->length);
            exit(1);
        }
        this->literal[0] = '\0';
    }

    string::string(std::initializer_list<const char*> Literals)
    {
        uint64 cache;

        if (Literals.size() == 0)
        {
            if ((this->literal = (char*)malloc(sizeof(char) * (this->length = 1))) == NULL)
            {
                printf("string(): Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
                exit(1);
            }
            this->literal[0] = '\0';
        }
        else
        {
            for (uint64 i = 0; i < Literals.size(); i++)
            {
                if (Literals.begin()[i] == NULL)
                {
                    printf("string(): Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }
                if (Literals.begin()[i] == this->literal)
                {
                    printf("string(): Literals[%lld] must not be Self\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }
            }

            this->length = 1;
            for (uint64 i = 0; i < Literals.size(); i++)
            {
                this->length += strLength(Literals.begin()[i]) - 1;
            }

            if ((this->literal = (char*)malloc(sizeof(char) * this->length)) == NULL)
            {
                printf("string(): Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Literals.size(); i++)
            {
                memCopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = strLength(Literals.begin()[i]) - 1));
                j += cache;
            }
        }
    }

    string::~string()
    {
        free(this->literal);
    }

    const char* string::operator () ()
    {
        return this->literal;
    }

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
}