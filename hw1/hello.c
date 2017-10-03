#include <stdio.h>
int main()
{
   // printf() displays the string inside quotation
   int a = 0;
	int b = 0;
	int c = a+b;
	while ( b < 5) {
		c = c + 1;
		b++;
	}
   //printf("Hello, World!");
   return c;
}
