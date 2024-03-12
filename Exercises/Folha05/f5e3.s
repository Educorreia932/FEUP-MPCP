.data
C00: .single 0.0
C01: .single 0.1
C15: .single 1.5
C125: .single 12.5
C70: .single 7.0

.text
.global f5e3
.type f5e3, "function"

f5e3:
	mov			X1, #101 //Inicializa o contador
	ldr			D0, C00
ciclo:
	cbz			X1, fim
	fmul		D1, D0, D0 //D1 = x²
	fmul		D1, D1, D0 //D1 = x³
	ldr			D2, C15 //D2 = 1.5
	fmul		D1, D1, D2 //D1 = 1.5x³
	ldr			D2, C125 //D2 = 12.5
	fmul		D2, D0, D2 //D2 = 12.5x
	fsub		D1, D1, D2 //D1 = 1.5x³ - 12.5x
	ldr			D2, C70 //D2 = 7
	fadd		D1, D1, D2 //D0 = 1.5x³ - 12.5x + 7
	str 		D1, [X0], #4
	ldr			D1, C01 //D1 = 0.1
	fadd		D0, D0, D1 //D0 = x + 0.1
	sub			X1, X1, #1 //Decrementa o contador em uma unidade
	b			ciclo
fim:
