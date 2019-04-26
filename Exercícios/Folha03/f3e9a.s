.text
.global f3e9a
.type f3e9a, "function"

f3e9a:
	mov			W1, #0xABCD0000
	ubfx		W2, W0, #24, #8
	bfi			W1, W2, #16, #8
	ret
