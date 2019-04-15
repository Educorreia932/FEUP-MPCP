.text
.global f3e5b
.type f3e5b, "function"

f3e5b:
	ldr X1, [X0]
	rev X2, X1
	cmp X2, X1 //bits resultantes ficam à esquerda
	cset	 W0, eq
	ret