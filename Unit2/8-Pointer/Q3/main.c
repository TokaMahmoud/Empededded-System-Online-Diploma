#include <stdio.h>
#include <string.h>
//Write a program in C to print a string in reverse using a pointer
int main() {
    char str[20];
    printf("Input a string:");
    gets(str);
    unsigned int len = strlen(str);
    char *p = str;
    char rev[20];
    for (int i = len-1; i >= 0; --i) {
        rev[i] = *p;
        p++;
    }
    rev[len] = '\0';
    p = rev;
    printf("Reverse of the string is : %s",p);
    return 0;
}
