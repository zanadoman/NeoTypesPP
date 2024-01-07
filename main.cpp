#include "NeoTypes.hpp"

using namespace NeoTypes;

class coordinate
{
    public:
        double X;
        double Y;
};

sint32 main(sint32 argc, char* *argv)
{
    array<coordinate> arr(3);

    arr[0].X = 12;

    printf("arr[0].X: %f\n", arr[0].X);

    return 0;
}