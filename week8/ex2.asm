.text
main:			# t0 - counter. t1 - final result
	li $v0, 5
	syscall
	add $t0, $v0, $zero
	jal func
	
	add $a0, $t1, $zero
	li $v0, 1
	syscall
	li $v0, 10
	syscall

func:
	add $t1, $t1, $t0
	addi $t0, $t0, -1
	
	beq $t0, 0, exit
	j func
	exit:
		jr $ra
