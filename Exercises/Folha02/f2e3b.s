	mov			X1, #0 //inicia o contador de bits
ciclo:
	and			X2, X0, #1 //isola o bit menos significativo
	add			X1, X1, X2 //se X2 = 1, incrementa X1
	lsr			X0, X0, #1 //passa para o bit seguinte
	cmp			X0, #0
	bne			ciclo //repete enquanto houver bits a processar (a 1)
	ret
