# L?nh sb (Store byte), lb (Load byte)
.data
	chuoi: .asciiz "xin chao"
.text
	#store byte
	#li $t1,'b'
	#sb giá tr? ,offset(address)  =    offset + address  
	#li $t2, 268500992
	#sb $t1, 2($t2)
	
	#load byte
	la $t1,chuoi
	lb $t2,1($t1)
