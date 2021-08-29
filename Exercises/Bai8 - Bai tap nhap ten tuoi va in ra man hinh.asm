# Vi?t ch??ng trình cho phép nh?p tên và tu?i r?i xu?t ra màn hình
.data
	chuoi1: .asciiz  "Nhap ten: \n"
	chuoi2: .asciiz "Nhap tuoi: \n"
	ten: .asciiz
.text
	#Hien thi chuoi 1
	li $v0,4
	la $a0,chuoi1
	syscall
	
	#Nhap ten
	li $v0,8
	la $a0,ten
	li $a1,50
	syscall
	move $t1, $a0
	
	#Hien thi chuoi 1
	li $v0,4
	la $a0,chuoi2
	syscall
	
	#Nhap tuoi
	li $v0,5
	syscall
	move $t2, $v0
	
	#In tên ra màn hình
	li $v0,4
	move $a0, $t1
	syscall
	
	#In tu?i ra màn hình
	li $v0,1
	move $a0, $t2
	syscall