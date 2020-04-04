#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

void forkExample();

int main() {
    forkExample();
    return 0;
}

void forkExample() {
    if (fork() == 0) {
        printf("Hello world child \n");
    } else {
        printf("Hello world parent \n");
    }
}