#include <stdio.h>
#include <stdlib.h>

extern void vectorcopy(int nElems, long int *array1, long long int *array2);

int main(void) {
	long int array1[] = { 3, 2, 1, 42000 };
	int nElems = 4;
	long long int array2[] = {};
	vectorcopy(nElems, array1, array2);
	printf("O elemento em questão é %lld\n", array2[2]);
	return EXIT_SUCCESS;
}
