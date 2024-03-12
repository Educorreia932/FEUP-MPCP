.text
.global f3e6a
.type f3e6a, "function"

f3e6a:
	mov			X12, X0
	bfi			X10, X12, #8, #56
	bfi			X10, XZR, #0, #7 //Modificar para «ubfm»
	lsl			X11, X12, #8 //Para verificar
	ret
