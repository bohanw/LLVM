#include <stdio.h>
int f1(int it){
	int d = it + it;

	return d;

}
int main()
{
   // printf() displays the string inside quotation
   int a = 0;
	int b = 0;
	int c = a+b;
	while ( b < 5) {
		c = c + 1;
		b++;
		if( b < 2) printf("ha\n");
		else printf("haha\n");
	}

   a = f1(b);
   printf("%d, %d\n",c,a);
   return c;
}


