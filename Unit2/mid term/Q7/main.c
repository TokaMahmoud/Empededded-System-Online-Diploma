#include <stdio.h>
int fun(int );
int main() {
    printf("sum numbers from 1 to 100: %d",fun(100));
    return 0;
}
int fun(int n ){
    static int sum =0;
    if(n>0){
        sum += n;
        fun(--n);
    }
    return sum;
}