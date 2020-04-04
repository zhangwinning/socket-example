
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

int main() {
    int fd = open("file.txt", O_RDONLY);
    int fd2 = open("file.txt", O_RDONLY);
    int fd3 = open("file.txt", O_RDONLY);

    int fd4 = open("Makefile", O_RDONLY);
    if (fd == -1) {
        perror("open demo.xtx");
        return EXIT_FAILURE;
    }

    printf("fd = %d, fd1 = %d fd3 = %d, df4 = %d\n", fd, fd2, fd3, fd4);
    return EXIT_SUCCESS;
}