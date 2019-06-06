.data
C10: .double 1.0
a1: .double 0.278393
a2: .double 0.230389
a3: .double 0.000972
a4: .double 0.078108

.text
.global f5e8a
.type f5e8a, "function"

f5e8a:
	ldr			D1, a1
	ldr			D2, a2
	ldr			D3, a3
	ldr			D4, a4
	ldr			D5, C10
	fmadd		D5, D0, D1, D5 //D5 = 1 + a1x
	fmul		D6, D0, D0 //D0 = x²
	fmadd		D5, D6, D2, D5 //D5 = 1 + a1x + a2x²
	fmul		D6, D0, D6 //D0 = x³
	fmadd		D5, D6, D3, D5 //D5 = 1 + a1x + a2x² + a3x³
	fmul		D6, D0, D6 //D0 = x⁴
	fmadd		D0, D6, D4, D5 //D5 = 1 + a1x + a2x² + a3x³ + a4x⁴
	ret

.data
C00: .double 0.0

.text
.global f5e8b
.type f5e8b, "function"

f5e8b:
	stp			X29, X30, [SP, #-16]!
	ldr			D1, C00
	fcmp		D0, D1
	bge			positivo
	fneg		D0, D0
positivo:
	b			f5e8a
	ldp			X29, X30, [SP], #16
	ret
