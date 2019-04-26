.text
.global f3e6b
.type f3e6b, "function"

f3e6b:
	mov			X12, X0
	sbfx		X10, X12, #8, #56
	asr			X11, X12, #8
	ret
