#include <stdio.h>

#define SIZE    1

int sump(int*, int*);
int main(void) {
    int marbles[SIZE] = {1, 2, 3, 4, 5};
    int answer = sump(marbles, marbles + SIZE);
    printf("the value is %d \n", answer);
    return 0;
}

int sump(int *start, int *end) {
    int total = 0;
    while (start < end) {
        total += *start;
        printf("the value is %d %p %p\n", *start, start, end);
        start++;    // start 加一表示其值递增 int 类型的大小。
    }
    return total;
}