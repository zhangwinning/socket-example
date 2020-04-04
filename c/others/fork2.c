#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
    int a = fork();
    printf("Hello world %d \n", a);
    return 0;
}