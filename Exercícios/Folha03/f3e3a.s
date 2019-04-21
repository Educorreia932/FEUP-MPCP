.text
.global f3e3a
.type f3e3a, "function"

f3e3a:
	mov			X2, #0
ciclo:
	ldrb		W1, [X0], #1
	cmp			W1, #0
	beq			fim
	add			X2, X2, #1
	b			ciclo
fim:
	mov			X0, X2
	ret
