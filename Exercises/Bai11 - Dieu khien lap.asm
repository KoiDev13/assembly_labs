# Bài 11 - ?i?u khi?n vòng l?p
.data
	chuoi: .asciiz "xin chao \n"
.text
	li $t1,1
	lap:
		bgt $t1, 5, thoat_lap
		#In chu?i ra màn hình
		li $v0, 4
		la $a0, chuoi
		syscall
		
		addi $t1, $t1, 1
		j lap
	
	thoat_lap:
	li $v0, 10
