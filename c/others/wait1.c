#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
    pid_t cpid;

    if (fork() == 0) {
        exit(0);
    }else {
        cpid = wait(NULL);      // 返回被终止子进程的 id。这里返回的也就是 fork() 那个子进程的id。
    }

    printf("Parent pid = %d \n", getpid() );
    printf("Child pid = %d \n", cpid);
}