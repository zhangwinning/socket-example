#include <stdio.h>

#define MONTHS 12

int main(void) {
//    这是声明数组一种方式
    int days[MONTHS] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for (int index = 0; index <MONTHS; ++index) {
        printf("Month %2d has %2d days. \n", index + 1, days[index]);
    }
    return 0;
}