#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    string str;

    str = "hello";
    str += " szar";
    str += " van";
    str += " a palacsintaban";

    printf("%s\n", str());

    return 0;
}