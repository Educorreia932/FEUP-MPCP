.text
.global f5e2c
.type f5e2c, "function"

f5e2c:
	fsub		D0, D0, D1
	fmul		D0, D0, D0
	fsub		D2, D2, D3
	fmul		D2, D2, D2
	fadd		D0, D0, D2
	fsqrt		D0, D0
	ret
