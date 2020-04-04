#include <stdio.h>

int main() {
    int a = 22, b;
    int *p;
    p = &a; // &后面跟一个变量是表示该变量的地址
    b = *p; // 后面跟一个指针名或者地址时，表示该地址指向的值。
    printf("this is value %2d \n", b);

    int num;
    scanf("%d", &num);

    printf("input value is %d \n", num);
    return 0;
}