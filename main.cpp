#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    array<uint8> arr(0);

    for (uint8 i = 0; i < 9; i++)
    {
        arr.Insert(i, i);
    }

    for (uint8 i = 0; i < arr.Length; i++)
    {
        printf("%d ", arr[i]);
    }

    return 0;
}