.text
.global f3e5c
.type f3e5c, "function"

f3e5c:
	rbit W1, W0
	cmp W1, W0
	beq simétrico
	mov X0, #0
	ret
simétrico:
	mov X0, #1
	ret
