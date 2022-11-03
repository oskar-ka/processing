#include <unistd.h>

int recuFib (int n) {
    if (n < 2) {
        return n;
    }

    return recuFib(n-1) + recuFib(n-2);
}

int recuFib_t (int n) {
    usleep(500);
    if (n < 2) {
        usleep(500);
        return n;
    }

    return recuFib_t(n-1) + recuFib_t(n-2);
}