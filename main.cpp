#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    array<uint8> arr1;
    array<uint8> arr2;

    arr1 += 1;
    arr1 += 2;

    arr2 += 3;
    arr2 += 4;

    arr1 += &arr2;

    for (uint64 i = 0; i < arr1.Length; i++)
    {
        printf("%d ", arr1[i]);
    }

    return 0;
}