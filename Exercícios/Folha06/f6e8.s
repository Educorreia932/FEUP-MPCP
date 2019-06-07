.text
.global f6e8
.type f6e8, "function"

f6e8:
	lsr			X2, X2, #2
ciclo:
	cbz			X2, fim
	ldr			Q0, [X0], #16
	ldr			Q1, [X1], #16
	fabs		V1.4S, V1.4S //fabs(X[i])
	fmul		V2.4S, V1.4S, V0.S[0] //da * fabs(X[i])
	fsub		V0.4S, V0.4S, V2.4S //Y[i] - da * fabs(X[i])
	sub			X2, X2, #1
	b			ciclo
fim:
	ret
