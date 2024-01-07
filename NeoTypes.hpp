#ifndef NEOTYPES_HPP
#define NEOTYPES_HPP

#include "NeoCommon.hpp"
#include "NeoArray.hpp"

namespace NeoTypes
{
    class string
    {
        public:
            uint64 Length;

        private:
            char* Literal;
    };
}

#endif