#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
	
	int satir,sutun,i,j,k,l,cevap;
	printf("Kaç satýr olsun = ");
	scanf("%d", &satir);
	
	printf("Kaç sütun olsun = ");
	scanf("%d", &sutun);
	
	int matris [satir] [sutun];
	
	for(i=0;i<satir;i++){
		for(j=0;j<sutun;j++){
			printf("\n Deðeriniz [%d][%d] --> ",i+1,j+1);
			scanf("%d",&matris[i][j]);
		}
	}

	Printf("Dizi Elemanlarýný yazdýrmak istermisiniz? 0(Evet)/1(Hayýr) ")
	
		for(k=0;k<satir;k++){
			for(l=0;l<sutun;l++){
				printf("[%d][%d]",&matris[k][l]);
			}	
		}	
	
	return 0;
}
