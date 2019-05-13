.data
pi .double 3.141592653

.text
.global área
.type área, "function"

área:
	stp			X29, X30, [SP, #-16]! //Opcional (não é chamada outra subrotina)
	fmul		D0, D0, D0 //D0 = raio²
	ldr			D1, pi
	fmul		D0, D0, D1
	str			X29, X30, [SP], #16
	ret
