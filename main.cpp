#include "Source/NeoTypes.hpp"

using namespace NeoTypes;

int main(int argc, char* *argv)
{
    string str;
    array<string*> arr;
    
    str = "car building bear game hello city";
    arr = str.Split(' ');

    for (uint8 i = 0; i < arr.Length; i++)
    {
        printf("%s\n", (*arr[i])());
    }

    return 0;
}