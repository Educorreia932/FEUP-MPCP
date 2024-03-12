.text
.global f3e3e
.type f3e3e, "function"

f3e3e:
	mov			X4, #1
	sub X1, X1, #1
	add 		X3, X0, X1
	ADD X1, X1, #1
ciclo:
	cmp 		X1, #1
	ble 		fim
	ldrb		W8, [X0], #1
	ldrb		W9, [X3], #-1
	cmp			W8, W9
	beq 		ciclo
	mov 		X4, #0
fim:
	mov			X0, X4
	ret
