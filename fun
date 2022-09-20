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

choice of user which fun will be executed:
#include <stdio.h>
void add(int a,int b)
{
    printf("%d",a+b);
}
void sub(int a,int b)
{
    printf("%d",a-b);
}

void m(int a,int b)
{
    printf("%d",a*b);
}

void div(int a,int b)
{
    printf("%d",a/b);
}

int main()
{
    int ch,a,b;
    void (*fptr[10])(int,int)={add,sub,m,div};
    printf("enter the choice :");
    scanf("%d",&ch);
    printf("enter the two number:");
    scanf("%d %d",&a,&b);
    (*fptr[ch])(a,b);
    
}
