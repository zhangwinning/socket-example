#include <stdio.h>

#define SIZE 4

int main() {
    short dates[SIZE];
    short *pti;
    double bills[SIZE];
    double *ptf;

    pti = dates;    // 把数组地址赋予给指针
    ptf = bills;

    printf("%23s %15s \n", "short", "double");
    for (int index = 0; index < SIZE; ++index) {
        printf("pointers + %d: %10p %10p \n", index, pti + index, ptf + index);
    }

    for (int i = 0; i < SIZE; ++i) {
        dates[i] = i + 1;
    }

    for (int j = 0; j < SIZE; ++j) {
        printf("value is %d \n", dates[j]);
    }

    printf("pointer is %p  %p\n", dates + 2, &dates[2]);

    printf("value is %d %d \n", dates[2], *(dates + 2) );
    return 0;
}