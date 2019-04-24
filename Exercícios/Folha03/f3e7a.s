.text
.global f3e7a
.type f3e7a, "function"

f3e7a:
	cbz			X2, fim
	ldr			X3, [X0], #4
	ldr			X4, [X1], #4
	add			X5, X3, X4
	str			X5, [X0, #-4]
	sub			X2, X2, #1
	b			f3e7a
fim:
	ret
