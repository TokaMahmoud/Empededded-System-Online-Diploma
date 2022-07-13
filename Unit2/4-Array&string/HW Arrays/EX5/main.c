#include <stdio.h>
//Search an element in array
int main() {
    int n, a[50],num,i;
    printf("Enter number of elements:");
    scanf("%d",&n);
    for (int i = 0; i < n; ++i) {
        scanf("%d",&a[i]);
    }
    printf("Enter the element to be searched:");
    scanf("%d",&num);
    for ( i = 0; i < n; ++i) {
        if(a[i] == num){
            printf("Number found at the location = %d",i+1);
            break;
        }
    }
    if(i == n)
        printf("Number not found");
    return 0;
}
