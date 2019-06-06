.data
C00: .double 0.0

.text
.global f5e5
.type f5e5, "function"

f5e5:
	ldr D2, C00
ciclo:
	CBZ X2, fim
	ldr S0, [X0], #4
	ldr S1, [X1], #4
	fmadd D2, D0, D1, D2
	sub X2, X2, #1
fim:
	fmov D0, D2
	ret
