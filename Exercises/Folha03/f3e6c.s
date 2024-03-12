.text
.global f3e6c
.type f3e6c, "function"

f3e6c:
	mov			X14, X0
	extr 		W13, W14, W14, #3
	ror			W15, W14, #3
	ret
