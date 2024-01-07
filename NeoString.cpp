#include "NeoTypes.hpp"

namespace NeoTypes
{
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
}