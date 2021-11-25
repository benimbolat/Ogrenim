#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a , b , bosluk  , yildiz = 1, deger ;

	printf ( " deger = ");
	scanf("%d",&deger);
	bosluk = deger * 2;
	for (a = 0 ; a < deger+1 ; a++) {
		printf ("* ");
	}
	printf("\n");
	for ( a = 0 ; a < deger ; a++) {
		printf("*");
		for (b = 1 ; b < bosluk ; b++) {
			printf(" ");
		}
		printf("*");
		printf("\n");
	}
	for (a = 0 ; a < deger+1 ; a++) {
		printf ("* ");
	}

	return 0;
}
