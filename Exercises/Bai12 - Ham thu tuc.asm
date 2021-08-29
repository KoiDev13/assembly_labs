# Bài 12 - Hàm th? t?c
.data
	chuoi: .asciiz 
.text
	main:
		jal in_ra_man_hinh
		
		# ket thuc chuong trinh
		li $v0, 10
		syscall
		
	in_ra_man_hinh:
		li $v0,4
		la $a0,chuoi
		syscall
		jr $ra