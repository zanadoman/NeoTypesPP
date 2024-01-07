#include "Source/NeoTypes.hpp"

using namespace NeoTypes;

int main(int argc, char* *argv)
{
    array<uint8> arr1;

    arr1 += 1;
    arr1 += 2;

    arr1.Insert(0, 3);

    for (uint64 i = 0; i < arr1.Length; i++)
    {
        printf("%d\n", arr1[i]);
    }

    return 0;
}