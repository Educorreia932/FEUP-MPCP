.text
.global f3e6b
.type f3e6b, "function"

f3e6b:
	mov			X12, X0
	ubfx		X10, X12, #8, #56
	sbfm		X10, XZR, #0, #7
	asr			X10, X12, #8
	ret
