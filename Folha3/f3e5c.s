.text
.global f3e5c
.type f3e5c, "function"

f3e5c:
	rbit W1, W0
	cmp W1, W0
	beq sim�trico
	mov X0, #0
	ret
sim�trico:
	mov X0, #1
	ret
