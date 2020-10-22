.data:
	FivePtZero: .float 5.0
	NinePtZero: .float 9.0
	ThirtyTwoPtZero: .float -32.0
.text:			# Celsius = (Fahrenheit - 32.0) × 5.0 / 9.0
	li $v0, 6	# f12 = Fahrenheit
	syscall
	 
	l.s $f7, ThirtyTwoPtZero
	add.s $f12, $f0, $f7		# f12 = f12 - 32
	l.s $f7, FivePtZero
	mul.s $f12, $f12, $f7		# f12 = f12 * 5.0
	l.s $f7, NinePtZero
	div.s $f12, $f12, $f7		# f12 = f12 / 9.0
	
	li $v0, 2
	syscall
	li $v0, 10
	syscall
