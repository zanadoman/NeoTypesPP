#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    string str((char*)"Hello World");

    printf("%s\n", str.Get());

    return 0;
}