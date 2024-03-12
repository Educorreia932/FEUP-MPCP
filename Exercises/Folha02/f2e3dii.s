.text
.global f2e3dii
.type f2e3dii, "function"

f2e3dii:
	mov			X3, X0
	mov			X7, #0 //contador do número de ocorrências da sequência de bits "10110"
ciclo:
	cmp			X3, #0
	beq			fim
	ubfx		X4, X3, #0, #5 //extrai os cinco primeiro bits
	cmp			X4, #22 //22 = 10110b
	lsr			X3, X3, #1
	bne			ciclo
	add			X7, X7, #1
	b			ciclo
fim:
	mov			X0, X7
	ret
