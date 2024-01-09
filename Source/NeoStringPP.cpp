#include "NeoTypesPP.hpp"
#include <initializer_list>

namespace neo
{
    string::string()
    {
        if ((this->literal = (char*)malloc(sizeof(char) * (this->length = 1))) == NULL)
        {
            printf("string(): Memory allocation failed\n");
            exit(1);
        }
        this->literal[0] = '\0';
    }

    string::string(std::initializer_list<char> Characters)
    {
        if (Characters.size() == 0)
        {
            if ((this->literal = (char*)malloc(sizeof(char) * (this->length = 1))) == NULL)
            {
                printf("string(): Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
                exit(1);
            }
            this->literal[0] = '\0';
        }
        else
        {
            if ((this->literal = (char*)malloc(sizeof(char) * (this->length = Characters.size() + 1))) == NULL)
            {
                printf("string(): Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
                exit(1);
            }

            memCopyTo(Characters.begin(), this->literal, Characters.size());
            this->literal[this->length - 1] = '\0';
        }
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

            this->length = 0;
            for (uint64 i = 0; i < Literals.size(); i++)
            {
                this->length += strLength(Literals.begin()[i]) - 1;
            }

            if ((this->literal = (char*)malloc(sizeof(char) * ++this->length)) == NULL)
            {
                printf("string(): Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Literals.size(); i++)
            {
                memCopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = strLength(Literals.begin()[i]) - 1));
                j += cache;
            }
            this->literal[this->length - 1] = '\0';
        }
    }

    string::string(std::initializer_list<string*> Strings)
    {
        if (Strings.size() == 0)
        {
            if ((this->literal = (char*)malloc(sizeof(char) * (this->length = 1))) == NULL)
            {
                printf("string(): Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
                exit(1);
            }
            this->literal[0] = '\0';
        }
        else
        {
            for (uint64 i = 0; i < Strings.size(); i++)
            {
                if (Strings.begin()[i] == NULL)
                {
                    printf("string(): Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }
                if (Strings.begin()[i] == this)
                {
                    printf("string(): Strings[%lld] must not be Self\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }
            }

            this->length = 0;
            for (uint64 i = 0; i < Strings.size(); i++)
            {
                this->length += Strings.begin()[i]->length - 1;
            }

            if ((this->literal = (char*)malloc(sizeof(char) * ++this->length)) == NULL)
            {
                printf("string(): Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Strings.size(); i++)
            {
                memCopyTo(Strings.begin()[i]->literal, &this->literal[j], sizeof(char) * (Strings.begin()[i]->length - 1));
                j += Strings.begin()[i]->length - 1;
            }
            this->literal[this->length - 1] = '\0';
        }
    }

    string::~string()
    {
        free(this->literal);
    }

    uint64 string::Length()
    {
        return this->length;
    }

    const char* string::operator () ()
    {
        return this->literal;
    }

    char* string::operator [] (uint64 Index)
    {
        if (this->length - 1 <= Index)
        {
            printf("string[]: Index out of range\nParams: Index: %lld\n", Index);
            exit(1);
        }

        return &this->literal[Index];
    }

    const char* string::operator = (std::initializer_list<char> Characters)
    {
        if (Characters.size() == 0)
        {
            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length = 1))) == NULL)
            {
                printf("string=: Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
                exit(1);
            }
            this->literal[0] = '\0';
        }
        else
        {
            if (this->length != Characters.size() && (this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length = Characters.size() + 1))) == NULL)
            {
                printf("string=: Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
                exit(1);
            }

            memCopyTo(Characters.begin(), this->literal, Characters.size());
            this->literal[this->length - 1] = '\0';
        }

        return this->literal;
    }

    const char* string::operator = (std::initializer_list<const char*> Literals)
    {
        uint64 lengthPrev, cache;

        if (Literals.size() == 0)
        {
            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length = 1))) == NULL)
            {
                printf("string=: Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
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
                    printf("string=: Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }
                if (Literals.begin()[i] == this->literal)
                {
                    printf("string=: Literals[%lld] must not be Self\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }
            }

            lengthPrev = this->length;
            this->length = 0;
            for (uint64 i = 0; i < Literals.size(); i++)
            {
                this->length += strLength(Literals.begin()[i]) - 1;
            }

            if ((this->length += 1) != lengthPrev && (this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("string=: Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Literals.size(); i++)
            {
                memCopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = strLength(Literals.begin()[i]) - 1));
                j += cache;
            }
            this->literal[this->length - 1] = '\0';
        }

        return this->literal;
    }

    const char* string::operator = (std::initializer_list<string*> Strings)
    {
        uint64 lengthPrev;

        if (Strings.size() == 0)
        {
            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length = 1))) == NULL)
            {
                printf("string=: Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
                exit(1);
            }
            this->literal[0] = '\0';
        }
        else
        {
            for (uint64 i = 0; i < Strings.size(); i++)
            {
                if (Strings.begin()[i] == NULL)
                {
                    printf("string=: Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }
                if (Strings.begin()[i] == this)
                {
                    printf("string=: Strings[%lld] must not be Self\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }
            }

            lengthPrev = this->length;
            this->length = 0;
            for (uint64 i = 0; i < Strings.size(); i++)
            {
                this->length += Strings.begin()[i]->length - 1;
            }

            if ((this->length += 1) != lengthPrev && (this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("string=: Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
                exit(1);
            }

            for (uint64 i = 0, j = 0; i < Strings.size(); i++)
            {
                memCopyTo(Strings.begin()[i]->literal, &this->literal[j], sizeof(char) * (Strings.begin()[i]->length - 1));
                j += Strings.begin()[i]->length - 1;
            }
            this->literal[this->length - 1] = '\0';
        }

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