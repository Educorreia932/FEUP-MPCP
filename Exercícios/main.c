#include <stdio.h>
#include <stdlib.h>

extern int f3e1a(int *a, int n);
void extern f3e4b(int *a,long int *b, int c);
int extern f3e5a(long int n);
int extern f3e5b(char *s);
int extern f3e5c(int n);
void extern f3e6a(int a);
void extern f3e6b(int a);
int extern f3e7d(int n);
int extern f3e8a(int n);

int main(void) {
	f3e6b(123);

	return EXIT_SUCCESS;
}
