.text
.global f3e3e
.type f3e3e, "function"

f3e53e:
	ldr			X1, [X0]
	rev			X2, X1
	cmp			X2, X1 //bits resultantes ficam à esquerda
	cset		W0, eq
	ret
