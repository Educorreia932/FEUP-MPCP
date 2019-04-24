.text
.global f3e3e
.type f3e3e, "function"

f3e3e:
	mov			W4, #1
	sub   		X1, X1, #1
ciclo:
	ldrb		W2, [X0], #1
	ldrb		W3, [X0]
	cmp			W2, #0
	beq			fim
	cmp			W2, W3
	sub 		X1, X1, #1
	beq			ciclo
	mov			W4, #0
fim:
	mov			X0, X4
	ret
