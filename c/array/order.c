#include <stdio.h>

int main() {
    int data[2] = { 100, 200};
    int moredata[2] = {300, 400};

    int *p1, *p2, *p3;
    p1 = p2 = data;
    p3 = moredata;
    printf("this pointer is %p, %p, %p \n", p1, p2, p3);

    printf("%d %d %d \n", *p1, *p2, *p3);
    printf("%d %d %d \n", *p1++, *++p2, (*p3)++);
    printf("this pointer is %p ,%p \n", p1, p2);
    printf("%d %d %d \n", *p1, *p2, *p3);
    return 0;
}