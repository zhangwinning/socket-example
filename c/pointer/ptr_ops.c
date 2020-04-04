#include <stdio.h>
int main(void) {
    int urn[5] = {100, 200, 300, 400, 500};
    int *ptr1, *ptr2, *ptr3;
    ptr1 = urn;
    ptr2 = &urn[2];
    printf("this is %p, %d ,%p", ptr1, *ptr1, &ptr1);
}