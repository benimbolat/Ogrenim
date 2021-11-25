#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	
	
	int sayi1,sayi2,islem,sonuc;
	
	printf("1.Sayiyi giriniz = ");
	scanf("%d",&sayi1);
	printf("2. Sayiyi giriniz = ");
	scanf("%d",&sayi2);
	
	printf("Yapcan iþlem = 1 toplama , 2 çýkarma , 3 çarpma , 4 Bölme ");
	scanf("%d",&islem);
		
	if (islem == 1 )
		sonuc = sayi1 + sayi2;
		printf("Ýþleminiz toplamý %d ",sonuc);
	else if ( islem == 2)
		sonuc = sayi1 - sayi2;
		printf("Ýþleminiz c %d ",sonuc);
	else if (islem == 3)
		sonuc = sayi1 * sayi2;
		printf("Ýþleminiz ca %d ",sonuc);
	else 
		sonuc = sayi1 / sayi2;
		printf("Ýþleminiz bo %d ",sonuc);
		
	return 0;
}
