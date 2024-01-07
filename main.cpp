#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    array<uint8> arr1;
    array<uint8> arr2;

    arr1 += 1;
    arr1 += 2;

    arr2 += 1;
    arr2 += 3;

    if (arr1 != &arr2)
    {
        printf("arr1 == arr2\n");
    }
    else
    {
        printf("arr1 != arr2\n");
    }

    return 0;
}