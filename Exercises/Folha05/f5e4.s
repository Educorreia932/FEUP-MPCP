.data
C00: .double 0.0

.text
.global f5e4
.type f5e4, "function"

f5e4:
	mov			X2, #8
	smaddl		X0, W2, W1, X0 //X0 passa a ser o endereço do último elemento
	ldr			D2, C00
ciclo:
	cbz			X1, fim
	ldr			D1, [X0], #-8 //Carrega o coeficiente n - 1
	add			D2, D2, D1
	fmul		D2, D0, D1
	sub			X1, X1, #1
	b			ciclo
fim:
	fmov		D0, D2
	ret


