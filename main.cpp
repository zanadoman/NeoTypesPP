#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    string str;

    str.ReadLine();
    printf("%s\n", str());

    return 0;
}