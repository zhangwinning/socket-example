#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

void system(char string[21]);

int main() {
    int ret, fd;
    char buf[1024];
//  把 / 目录下的文件写到 `ls.output` 目录下。
    system("ls -l / >| ls.output");

//  查看是否可以可以打开文件
    if ((fd = open("ls.output", O_RDONLY)) < 0)  {
        perror("open() error");
    } else {
//      从 fd 中读取文件，放到内存中的 buf 内，然后最后添加 0
        while ((ret = read(fd, buf, sizeof(buf) - 1)) > 0) {
            buf[ret] = 0x00;
            printf("block read: \n<%s>\n", buf);
        }
        close(fd);
    }
    unlink("ls.output");
}
