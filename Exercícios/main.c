#include <stdio.h>
#include <stdlib.h>

extern int f3e1a(int *a, int n);
extern int f3e3a(char *s);
extern int f3e3b(char a, char *s);
extern int f3e3c(char *s);
extern int f3e3d(char *s);
extern int f3e3e(char *s);
extern void f3e4b(int *a, long int *b, int c);
extern int f3e5a(long int n);
extern int f3e5b(char *s);
extern int f3e5c(int n);
extern void f3e6a(int a);
extern void f3e6b(int a);
extern int f3e7d(int n);
extern int f3e8a(int n);

void histogram(char *s) {
	char alphabet[30] = "abcdefghijklmnopqrstuwvxyz";

	for (int i1 = 0; i1 < 26; i1++) {
		char a = alphabet[i1];
		printf("%c: ", a);

		for (int i2 = 0; i2 < f3e3b(a, s); i2++)
			printf("*");

		printf("\n");
	}

}

int main(void) {
	char string[] = "In computer Programming, a string is traditionally a sequence of characters, either as a literal constant or as some kind of variable.";

	printf("The number of uppercase characters in the sentence is %d\n", f3e3d(string));
	//histogram(string);

	return EXIT_SUCCESS;
}
