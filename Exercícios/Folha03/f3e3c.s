.text
.global f3e3c
.type f3e3c, "function"

f3e3c:
	mov			X2, #0
ciclo:
	ldrb		W1, [X0], #1
	cmp			W1, #0
	beq			fim
	cmp			W1, 'A'
	beq			incrementar
	cmp			W1, 'a'
	beq			incrementar
	cmp			W1, 'E'
	beq			incrementar
	cmp			W1, 'e'
	beq			incrementar
	cmp			W1, 'I'
	beq			incrementar
	cmp			W1, 'i'
	beq			incrementar
	cmp			W1, 'O'
	beq			incrementar
	cmp			W1, 'o'
	beq			incrementar
	cmp			W1, 'U'
	beq			incrementar
	b			ciclo
incrementar:
	add			X2, X2, #1
	b			ciclo
fim:
	mov			X0, X2
	ret
