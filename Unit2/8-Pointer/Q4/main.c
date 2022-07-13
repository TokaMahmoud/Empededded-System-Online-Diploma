#include <stdio.h>
//Write a program in C to print the elements of an array in reverse order
int main() {
    int n, arr[16],rev[16], *p;
    printf("Input the number of elements to store in the array (max 15) :");
    scanf("%d",&n);
    printf("Input %d number of elements in the array:\n",n);
    for (int i = 0; i < n; ++i) {
        printf("element-%d :",i+1);
        scanf("%d", &arr[i]);
    }
    p = arr;
    for (int i = n-1; i >= 0; --i) {
        rev[i] =  *p;
        p++;
    }
    printf("The elements of array in reverse order are :\n");
    p = rev;
    for (int i = n; i > 0; --i) {
        printf("element-%d : %d\n",i,*p);
        p++;
    }
    return 0;
}
