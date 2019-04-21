.text
.global f3e3d
.type f3e3d, "function"

f3e3d:
	mov			X2, #0
ciclo:
	ldrb		W1, [X0], #1
	cmp			W1, #0
	beq			fim
	cmp			W1, '@'
	cset		W3, hi
	cmp			W3, #0
	beq			ciclo
	cmp			W1, 'Z'
	cset		W4, ls
	cmp			W4, #0
	beq			ciclo
	add			X2, X2, #1
	b			ciclo
fim:
	mov			X0, X2
	ret
