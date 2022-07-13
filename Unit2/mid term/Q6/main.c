#include <stdio.h>
int fun(int[],int);
int main() {
    int arr[20],size;
    printf("Enter the size of array:");
    scanf("%d",&size);
    printf("Enter array elements:");
    for (int i = 0; i < size; ++i) {
        scanf("%d",&arr[i]);
    }
    printf("unique number in array: %d", fun(arr, size));
    return 0;
}
int fun(int arr[], int size){
    int unique = 0;
    for (int i = 0; i < size; ++i)
        unique ^= arr[i];
    return unique;
}