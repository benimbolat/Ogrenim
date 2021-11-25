#include <stdio.h>
#include <conio.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
		int sayi1,sayi2;
		long sonuc;
		char islem;
	
	printf("Yapcan iþlem = ");
	scanf("%s",&islem);
		
	if (islem == '+' ){
		printf("1.Sayiyi giriniz = ");
		scanf("%d",&sayi1);
		printf("2. Sayiyi giriniz = ");
		scanf("%d",&sayi2);
	
		sonuc = sayi1 + sayi2;
		printf("sonuc = %d",sonuc);
	}else if ( islem == '-'){
		printf("1.Sayiyi giriniz = ");
		scanf("%d",&sayi1);
		printf("2. Sayiyi giriniz = ");
		scanf("%d",&sayi2);
	
		sonuc = sayi1 + sayi2;
		printf("sonuc = %d ",sonuc);
	}else if (islem == '*'){
		printf("1.Sayiyi giriniz = ");
		scanf("%d",&sayi1);
		printf("2. Sayiyi giriniz = ");
		scanf("%d",&sayi2);
	
		sonuc = sayi1 * sayi2;
		printf("sonuc= %d ",sonuc);
	}else if (islem == '/') {
		printf("1.Sayiyi giriniz = ");
		scanf("%d",&sayi1);
		printf("2. Sayiyi giriniz = ");
		scanf("%d",&sayi2);
	
		sonuc = sayi1 / sayi2;
		printf("sonuc= %d ",sonuc);
	}
	return 0;
}
