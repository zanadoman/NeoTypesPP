#include "NeoTypes.hpp"

using namespace NeoTypes;

sint32 main(sint32 argc, char* *argv)
{
    string* str1 = new string("faszom");
    string* str2 = new string(str1);


    printf("%s\n", str2->Get());

    return 0;
}