.text
.global f6e1a
.type f6e1a, "function"

f6e1a:
	lsr			W3, W3, #2
ciclo:
	cbz			X3, fim
	ldr			Q0, [X0], #16
	ldr			Q1, [X1], #16
	fadd		V2.4S, V0.4S, V1.4S
	str			Q2, [X2]
fim:
	ret
