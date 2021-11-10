#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	//içi dolu dikdörtgen oluþturmak için.
	int i,j,x=5,y=x*2;
	for(i=1;i<=y;i++){
		for(j=1;j<=x;j++){
			printf("*");
		}
		printf("\n");
	}


	return 0;
}
