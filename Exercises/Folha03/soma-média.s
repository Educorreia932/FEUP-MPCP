.text
.global soma
.type soma, "function"

soma:
	mov			W2, #0
ciclo:
	cbz			W1, fim
	ldr			W3, [X0], #4
	add			W2, W2, W3
	sub			W1, W1, #1
	b			ciclo
fim:
	mov			X0, X2 //W2
	ret

.text
.global media
.type media, "function"

media:
	stp			X29, X30, [SP, #-16]!
	//mov		 X29, SP -> o valor de SP não é modificado, logo não é necessário guardá-lo
	str			X1, [SP, #-16]!
	bl			soma
	ldr			X1, [SP], #16
	sdiv		X0, X0, X1
	ldp			X29, X30, [SP], #16
	ret
