#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

void forkExample();
int main() {
    forkExample();
    return 0;
}

void forkExample() {
    int x = 1;
    if (fork() == 0) {
        ++x;
        printf("Child has x = %d, %p\n", x, &x);
    } else {
        --x;
        printf("parent has x = %d, %p\n", x, &x);
    }
    printf("has x = %d, %p\n", x, &x);
}