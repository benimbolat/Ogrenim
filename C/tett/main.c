#include <stdio.h>
#include <stdlib.h>
//yýldýzlarla üçgen çizme
int main(int argc, char *argv[]) {
		int a , b ,c=5;
		
		/*
		for(a=0;a<8;a++){
			printf("\n");
			for(b=0;b<8;b++){
				printf("* ");
			}
		}*/
		
		/*
		//dik üçgen
		for(a=3;a<6;a++){
			
			for(b=4;b<=a+1;b++){
				printf("* ");
			}
			printf("\n");
		}
		*/
		
		for(a=0;a<=c;a++){
			for(b=a+1;b>c;b++){
				printf("* ");
			}
			printf("\n");
		}
		
	return 0;
}
