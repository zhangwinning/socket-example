#include <stdio.h>
#include <string.h>

struct Books {
    char title[50];
    char author[50];
    char subject[100];
    int book_id;
};

void printBook(struct Books *book);

int main() {
    struct Books Book1;
    struct Books Book2;

    strcpy(Book1.title, "c Programming");
    strcpy(Book1.author, "Ali");
    strcpy(Book1.subject, "c programming");
    Book1.book_id = 789;

    printBook(&Book1);

    return 0;
}


void printBook(struct Books *book) {
    printf("Book title : %s \n", book->title);
    printf("Book author: %s \n", book->author);
    printf("Book subject： %s \n", book->subject);
    printf("Book book_id: %n \n", book->book_id);
}