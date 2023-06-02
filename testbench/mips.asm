.data
	
.text
main:
	lui	 $t1,0x0000			#	$t1 = 0000		0
	lui	 $t2,0x2100			#	$t2 = 2100 0000		4
	addi 	 $t3,$0,1			#	$t3 = 1			8
	addi	 $t4,$0,5			#	$t4 = 5			c
	ori	 $t5,$t2,0x2100			#  	$t5 = 2100 2100		10
	andi	 $t6,$t2,0x0100			#	$t6 = 0000 0000 	14
	
	#DataForwarding ALU EX/MEM
	addi	 $t7,$0,0xffffffff		#	$t7 = ffff ffff		18
	addiu 	 $t1,$t7,2			#overflow	$t1 = 1 	1c
	
	#DataForwarding ALU WB
	addu	 $t3,$t7,$t4			#overflow	$t3 = 4		20	
	add	 $t5,$t7,$3			#overflow   $t5 = ffff ffff	24
	and 	 $t6,$t5,$t3			#	 $t6 = 4		28
	
	subu	 $t2,$t1,$t3			#	 $t2 = ffff fffd	2c
	sub	 $t2,$t1,$t3			#	 $t2 = ffff fffd	30
	or	 $t1,$t2,$t5			#	 $t1 = ffff ffff	34
	slt	 $t7,$t3,$t4			#	 $t7 = 1		38
	sltu	 $t7,$t4,$t3			#	 $t7 = 0		3c
	nor	 $t3,$t2,$t7			#	 $t3 = 2		40
	xor	 $t5,$t2,$t1			#	 $t5 = 2		44
	sll	 $t4,$t5,10			#	 $t4 = 800		48
	srl	 $t3,$t4,9			# 	 $t3 = 4		4c
	sra	 $t7,$t2,1			#	 $t7 = ffff fffe	50
	srav	 $t4,$t2,$t3			#	 $t4 = ffff ffff	54
	lui 	 $t1,0xffff			#	 $t1 = ffff 0000	58
	xor 	 $t7,$t1,$t4			#	 $t7 = 0000 ffff	5c
	srav	 $t4,$t1,$t3			#	 $t4 = ffff f000	60
	srlv	 $t5,$t1,$t3			#	 $t5 = 0fff f000 	64
	sllv	 $t5,$t1,$t3			#	 $t5 = fff0 0000	68
	
	lui 	$t2,0x1001			#	 $t2 = 0x1001 0000	6c
	sw	$t3, 0($t2) 			# 	 [0x1001 0000]= 4	70
	# HazardDetection load-use
	lw	$t4, 0($t2) 			#     $t4 = [0x10010 0000] = 4  74
label1:
	addi	$t4,$t4,1			#	$t4= fff0 0001		78
	slti	$t3,$t4,6			#	$t3 = 1			7c
	beq 	$t3,$t3,label2		#	jump to	88		80
	addi	$t1,$t2,1000			#shouldnt happen		84
label2:
	addi	$t1,$0,100			#	$t1=64 		88
	sb	$t1,8($t2)			#	[0x1001 0008]= 0x64	8c
	lb	$t3,8($t2)			#	$t3= [0x1001 0008]= 0x64	90
	bne	$t3,$0,label3			#	jump to 9c		94
	addi	$t1,$t2,1000			#shouldnt happen		98
label3:	
	addi	$t4,$0,-100			#	$t4=0xffff ff9c		9c
	sh	$t4,12($t2)			#   [0x1001 000c]= 0x0000 ff9c	a0
	sw	$t4,4($t2)			#  [0x1001 0004]= 0xffff ff9c	a4
	lh	$t3,4($t2)			#  $t3=	0xffff ff9c		a8
	lhu	$t5,4($t2)			#  $t5= 0x0000 ff9c		ac
	lbu	$t4,4($t2)			#  $t4= 0x0000009c		b0
