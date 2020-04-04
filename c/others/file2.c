#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    int a = open("Makefile", O_RDONLY);

    int b = open("Makefile", O_RDONLY);

    printf("a = %d, b = %d \n", a, b);

    close(a);

    int c = open("Makefile", O_RDONLY);
    printf("b = %d, c = %d \n", b, c);
}