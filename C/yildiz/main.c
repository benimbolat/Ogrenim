#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,j,k,l,c=5;
   for(i=0;i<=4;i++){
      for(j=1;j<=i;j++){
          printf("*");
      }
      printf("\n");
   }	
   for(k=1;k<=5;k++){
   		for(l=5;l>=k;l--){
   			printf("*");
		   }
		printf("\n");   
   }
   
	return 0;
}
