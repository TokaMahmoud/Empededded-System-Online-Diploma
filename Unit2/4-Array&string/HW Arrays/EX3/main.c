#include <stdio.h>
//Transpose of a matrix
int main() {
    int r,c;
    printf("Enter rows and column of matrix:");
    scanf("%d %d",&r, &c);
    int a[r][c],t[c][r];
    printf("Enter elements of matrix:\n");
    for (int i = 0; i < r; ++i) {
        for (int j = 0; j < c; ++j) {
            printf("Enter elements a%d%d:",i+1,j+1);
            scanf("%d",&a[i][j]);
        }
    }
    printf("Entered Matrix:\n");
    for (int i = 0; i < r; ++i) {
        for (int j = 0; j < c; ++j) {
            printf("%d  ",a[i][j]);
        }
        printf("\n");
    }
    for (int i = 0; i < c; ++i) {
        for (int j = 0; j < r; ++j) {
            t[i][j]=a[j][i];
        }
        printf("\n");
    }
    printf("Transpose of Matrix:\n");
    for (int i = 0; i < c; ++i) {
        for (int j = 0; j < r; ++j) {
            printf("%d  ",t[i][j]);
        }
        printf("\n");
    }
    return 0;
}
