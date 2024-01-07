#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    array<uint8>* arr = new array<uint8>(1);

    (*arr)[0] = 12;
    arr->Insert(arr->Length, 58);
    arr->Insert(0, 69);

    for (uint64 i = 0; i < arr->Length; i++)
    {
        printf("%d\n", (*arr)[i]);
    }

    delete arr;

    return 0;
}