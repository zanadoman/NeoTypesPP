#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    string str1 = (char*)"szia";
    string str2 = (char*)"szia";

    if (str1 == str2)
    {
        printf("equal\n");
    }
    else
    {
        printf("not equal\n");
    }

    return 0;
}