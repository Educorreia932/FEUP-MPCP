.text
.global f3e2a
.type f3e2a, "function"

f3e2a:	
	mov			X3, X2 //X3 - resultado/máximo
ciclo:
	ldrsw		X2, [X0], #4
	cmp			X1, #0 //verifica se já chegou ao fim
	beq			fim
	cmp			X2, X3
	csel		X3, X2, X3, gt //atualiza o valor máximo
	sub			X1, X1, #1
	b			ciclo
fim:
	mov			X0, X3
	ret
