#include <stdio.h>
//Write a program to check whether a number is even or odd
int main() {
    int num;
    printf("Enter an integer you want to check:");
    scanf("%d",&num);
    if(num%2 == 0){
        printf("%d is even", num);
    }
    else if(num%2 != 0){
        printf("%d is odd", num);
    }
    return 0;
}
