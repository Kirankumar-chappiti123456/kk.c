fun in pointer:

#include <stdio.h>
int sum(int a,int b);
void main()
{
    int s=0;
    int (*fptr)(int,int);
    fptr=&sum;
    s=(*fptr)(2,3);
    printf("%d",s);
}
int  sum(int a,int b)
{
    
    return a+b;
   
}
