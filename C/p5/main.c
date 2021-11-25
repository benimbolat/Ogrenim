#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
	//C ile Hesap Makinesi. Kullanýlanlar (Swich-case, if-else , 
	char secim;
	float x,y,sonuc;
	
	puts("Iki sayi girin ");
	scanf("%f %f",&x,&y);
	
	puts("Yapmak istediðiniz islemi seciniz; ");
	puts("[+] Toplama ");
	puts("[-] Cikarma ");
	puts("[*] Carpma ");
	puts("[/] Bolme ");
	
	printf("Seciminiz = ");
	scanf("%s",&secim);
	
	switch(secim){
		case '+':	sonuc = x + y;	printf("Toplam sonucunuz = %f",sonuc);	break;
		case '-':	sonuc = x - y;	printf("Cikan sonucunuz = %f",sonuc);	break;
		case '*':	sonuc = x * y;	printf("Carpim sonucunuz = %f",sonuc);	break;
		case '/':	sonuc = x / y;	printf("Bolumden kalan sonucunuz = %f",sonuc);	break;
		default : puts("Yanlis secim !\a");
	}	
	return 0;
}
