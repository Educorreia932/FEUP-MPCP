.text
.global prodint
.type prodint, "function"

//Versão sem processamento paralelo

prodint:
	mov			X5, #0
ciclo:
	cbz			X2, fim
	ldr			W3, [X0], #4
	ldr			W4, [X1], #4
	smaddl		X5, W4, W3, X5
	sub			X2, X2, #1
	b			ciclo
fim:
	mov			X0, X5
	ret

//Versão com processamento paralelo

.global prodintv
.type prodintv, "function"

prodintv:
	mov			X5, #0
	lsr			W2, W2, #2 //Divide por 4
ciclov:
	cbz			X2, fimv
	ldr			Q0, [X0], #16
	ldr			Q1, [X1], #16
	mul			V2.4S, V0.4S, V1.4S
	addv		S3, V2.4S //S3 -> V3.S[0]
	smov		X3, V3.S[0]
	sub			X2, X2, #1
	b			ciclo
fimv:
	mov			X0, X5
	ret

