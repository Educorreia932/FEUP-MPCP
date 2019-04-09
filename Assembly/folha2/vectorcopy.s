.text
.global vectorcopy
.type vectorcopy, "function"

vectorcopy:
ciclo:
	ldr W3, [X1]
	sxtw X3, W3
	str X3, [X2]
	add X1, X1, #4
	add X2, X2, #8
	sub X0, X0, #1
	cbz X0, fim
	b ciclo
fim:
	ret
