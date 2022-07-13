#include <stdio.h>
#include <string.h>
int main() {
    //Reverse string
    char s[50], rev[50];
    unsigned int len = strlen(s);
    printf("Enter a string:");
    gets(s);
    for (int i = 0; i < strlen(s); ++i) {
        rev[i] = s[len];
        len--;
    }
    printf("Reverse string is : %s",rev);
    return 0;
}
