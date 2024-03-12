.text
.global f6e5
.type f6e5, "function"

f6e5:
	lsr			X1, X1, #2
ciclo:
	cbz			X1, fim
	ldr			Q0, [X0] //Q0 = (x1, y1, x2, y2...)
	ins			V0.S[0], V1.S[1]
	ins			V0.S[1], V1.S[0]
	ins			V0.S[2], V1.S[3]
	ins			V0.S[3], V1.S[2]
	str			Q1, [X0], #16
	sub			X1, X1, #1
	b			ciclo
fim:
	ret
