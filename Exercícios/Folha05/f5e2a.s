.text
.global f5e2a
.type f5e2a, "function"

f5e2a:
	fsub		S4, S0, S1
	fmul		S4, S4, S2
	fadd		S3, S3, S0
	fmov		S1, #3.0
	fsub		S3, S3, S1
	fdiv		S0, S4, S3
	ret
