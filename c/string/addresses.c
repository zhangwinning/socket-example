#include <stdio.h>

#define MSG     "I'm special"

int main() {
    char ar[] = MSG;
    const char *pt = MSG;
    printf("add of %p \n", "I'm special");
    printf("address of %p \n", MSG);
    printf("address ar %p \n", ar);
    printf("address pt %p \n", pt);
}