#include <stdio.h>
#include <stdlib.h>

int topla(int x, int y){ //Fonksiyon i�lemine g�re Void , int gibi do�ru se�enekler yaz�lmal�.
	
	int sonuc;
	sonuc = x + y;
	
	return sonuc;	
}

int main(int argc, char *argv[]) {
	
	int toplam,a,b;
	puts("Sirayla Iki Adet Sayi Giriniz.");
	scanf("%d %d",&a,&b);
	
	toplam = topla(a,b);
	
	printf("%d ile %d sayilarinin toplami %d yapar.",a,b,toplam);	
	
	return 0;
}
