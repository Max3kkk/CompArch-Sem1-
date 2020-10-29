.data
	maxFloat: .float 4294967295
.text 
	l.d $f2, maxFloat	#min element
	li $t1, 1		#index
loop: 	
	beq $t1, 8, end
	add $t1, $t1, 1
	
	li $v0, 6
	syscall
	
	mov.d $f4, $f0
	c.le.d $f4, $f2 
	
	bc1f next
	mov.d $f2, $f4 
	
	j loop
	        
next: 
	j loop
	
end:
	mov.d $f12, $f2
	li $v0, 2
	syscall 

