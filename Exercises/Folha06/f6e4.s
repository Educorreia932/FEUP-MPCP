.text
.global f6e4
.type f6e4, "function"

f6e4:
	LSR X1, X1, #2
ciclo:
	CBZ X1, fim
	ldr Q0, [X0]
	dup V1.4S, W2
	sqadd V0.4S, V0.4S, V1.4S
	str Q0, [X0], #16
fim:
	ret
