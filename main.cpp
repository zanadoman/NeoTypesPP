#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    array<uint8> arr(0);

    for (uint8 i = 0; i < 9; i++)
    {
        arr.Insert(i, i);
    }

    arr.Reverse();

    for (uint8 i = 0; i < 10; i++)
    {
        printf("%d ", arr[i]);
    }

    return 0;
}