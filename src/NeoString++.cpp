#include "NeoTypes++.hpp"
#include <cmath>

namespace neo
{
    string::string()
    {
        if ((this->literal = (char*)malloc(sizeof(char) * (this->length = 1))) == NULL)
        {
            printf("neo::string(): Memory allocation failed\n");
            exit(1);
        }

        this->literal[0] = '\0';
    }

    string::string(std::initializer_list<char> Characters)
    {
        if ((this->literal = (char*)malloc(sizeof(char) * (this->length = Characters.size() + 1))) == NULL)
        {
            printf("neo::string(): Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
            exit(1);
        }

        memory::CopyTo(Characters.begin(), this->literal, sizeof(char) * Characters.size());
        this->literal[this->length - 1] = '\0';
    }

    string::string(std::initializer_list<const char*> Literals)
    {
        uint64 cache;

        this->length = 0;
        for (uint64 i = 0; i < Literals.size(); i++)
        {
            if (Literals.begin()[i] == NULL)
            {
                printf("neo::string(): Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                exit(1);
            }
            if (Literals.begin()[i] == this->literal)
            {
                printf("neo::string(): Literals[%lld] must not be Self\nParams: Literals(length): %ld\n", i, Literals.size());
                exit(1);
            }

            this->length += string::LiteralLength(Literals.begin()[i]) - 1;
        }

        if ((this->literal = (char*)malloc(sizeof(char) * ++this->length)) == NULL)
        {
            printf("neo::string(): Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < Literals.size(); i++)
        {
            memory::CopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = string::LiteralLength(Literals.begin()[i]) - 1));
            j += cache;
        }
        this->literal[this->length - 1] = '\0';
    }

    string::string(std::initializer_list<string*> Strings)
    {
        this->length = 0;
        for (uint64 i = 0; i < Strings.size(); i++)
        {
            if (Strings.begin()[i] == NULL)
            {
                printf("neo::string(): Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                exit(1);
            }
            if (Strings.begin()[i] == this)
            {
                printf("neo::string(): Strings[%lld] must not be Self\nParams: Strings(length): %ld\n", i, Strings.size());
                exit(1);
            }

            this->length += Strings.begin()[i]->length - 1;
        }

        if ((this->literal = (char*)malloc(sizeof(char) * ++this->length)) == NULL)
        {
            printf("neo::string(): Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < Strings.size(); i++)
        {
            memory::CopyTo(Strings.begin()[i]->literal, &this->literal[j], sizeof(char) * (Strings.begin()[i]->length - 1));
            j += Strings.begin()[i]->length - 1;
        }
        this->literal[this->length - 1] = '\0';
    }

    string::string(std::initializer_list<uint64> Numbers)
    {
        array<string*> cache(Numbers.size());

        this->length = 0;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
            this->length += cache[i]->length - 1;
        }

        if ((this->literal = (char*)malloc(sizeof(char) * ++this->length)) == NULL)
        {
            printf("neo::string(): Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < cache.Length(); i++)
        {
            memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
            j += cache[i]->length - 1;
            delete cache[i];
        }
        this->literal[this->length - 1] = '\0';
    }

    string::string(std::initializer_list<sint64> Numbers)
    {
        array<string*> cache(Numbers.size());

        this->length = 0;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
            this->length += cache[i]->length - 1;
        }

        if ((this->literal = (char*)malloc(sizeof(char) * ++this->length)) == NULL)
        {
            printf("neo::string(): Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < cache.Length(); i++)
        {
            memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
            j += cache[i]->length - 1;
            delete cache[i];
        }
        this->literal[this->length - 1] = '\0';
    }

    string::string(std::initializer_list<double> Numbers)
    {
        array<string*> cache(Numbers.size());

        this->length = 0;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
            this->length += cache[i]->length - 1;
        }

        if ((this->literal = (char*)malloc(sizeof(char) * ++this->length)) == NULL)
        {
            printf("neo::string(): Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < cache.Length(); i++)
        {
            memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
            j += cache[i]->length - 1;
            delete cache[i];
        }
        this->literal[this->length - 1] = '\0';
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

    char& string::operator [] (uint64 Index)
    {
        if (this->length <= Index)
        {
            printf("neo::string[]: Index out of range\nParams: Index: %lld\n", Index);
            exit(1);
        }
        if (this->length - 1 == Index)
        {
            printf("neo::string[]: Illegal access to EOF\nParams: Index: %lld\n", Index);
            exit(1);
        }

        return this->literal[Index];
    }

    string& string::operator = (std::initializer_list<char> Characters)
    {
        if (this->length != Characters.size() + 1 && (this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length = Characters.size() + 1))) == NULL)
        {
            printf("neo::string=: Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
            exit(1);
        }

        memory::CopyTo(Characters.begin(), this->literal, sizeof(char) * Characters.size());
        this->literal[this->length - 1] = '\0';

        return *this;
    }

    string& string::operator = (std::initializer_list<const char*> Literals)
    {
        uint64 lengthPrev, cache;

        lengthPrev = this->length;
        this->length = 0;
        for (uint64 i = 0; i < Literals.size(); i++)
        {
            if (Literals.begin()[i] == NULL)
            {
                printf("neo::string=: Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                exit(1);
            }
            if (Literals.begin()[i] == this->literal)
            {
                printf("neo::string=: Literals[%lld] must not be Self\nParams: Literals(length): %ld\n", i, Literals.size());
                exit(1);
            }

            this->length += string::LiteralLength(Literals.begin()[i]) - 1;
        }

        if ((this->length += 1) != lengthPrev && (this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
        {
            printf("neo::string=: Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < Literals.size(); i++)
        {
            memory::CopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = string::LiteralLength(Literals.begin()[i]) - 1));
            j += cache;
        }
        this->literal[this->length - 1] = '\0';

        return *this;
    }

    string& string::operator = (std::initializer_list<string*> Strings)
    {
        uint64 lengthPrev;

        lengthPrev = this->length;
        this->length = 0;
        for (uint64 i = 0; i < Strings.size(); i++)
        {
            if (Strings.begin()[i] == NULL)
            {
                printf("neo::string=: Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                exit(1);
            }
            if (Strings.begin()[i] == this)
            {
                printf("neo::string=: Strings[%lld] must not be Self\nParams: Strings(length): %ld\n", i, Strings.size());
                exit(1);
            }

            this->length += Strings.begin()[i]->length - 1;
        }

        if ((this->length += 1) != lengthPrev && (this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
        {
            printf("neo::string=: Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < Strings.size(); i++)
        {
            memory::CopyTo(Strings.begin()[i]->literal, &this->literal[j], sizeof(char) * (Strings.begin()[i]->length - 1));
            j += Strings.begin()[i]->length - 1;
        }
        this->literal[this->length - 1] = '\0';

        return *this;
    }

    string& string::operator = (std::initializer_list<uint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        lengthPrev = this->length;
        this->length = 0;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
            this->length += cache[i]->length - 1;
        }

        if ((this->length += 1) != lengthPrev && (this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
        {
            printf("neo::string=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < cache.Length(); i++)
        {
            memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
            j += cache[i]->length - 1;
            delete cache[i];
        }
        this->literal[this->length - 1] = '\0';

        return *this;
    }

    string& string::operator = (std::initializer_list<sint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        lengthPrev = this->length;
        this->length = 0;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
            this->length += cache[i]->length - 1;
        }

        if ((this->length += 1) != lengthPrev && (this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
        {
            printf("neo::string=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < cache.Length(); i++)
        {
            memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
            j += cache[i]->length - 1;
            delete cache[i];
        }
        this->literal[this->length - 1] = '\0';

        return *this;
    }

    string& string::operator = (std::initializer_list<double> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        lengthPrev = this->length;
        this->length = 0;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
            this->length += cache[i]->length - 1;
        }

        if ((this->length += 1) != lengthPrev && (this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
        {
            printf("neo::string=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
            exit(1);
        }

        for (uint64 i = 0, j = 0; i < cache.Length(); i++)
        {
            memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
            j += cache[i]->length - 1;
            delete cache[i];
        }
        this->literal[this->length - 1] = '\0';

        return *this;
    }

    string& string::operator -= (std::initializer_list<char> Characters)
    {
        if (Characters.size() != 0)
        {
            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length += Characters.size()))) == NULL)
            {
                printf("neo::string-=: Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Characters.size() <= i; i--)
            {
                this->literal[i] = this->literal[i - Characters.size()];
            }

            memory::CopyTo(Characters.begin(), this->literal, sizeof(char) * Characters.size());
        }

        return *this;
    }

    string& string::operator -= (std::initializer_list<const char*> Literals)
    {
        uint64 lengthPrev, cache;

        if (Literals.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Literals.size(); i++)
            {
                if (Literals.begin()[i] == NULL)
                {
                    printf("neo::string-=: Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }
                if (Literals.begin()[i] == this->literal)
                {
                    printf("neo::string-=: Literals[%lld] must not be Self\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }

                this->length += string::LiteralLength(Literals.begin()[i]) - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string-=: Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = 0; i < Literals.size(); i++)
            {
                memory::CopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = string::LiteralLength(Literals.begin()[i]) - 1));
                j += cache;
            }
        }

        return *this;
    }

    string& string::operator -= (std::initializer_list<string*> Strings)
    {
        uint64 lengthPrev;

        if (Strings.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Strings.size(); i++)
            {
                if (Strings.begin()[i] == NULL)
                {
                    printf("neo::string-=: Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }
                if (Strings.begin()[i] == this)
                {
                    printf("neo::string-=: Strings[%lld] must not be Self\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }

                this->length += Strings.begin()[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string-=: Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = 0; i < Strings.size(); i++)
            {
                memory::CopyTo(Strings.begin()[i]->literal, &this->literal[j], sizeof(char) * (Strings.begin()[i]->length - 1));
                j += Strings.begin()[i]->length - 1;
            }
        }

        return *this;
    }

    string& string::operator -= (std::initializer_list<uint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string-=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = 0; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
        }

        return *this;
    }

    string& string::operator -= (std::initializer_list<sint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string-=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = 0; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
        }

        return *this;
    }

    string& string::operator -= (std::initializer_list<double> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string-=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = 0; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
        }

        return *this;
    }

    string& string::operator += (std::initializer_list<char> Characters)
    {
        if (Characters.size() != 0)
        {
            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length += Characters.size()))) == NULL)
            {
                printf("neo::string+=: Memory allocation failed\nParams: Characters(length): %ld\n", Characters.size());
                exit(1);
            }

            memory::CopyTo(Characters.begin(), &this->literal[this->length - 1 - Characters.size()], sizeof(char) * Characters.size());
            this->literal[this->length - 1] = '\0';
        }

        return *this;
    }

    string& string::operator += (std::initializer_list<const char*> Literals)
    {
        uint64 lengthPrev, cache;

        if (Literals.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Literals.size(); i++)
            {
                if (Literals.begin()[i] == NULL)
                {
                    printf("neo::string+=: Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }
                if (Literals.begin()[i] == this->literal)
                {
                    printf("neo::string+=: Literals[%lld] must not be Self\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }

                this->length += string::LiteralLength(Literals.begin()[i]) - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string+=: Memory allocation failed\nParams: Literals(length): %ld\n", Literals.size());
                exit(1);
            }

            for (uint64 i = 0, j = lengthPrev - 1; i < Literals.size(); i++)
            {
                memory::CopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = string::LiteralLength(Literals.begin()[i]) - 1));
                j += cache;
            }
            this->literal[this->length - 1] = '\0';
        }

        return *this;
    }

    string& string::operator += (std::initializer_list<string*> Strings)
    {
        uint64 lengthPrev;

        if (Strings.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Strings.size(); i++)
            {
                if (Strings.begin()[i] == NULL)
                {
                    printf("neo::string+=: Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }
                if (Strings.begin()[i] == this)
                {
                    printf("neo::string+=: Strings[%lld] must not be Self\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }

                this->length += Strings.begin()[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string+=: Memory allocation failed\nParams: Strings(length): %ld\n", Strings.size());
                exit(1);
            }

            for (uint64 i = 0, j = lengthPrev - 1; i < Strings.size(); i++)
            {
                memory::CopyTo(Strings.begin()[i]->literal, &this->literal[j], sizeof(char) * (Strings.begin()[i]->length - 1));
                j += Strings.begin()[i]->length - 1;
            }
            this->literal[this->length - 1] = '\0';
        }

        return *this;
    }

    string& string::operator += (std::initializer_list<uint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string+=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
                exit(1);
            }

            for (uint64 i = 0, j = lengthPrev - 1; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
            this->literal[this->length - 1] = '\0';
        }

        return *this;
    }

    string& string::operator += (std::initializer_list<sint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string+=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
                exit(1);
            }

            for (uint64 i = 0, j = lengthPrev - 1; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
            this->literal[this->length - 1] = '\0';
        }

        return *this;
    }

    string& string::operator += (std::initializer_list<double> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string+=: Memory allocation failed\nParams: Numbers(length): %ld\n", Numbers.size());
                exit(1);
            }

            for (uint64 i = 0, j = lengthPrev - 1; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
            this->literal[this->length - 1] = '\0';
        }

        return *this;
    }

    bool string::operator == (char Character)
    {
        return (this->length == 2 && this->literal[0] == Character);
    }

    bool string::operator == (const char* Literal)
    {
        if (Literal == NULL || this->length != string::LiteralLength(Literal))
        {
            return false;
        }

        if (this->literal == Literal)
        {
            return true;
        }

        return memory::Compare(this->literal, Literal, sizeof(char) * this->length);
    }

    bool string::operator == (string* String)
    {
        if (String == NULL || this->length != String->length)
        {
            return false;
        }

        if (this == String)
        {
            return true;
        }

        return memory::Compare(this->literal, String->literal, sizeof(char) * this->length);
    }

    bool string::operator == (uint64 Number)
    {
        bool result;

        string* tmp;

        tmp = this->ToString(Number);

        if (this->length != tmp->length)
        {
            delete tmp;
            return false;
        }

        result = memory::Compare(this->literal, tmp->literal, sizeof(char) * this->length);
        delete tmp;

        return result;
    }

    bool string::operator == (sint64 Number)
    {
        bool result;

        string* tmp;

        tmp = this->ToString(Number);

        if (this->length != tmp->length)
        {
            delete tmp;
            return false;
        }

        result = memory::Compare(this->literal, tmp->literal, sizeof(char) * this->length);
        delete tmp;

        return result;
    }

    bool string::operator == (double Number)
    {
        bool result;

        string* tmp;

        tmp = this->ToString(Number);

        if (this->length != tmp->length)
        {
            delete tmp;
            return false;
        }

        result = memory::Compare(this->literal, tmp->literal, sizeof(char) * this->length);
        delete tmp;

        return result;
    }

    bool string::operator != (char Character)
    {
        return !(*this == Character);
    }

    bool string::operator != (const char* Literal)
    {
        return !(*this == Literal);
    }

    bool string::operator != (string* String)
    {
        return !(*this == String);
    }

    bool string::operator != (uint64 Number)
    {
        return !(*this == Number);
    }

    bool string::operator != (sint64 Number)
    {
        return !(*this == Number);
    }

    bool string::operator != (double Number)
    {
        return !(*this == Number);
    }

    string& string::Insert(uint64 Index, std::initializer_list<char> Characters)
    {
        if (this->length < Index)
        {
            printf("neo::string.Insert(): Index out of range\nParams: Index: %lld, Characters(length): %ld\n", Index, Characters.size());
            exit(1);
        }
        if (this->length == Index)
        {
            printf("neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Characters(length): %ld\n", Index, Characters.size());
            exit(1);
        }

        if (Characters.size() != 0)
        {
            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length += Characters.size()))) == NULL)
            {
                printf("neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Characters(length): %ld\n", Index, Characters.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + Characters.size() <= i; i--)
            {
                this->literal[i] = this->literal[i - Characters.size()];
            }

            memory::CopyTo(Characters.begin(), &this->literal[Index], sizeof(char) * Characters.size());
        }

        return *this;
    }

    string& string::Insert(uint64 Index, std::initializer_list<const char*> Literals)
    {
        uint64 lengthPrev, cache;

        if (this->length < Index)
        {
            printf("neo::string.Insert(): Index out of range\nParams: Index: %lld, Literals(length): %ld\n", Index, Literals.size());
            exit(1);
        }
        if (this->length == Index)
        {
            printf("neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Literals(length): %ld\n", Index, Literals.size());
            exit(1);
        }

        if (Literals.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Literals.size(); i++)
            {
                if (Literals.begin()[i] == NULL)
                {
                    printf("neo::string.Insert(): Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }
                if (Literals.begin()[i] == this->literal)
                {
                    printf("neo::string.Insert(): Literals[%lld] must not be Self\nParams: Literals(length): %ld\n", i, Literals.size());
                    exit(1);
                }

                this->length += string::LiteralLength(Literals.begin()[i]) - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Literals(length): %ld\n", Index, Literals.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = Index; i < Literals.size(); i++)
            {
                memory::CopyTo(Literals.begin()[i], &this->literal[j], sizeof(char) * (cache = string::LiteralLength(Literals.begin()[i]) - 1));
                j += cache;
            }
        }

        return *this;
    }

    string& string::Insert(uint64 Index, std::initializer_list<string*> Strings)
    {
        uint64 lengthPrev;

        if (this->length < Index)
        {
            printf("neo::string.Insert(): Index out of range\nParams: Index: %lld, Strings(length): %ld\n", Index, Strings.size());
            exit(1);
        }
        if (this->length == Index)
        {
            printf("neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Strings(length): %ld\n", Index, Strings.size());
            exit(1);
        }

        if (Strings.size() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < Strings.size(); i++)
            {
                if (Strings.begin()[i] == NULL)
                {
                    printf("neo::string.Insert(): Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }
                if (Strings.begin()[i] == this)
                {
                    printf("neo::string.Insert(): Strings[%lld] must not be Self\nParams: Strings(length): %ld\n", i, Strings.size());
                    exit(1);
                }

                this->length += Strings.begin()[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Strings(length): %ld\n", Index, Strings.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = Index; i < Strings.size(); i++)
            {
                memory::CopyTo(Strings.begin()[i]->literal, &this->literal[j], sizeof(char) * (Strings.begin()[i]->length - 1));
                j += Strings.begin()[i]->length - 1;
            }
        }

        return *this;
    }

    string& string::Insert(uint64 Index, std::initializer_list<uint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (this->length < Index)
        {
            printf("neo::string.Insert(): Index out of range\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
            exit(1);
        }
        if (this->length == Index)
        {
            printf("neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
            exit(1);
        }

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = Index; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
        }

        return *this;
    }

    string& string::Insert(uint64 Index, std::initializer_list<sint64> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (this->length < Index)
        {
            printf("neo::string.Insert(): Index out of range\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
            exit(1);
        }
        if (this->length == Index)
        {
            printf("neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
            exit(1);
        }

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = Index; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
        }

        return *this;
    }

    string& string::Insert(uint64 Index, std::initializer_list<double> Numbers)
    {
        array<string*> cache(Numbers.size());
        uint64 lengthPrev;

        if (this->length < Index)
        {
            printf("neo::string.Insert(): Index out of range\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
            exit(1);
        }
        if (this->length == Index)
        {
            printf("neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
            exit(1);
        }

        if (cache.Length() != 0)
        {
            lengthPrev = this->length;
            for (uint64 i = 0; i < cache.Length(); i++)
            {
                cache[i] = this->ToString(Numbers.begin()[i]);
                this->length += cache[i]->length - 1;
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Numbers(length): %ld\n", Index, Numbers.size());
                exit(1);
            }

            for (uint64 i = this->length - 1; Index + this->length - lengthPrev <= i; i--)
            {
                this->literal[i] = this->literal[i - (this->length - lengthPrev)];
            }

            for (uint64 i = 0, j = Index; i < cache.Length(); i++)
            {
                memory::CopyTo(cache[i]->literal, &this->literal[j], sizeof(char) * (cache[i]->length - 1));
                j += cache[i]->length - 1;
                delete cache[i];
            }
        }

        return *this;
    }

    string& string::Remove(uint64 Index, uint64 Length)
    {
        if (this->length <= Index)
        {
            printf("neo::string.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n", Index, Length);
            exit(1);
        }
        if (this->length - 1 == Index)
        {
            printf("neo::string.Remove(): Illegal removal of EOF\nParams: Index: %lld, Length: %lld\n", Index, Length);
            exit(1);
        }
        if (this->length < Index + Length)
        {
            printf("neo::string.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n", Index, Length);
            exit(1);
        }
        if (this->length - 1 < Index + Length)
        {
            printf("neo::string.Remove(): Illegal removal of EOF\nParams: Index: %lld, Length: %lld\n", Index, Length);
            exit(1);
        }

        if (Length != 0)
        {
            this->length -= Length;

            for (uint64 i = Index; i < this->length; i++)
            {
                this->literal[i] = this->literal[i + Length];
            }

            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * this->length)) == NULL)
            {
                printf("neo::string.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n", Index, Length);
                exit(1);
            }
        }

        return *this;
    }

    bool string::Contains(std::initializer_list<char> Characters)
    {
        if (this->length <= 1 || Characters.size() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < Characters.size(); i++)
        {
            for (uint64 j = 0; j < this->length - 1; j++)
            {
                if (this->literal[j] == Characters.begin()[i])
                {
                    return true;
                }
            }
        }

        return false;
    }

    bool string::Contains(std::initializer_list<const char*> Literals)
    {
        uint64 cache;

        for (uint64 i = 0; i < Literals.size(); i++)
        {
            if (Literals.begin()[i] == NULL)
            {
                printf("neo::string.Contains(): Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n", i, Literals.size());
                exit(1);
            }
            if (Literals.begin()[i] == this->literal)
            {
                return true;
            }
        }

        if (this->length <= 1 || Literals.size() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < Literals.size(); i++)
        {
            for (uint64 j = 0; (cache = string::LiteralLength(Literals.begin()[i])) <= this->length && j < this->length - --cache; j++)
            {
                if (memory::Compare(&this->literal[j], Literals.begin()[i], sizeof(char) * cache))
                {
                    return true;
                }
            }
        }

        return false;
    }

    bool string::Contains(std::initializer_list<string*> Strings)
    {
        for (uint64 i = 0; i < Strings.size(); i++)
        {
            if (Strings.begin()[i] == NULL)
            {
                printf("neo::string.Contains(): Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n", i, Strings.size());
                exit(1);
            }
            if (Strings.begin()[i] == this)
            {
                return true;
            }
        }

        if (this->length <= 1 || Strings.size() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < Strings.size(); i++)
        {
            for (uint64 j = 0; Strings.begin()[i]->length <= this->length && j < this->length - (Strings.begin()[i]->length - 1); j++)
            {
                if (memory::Compare(&this->literal[j], Strings.begin()[i]->literal, sizeof(char) * (Strings.begin()[i]->length - 1)))
                {
                    return true;
                }
            }
        }

        return false;
    }

    bool string::Contains(std::initializer_list<uint64> Numbers)
    {
        bool result;

        array<string*> cache(Numbers.size());

        if (this->length <= 1 || cache.Length() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
        }

        result = false;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            for (uint64 j = 0; cache[i]->length <= this->length && j < this->length - (cache[i]->length - 1); j++)
            {
                if (result == false && memory::Compare(&this->literal[j], cache[i]->literal, sizeof(char) * (cache[i]->length - 1)))
                {
                    result = true;
                }
            }

            delete cache[i];
        }

        return result;
    }

    bool string::Contains(std::initializer_list<sint64> Numbers)
    {
        bool result;

        array<string*> cache(Numbers.size());

        if (this->length <= 1 || cache.Length() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
        }

        result = false;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            for (uint64 j = 0; cache[i]->length <= this->length && j < this->length - (cache[i]->length - 1); j++)
            {
                if (result == false && memory::Compare(&this->literal[j], cache[i]->literal, sizeof(char) * (cache[i]->length - 1)))
                {
                    result = true;
                }
            }

            delete cache[i];
        }

        return result;
    }

    bool string::Contains(std::initializer_list<double> Numbers)
    {
        bool result;

        array<string*> cache(Numbers.size());

        if (this->length <= 1 || cache.Length() == 0)
        {
            return false;
        }

        for (uint64 i = 0; i < cache.Length(); i++)
        {
            cache[i] = this->ToString(Numbers.begin()[i]);
        }

        result = false;
        for (uint64 i = 0; i < cache.Length(); i++)
        {
            for (uint64 j = 0; cache[i]->length <= this->length && j < this->length - (cache[i]->length - 1); j++)
            {
                if (result == false && memory::Compare(&this->literal[j], cache[i]->literal, sizeof(char) * (cache[i]->length - 1)))
                {
                    result = true;
                }
            }

            delete cache[i];
        }

        return result;
    }

    string& string::Read()
    {
        char tmp;

        if ((this->literal = (char*)realloc(this->literal, sizeof(char) * (this->length = 1))) == NULL)
        {
            printf("neo::string.Read(): Memory allocation failed\n");
            exit(1);
        }
        this->literal[0] = '\0';

        while ((tmp = getchar()) != '\n')
        {
            if ((this->literal = (char*)realloc(this->literal, sizeof(char) * ++this->length)) == NULL)
            {
                printf("neo::string.Read(): Memory allocation failed\n");
                exit(1);
            }

            this->literal[this->length - 2] = tmp;
            this->literal[this->length - 1] = '\0';
        }

        return *this;
    }

    uint64 string::Split(char Separator, array<string>* Result)
    {
        if (Result == NULL)
        {
            printf("neo::string.Split(): Result must not be NULL\nParams: Result: %p\n", Result);
            exit(1);
        }
        if (Result->Length() != 0)
        {
            printf("neo::string.Split(): Result must be empty\nParams: Result: %p\n", Result);
            exit(1);
        }

        Result->Insert(0, 1);

        for (uint64 i = 0; i < this->length - 1; i++)
        {
            if (this->literal[i] != Separator)
            {
                (*Result)[Result->Length() - 1] += {this->literal[i]};
            }
            else if (1 < (*Result)[Result->Length() - 1].length)
            {
                Result->Insert(Result->Length(), 1);
            }
        }

        if (1 == (*Result)[Result->Length() - 1].length)
        {
            Result->Remove(Result->Length() - 1, 1);
        }

        return Result->Length();
    }

    uint64 string::Split(char Separator, array<string*>* Result)
    {
        if (Result == NULL)
        {
            printf("neo::string.Split(): Result must not be NULL\nParams: Result: %p\n", Result);
            exit(1);
        }
        if (Result->Length() != 0)
        {
            printf("neo::string.Split(): Result must be empty\nParams: Result: %p\n", Result);
            exit(1);
        }

        *Result += {new string()};

        for (uint64 i = 0; i < this->length - 1; i++)
        {
            if (this->literal[i] != Separator)
            {
                *(*Result)[Result->Length() - 1] += {this->literal[i]};
            }
            else if (1 < (*Result)[Result->Length() - 1]->length)
            {
                *Result += {new string()};
            }
        }

        if (1 == (*Result)[Result->Length() - 1]->length)
        {
            delete (*Result)[Result->Length() - 1];
            Result->Remove(Result->Length() - 1, 1);
        }

        return Result->Length();
    }

    string& string::Reverse()
    {
        char tmp;

        for (uint64 i = 0; i < (this->length - 1) / 2; i++)
        {
            tmp = this->literal[i];
            this->literal[i] = this->literal[this->length - 2 - i];
            this->literal[this->length - 2 - i] = tmp;
        }

        return *this;
    }

    uint64 string::ToUINT()
    {
        uint64 result;

        result = 0;

        for (uint64 i = 0; i < this->length - 1; i++)
        {
            result += (this->literal[i] - '0') * pow(10, this->length - 2 - i);
        }

        return result;
    }

    uint64 string::ToUINT(bool* Success)
    {
        uint64 result;

        if (Success == NULL)
        {
            printf("neo::string.ToUINT(): Success must not be NULL\nParams: Success: %p\n", Success);
            exit(1);
        }

        result = 0;

        for (uint64 i = 0; i < this->length - 1; i++)
        {
            if (this->literal[i] < '0' || '9' < this->literal[i])
            {
                *Success = false;
                return 0;
            }

            result += (this->literal[i] - '0') * pow(10, this->length - 2 - i);
        }

        *Success = true;
        return result;
    }

    sint64 string::ToSINT()
    {
        sint64 result;

        result = 0;

        for (uint64 i = 1; i < this->length - 1; i++)
        {
            result += (this->literal[i] - '0') * pow(10, this->length - 2 - i);
        }

        if (this->literal[0] == '-')
        {
            result *= -1;
        }
        else
        {
            result += (this->literal[0] - '0') * pow(10, this->length - 2);
        }

        return result;
    }

    sint64 string::ToSINT(bool* Success)
    {
        sint64 result;

        if (Success == NULL)
        {
            printf("neo::string.ToSINT(): Success must not be NULL\nParams: Success: %p\n", Success);
            exit(1);
        }

        result = 0;

        for (uint64 i = 1; i < this->length - 1; i++)
        {
            if (this->literal[i] < '0' || '9' < this->literal[i])
            {
                *Success = false;
                return 0;
            }

            result += (this->literal[i] - '0') * pow(10, this->length - 2 - i);
        }

        if (this->literal[0] == '-')
        {
            result *= -1;
        }
        else
        {
            if (this->literal[0] < '0' || '9' < this->literal[0])
            {
                *Success = false;
                return 0;
            }

            result += (this->literal[0] - '0') * pow(10, this->length - 2);
        }

        *Success = true;
        return result;
    }

    double string::ToDOUBLE()
    {
        double result;

        uint64 decimal;

        result = 0;

        decimal = this->length - 1;
        for (uint64 i = 0; i < this->length - 1; i++)
        {
            if (this->literal[i] == '.')
            {
                decimal = i;
                break;
            }
        }

        for (uint64 i = 1; i < decimal; i++)
        {
            result += (this->literal[i] - '0') * pow(10, decimal - 1 - i);
        }
        for (uint64 i = decimal + 1; i < this->length - 1; i++)
        {
            result += (this->literal[i] - '0') / pow(10, i - decimal);
        }

        if (this->literal[0] == '-')
        {
            result *= -1;
        }
        else
        {
            result += (this->literal[0] - '0') * pow(10, decimal - 1);
        }

        return result;
    }

    double string::ToDOUBLE(bool* Success)
    {
        double result;

        uint64 decimal;

        if (Success == NULL)
        {
            printf("neo::string.ToDOUBLE(): Success must not be NULL\nParams: Success: %p\n", Success);
            exit(1);
        }

        result = 0;

        decimal = this->length - 1;
        for (uint64 i = 0; i < this->length - 1; i++)
        {
            if (this->literal[i] == '.')
            {
                decimal = i;
                break;
            }
        }

        for (uint64 i = 1; i < decimal; i++)
        {
            if (this->literal[i] < '0' || '9' < this->literal[i])
            {
                *Success = false;
                return 0;
            }

            result += (this->literal[i] - '0') * pow(10, decimal - 1 - i);
        }
        for (uint64 i = decimal + 1; i < this->length - 1; i++)
        {
            if (this->literal[i] < '0' || '9' < this->literal[i])
            {
                *Success = false;
                return 0;
            }

            result += (this->literal[i] - '0') / pow(10, i - decimal);
        }

        if (this->literal[0] == '-')
        {
            result *= -1;
        }
        else
        {
            if (this->literal[0] < '0' || '9' < this->literal[0])
            {
                *Success = false;
                return 0;
            }

            result += (this->literal[0] - '0') * pow(10, decimal - 1);
        }

        *Success = true;
        return result;
    }

    string* string::ToString(uint64 Number)
    {
        string* result;

        uint64 i;

        if ((result = new string) == NULL)
        {
            printf("neo::string.ToString(): Memory allocation failed\nParams: Number: %lld\n", Number);
            exit(1);
        }

        for (i = 1; 10 <= Number / i; i *= 10);
        for (; 0 < i; i /= 10)
        {
            *result += {(char)(Number / i + '0')};
            Number %= i;
        }

        return result;
    }

    string* string::ToString(sint64 Number)
    {
        string* result;

        uint64 i;

        if ((result = new string) == NULL)
        {
            printf("neo::string.ToString(): Memory allocation failed\nParams: Number: %lld\n", Number);
            exit(1);
        }

        if (Number < 0)
        {
            *result += {'-'};
            Number *= -1;
        }

        for (i = 1; 10 <= Number / i; i *= 10);
        for (; 0 < i; i /= 10)
        {
            *result += {(char)(Number / i + '0')};
            Number %= i;
        }

        return result;
    }

    string* string::ToString(double Number)
    {
        string* result;

        uint64 i, whole;
        double fraction;

        if ((result = new string) == NULL)
        {
            printf("neo::string.ToString(): Memory allocation failed\nParams: Number: %lf\n", Number);
            exit(1);
        }

        if (Number < 0)
        {
            *result += {'-'};
            Number *= -1;
        }

        whole = trunc(Number);
        fraction = Number - whole;

        for (i = 1; 10 <= whole / i; i *= 10);
        for (; 0 < i; i /= 10)
        {
            *result += {(char)(whole / i + '0')};
            whole %= i;
        }
        if (0 < fraction)
        {
            *result += {'.'};

            for (; 0 < fraction - trunc(fraction); fraction *= 10);

            for (i = 1; 10 <= (uint64)round(fraction) / i; i *= 10);
            for (; 0 < i; i /= 10)
            {
                *result += {(char)((uint64)round(fraction) / i + '0')};
                fraction = (uint64)round(fraction) % i;
            }
        }

        return result;
    }

    uint64 string::LiteralLength(const char* Literal)
    {
        uint64 result;

        if (Literal == NULL)
        {
            printf("neo::string::LiteralLength(): Literal must not be NULL\nParams: Literal: %p\n", Literal);
            exit(1);
        }

        result = 0;
        while (Literal[result++] != '\0');

        return result;
    }
}
