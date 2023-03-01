#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>

uint64_t next_pow2(uint64_t x)
{
    if (!x)
        return 1; 
    int n = __builtin_clz(x);
    // 判別 x 在二進位中是否只有一個位元為 1 
    if (n + __builtin_ctz(x) == 63)
        return x;
    return 1 << (64 - n);
}
