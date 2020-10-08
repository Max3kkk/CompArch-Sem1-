# Description : Fib !
.data
r: .asciiz "\n"
.text
li $v0 ,5
syscall
move $t0 ,$v0

li $v0 ,5
syscall
move $t1 ,$v0

add $t2 ,$t0 ,$t1
add $t3 ,$t1 ,$t2
add $t4 ,$t2 ,$t3
add $t5 ,$t3 ,$t4
add $t6 ,$t4 ,$t5
add $t7 ,$t5 ,$t6
add $t8 ,$t6 ,$t7
add $t9 ,$t7 ,$t8

li $v0 ,1
move $a0 ,$t0
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t1
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t2
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t3
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t4
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t5
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t6
syscall

li $v0 ,1
move $a0 ,$t7
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t8
syscall

li $v0 ,4
la $a0, r
syscall

li $v0 ,1
move $a0 ,$t9
syscall

li $v0 ,10
syscall
