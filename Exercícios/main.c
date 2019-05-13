#include <stdio.h>
#include <stdlib.h>

extern int f2e3di(int n);
extern int f2e3dii(int n);

extern int f3e1a(int *a, int n);

extern int f3e2a(int *a, int n);
extern long long int f3e2b(long long int *a, int n);
extern short int f3e2c(short int *a, int n);
extern long long int f3e2d(long long int *a, int n);
extern int f3e2e(int *a);

extern int f3e3a(char *s);
extern int f3e3b(char a, char *s);
extern int f3e3c(char *s);
extern int f3e3d(char *s);
extern int f3e3e(char *s, int length);
extern int f3e3f(char *s);

extern void f3e4a(char *a, long int *b, int c);
extern void f3e4b(int *a, long int *b, int c);

extern int f3e5a(long int n);
extern int f3e5b(char *s);
extern int f3e5c(int n);

extern void f3e6a(int a);
extern void f3e6b(int a);
extern void f3e6c(int a);

extern int f3e7a(int *n1, int *n2, int length);
extern int f3e7c(int a, int *n);
extern int f3e7d(int *n1, int *n2);

extern void f3e8a();
extern void f3e8b();

extern void f3e9a(int n);
extern void f3e9b(int n);
extern void f3e9c(int n);

extern long int f5e6(float *V, long int n, float a, float b);

extern double f5e9a(unsigned int x);
double cos(double x);

extern int soma(int *a, int b);
extern int media(int *a, int b);

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

double cos(double x) {

}

int main(void) {
	//char string1[] = "In computer Programming, a string is traditionally a sequence of characters.";
	//char string2[] = "ANAANA";
	//char string3[] = "A a aa, a aa.";


	//histogram(string);
	//printf("%d", f2e3di(92950));
	//printf("The number of uppercase characters in the sentence is %d\n", f3e3d(string1));
	//printf("%d", f3e3e(string2, f3e3a(string2)));
	//printf("The number of words is %d", f3e3f(string3));

	//f3e6b(-12345);
	//f3e6c(123);
	//f3e8b();
	//f3e9a(305419896); //305419896 = 0x12345678
	//f3e9b(305419896);
	//f3e9c(305419896);

	int v[] = {1,3,5,7};

	printf("%d", media(v, 4));

	return EXIT_SUCCESS;
}
