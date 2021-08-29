.data
	req: .asciiz  "Nhap ky tu thuong" 
	str1: .asciiz "\n Ky tu in hoa la: " 
	str2: .asciiz "\n Ky tu khong hop le"
	str3: .asciiz "\n Ky tu lien truoc la "
	char: .asciiz 
.text

main:
#-----------------Nhap du lieu-------------------------
	# Yeu cau nhap ky tu (In request)
	li $v0,4
	la $a0, req
	syscall
	#Nhap ky tu
	li $v0, 12
	syscall
	# Luu du lieu
	move $s0, $v0

#---------------Xu ly du lieu-------------------------
# Kiem tra ky tu thuong
	sge $t0, $s0, 97
	sle $t1, $s0, 122
	bne $t0, $t1 TH1

# Chuyen ky tu lien truoc
	sub $s1, $s0,1
	# In str1
	li $v0, 4
	la $a0, str3
	syscall
	
	#In ky tu ra man hinh
	li $v0, 11
	move $a0, $s1
	syscall
	
# Chuyen ky tu hoa	
	sub $s2, $s0,32
	
	# In noi dung
	li $v0, 4
	la $a0, str1
	syscall
	
	#In ky tu ra man hinh
	li $v0, 11
	move $a0, $s2
	syscall

j ket_thuc

#
TH1: 
	#Ky tu hoa >= 65 va <= 90
	sge $t0, $s0, 65
	sle $t1, $s0, 90
	bne $t0, $t1 TH2
	# Chuyen ky tu lien truoc
	sub $s1, $s0,1
	# In str1
	li $v0, 4
	la $a0, str3
	syscall
	
	#In ky tu ra man hinh
	li $v0, 11
	move $a0, $s1
	syscall
	# In ky tu hoa	
	li $v0, 4
	la $a0, str1
	syscall
	
	#In ky tu ra man hinh
	li $v0, 11
	move $a0, $s0
	syscall

j ket_thuc

# Du lieu khong hop le thi in ra chuoi str2
TH2: 
	li $v0, 4
	la $a0, str2
	syscall
j ket_thuc
#Ket thuc chuong trinh
ket_thuc:
	li $v0,10
	syscall
		
