.text
.global f6e9
.type f6e9, "function"

f6e9:
	lsr			W3, W3, #2
ciclo:
	cbz			W3, fim
	ldr			Q0, [X0], #16 //Q0 = (a1, b1, a2, b2)
	ldr			Q1, [X1], #16 //Q1 = (c1, d1, c2, d2)

	fmul		V2.4S, V0.4S, V1.4S //Q2 = (a1 * c1, b1 * d1, a2 * c2, b2 * d2)
	ins			V3.S[0], V2.S[1] //S3 = b1 * d1
	fsub		S4, S2, S3 //S4 = a1 * c1 - b1 * d1 ✔️

	ins			V2.S[0], V2.S[2] //S2 = a2 * c2
	ins			V3.S[0], V2.S[3] //S3 = b2 * d2
	fsub		S5, S2, S3 //S5 = a2 * c2 - b2 * d2 ✔️

	ins			V6.S[0], V1.S[1]
	ins			V6.S[1], V1.S[0]
	ins			V6.S[2], V1.S[3]
	ins			V6.S[3], V1.S[2] //Q6 = (d1, c1, d2, c2)

	fmul		V0.4S, V0.4S, V1.4S //Q0 = (a1 * d1, b1 * c1, a2 * d2, b2 * c2)
	ins			V1.S[0], V0.S[1] //S1 = b1 * c1
	fadd		S1, S2, S3 //S1 = a1 * d1 + b1 * c1 ✔️

	ins			V2.S[0], V0.S[2] //S2 = a2 * d2
	ins			V3.S[0], V0.S[3] //S3 = b2 * c2
	fadd		S0, S2, S3 //S0 = a2 * c2 + b2 * d2  ✔️

	str			S4, [X2], #4
	str			S1, [X2], #4
	str			S5, [X2], #4
	str			S0, [X2], #4

	sub			W3, W3, #1
	b			ciclo
fim:
	ret
