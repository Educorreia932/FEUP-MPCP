.text
.global nword
.type nword, "function"

nword:
	mov			X1, #0 //Contador
ciclo:
	ldrb		W3, [X0]
	cbz			W3, fim
	cmp			W3, #' '
	add         X1, X1, #1
	bne			diferente
diferente:
	add			X0, X0, #1
	b			ciclo
fim:
	add			X0, X1, #1
	ret
