#include <stdio.h>
//Find the length of a string
int main() {
    char s[50];
    int len=0;
    printf("Enter the string:");
    gets(s);
    for (int i = 0; s[i]!=0; ++i) {
        len++;
    }
    printf("Length of string: %d", len);
    return 0;
}
