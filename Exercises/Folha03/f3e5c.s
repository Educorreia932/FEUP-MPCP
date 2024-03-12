.text
.global f3e5c
.type f3e5c, "function"

f3e5c:
	rbit		W1, W0
	cmp			W1, W0
	cset		W0, eq
	ret
