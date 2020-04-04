#include <stdio.h>
int main(void) {
    double *ptd;
    int max;
    int number;
    int i = 0;
    scanf("%d", &max);
    printf("this is value %d \n", max);

    ptd = (double*)malloc(max * sizeof(double));
    return 0;
}