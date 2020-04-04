#include <stdio.h>
#define SIZE 4

int main(void) {
    int no_data[SIZE];
    for (int j = 0; j < SIZE; ++j) {
        printf("%2d%14d \n", j, no_data[j]);
    }
    return 0;

}