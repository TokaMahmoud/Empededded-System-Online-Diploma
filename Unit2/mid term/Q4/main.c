#include <stdio.h>
//c function to revers digits in number
int fun(int);
int main() {
    int num;
    printf("Enter a number:");
    scanf("%d",&num);
    printf("The revers: %d", fun(num));
    return 0;
}
int fun(int num){
    int dig, rev=0;
    while (num){
        dig = num%10;
        rev = 10*rev + dig;
        num /= 10;
    }
    return rev;
}
