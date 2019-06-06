.text
.global f6e8
.type f6e8, "function"

f6e8:
	LSR X2, X2, #2
	cbz X2, fim
	sub X2, X2, #1
fim:
	ret
