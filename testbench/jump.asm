.data
.text
main:
	lui	$t1,0x0040			#	$t1 = 0x0040 0000			0 	
	addi	$t2,$t1,20			#	$t2 = 0x0040 0014			4
	addi	$t1,$t1,1			#	$t1 =  0x0040 0001			8
	jr	$t2				#     jump to 0x0040 0014			c
	addi	$t1,$t1,1			#shouldnt happen				10
	addi	$t1,$t1,1			#	$t1 = 0x0040 0002			14
	addi	$t2,$t2,16			#	$t2 = 0x0040 0024			18
	jalr	$t2				#    $31 = 0x0040 0020  jump to 0x0040 0024	1c
	addi	$t1,$t1,1			#shouldnt happen				20
	addi	$t1,$t1,1			#	$t1 = 0x0040 0003			24
	addi	$t1,$t1,1			#	$t1 = 0x0040 0004			28
	j	label1				# 	jump to	0040 0038			2c
	addi	$t1,$t1,1			#shouldnt happen				30
	addi	$t1,$t1,1			#shouldnt happen				34
label1:	
	addi	$t1,$t1,1			#	$t1 = 0x0040 0005			38
	jal	label2				#    jump to 0048    $31 = 0040			3c
	addi	$t1,$t1,2			#shouldnt happen				40
	addi 	$t1,$t1,3			#shouldnt happen				44
label2:
	addi	$t1,$t1,1			#	$t1 = 0x0040 0006			48
	bgtz	$t1,label3				# jump to 54					4c
	addi	$t1,$t1,1			#shouldnt happen				50
label3:
	addi	$t4,$0,-9			#	$t4 = ffff fff7				54
	blez	$t4,label4				#     jump to	0060				58
	addi	$t4,$t4,1			# shouldnt happen				5c
label4:
	addi	$t4,$t4,1			# 	$t4 = ffff fff8				60
	bltz	$t4,label5				#	jump to 6c				64
	addi	$t1,$t1,1			#shouldnt happen				68
label5:	
	addi	$t1,$t1,1			#	$t1 = 0x0040 0007			6c
	bltzal 	$t4,label6				#jump to 007c	$31 = 0x0040 0074		70
	addi	$t1,$t1,1			#shouldnt happen				74
	addi	$t1,$t1,1			#shouldnt happen				78
label6:
	addi	$t1,$0,1			#	$t1 = 1					7c
	bgez	$t1,label7				#	jump to	0088				80
	addi	$t1,$t1,1			#shouldnt happen				84
label7:
	addi	$t1,$t1,2			#	$t1 = 3					88
	bgezal	$t1,label8				#	jump to	0098	$31 = 	0090		8c
	addi	$t1,$t1,1			#shouldnt happen				90
	addi	$t1,$t1,1			#shouldnt happen				94
label8:
	addi	$t1,$t1,8			#	$t1= b					98
	beq	$t1,$0,label9			    #continue					9c
	addi	$t6,$0,100			#$t6 = 64                   a0
	beq	$t6,$0,label9               #continue				a4
	bne	$t6,$0,label10				#jump to 110				a8
label9:
	addi	$t5,$0,100				#shouldn't happen				ac
label10:
	addi	$t5,$0,400				#$t5=400					b0
