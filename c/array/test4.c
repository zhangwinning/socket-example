#include <stdio.h>

int main() {
    int arr[] = {10, 20, 30, 40, 50, 60};
    int *ptr = arr;

    char *ptr1;
    printf("Size of arr[] %ld \n", sizeof(arr));

    printf("Size of ptr %ld \n", sizeof(ptr));

    printf("%ld \n", sizeof(ptr1));
    return 0;
}