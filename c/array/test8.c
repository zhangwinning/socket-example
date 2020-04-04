#include <stdio.h>

int main() {
    int arr[] = {10,20,30,40};

    int *ptr = arr;

    printf("arr[2] = %d \n", arr[2]);
    printf("*arr(arr+2) = %d \n", *(arr+2));
    printf("ptr[2] = %d \n", ptr[2]);
    printf("*(ptr+2） = %d \n", *(ptr+2));
}