#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	int fas ;
	
	puts("Furkaninkini kac cm olarak tahmin ediyorsun.");
	scanf("%d",&fas);
	
	if(fas >= 20){
		printf("Bilemedin 20den buyuk degil");
	}else if (fas >= 10){
		printf("Bilemedin 10dan buyuk degil");
	}else if ( fas >= 1){
		for(;;){
			printf("BiLEMEDiN CM DEGiL KM DiYECEKSiN.\n");
		}
	}
}
