.text
.global f3e11
.type f3e11, "function"

f3e11:
	clz X2, X0 //CLZ = Count Leading Zeros
	mov X1, #64
	add X0, X1, X2
	ret
