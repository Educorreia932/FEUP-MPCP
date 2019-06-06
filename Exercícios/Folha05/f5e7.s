.data
C40: .double 4.0
C10: .double 1.0
pi: .double 3.141592653

.text
.global f5e7
.type f5e7, "function"

f5e7:
	FCMP D0, #0
	BLT menor
	LDR D1, pi //D1 = π
	FADD D0, D0, D1 //D0 = x + π
	FMUL D1, D0, D0 //D1 = (x + π)²
	FMUL D1, D1, D0 //D1 = (x + π)³
	FSQRT D0, D1
	B fim
menor:
	LDR D1, C40
	FSUB D0, D1, D0
	FSQRT D0, D0
	LDR D1, C10
	FDIV D0, D1, D0
fim:
	ret
