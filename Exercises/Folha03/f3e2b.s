.text
.global f3e2b
.type f3e2b, "function"

f3e2b:
	mov			X3, X2 //X3 - resultado/mínimo
ciclo:
	cmp			X1, #0 //verifica se já chegou ao fim
	beq			fim
	ldr			X2, [X0], #8
	cmp			X2, X3
	csel		X3, X2, X3, lt //atualiza o valor mínimo
	sub			X1, X1, #1
	b			ciclo
fim:
	mov			X0, X3
	ret
