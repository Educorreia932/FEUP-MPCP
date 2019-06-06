.text
.global f5e1b
.type f5e1b, "function"

f5e1b:
	fsqrt		D0, D0
	scvtf		D1, W0
	fadd		D0, D0, D1
	ret
