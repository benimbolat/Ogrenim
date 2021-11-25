#include <stdio.h>
#include <stdlib.h>

int toplaFonksiyonu (int sayi1 , int sayi2){
	
	int sonuc;
	
	sonuc = sayi1 + sayi2 ;
	
	return sonuc ;
}

int cikarmaFonksiyonu (int sayi1 , int sayi2){
	
	
	int sonuc;
	
	sonuc = sayi1 - sayi2 ;
	
	return sonuc ;
}

int bolmeFonksiyonu (int sayi1 , int sayi2){
	
	int sonuc ;
	
	sonuc = sayi1 / sayi2 ;
	
	return sonuc ;
}

int carpmaFonksiyonu (int sayi1 , int sayi2){
	int sonuc ;
	
	sonuc = sayi1 * sayi2 ;
	
	return sonuc ;
}

int main(int argc, char *argv[]) {
	
	int sayi1 , sayi2 , cikarma , toplam , bolme , carpma;
	char  deger;
	
	printf("1. Sayiyi Giriniz = ");
	scanf("%d",&sayi1);
	
	printf("Hangi Islemi Yapmak istiyorsun ? = ");
	scanf("%s",&deger);
		
	printf("2. Sayiyi Giriniz = ");
	scanf("%d",&sayi2);
	
	switch(deger){
		case '+': 
			toplam = toplaFonksiyonu(sayi1,sayi2); 
			printf("%d",toplam); 
			break;
			
		case '-': 
			cikarma = cikarmaFonksiyonu(sayi1,sayi2);	
			printf("%d",cikarma); 
			break;
			
		case '*':
			carpma = carpmaFonksiyonu(sayi1,sayi2); 
			printf("%d x %d = %d ' dir.\n",sayi1,sayi2,carpma);
			break;
			
		case '/':
			bolme = bolmeFonksiyonu(sayi1,sayi2);
			printf("%d",bolme);
			break;
	}		
	return 0;
}
