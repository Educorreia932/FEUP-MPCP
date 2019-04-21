.text
.global f3e7d
.type f3e7d, "function"

f3e7d:
	eor			X11, X11, X11
ciclo:
	ldr			W9, [X0]
	ldr			W10, [X1]
	smaddl		X11, W9, W10, X11
	add			X0, X0, #4
	add			X1, X1, #4
	sub			X2, X2, #1
	b			ciclo
fim:
	mov			X0, X11
	ret
