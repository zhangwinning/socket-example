#include <stdio.h>

int main(void) {
    const int days[] = {1000,2,3,4,5,6,7};

    for (int index = 0; index < sizeof(days) / sizeof(days[0]); ++index) {
        printf("Month %2d has %d days. \n", index + 1, days[index]);
    }

    return 0;
}