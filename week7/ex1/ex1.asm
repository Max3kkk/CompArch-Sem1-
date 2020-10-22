.text 
main:
	li $v0, 5
	syscall 
	
	add $a0, $zero, $v0
	jal sgn
	
	li $v0, 1
	syscall 
	
	li $v0 , 10 
	syscall
sgn:
	bgez $a0, GretEq
	li $a0, -1
	jr $ra
GretEq:
	beqz $a0, Eq
	li $a0, 1
	jr $ra	
Eq:
	li $a0, 0
	jr $ra
	