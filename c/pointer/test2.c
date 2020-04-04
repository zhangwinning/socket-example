#include <stdio.h>

void exchange(int *u, int *v);
int main(void) {
    int x = 5;
//    printf("the originally x = %d and y = %d \n", x, y);
//    exchange(&x, &y);
//    printf("the value is x = %d and y = %d \n", x, y);

    int arr[10] = {1,2,3,4,6};

    char str[] = "zhangwenning";


    char *p = str;
    printf("the is value is %c, %p\n", *p, p);
    p++;
//    p = &x;
//    *p++;
//    (*p)++;
//    *p = *p+1;
//    printf("the is value is %d \n", x);
    printf("the is value is %c, %p\n", *p, p);
    return 0;
}

void exchange(int *u, int *v) {
    int tmp;
    tmp = *u;
    *u = *v;
    *v = tmp;
}