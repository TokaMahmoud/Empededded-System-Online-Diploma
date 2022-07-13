#include <stdio.h>
//Calculate Average
int main() {
    int n;
    printf("Enter the number of data:");
    scanf("%d",&n);
    float a[n],sum=0,avg;
    for (int i = 0; i < n; ++i) {
        printf("%d. Enter number:", i+1);
        scanf("%f", &a[i]);
        sum += a[i];
    }
    avg = sum/n;
    printf("Average = %0.2f", avg);
    return 0;
}
