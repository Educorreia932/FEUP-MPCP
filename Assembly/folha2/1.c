/*
 * ex1.c
 *
 *  Created on: 01/04/2019
 *      Author: skelo
 */

#include <stdio.h>
#include <stdlib.h>

extern int SOMA_V(int *a, int n);

int main(void) {
	int dim = 5;
	int v[] = { 3, -1, 8, 0, -3}; // Para testar
	int res;
	res = SOMA_V(v, dim);
	printf("Soma dos elementos = %d\n", res);
	return EXIT_SUCCESS;
}
