.text
.global MAXIMO
.type MAXIMO, "function"

MAXIMO:
	ldr			W9, [X0] //Carrega o primeiro valor
	mov			W10, W9 //X10 é o máximo
ciclo:
	add			X0, X0, #4 //Incrementa o endereço
	ldr			W9, [X0]
	cmp			W9, W10 //Verifica se o elemento atual é maior que o máximo
	bhi			maior
	b			menor_igual
maior:
	mov			X10, X9
menor_igual:
	sub			X1, X1, #1
	cmp			X1, #0
	bne			ciclo
	mov			X0, X10
	ret
