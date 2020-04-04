#include <stdio.h>

int main() {
    FILE *fp;
    fp = fopen("file.txt", "w+");

    fputs("this is c programming.", fp);

    fclose(fp);
}