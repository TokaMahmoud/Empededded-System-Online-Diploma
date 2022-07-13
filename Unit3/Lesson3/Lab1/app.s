
app.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	e59f0004 	ldr	r0, [pc, #4]	; 14 <main+0x14>
   c:	ebfffffe 	bl	0 <Uart_Send_string>
  10:	e8bd8800 	pop	{fp, pc}
  14:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <string_buffer>:
   0:	7261656c 	rsbvc	r6, r1, #108, 10	; 0x1b000000
   4:	6e692d6e 	cdpvs	13, 6, cr2, cr9, cr14, {3}
   8:	7065642d 	rsbvc	r6, r5, sp, lsr #8
   c:	3c3a6874 	ldccc	8, cr6, [sl], #-464	; 0xfffffe30
  10:	616b6f54 	cmnvs	fp, r4, asr pc
  14:	0000003e 	andeq	r0, r0, lr, lsr r0
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000083 	andeq	r0, r0, r3, lsl #1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	00006801 	andeq	r6, r0, r1, lsl #16
  14:	00003400 	andeq	r3, r0, r0, lsl #8
  18:	00000000 	andeq	r0, r0, r0
  1c:	00001800 	andeq	r1, r0, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	7c010200 	sfmvc	f0, 4, [r1], {-0}
  28:	01000000 	mrseq	r0, (UNDEF: 0)
  2c:	00000105 	andeq	r0, r0, r5, lsl #2
  30:	00180000 	andseq	r0, r8, r0
  34:	00000000 	andeq	r0, r0, r0
  38:	4f010000 	svcmi	0x00010000
  3c:	03000000 	movweq	r0, #0
  40:	00001701 	andeq	r1, r0, r1, lsl #14
  44:	4f070100 	svcmi	0x00070100
  48:	01000000 	mrseq	r0, (UNDEF: 0)
  4c:	05000004 	streq	r0, [r0, #-4]
  50:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
  54:	6d060074 	stcvs	0, cr0, [r6, #-464]	; 0xfffffe30
  58:	66000000 	strvs	r0, [r0], -r0
  5c:	07000000 	streq	r0, [r0, -r0]
  60:	00000066 	andeq	r0, r0, r6, rrx
  64:	04080063 	streq	r0, [r8], #-99	; 0x63
  68:	00000e07 	andeq	r0, r0, r7, lsl #28
  6c:	08010800 	stmdaeq	r1, {fp}
  70:	00000000 	andeq	r0, r0, r0
  74:	00006e09 	andeq	r6, r0, r9, lsl #28
  78:	56030100 	strpl	r0, [r3], -r0, lsl #2
  7c:	01000000 	mrseq	r0, (UNDEF: 0)
  80:	00000305 	andeq	r0, r0, r5, lsl #6
  84:	Address 0x00000084 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0c3f012e 	ldfeqs	f0, [pc], #-184	; ffffff64 <main+0xffffff64>
  18:	0b3a0e03 	bleq	e8382c <main+0xe8382c>
  1c:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  20:	01120111 	tsteq	r2, r1, lsl r1
  24:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
  28:	0013010c 	andseq	r0, r3, ip, lsl #2
  2c:	012e0300 	teqeq	lr, r0, lsl #6
  30:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
  34:	0b3b0b3a 	bleq	ec2d24 <main+0xec2d24>
  38:	0c3c1349 	ldceq	3, cr1, [ip], #-292	; 0xfffffedc
  3c:	18040000 	stmdane	r4, {}	; <UNPREDICTABLE>
  40:	05000000 	streq	r0, [r0, #-0]
  44:	0b0b0024 	bleq	2c00dc <main+0x2c00dc>
  48:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  4c:	01060000 	mrseq	r0, (UNDEF: 6)
  50:	01134901 	tsteq	r3, r1, lsl #18
  54:	07000013 	smladeq	r0, r3, r0, r0
  58:	13490021 	movtne	r0, #36897	; 0x9021
  5c:	00000b2f 	andeq	r0, r0, pc, lsr #22
  60:	0b002408 	bleq	9088 <main+0x9088>
  64:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
  68:	0900000e 	stmdbeq	r0, {r1, r2, r3}
  6c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  70:	0b3b0b3a 	bleq	ec2d60 <main+0xec2d60>
  74:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; ffffff58 <main+0xffffff58>
  78:	00000a02 	andeq	r0, r0, r2, lsl #20
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000004 	andeq	r0, r0, r4
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000004 	andeq	r0, r0, r4
  10:	00000008 	andeq	r0, r0, r8
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000008 	andeq	r0, r0, r8
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	047b0002 	ldrbteq	r0, [fp], #-2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
	...
  14:	00000018 	andeq	r0, r0, r8, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000031 	andeq	r0, r0, r1, lsr r0
   4:	001c0002 	andseq	r0, ip, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  20:	00000063 	andeq	r0, r0, r3, rrx
  24:	05000000 	streq	r0, [r0, #-0]
  28:	00000002 	andeq	r0, r0, r2
  2c:	4b4b1700 	blmi	12c5c34 <main+0x12c5c34>
  30:	01000402 	tsteq	r0, r2, lsl #8
  34:	Address 0x00000034 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
   4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
   8:	61686320 	cmnvs	r8, r0, lsr #6
   c:	69730072 	ldmdbvs	r3!, {r1, r4, r5, r6}^
  10:	7974657a 	ldmdbvc	r4!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
  14:	55006570 	strpl	r6, [r0, #-1392]	; 0x570
  18:	5f747261 	svcpl	0x00747261
  1c:	646e6553 	strbtvs	r6, [lr], #-1363	; 0x553
  20:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
  24:	00676e69 	rsbeq	r6, r7, r9, ror #28
  28:	20554e47 	subscs	r4, r5, r7, asr #28
  2c:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
  30:	00322e37 	eorseq	r2, r2, r7, lsr lr
  34:	535c3a45 	cmppl	ip, #282624	; 0x45000
  38:	79647574 	stmdbvc	r4!, {r2, r4, r5, r6, r8, sl, ip, sp, lr}^
  3c:	626d455c 	rsbvs	r4, sp, #92, 10	; 0x17000000
  40:	65646465 	strbvs	r6, [r4, #-1125]!	; 0x465
  44:	69442064 	stmdbvs	r4, {r2, r5, r6, sp}^
  48:	6d6f6c70 	stclvs	12, cr6, [pc, #-448]!	; fffffe90 <main+0xfffffe90>
  4c:	6e555c61 	cdpvs	12, 5, cr5, cr5, cr1, {3}
  50:	33207469 	teqcc	r0, #1761607680	; 0x69000000
  54:	73654c5c 	cmnvc	r5, #92, 24	; 0x5c00
  58:	326e6f73 	rsbcc	r6, lr, #460	; 0x1cc
  5c:	7373415c 	cmnvc	r3, #92, 2
  60:	6d6e6769 	stclvs	7, cr6, [lr, #-420]!	; 0xfffffe5c
  64:	00746e65 	rsbseq	r6, r4, r5, ror #28
  68:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  6c:	74730063 	ldrbtvc	r0, [r3], #-99	; 0x63
  70:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
  74:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
  78:	00726566 	rsbseq	r6, r2, r6, ror #10
  7c:	6e69616d 	powvsez	f6, f1, #5.0
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	2029554e 	eorcs	r5, r9, lr, asr #10
   c:	2e372e34 	mrccs	14, 1, r2, cr7, cr4, {1}
  10:	Address 0x00000010 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003141 	andeq	r3, r0, r1, asr #2
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000027 	andeq	r0, r0, r7, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	45363239 	ldrmi	r3, [r6, #-569]!	; 0x239
  18:	00532d4a 	subseq	r2, r3, sl, asr #26
  1c:	01080506 	tsteq	r8, r6, lsl #10
  20:	04120109 	ldreq	r0, [r2], #-265	; 0x109
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	011a0119 	tsteq	sl, r9, lsl r1
  30:	Address 0x00000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	8b080e42 	blhi	203930 <main+0x203930>
  24:	42018e02 	andmi	r8, r1, #2, 28
  28:	00040b0c 	andeq	r0, r4, ip, lsl #22
