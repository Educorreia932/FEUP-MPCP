#include <stdio.h>
#include <stdlib.h>

//extern int nchar(char *a);
//extern int nword(char *a);
extern int nocorr(char *a, char b);

int secondmain(void) {
	char frase[] = "aaaaa";
	int n;
	n = nocorr(frase, 'a');
	printf("O número de ocorrências é %d\n", n);
	return EXIT_SUCCESS;
}
