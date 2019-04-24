.text
.global f3e7c
.type f3e7c, "function"

f3e7c:
	cbz			X2, fim
	ldr			X3, [X0], #4
	smull		X4, X1, X3
	str			X4, [X0, #-4]
	sub			X2, X2, #1
	b			f3e7c
fim:
	ret
