.text
.global f3e3b
.type f3e3b, "function"

f3e3b:
	ldr			W4, =0x40
	orr 		W0, W0, W4 //converte a letra a procurar para minúscula
	mov			X3, #0	//inicia o contador
ciclo:
	ldrb		W2, [X1], #1 //carrega o caráter
	orr			W2, W2, W4 //converte o caráter em questão para minúsculo
	cmp			W0, W2 //compara com o caráter que se pretende encontrar
	bne			diferente
	add			X3, X3, #1 //incrementa o contador caso os dois sejam iguais
diferente:
	cmp			X2, #0
	bne			ciclo
	mov			X0, X3
	ret
