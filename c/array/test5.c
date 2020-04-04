#include <stdio.h>

int main() {
    int arr[] = {10, 20};

    printf("%ld, %ld", sizeof(arr) / sizeof(int), sizeof(int));
}