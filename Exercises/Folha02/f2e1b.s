	cmp			x10, x11
	bhi			maior
	b			menor
maior:
	mov			x9, x10
	b			fim
menor:
	mov			x9, x11
fim:
	ret
