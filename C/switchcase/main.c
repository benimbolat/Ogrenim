#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int aylar=0;
	
	printf("Aylari sayi cinsinden giriniz = ");
	scanf("%d",&aylar);
	
	switch (aylar){
		case 1:
			printf("1. ay Ocak ayidir.");
			break;
		case 2:
			printf("2. ay Subat ayidir.");
			break;
		case 3:
			printf("3. ay Mart ayidir.");
			break;
		case 4:
			printf("4. ay Nisan ayidir.");
			break;
		case 5:
			printf("5. ay Mayis ayidir.");
			break;
		case 6:
			printf("6. ay Haziran ayidir.");
			break;
		default:
			printf("Herhangi bir ay. ");
	}
	
	return 0;
}
