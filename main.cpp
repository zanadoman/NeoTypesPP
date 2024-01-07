#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    array<string*>* split = new array<string*>();
    string str;

    str = "Hello World, szia uram hogyan vagyunk?";
    split = str.Split(' ');

    for (uint8 i = 0; i < split->Length; i++)
    {
        printf("%s\n", (*split)[i]->Get());
    }

    return 0;
}