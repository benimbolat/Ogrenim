#include <stdio.h>
#include <stdlib.h>
# define N 10
/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i;
	float x[N] , ort , toplam = 0.0;

	printf("Ortalamasini hesaplamak istediginiz sayilari giriniz (max = 10 adet)\n");

	for(i=0; i<N; i++) {
		printf("%d. elemana kac gireceksin ? = ",i+1);
		scanf("%f",&x[i]);
		
		toplam += x[i];
	}
	ort = toplam / N; // N ' e bölünme sebebi N deðerine define N 10 diyerek 10 dememiz.
	printf("sayi içinden ortalamaniz = %f bulunmustur",ort);

	return 0;
}
