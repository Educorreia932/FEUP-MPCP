	mov			X1, #11
ciclo:
	add			X1, X1, #10
	cmp			X1, #101
	bne			ciclo
	ret
