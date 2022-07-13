#include <stdio.h>
//Insert an element in an array
int main() {
    int n, num, loc;
    printf("Enter no of elements:");
    scanf("%d",&n);
    int a[50];
    for (int i = 0; i < n; ++i) {
        scanf("%d",&a[i]);
    }
    printf("Enter the element to be inserted:");
    scanf("%d",&num);
    printf("Enter the location:");
    scanf("%d",&loc);
    for (int i = n; i >= loc-1; --i) {
        a[i] = a[i-1];
    }
    a[loc-1] = num;
    for (int i = 0; i <= n; ++i) {
        printf("%d  ",a[i]);
    }
    return 0;
}
