#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	
	int sayi1,sayi2,islem,sonuc;
	
	printf("1.Sayiyi giriniz = ");
	scanf("%d",&sayi1);
	printf("2. Sayiyi giriniz = ");
	scanf("%d",&sayi2);
	
	printf("Yapcan i�lem = 1 toplama , 2 ��karma , 3 �arpma , 4 B�lme ");
	scanf("%d",&islem);
		
	if (islem == 1 )
		sonuc = sayi1 + sayi2;
		printf("��leminiz toplam� %d ",sonuc);
	else if ( islem == 2)
		sonuc = sayi1 - sayi2;
		printf("��leminiz c %d ",sonuc);
	else if (islem == 3)
		sonuc = sayi1 * sayi2;
		printf("��leminiz ca %d ",sonuc);
	else 
		sonuc = sayi1 / sayi2;
		printf("��leminiz bo %d ",sonuc);
		
	return 0;
}
