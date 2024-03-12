.text
.global f3e3f
.type f3e3f, "function"

f3e3f:
	mov			X3, #0 //inicia o contador
ciclo:
	ldrb		W1, [X0], #1
	cmp			W1, #0
	beq			fim
	cmp			W1, #' '
	bne			salto
	add			X3, X3, #1
salto:
	b			ciclo
fim:
	add			X3, X3, #1
	mov			X0, X3
	ret
