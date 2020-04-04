#include <stdio.h>


// the element are stored at contiguous memory locations.
int main() {
    int arr[5], i;

    printf("Size of integer in this compiler is %lu \n", sizeof(int));

    for (int i = 0; i < 5; i++) {
        printf("Address arr[%d] is %p \n", i, &arr[i]);
    }
    return 0;
}