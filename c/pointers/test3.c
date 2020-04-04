#include <stdio.h>

int main() {
    int var = 10;

    int *ptr = &var;

    printf("Value of var = %d \n", *ptr);

    printf("Address of var = %p \n", ptr);

    *ptr = 20;

    printf("*ptr is %d \n", *ptr);

    printf("val is %d \n", var);

    return 0;
}