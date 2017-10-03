#include <stdio.h>
int main()
{
   // printf() displays the string inside quotation
	int a[5] ;
	int x = 0, y =0,z = 0;

	for(int i = 0;i < 5;i++){
		x = y+z;
		a[i] = 6*i+x * x;
	}
   return 0;
}
