	mov			X2, #0 //Inicializa o contador
ciclo:
	ldr			S2, [X0], #4 //Carrega o primeiro elemento do vetor de floats
	sub			X1, X1, #1 //Decrementa o tamanho do vetor
	cbz			fim, X1 //Verifica se já chegou ao fim
	fcmp		S2, S0
	blt			ciclo
	fcmp		S2, S1
	bgt			ciclo
	add			X2, X2, #1 //Incrementa o contador se o elemento estiver entre a e b
	b			ciclo
fim:
	mov			X0, X2
