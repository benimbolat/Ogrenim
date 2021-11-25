#include <stdio.h>
#include <stdlib.h>

void bankamatik(int aa){
	int a,yirmilik,onluk,beslik;
	a = aa;
	
	if(a % 5 == 0){
		
		yirmilik = a/20;
		a -= yirmilik*20;
		
		onluk = a/10;
		a -= onluk*10;
		
		beslik = a/5;
		a -= beslik*5;
		
		printf("\nYirmilik = %d",yirmilik);
		printf("\nOnluk = %d",onluk);
		printf("\nBeslik = %d\n",beslik);			
	}else {
		printf("Girilen deger 5 TL ve katlari olmalidir\a\n"); 
	}
}
int main() {
	int aa;
	
	printf("Ne kadar cekmek istiyorsun = ");
	scanf("%d",&aa);

	bankamatik(aa);
	
	return 0;
}
