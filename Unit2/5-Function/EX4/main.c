#include <stdio.h>

//Calculate power of a number

int calc_power(int, int);

int main() {
    int base, power;
    printf("Enter base number:");
    scanf("%d",&base);
    printf("Enter power number(positive integer):");
    scanf("%d",&power);
    printf("%d ^ %d = %d", base, power, calc_power(base, power));
    return 0;
}

int calc_power(int base, int power){
    if(power == 1)
        return base;
    else
        return base*calc_power(base, --power);
}