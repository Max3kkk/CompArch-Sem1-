# Description : Finding expression !
.data
.text
li $v0 ,5
syscall
move $t1 ,$v0

li $v0 ,5
syscall
move $t2 ,$v0

li $v0 ,5
syscall
move $t3 ,$v0

li $v0 ,5
syscall
move $t4 ,$v0

mul $t5 ,$t2 ,$t2
mul $t6 ,$t1 ,$t5
div $t7 ,$t6 ,$t3
sub $t8 ,$t7 ,$t4

li $v0 ,1
move $a0 ,$t8
syscall

li $v0 ,10
syscall
