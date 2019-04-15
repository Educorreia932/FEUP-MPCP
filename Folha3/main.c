#include <stdio.h>
#include <stdlib.h>

int main(void) {
	void extern f3e4b(int *a,long int *b, int c);
	int extern f3e5b(char *a);
	int extern f3e5c(char *a);

	int x = f3e5b("ANA");

	printf("%d\n", x);
	return EXIT_SUCCESS;
}
