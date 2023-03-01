#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>

uint64_t next_pow2(uint64_t x);

uint64_t next_pow2(uint64_t x)
{
    int n = __builtin_clz(x);
    return 0x8000000000000000 >> (n - 1);
}
