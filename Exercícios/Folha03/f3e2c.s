.text
.global f3e2c
.type f3e2c, "function"

f3e2c:
	ldrsh		X2, [X0], #2
	mov			X3, X2 //X3 - resultado/m�ximo
ciclo:
	cmp			X1, #0 //verifica se j� chegou ao fim
	beq			fim
	cmp			X2, X3
	csel		X3, X2, X3, gt //atualiza o valor m�ximo
	sub			X1, X1, #1
	b			ciclo
fim:
	mov			X0, X3
	ret
