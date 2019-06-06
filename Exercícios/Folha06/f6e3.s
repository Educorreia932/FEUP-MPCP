.text
.global f6e3
.type f6e3, "function"

f6e3:
	mov			X5, #0
	lsr			X1, X1, #4
	dup			V1.16B, W2
ciclo:
	cbz			X1, fim
	ldr			Q0, [X0], #16
	cmeq		V2.16B, V1.16B, V0.16B //Se for igual, fica a -1 (tudo a 1s)
	addv		B3, V2.16B
	smov		X3, V3.B[0]
	neg			X3, X3
	add			X5, X5, X3
	sub			X1, X1, #1
	b			ciclo
fim:
	mov			X0, X5
	ret
