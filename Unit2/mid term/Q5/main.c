#include <stdio.h>
void fun(int);
int main() {
    int num, dig;
    printf("Enter a number:");
    scanf("%d", &num);
     fun(num);
    return 0;
}
void fun(int num){
    int dig, count=0;
    printf("The number in binary:");
    for (int i = 8; i >=0 ; --i) {
        dig = num >> i;
        if(dig & 1){
            printf("1");
            count++;
        }
        else
            printf("0");
    }
    printf("\nnumber of ones : %d", count);

}