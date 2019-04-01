#include <stdio.h>
#include <stdlib.h>

extern int MAXIMO(int *a, int n);

int maximo(void) {
	int dim = 5;
	int v[] = { 3, -1, 8, 0, -3};
	int res;
	res = MAXIMO(v, dim);
	printf("Elemento máximo = %d\n", res);
	return EXIT_SUCCESS;
}
