#include <stdio.h>
#include <string.h>

int main() {
    FILE *filePointer;
    char dataToBeRead[50];

//  指针指向的文件内容
    filePointer = fopen("text.txt", "r");

    if (filePointer == NULL) {
        printf("text file failed to open");
    }else {
//       循环读取指针指向的文件内容，然后存入 dataToBeRead 这个字符串中。
        while (fgets(dataToBeRead, 50, filePointer) != NULL) {
            printf("%s \n", dataToBeRead);
        }

        fclose(filePointer);

        printf("done \n");
    }
    return 0;
}