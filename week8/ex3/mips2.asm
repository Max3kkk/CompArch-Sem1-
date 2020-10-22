#e^2 / pi
# Data Declarations
.data
pi: .float 3.1415
e : .float 2.71828
#-- ----- ---- -----
.text
main:
jal func
li $v0, 2	# Print float
syscall
li $v0,10 	# Exit
syscall

func:
l.s $f0, e
l.s $f1, pi
mul.s $f2, $f0, $f0
div.s $f12, $f2, $f1
jr $ra



