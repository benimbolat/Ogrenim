#include <stdio.h>
#include <stdlib.h>

#define sembolikIsim 5
/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a , sayiDizisidir[sembolikIsim] ;

	for(a = 0; a < sembolikIsim; a++) {
		printf("%d. sayiyi giriniz => ",a+1);
		scanf("%d",&sayiDizisidir[a]);
	}

	puts("\n * * * * * * * * * * * * * * * \n");

	sayiDizisidir[3] = (35654645646); //3. indexe istediðimiz sayiyi verebiliriz.
	
	
	for(a = 0; a < sembolikIsim; a++) {
		printf("%d. sayiniz => %d\n",a+1,sayiDizisidir[a]);
	}

	return 0;
}
