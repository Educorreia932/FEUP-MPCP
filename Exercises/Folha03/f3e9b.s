.text
.global f3e9b
.type f3e9b, "function"

f3e9b:
	rev			W1, W0
	and			W1, W1, W1, ASR #16
	rev			W1, W1
	sub			W1, W0, W1
