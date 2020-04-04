#include <stdio.h>

#define SIZE 10

int main() {
    int arr[SIZE] = {200, 300};
    printf("%d %d\n", arr[1], *(arr+1));
}