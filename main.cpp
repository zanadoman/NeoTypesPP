#include "Source/NeoTypes.hpp"

using namespace NeoTypes;

int main(int argc, char* *argv)
{
    string* str;

    str = new string("Hello World");
    printf("%s\n", (*str)());

    return 0;
}