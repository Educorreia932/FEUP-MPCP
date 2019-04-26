.text
.global f3e8b
.type f3e8b, "function"

f3e8b:
	mov			W0, #0x0000BEEF
	adds		W0, W0, #0x00008000 //C (carry) = 0
	mov			W1, #0x00003EEE
	sbc			W0, W0, W1 //W0 = W0 − W1 − ~C
	adc			W0, W0, W0
	ret
