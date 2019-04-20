	lsr			X1, X0, #32
	cmp			W1, W0
	beq			igual
	bne			diferente
igual:
	mov			X7, #1
	b			fim
diferente:
	mov			X7, #0
fim:
	ret
