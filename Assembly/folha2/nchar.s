.text
.global nchar
.type nchar, "function"

nchar:
	mov			X1, #0 //Contador
ciclo:
	ldrb		W3, [X0]
	cbz			W3, fim
	add			X1, X1, #1
	add			X0, X0, #1
	b			ciclo
fim:
	mov			X0, X3
	ret
