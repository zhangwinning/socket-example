#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char ** argv) {
    int flag = 0;
    pid_t pId = fork();

    if (pId == -1) {
        perror("fork error");
        exit(EXIT_FAILURE);
    }else if (pId == 0) {
        int myPid = getpid();
        int parentPid = getppid();
        printf("Child:SelfID=%d ParentID=%d \n", myPid, parentPid);
        printf("#####Child:flag=%d %p \n", flag, &flag);
        flag = 123;
        printf("Child:flag=%d %p \n", flag, &flag);

        int count = 0;
        do {
            count++;
            sleep(1);
            printf("Child count=%d \n", count);
            if (count >= 5) {
                break;
            }
        }while (1);
        return EXIT_SUCCESS;
    }else {
        printf("Parent:SelfID=%d MyChildPID=%d \n", getpid(), pId);
        flag = 456;
        printf("Parent: flag=%d %p \n", flag, &flag);
        int count = 0;
        do {
            count++;
            sleep(1);
            printf("===Child count=%d \n", count);
            if (count >= 2) {
                break;
            }
        }while (1);
        return EXIT_SUCCESS;
    }
}