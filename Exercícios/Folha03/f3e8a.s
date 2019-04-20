.text
.global f3e8a
.type f3e8a, "function"

f3e8a:
	mov			W0, #0x66666666
	mov			W1, #0xF000000F
	and			W0, W0, W1
	eor			W0, W0, W1
	orr			W0, W0, #0x66666666
	ret
