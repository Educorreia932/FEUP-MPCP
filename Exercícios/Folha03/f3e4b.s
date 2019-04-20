.text
.global f3e4b
.type f3e4b, "function"

f3e4b:
	cbz			X2, fim
	ldrsw		X9, [X0]
	str			X9, [X1]
	add			X0, X0, #4
	add			X1, X1, #8
	sub			X2, X2, #1
	b			f3e4b
fim:
	ret
