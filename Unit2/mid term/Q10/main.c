#include <stdio.h>
void fun(int);
int main() {
    int num;
    printf("Enter a number:");
    scanf("%d", &num);
    fun(num);
    return 0;
}
void fun(int num){
    int dig, count=0;
    for (int i = 8; i >=0 ; --i) {
        dig = num >> i;
        if(dig & 1){
            printf("1");
        }
        else
            printf("0");
    }
    while (num != 0){
        num = num & (num << 1);
        count++;
    }
    printf("\nthe max number of ones between two zeros : %d", count);

}