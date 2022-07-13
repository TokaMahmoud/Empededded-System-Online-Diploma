#include <stdio.h>
#include <string.h>
void fun(char [],unsigned int);
int main() {
    char str[50];
    printf("Enter a string:");
    gets(str);
    unsigned int len = strlen(str);
    fun(str,len);
    return 0;
}
void fun(char str[], unsigned int len){
    char rev[50];
    for (int i = 0; i < len; ++i) {
        if(str[i] == ' '){
            int k =0;
            for (int j = i+1; j < len; ++j,k++) {
                rev[k] = str[j];
            }
            rev[k] = ' ';
            k++;
            for (int l = 0; k < len; ++l,k++) {
                rev[k] = str[l];
            }
        }
    }
    printf("Reversed: %s", rev);
}
