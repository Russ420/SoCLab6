#include "matmul.h"
//#include <stdio.h>
//int* matmul()
int* __attribute__ ( ( section ( ".mprjram" ) ) ) matmul()
{
	int i=0;
	int j;
	int k;
	int sum;
	int kk;
	unsigned int count = 0;
	for (i=0; i<SIZE; i++){
		for (j=0; j<SIZE; j++){
			sum = 0;
			for(k = 0;k<SIZE;k++)
				sum += A[(i*SIZE) + k] * B[(k*SIZE) + j];
			result[(i*SIZE) + j] = sum;
		}
	}
	return result;
}

//void main(void){
//	int* output;
//	output = matmul();
//	for(int i=0;i<SIZE*SIZE;i=i+1){
//		printf("%x, %d\n", output[i], output[i]);
//	}
//}