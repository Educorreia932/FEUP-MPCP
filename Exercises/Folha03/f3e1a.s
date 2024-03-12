.text
.global f3e1a
.type f3e1a, "function"

f3e1a:	mov			X11, #0
		mov			x12, X1
ciclo:
		ldr			X10, [X0]
		add			X11, X11, X10
		add			X0, X0, #4
		sub			X12, X12, #1
		cmp			X12, #0
		bne			ciclo
		mov			X0, X11
		ret
