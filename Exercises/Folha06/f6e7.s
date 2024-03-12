.text
.global f6e7
.type f6e7, "function"

f6e7:
	lsr			X1, X1, #2
	cbz			X1, fim
	mov			X3, #0 //Inicializa o contador
	dup			V1.4S, V0.S[0]
ciclo:
	ldr			Q0, [X0], #16
	cmge		V2.4S, V0.4S, V1.4S
	addv		S1, V2.4S
	smov		X2, V1.S[0]
	add			X2, X2, #4
	add			X3, X3, X2
	b			ciclo
fim:
	mov			X3, X2
	ret
