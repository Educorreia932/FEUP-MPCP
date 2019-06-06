.text
.global f6e7
.type f6e7, "function"

f6e7:
	lsr			X1, X1, #2
	cbz			X1, fim
	mov			X4, #0 //Inicializa o contador
	dup			V1.4S, V0.S[0]
ciclo:
	ldr			Q0, [X0], #16
	cmeq		V2.4S, V0.4S, V1.4S
	addv		S3, V2.4S
	smov		X3, V3.S[0]
	neg			X3, X3
	add			X4, X4, X3
	b			ciclo
fim:
	ret
