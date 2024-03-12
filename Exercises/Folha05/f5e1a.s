.data
VB: .double 7.8
VM: .double 3.6
VN: .double 7.1
VP: .double 0.0

.text
	ldr			D0, VB
	ldr			D1, VM
	ldr			D2, VN
	fadd		D0, D0, D2
	fnmul		D0, D0, D1
//	str			D0, VP gives error
	ret
	//...
