#ifndef NEOTYPES_HPP
#define NEOTYPES_HPP

#include "NeoCommon.hpp"
#include "NeoArray.hpp"

namespace NeoTypes
{

    uint64 strLength(char* Literal);

    class string
    {
        public:
            uint64 Length;

            string();

        private:
            char* Literal;
    };
}

#endif