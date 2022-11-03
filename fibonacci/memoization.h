#include <vector>
#include <algorithm>
#include <unistd.h>

std::vector <__int128_t> memo(0);

__uint128_t _fib (int n) {
    if (n < 2) {
        return n;
    }

    __uint128_t curFib = memo[n];

    if (curFib == 0) {
        __uint128_t newFib = _fib (n-1) + _fib(n-2);
        memo[n] = newFib;
        return newFib;
    }

    return curFib;
}

__uint128_t memoFib (int n) {
    memo.resize(n+1);
    std::fill(memo.begin(), memo.end(), 0);

    return _fib(n);
}

__uint128_t _fib_t (int n) {
    usleep(500);
    if (n < 2) {
        usleep(500);
        return n;
    }

    usleep(500);
    __uint128_t curFib = memo[n];

    usleep(500);
    if (curFib == 0) {
        usleep(500);
        __uint128_t newFib = _fib_t (n-1) + _fib_t (n-2);
        usleep(500);
        memo[n] = newFib;
        usleep(500);
        return newFib;
    }

    usleep(500);
    return curFib;
}

__uint128_t memoFib_t (int n) {
    usleep(500);
    memo.resize(n+1);
    usleep(500);
    std::fill(memo.begin(), memo.end(), 0);

    usleep(500);
    return _fib_t(n);
}