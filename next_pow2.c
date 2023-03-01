uint64_t next_pow2(uint64_t x)
{
    int n = __builtin_clz(x);
    int pow_2 = 0x8000000000000000;
    return pow_2 >> (n - 1);
}
