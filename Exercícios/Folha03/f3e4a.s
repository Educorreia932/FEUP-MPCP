.text
.global f3e4a
.type f3e4a, "function"

f3e4a:
	cbz			X2, fim
	ldrb		X9, [X0], #1
	str			X9, [X1], #8
	sub			X2, X2, #1
	b			f3e4a
fim:
	ret
