.data

C100 .double 100.0
C50 .double 50.0
pi .double 3.141592653
C180 .double 180.0

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
