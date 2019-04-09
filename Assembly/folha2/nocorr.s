.text
.global nocorr
.type nocorr, "function"

nocorr:
	mov			X2, #0 //Contador
ciclo:
	ldrb		W3, [X0]
	cbz			W3, fim
	cmp			X3, X1
	add         X1, X1, #1
	bne			diferente
diferente:
	add			X0, X0, #1
	b			ciclo
fim:
	mov			X0, X1
	ret

