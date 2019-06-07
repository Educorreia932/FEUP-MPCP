.text
.global f6e1a
.type f6e1a, "function"

f6e1a:
	lsr			W3, W3, #2
ciclo1:
	cbz			X3, fim1
	ldr			Q0, [X0], #16
	ldr			Q1, [X1], #16
	fadd		V2.4S, V0.4S, V1.4S
	str			Q2, [X2]
	sub			W3, W3, #1
	b			ciclo1
fim1:
	ret

.text
.global f6e1b
.type f6e1b, "function"

f6e1b:
	lsr			W1, W1, #2
ciclo2:
	cbz			X1, fim2
	ldr			Q1, [X0]
	fmul		V1.4S, V1.4S, V0.S[0]
	str			Q1, [X0], #16
	sub			X1, X1, #1
	b			ciclo2
fim2:
	ret

.text
.global f6e1c
.type f6e1c, "function"

f6e1c:
	stp			X29, X30, [SP, #-16]! //X0 -> float *P, X1 -> float *Q, X2 -> float *R, W3 -> int n, D0 -> float k
	mov			X4, X0 //..., X4 -> float *P, ...
	mov			X0, X1 //X0 -> float *Q, ..
	mov			W1, W3 //X0 -> float *Q, W1 -> int n, ..., D0 -> float k
	bl			f6e1a //X0 -> k × float *Q
	neg			X0, X0 //X0 -> -k × float *Q
	mov			X1, X0 //..., X1 -> -k × float *Q, ...
	mov			X0, X4 //X0 -> float *P, X1 -> -k × float *Q, X2 -> float *R, ...
	bl			f6e1a
	ldp			X29, X30, [SP], #16
	ret





