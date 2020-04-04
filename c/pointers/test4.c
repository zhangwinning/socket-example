#include <stdio.h>

void fun(int *x) {
    *x = 30;
}

int main() {
    int *ptr;
    int x;

    ptr = &x;
    *ptr = 0;

    printf("x = %dn", x);
    printf(" *ptr = %dn", *ptr);
}

// a