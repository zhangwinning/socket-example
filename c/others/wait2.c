#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>


int main() {
    if (fork() == 0) {
        printf("HC: hello from child \n");
    }else {
        printf("HPL hello from parent \n");
        wait(NULL);
        printf("CT: child has terminated \n");
    }

    printf("bye pid = %d\n", getpid());
    return 0;
}