.text
.global f6e6
.type f6e6, "function"

f6e6:
	lsr			X1, X1, #2
	fmov		D2, XZR
ciclo:
	cbz			X1, fim
	ldr			Q0, [X0], #16
	fmul		V0.2D, V0.2D, V0.2D
	ins			V1.D[0], V0.D[1]
	fadd		D1, D0, D1
	fadd		D2, D2, D1
	sub			X1, X1, #1
	b			ciclo
fim:
	fsqrt D0, D2
	ret
