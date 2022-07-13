#include <stdio.h>
//Find sum of two matrix
int main() {
    float a[2][2], b[2][2], sum[2][2];
    printf("Enter the elements of 1st matrix\n");
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            printf("Enter a%d%d:", i+1,j+1);
            scanf("%f",&a[i][j]);
        }
    }
    printf("Enter the elements of 2st matrix\n");
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            printf("Enter b%d%d:", i+1,j+1);
            scanf("%f",&b[i][j]);
        }
    }
    printf("Sum of matrix:\n");
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            sum[i][j] = a[i][j]+b[i][j];
            printf("%.1f   ", sum[i][j]);
        }
        printf("\n");
    }
    return 0;
}
