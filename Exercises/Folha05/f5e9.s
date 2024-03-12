.data

C100: .double 100.0
C50: .double 50.0
pi: .double 3.141592653
C180: .double 180.0

.text
.global func
.type func, "function"

func:
	stp			X29, X30, [SP, #-16]!
	ucvtf		D0, W0
	ldr			D1, pi
	fmul		D0, D0, D1
	ldr			D1, C180
	fdiv		D0, D0, D1 //D0 = x (em radianos)
	bl			cos	//D0 = cos(x)
	ldr			D1, C50
	ldr			D2, C100
	fmadd		D0, D0, D1, D2

.data

F10: .double 0.000000275
F8: .double 0.0000248
F4: .double 0.00138
F2: .double 0.5
F1: .double 1.0

.text
.global cos
.type cos, "function"
	//Fazer com repetição (vetor)

cos:
	stp			X29, X30, [SP, #-16]
	mov			X29, SP
	fnmul		D0, D0, D0

	ldr			D2, F10
	fmul		D1, D2, D0

	ldr			D2, F8
	fadd		D1, D1, D2
	fmul		D1, D1, D0

	ldr			D2, F4
	fadd		D1, D1, D2
	fmul		D1, D1, D0

	ldr			D2, F2
	fadd		D1, D1, D2
	fmul		D1, D1, D0

	ldr			D2, F1
	fadd		D1, D1, D2

	fmov		D0, D1
	ldp			X29, X30, [SP], #16
	ret
