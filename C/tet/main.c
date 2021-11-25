#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
//1 den n'e kadar olan sift sayilarýn toplamý ve ort
int main(int argc, char *argv[]) {
	int a,i,sayiN,toplam=0,ortalama=0;
	
	printf("Kaca kadar yazdirmak istiyon = ");
	scanf("%d",&sayiN);
	
	for(a=0;a<=sayiN;a++)
	{
		if(a%2==0)
		{
			toplam=toplam+a;
		}	
	}
	printf("%d\n",toplam);
	
	ortalama = toplam / sayiN;
	
	printf("%d",ortalama);	
	return 0;
}
