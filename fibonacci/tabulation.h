#include <unistd.h>

__uint128_t tabuFib(int n) {
    __uint128_t nums[n+1];

    nums[0]=0;
    nums[1]=1;

    for (int i=2; i<=n; i++) {
        nums[i] = nums[i-1] + nums[i-2];
    }

    return nums[n];
}

__uint128_t tabuFib_t(int n) {
    usleep(500);
    __uint128_t nums[n+1];

    usleep(500);
    nums[0]=0;
    usleep(500);
    nums[1]=1;

    for (int i=2; i<=n; i++) {
        usleep(500);
        nums[i] = nums[i-1] + nums[i-2];
    }

    return nums[n];
}