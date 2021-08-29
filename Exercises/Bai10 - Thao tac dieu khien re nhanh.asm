.data
	chuoi1: .asciiz "bang nhau"
	chuoi2: .asciiz "khong bang nhau"
.text
	li $t1,10
	li $t2,5
	
	# R? nhánh có ?i?u ki?n
	beq $t1, $t2, in_chuoi_1
	#bnez $t1, $t2, in_chuoi_2
	li $v0,4
	la $a0, chuoi2
	syscall
	#K?t thúc ch??ng trình
	li $v0,10
	syscall
	
	# ?i?u ki?n n?u ?úng
	in_chuoi_1:
		li $v0,4
		la $a0, chuoi1
		syscall
	
	# ?i?u ki?n n?u sai
	#in_chuoi_2:
	#	li $v0,4
	#	la $a0, chuoi2
	#	syscall