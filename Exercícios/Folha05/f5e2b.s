.data
pi .double 3.141592653

.text
.global �rea
.type �rea, "function"

�rea:
	stp			X29, X30, [SP, #-16]! //Opcional (n�o � chamada outra subrotina)
	fmul		D0, D0, D0 //D0 = raio�
	ldr			D1, pi
	fmul		D0, D0, D1
	str			X29, X30, [SP], #16
	ret
