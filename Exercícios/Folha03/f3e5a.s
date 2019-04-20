.text
.global f3e5a
.type f3e5a, "function"

f3e5a: 
	clz X2, X0
	mov X3, #63
	sub X0, X3, X2
	ret
