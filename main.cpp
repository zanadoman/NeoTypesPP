#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    array<uint8> arr;

    arr -= 5;
    arr += 7;
    arr += 8;
    arr -= 9;

    for (uint64 i = 0; i < arr.Length; i++)
    {
        printf("%d\n", arr[i]);
    }

    return 0;
}