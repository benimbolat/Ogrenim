#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a , b , yildiz , bosluk , giris;

	printf("Giris yapmak istediðiniz sayiyi giriniz = ");
	scanf ("%d",&giris);

	yildiz = 1;
	bosluk = giris - 1;

	//Ana for döngüsü
	for(a = 0 ; a < giris ; a++) {
		//bosluk için ayrý döngü kullanýlýyor
		for(b = 0 ; b < bosluk ; b++) {
			printf(" ");
		}
		for(b = 0 ; b < yildiz ; b++) {
			printf("* ");
		}
		printf("\n");
		yildiz++;
		bosluk--;
	}
	for (a = 0 ; a < giris ; a++) {
		for(b = 0 ; b < bosluk+2 ; b++) {
			printf(" ");
		}
		for(b = 0 ; b < yildiz-2; b++) {
			printf("* ");
		}

		printf("\n");
		yildiz--;
		bosluk++;
	}









	/*int s ,k , giris;
	int yildiz =1 ;

	printf("Giris yapiniz = ");
	scanf("%d",&giris);

	for (k=0 ; k < giris ; k++){

		for (s = 0 ; s < yildiz ; s++){

			printf("* ");

		}
		printf("\n");
		yildiz++;
	}*/


	return 0;
}
