#include <stdio.h>

int main() {
    int arr[5];
    arr[0] = 5;
//    arr[2] = -10;
//    arr[3/2] =2;
//    arr[3] = arr[0];
//    printf(arr);
    printf("the size of %lu \n", sizeof(arr));
    for (int i = 0; i < sizeof(arr); i++) {
        printf("this is %d\n", arr[i]);
    }
}