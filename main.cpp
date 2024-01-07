#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    string str = (char*)"szia";

    str = str + 'b';

    printf("%s\n", str.Get());

    return 0;
}