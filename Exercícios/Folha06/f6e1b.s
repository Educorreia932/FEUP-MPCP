.text
.global f6e1b
.type f6e1b, "function"

f6e1b:
	lsr			W1, W1, #2
ciclo:
	cbz			X1, fim
	ldr			Q1, [X0]
	fmul		V1.4S, V1.4S, V0.S[0]
	str			Q1, [X0], #16
	sub			X1, X1, #1
	b			ciclo
fim:
	ret
