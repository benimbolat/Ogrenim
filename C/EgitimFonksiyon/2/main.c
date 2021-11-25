#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
int yilla(int yil){
	if(yil % 4 == 0 && yil % 100 != 0 || yil % 400==0) return 1;
	
	else return 0;	
}

int main(int argc, char *argv[]) {
	int yil;
	
	printf("Yýl giriniz = ");
	scanf("%d",&yil);
	
	if(yilla(yil)){
		printf("%d Atýl Yýldýr",yil);
	}else{
		printf("%d Atýl yýl deðildir.",yil);
	}
	
	
	
	return 0;
}
