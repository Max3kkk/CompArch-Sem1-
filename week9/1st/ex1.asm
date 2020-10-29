data:
	FivePtFour: .float 5.4
	TwPtThree: .float 12.3
	EighteenPtTwThree: .float 18.23
	EightPtTwThree: .float 8.23
.text:
	li $v0, 6
	syscall
	mov.s $f1, $f0   # f1: X
	li $v0, 6
	syscall
	mov.s $f2, $f0   # f2: Y
	 
	mul.s $f12, $f1, $f2
	l.s $f0, FivePtFour
	mul.s $f12, $f12, $f0
	
	l.s $f0, TwPtThree
	mul.s $f11, $f2, $f0
	sub.s $f12, $f12, $f11
	
	l.s $f0, EighteenPtTwThree
	mul.s $f11, $f0, $f1
	add.s $f12, $f12, $f11
	
	l.s $f0, EightPtTwThree
	sub.s $f12, $f12, $f0
	
	li $v0, 2
	syscall
	li $v0, 10
	syscall
