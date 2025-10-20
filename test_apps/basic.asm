
basic.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	fe010113          	addi	sp,sp,-32
       4:	00112e23          	sw	ra,28(sp)
       8:	00812c23          	sw	s0,24(sp)
       c:	02010413          	addi	s0,sp,32
      10:	fe042623          	sw	zero,-20(s0)
      14:	fe042423          	sw	zero,-24(s0)
      18:	01c0006f          	j	0x34
      1c:	fec42783          	lw	a5,-20(s0)
      20:	00178793          	addi	a5,a5,1
      24:	fef42623          	sw	a5,-20(s0)
      28:	fe842783          	lw	a5,-24(s0)
      2c:	00178793          	addi	a5,a5,1
      30:	fef42423          	sw	a5,-24(s0)
      34:	fe842703          	lw	a4,-24(s0)
      38:	00900793          	li	a5,9
      3c:	fee7d0e3          	bge	a5,a4,0x1c
      40:	fec42703          	lw	a4,-20(s0)
      44:	00a00793          	li	a5,10
      48:	00f71c63          	bne	a4,a5,0x60
      4c:	000017b7          	lui	a5,0x1
      50:	0707a783          	lw	a5,112(a5) # 0x1070
      54:	00100713          	li	a4,1
      58:	00e7a023          	sw	a4,0(a5)
      5c:	0100006f          	j	0x6c
      60:	000017b7          	lui	a5,0x1
      64:	0707a783          	lw	a5,112(a5) # 0x1070
      68:	0007a023          	sw	zero,0(a5)
      6c:	0000006f          	j	0x6c
	...
    1070:	0000                	unimp
    1072:	1000                	addi	s0,sp,32
