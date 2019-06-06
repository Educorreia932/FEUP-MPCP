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

extern float f5e2a(float A, float B, float C, float D);
extern float f5e2c(float x1, float y1, float x2, float y2);
extern void f5e3(float *tab);
extern double f5e4(double x, double *coefs, int n);
extern long int f5e6(float *V, long int n, float a, float b);
extern double f5e7(double x);
extern double f5e8a(double x);
extern double f5e8b(double x);

extern double f5e9a(unsigned int x);
extern double cos(double alfa);

extern void f6e1a(float *P, float *Q, float *R, int n);
extern long int prodint(int *r, int *s, int n);
extern long int prodintv(int *r, int *s, int n);
extern long int f6e3(char *V, long int n, char val);
extern void f6e4(int *Z, int n, int x);
extern double f6e5(float *X, float *Y, int n);
extern long int f6e7(float *V, long int n, float lim);
extern void f6e8(float *X, float *Y, int n, float da);

extern int soma(int *a, int b);
extern int media(int *a, int b);

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
