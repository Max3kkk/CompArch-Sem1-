.text 
	li $v0, 5
	syscall	
	
	move $t0, $v0		#n
	li $t1, 1		#i
	li $t2, 2		#a^i	
	li $t4, 2		#sum		
	j loop
	
loop:
	beq $t1, $t0, end	#if n == i
	sll $t2, $t2, 1		
	add $t5, $t4, $t2
	add $t4, $t5, 0
	addi $t1, $t1, 1
	
end:
	li $v0, 1
	addi $a0, $t4, 0
	syscall
	

	 
		