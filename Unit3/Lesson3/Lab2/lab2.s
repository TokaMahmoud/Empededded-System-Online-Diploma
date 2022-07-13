
lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001008 	andcs	r1, r0, r8
 8000004:	080000d1 	stmdaeq	r0, {r0, r4, r6, r7}
 8000008:	08000181 	stmdaeq	r0, {r0, r7, r8}
 800000c:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000010:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000014:	08000181 	stmdaeq	r0, {r0, r7, r8}
 8000018:	08000181 	stmdaeq	r0, {r0, r7, r8}

0800001c <main>:
 800001c:	b480      	push	{r7}
 800001e:	b083      	sub	sp, #12
 8000020:	af00      	add	r7, sp, #0
 8000022:	f241 0318 	movw	r3, #4120	; 0x1018
 8000026:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800002a:	f241 0218 	movw	r2, #4120	; 0x1018
 800002e:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8000032:	6812      	ldr	r2, [r2, #0]
 8000034:	f042 0204 	orr.w	r2, r2, #4
 8000038:	601a      	str	r2, [r3, #0]
 800003a:	f640 0304 	movw	r3, #2052	; 0x804
 800003e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000042:	f640 0204 	movw	r2, #2052	; 0x804
 8000046:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800004a:	6812      	ldr	r2, [r2, #0]
 800004c:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8000050:	601a      	str	r2, [r3, #0]
 8000052:	f640 0304 	movw	r3, #2052	; 0x804
 8000056:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800005a:	f640 0204 	movw	r2, #2052	; 0x804
 800005e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8000062:	6812      	ldr	r2, [r2, #0]
 8000064:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8000068:	601a      	str	r2, [r3, #0]
 800006a:	f640 030c 	movw	r3, #2060	; 0x80c
 800006e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000072:	f640 020c 	movw	r2, #2060	; 0x80c
 8000076:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800007a:	6812      	ldr	r2, [r2, #0]
 800007c:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000080:	601a      	str	r2, [r3, #0]
 8000082:	f04f 0300 	mov.w	r3, #0
 8000086:	607b      	str	r3, [r7, #4]
 8000088:	e003      	b.n	8000092 <main+0x76>
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f103 0301 	add.w	r3, r3, #1
 8000090:	607b      	str	r3, [r7, #4]
 8000092:	687a      	ldr	r2, [r7, #4]
 8000094:	f241 3387 	movw	r3, #4999	; 0x1387
 8000098:	429a      	cmp	r2, r3
 800009a:	ddf6      	ble.n	800008a <main+0x6e>
 800009c:	f640 030c 	movw	r3, #2060	; 0x80c
 80000a0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80000a4:	f640 020c 	movw	r2, #2060	; 0x80c
 80000a8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80000ac:	6812      	ldr	r2, [r2, #0]
 80000ae:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80000b2:	601a      	str	r2, [r3, #0]
 80000b4:	f04f 0300 	mov.w	r3, #0
 80000b8:	607b      	str	r3, [r7, #4]
 80000ba:	e003      	b.n	80000c4 <main+0xa8>
 80000bc:	687b      	ldr	r3, [r7, #4]
 80000be:	f103 0301 	add.w	r3, r3, #1
 80000c2:	607b      	str	r3, [r7, #4]
 80000c4:	687a      	ldr	r2, [r7, #4]
 80000c6:	f241 3387 	movw	r3, #4999	; 0x1387
 80000ca:	429a      	cmp	r2, r3
 80000cc:	ddf6      	ble.n	80000bc <main+0xa0>
 80000ce:	e7cc      	b.n	800006a <main+0x4e>

080000d0 <Reset_Handler>:
 80000d0:	b580      	push	{r7, lr}
 80000d2:	b086      	sub	sp, #24
 80000d4:	af00      	add	r7, sp, #0
 80000d6:	f240 0204 	movw	r2, #4
 80000da:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80000de:	f240 0300 	movw	r3, #0
 80000e2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80000e6:	1ad3      	subs	r3, r2, r3
 80000e8:	60bb      	str	r3, [r7, #8]
 80000ea:	f240 1390 	movw	r3, #400	; 0x190
 80000ee:	f6c0 0300 	movt	r3, #2048	; 0x800
 80000f2:	617b      	str	r3, [r7, #20]
 80000f4:	f240 0300 	movw	r3, #0
 80000f8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80000fc:	613b      	str	r3, [r7, #16]
 80000fe:	f04f 0300 	mov.w	r3, #0
 8000102:	60fb      	str	r3, [r7, #12]
 8000104:	e00f      	b.n	8000126 <Reset_Handler+0x56>
 8000106:	697b      	ldr	r3, [r7, #20]
 8000108:	781a      	ldrb	r2, [r3, #0]
 800010a:	693b      	ldr	r3, [r7, #16]
 800010c:	701a      	strb	r2, [r3, #0]
 800010e:	693b      	ldr	r3, [r7, #16]
 8000110:	f103 0301 	add.w	r3, r3, #1
 8000114:	613b      	str	r3, [r7, #16]
 8000116:	697b      	ldr	r3, [r7, #20]
 8000118:	f103 0301 	add.w	r3, r3, #1
 800011c:	617b      	str	r3, [r7, #20]
 800011e:	68fb      	ldr	r3, [r7, #12]
 8000120:	f103 0301 	add.w	r3, r3, #1
 8000124:	60fb      	str	r3, [r7, #12]
 8000126:	68fa      	ldr	r2, [r7, #12]
 8000128:	68bb      	ldr	r3, [r7, #8]
 800012a:	429a      	cmp	r2, r3
 800012c:	d3eb      	bcc.n	8000106 <Reset_Handler+0x36>
 800012e:	f240 0204 	movw	r2, #4
 8000132:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8000136:	f240 0304 	movw	r3, #4
 800013a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800013e:	1ad3      	subs	r3, r2, r3
 8000140:	607b      	str	r3, [r7, #4]
 8000142:	f240 0304 	movw	r3, #4
 8000146:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800014a:	613b      	str	r3, [r7, #16]
 800014c:	f04f 0300 	mov.w	r3, #0
 8000150:	60fb      	str	r3, [r7, #12]
 8000152:	e00b      	b.n	800016c <Reset_Handler+0x9c>
 8000154:	693b      	ldr	r3, [r7, #16]
 8000156:	f04f 0200 	mov.w	r2, #0
 800015a:	701a      	strb	r2, [r3, #0]
 800015c:	693b      	ldr	r3, [r7, #16]
 800015e:	f103 0301 	add.w	r3, r3, #1
 8000162:	613b      	str	r3, [r7, #16]
 8000164:	68fb      	ldr	r3, [r7, #12]
 8000166:	f103 0301 	add.w	r3, r3, #1
 800016a:	60fb      	str	r3, [r7, #12]
 800016c:	68fa      	ldr	r2, [r7, #12]
 800016e:	687b      	ldr	r3, [r7, #4]
 8000170:	429a      	cmp	r2, r3
 8000172:	d3ef      	bcc.n	8000154 <Reset_Handler+0x84>
 8000174:	f7ff ff52 	bl	800001c <main>
 8000178:	f107 0718 	add.w	r7, r7, #24
 800017c:	46bd      	mov	sp, r7
 800017e:	bd80      	pop	{r7, pc}

08000180 <Default_Handler>:
 8000180:	b580      	push	{r7, lr}
 8000182:	af00      	add	r7, sp, #0
 8000184:	f7ff ffa4 	bl	80000d0 <Reset_Handler>
 8000188:	bd80      	pop	{r7, pc}
 800018a:	bf00      	nop

0800018c <const_var>:
 800018c:	00030201 	andeq	r0, r3, r1, lsl #4

Disassembly of section .data:

20000000 <_S_data>:
20000000:	00030201 	andeq	r0, r3, r1, lsl #4

Disassembly of section .bss:

20000004 <_E_bss>:
20000004:	Address 0x20000004 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000c4 	andeq	r0, r0, r4, asr #1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000020 	andeq	r0, r0, r0, lsr #32
  10:	00003b01 	andeq	r3, r0, r1, lsl #22
  14:	00006100 	andeq	r6, r0, r0, lsl #2
  18:	00001c00 	andeq	r1, r0, r0, lsl #24
  1c:	0000d008 	andeq	sp, r0, r8
  20:	00000008 	andeq	r0, r0, r8
  24:	00590200 	subseq	r0, r9, r0, lsl #4
  28:	01010000 	mrseq	r0, (UNDEF: 1)
  2c:	00000030 	andeq	r0, r0, r0, lsr r0
  30:	00003503 	andeq	r3, r0, r3, lsl #10
  34:	07040400 	streq	r0, [r4, -r0, lsl #8]
  38:	00000000 	andeq	r0, r0, r0
  3c:	00360105 	eorseq	r0, r6, r5, lsl #2
  40:	13010000 	movwne	r0, #4096	; 0x1000
  44:	00006701 	andeq	r6, r0, r1, lsl #14
  48:	00001c00 	andeq	r1, r0, r0, lsl #24
  4c:	0000d008 	andeq	sp, r0, r8
  50:	00000008 	andeq	r0, r0, r8
  54:	00670100 	rsbeq	r0, r7, r0, lsl #2
  58:	69060000 	stmdbvs	r6, {}	; <UNPREDICTABLE>
  5c:	67190100 	ldrvs	r0, [r9, -r0, lsl #2]
  60:	02000000 	andeq	r0, r0, #0
  64:	07007491 			; <UNDEFINED> instruction: 0x07007491
  68:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
  6c:	85080074 	strhi	r0, [r8, #-116]	; 0x74
  70:	7e000000 	cdpvc	0, 0, cr0, cr0, cr0, {0}
  74:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
  78:	0000007e 	andeq	r0, r0, lr, ror r0
  7c:	04040002 	streq	r0, [r4], #-2
  80:	00005007 	andeq	r5, r0, r7
  84:	08010400 	stmdaeq	r1, {sl}
  88:	00000042 	andeq	r0, r0, r2, asr #32
  8c:	00000d0a 	andeq	r0, r0, sl, lsl #26
  90:	6e0f0100 	adfvse	f0, f7, f0
  94:	01000000 	mrseq	r0, (UNDEF: 0)
  98:	00000305 	andeq	r0, r0, r5, lsl #6
  9c:	2c0a2000 	stccs	0, cr2, [sl], {-0}
  a0:	01000000 	mrseq	r0, (UNDEF: 0)
  a4:	00006e10 	andeq	r6, r0, r0, lsl lr
  a8:	03050100 	movweq	r0, #20736	; 0x5100
  ac:	20000004 	andcs	r0, r0, r4
  b0:	0000160a 	andeq	r1, r0, sl, lsl #12
  b4:	c2110100 	andsgt	r0, r1, #0, 2
  b8:	01000000 	mrseq	r0, (UNDEF: 0)
  bc:	018c0305 	orreq	r0, ip, r5, lsl #6
  c0:	6e0b0800 	cdpvs	8, 0, cr0, cr11, cr0, {0}
  c4:	00000000 	andeq	r0, r0, r0
  c8:	00000134 	andeq	r0, r0, r4, lsr r1
  cc:	00930002 	addseq	r0, r3, r2
  d0:	01040000 	mrseq	r0, (UNDEF: 4)
  d4:	00000020 	andeq	r0, r0, r0, lsr #32
  d8:	0000a501 	andeq	sl, r0, r1, lsl #10
  dc:	00006100 	andeq	r6, r0, r0, lsl #2
  e0:	0000d000 	andeq	sp, r0, r0
  e4:	00018a08 	andeq	r8, r1, r8, lsl #20
  e8:	00005608 	andeq	r5, r0, r8, lsl #12
  ec:	005a0200 	subseq	r0, sl, r0, lsl #4
  f0:	01010000 	mrseq	r0, (UNDEF: 1)
  f4:	00000030 	andeq	r0, r0, r0, lsr r0
  f8:	00070403 	andeq	r0, r7, r3, lsl #8
  fc:	04000000 	streq	r0, [r0], #-0
 100:	0000d201 	andeq	sp, r0, r1, lsl #4
 104:	010b0100 	mrseq	r0, (UNDEF: 27)
 108:	080000d0 	stmdaeq	r0, {r4, r6, r7}
 10c:	08000180 	stmdaeq	r0, {r7, r8}
 110:	00000038 	andeq	r0, r0, r8, lsr r0
 114:	00009601 	andeq	r9, r0, r1, lsl #12
 118:	00e60500 	rsceq	r0, r6, r0, lsl #10
 11c:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
 120:	00000030 	andeq	r0, r0, r0, lsr r0
 124:	05689102 	strbeq	r9, [r8, #-258]!	; 0x102
 128:	000000e0 	andeq	r0, r0, r0, ror #1
 12c:	00960f01 	addseq	r0, r6, r1, lsl #30
 130:	91020000 	mrsls	r0, (UNDEF: 2)
 134:	00ae0574 	adceq	r0, lr, r4, ror r5
 138:	10010000 	andne	r0, r1, r0
 13c:	00000096 	muleq	r0, r6, r0
 140:	06709102 	ldrbteq	r9, [r0], -r2, lsl #2
 144:	11010069 	tstne	r1, r9, rrx
 148:	000000a3 	andeq	r0, r0, r3, lsr #1
 14c:	056c9102 	strbeq	r9, [ip, #-258]!	; 0x102
 150:	000000fb 	strdeq	r0, [r0], -fp
 154:	00301601 	eorseq	r1, r0, r1, lsl #12
 158:	91020000 	mrsls	r0, (UNDEF: 2)
 15c:	04070064 	streq	r0, [r7], #-100	; 0x64
 160:	0000009c 	muleq	r0, ip, r0
 164:	42080103 	andmi	r0, r8, #-1073741824	; 0xc0000000
 168:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 16c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 170:	01090074 	tsteq	r9, r4, ror r0
 174:	00000095 	muleq	r0, r5, r0
 178:	80011e01 	andhi	r1, r1, r1, lsl #28
 17c:	8a080001 	bhi	200188 <vectors-0x7dffe78>
 180:	70080001 	andvc	r0, r8, r1
 184:	01000000 	mrseq	r0, (UNDEF: 0)
 188:	0000f00a 	andeq	pc, r0, sl
 18c:	30030100 	andcc	r0, r3, r0, lsl #2
 190:	01000000 	mrseq	r0, (UNDEF: 0)
 194:	00b40a01 	adcseq	r0, r4, r1, lsl #20
 198:	06010000 	streq	r0, [r1], -r0
 19c:	00000030 	andeq	r0, r0, r0, lsr r0
 1a0:	bc0a0101 	stflts	f0, [sl], {1}
 1a4:	01000000 	mrseq	r0, (UNDEF: 0)
 1a8:	00003007 	andeq	r3, r0, r7
 1ac:	0a010100 	beq	405b4 <vectors-0x7fbfa4c>
 1b0:	0000010c 	andeq	r0, r0, ip, lsl #2
 1b4:	00300801 	eorseq	r0, r0, r1, lsl #16
 1b8:	01010000 	mrseq	r0, (UNDEF: 1)
 1bc:	0000c40a 	andeq	ip, r0, sl, lsl #8
 1c0:	30090100 	andcc	r0, r9, r0, lsl #2
 1c4:	01000000 	mrseq	r0, (UNDEF: 0)
 1c8:	00cb0a01 	sbceq	r0, fp, r1, lsl #20
 1cc:	0a010000 	beq	401d4 <vectors-0x7fbfe2c>
 1d0:	00000030 	andeq	r0, r0, r0, lsr r0
 1d4:	250b0101 	strcs	r0, [fp, #-257]	; 0x101
 1d8:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
 1dc:	0c000001 	stceq	0, cr0, [r0], {1}
 1e0:	0000011e 	andeq	r0, r0, lr, lsl r1
 1e4:	04030006 	streq	r0, [r3], #-6
 1e8:	00005007 	andeq	r5, r0, r7
 1ec:	01040d00 	tsteq	r4, r0, lsl #26
 1f0:	29010000 	stmdbcs	r1, {}	; <UNPREDICTABLE>
 1f4:	0000010e 	andeq	r0, r0, lr, lsl #2
 1f8:	00030501 	andeq	r0, r3, r1, lsl #10
 1fc:	00080000 	andeq	r0, r8, r0

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
  18:	0b3b0b3a 	bleq	ec2d08 <vectors-0x713d2f8>
  1c:	00001349 	andeq	r1, r0, r9, asr #6
  20:	49003503 	stmdbmi	r0, {r0, r1, r8, sl, ip, sp}
  24:	04000013 	streq	r0, [r0], #-19
  28:	0b0b0024 	bleq	2c00c0 <vectors-0x7d3ff40>
  2c:	0e030b3e 	vmoveq.16	d3[0], r0
  30:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
  34:	030c3f01 	movweq	r3, #52993	; 0xcf01
  38:	3b0b3a0e 	blcc	2ce878 <vectors-0x7d31788>
  3c:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
  40:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
  44:	97064001 	strls	r4, [r6, -r1]
  48:	13010c42 	movwne	r0, #7234	; 0x1c42
  4c:	34060000 	strcc	r0, [r6], #-0
  50:	3a080300 	bcc	200c58 <vectors-0x7dff3a8>
  54:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  58:	000a0213 	andeq	r0, sl, r3, lsl r2
  5c:	00240700 	eoreq	r0, r4, r0, lsl #14
  60:	0b3e0b0b 	bleq	f82c94 <vectors-0x707d36c>
  64:	00000803 	andeq	r0, r0, r3, lsl #16
  68:	49010108 	stmdbmi	r1, {r3, r8}
  6c:	00130113 	andseq	r0, r3, r3, lsl r1
  70:	00210900 	eoreq	r0, r1, r0, lsl #18
  74:	0b2f1349 	bleq	bc4da0 <vectors-0x743b260>
  78:	340a0000 	strcc	r0, [sl], #-0
  7c:	3a0e0300 	bcc	380c84 <vectors-0x7c7f37c>
  80:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  84:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  88:	0b00000a 	bleq	b8 <vectors-0x7ffff48>
  8c:	13490026 	movtne	r0, #36902	; 0x9026
  90:	01000000 	mrseq	r0, (UNDEF: 0)
  94:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  98:	0e030b13 	vmoveq.32	d3[0], r0
  9c:	01110e1b 	tsteq	r1, fp, lsl lr
  a0:	06100112 			; <UNDEFINED> instruction: 0x06100112
  a4:	16020000 	strne	r0, [r2], -r0
  a8:	3a0e0300 	bcc	380cb0 <vectors-0x7c7f350>
  ac:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  b0:	03000013 	movweq	r0, #19
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	0e030b3e 	vmoveq.16	d3[0], r0
  bc:	2e040000 	cdpcs	0, 0, cr0, cr4, cr0, {0}
  c0:	030c3f01 	movweq	r3, #52993	; 0xcf01
  c4:	3b0b3a0e 	blcc	2ce904 <vectors-0x7d316fc>
  c8:	110c270b 	tstne	ip, fp, lsl #14
  cc:	40011201 	andmi	r1, r1, r1, lsl #4
  d0:	0c429606 	mcrreq	6, 0, r9, r2, cr6
  d4:	00001301 	andeq	r1, r0, r1, lsl #6
  d8:	03003405 	movweq	r3, #1029	; 0x405
  dc:	3b0b3a0e 	blcc	2ce91c <vectors-0x7d316e4>
  e0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  e4:	0600000a 	streq	r0, [r0], -sl
  e8:	08030034 	stmdaeq	r3, {r2, r4, r5}
  ec:	0b3b0b3a 	bleq	ec2ddc <vectors-0x713d224>
  f0:	0a021349 	beq	84e1c <vectors-0x7f7b1e4>
  f4:	0f070000 	svceq	0x00070000
  f8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  fc:	08000013 	stmdaeq	r0, {r0, r1, r4}
 100:	0b0b0024 	bleq	2c0198 <vectors-0x7d3fe68>
 104:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 108:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 10c:	030c3f00 	movweq	r3, #52992	; 0xcf00
 110:	3b0b3a0e 	blcc	2ce950 <vectors-0x7d316b0>
 114:	110c270b 	tstne	ip, fp, lsl #14
 118:	40011201 	andmi	r1, r1, r1, lsl #4
 11c:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 120:	340a0000 	strcc	r0, [sl], #-0
 124:	3a0e0300 	bcc	380d2c <vectors-0x7c7f2d4>
 128:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 12c:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 130:	0b00000c 	bleq	168 <vectors-0x7fffe98>
 134:	13490101 	movtne	r0, #37121	; 0x9101
 138:	00001301 	andeq	r1, r0, r1, lsl #6
 13c:	4900210c 	stmdbmi	r0, {r2, r3, r8, sp}
 140:	000b2f13 	andeq	r2, fp, r3, lsl pc
 144:	00340d00 	eorseq	r0, r4, r0, lsl #26
 148:	0b3a0e03 	bleq	e8395c <vectors-0x717c6a4>
 14c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 150:	0a020c3f 	beq	83254 <vectors-0x7f7cdac>
 154:	Address 0x00000154 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	000000b4 	strheq	r0, [r0], -r4
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  3c:	00000002 	andeq	r0, r0, r2
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	00000002 	andeq	r0, r0, r2
  48:	00000004 	andeq	r0, r0, r4
  4c:	087d0002 	ldmdaeq	sp!, {r1}^
  50:	00000004 	andeq	r0, r0, r4
  54:	00000006 	andeq	r0, r0, r6
  58:	207d0002 	rsbscs	r0, sp, r2
  5c:	00000006 	andeq	r0, r0, r6
  60:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  64:	20770002 	rsbscs	r0, r7, r2
	...
  70:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  74:	000000b2 	strheq	r0, [r0], -r2
  78:	007d0002 	rsbseq	r0, sp, r2
  7c:	000000b2 	strheq	r0, [r0], -r2
  80:	000000b4 	strheq	r0, [r0], -r4
  84:	087d0002 	ldmdaeq	sp!, {r1}^
  88:	000000b4 	strheq	r0, [r0], -r4
  8c:	000000ba 	strheq	r0, [r0], -sl
  90:	08770002 	ldmdaeq	r7!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	0800001c 	stmdaeq	r0, {r2, r3, r4}
  14:	000000b4 	strheq	r0, [r0], -r4
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00c80002 	sbceq	r0, r8, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000d0 	stmdaeq	r0, {r4, r6, r7}
  34:	000000ba 	strheq	r0, [r0], -sl
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000052 	andeq	r0, r0, r2, asr r0
   4:	001d0002 	andseq	r0, sp, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	00000000 	andeq	r0, r0, r0
  28:	001c0205 	andseq	r0, ip, r5, lsl #4
  2c:	13030800 	movwne	r0, #14336	; 0x3800
  30:	bbbb3d01 	bllt	feecf43c <_stack_top+0xdeece434>
  34:	0200bbbe 	andeq	fp, r0, #194560	; 0x2f800
  38:	4a060204 	bmi	180850 <vectors-0x7e7f7b0>
  3c:	01040200 	mrseq	r0, R12_usr
  40:	bb59064a 	bllt	1641970 <vectors-0x69be690>
  44:	02040200 	andeq	r0, r4, #0, 4
  48:	02004a06 	andeq	r4, r0, #24576	; 0x6000
  4c:	064a0104 	strbeq	r0, [sl], -r4, lsl #2
  50:	00010259 	andeq	r0, r1, r9, asr r2
  54:	00620101 	rsbeq	r0, r2, r1, lsl #2
  58:	00020000 	andeq	r0, r2, r0
  5c:	0000001f 	andeq	r0, r0, pc, lsl r0
  60:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
  64:	0101000d 	tsteq	r1, sp
  68:	00000101 	andeq	r0, r0, r1, lsl #2
  6c:	00000100 	andeq	r0, r0, r0, lsl #2
  70:	74730001 	ldrbtvc	r0, [r3], #-1
  74:	70757261 	rsbsvc	r7, r5, r1, ror #4
  78:	0000632e 	andeq	r6, r0, lr, lsr #6
  7c:	00000000 	andeq	r0, r0, r0
  80:	00d00205 	sbcseq	r0, r0, r5, lsl #4
  84:	0b030800 	bleq	c208c <vectors-0x7f3df74>
  88:	599f3e01 	ldmibpl	pc, {r0, r9, sl, fp, ip, sp}	; <UNPREDICTABLE>
  8c:	0402005a 	streq	r0, [r2], #-90	; 0x5a
  90:	02004b02 	andeq	r4, r0, #2048	; 0x800
  94:	00b90204 	adcseq	r0, r9, r4, lsl #4
  98:	06010402 	streq	r0, [r1], -r2, lsl #8
  9c:	9f4e064a 	svcls	0x004e064a
  a0:	04020059 	streq	r0, [r2], #-89	; 0x59
  a4:	02004b02 	andeq	r4, r0, #2048	; 0x800
  a8:	00810204 	addeq	r0, r1, r4, lsl #4
  ac:	06010402 	streq	r0, [r1], -r2, lsl #8
  b0:	2f4d064a 	svccs	0x004d064a
  b4:	022f2f4d 	eoreq	r2, pc, #308	; 0x134
  b8:	01010001 	tsteq	r1, r1

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
   4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
   8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
   c:	696e6900 	stmdbvs	lr!, {r8, fp, sp, lr}^
  10:	61765f74 	cmnvs	r6, r4, ror pc
  14:	6f630072 	svcvs	0x00630072
  18:	5f74736e 	svcpl	0x0074736e
  1c:	00726176 	rsbseq	r6, r2, r6, ror r1
  20:	20554e47 	subscs	r4, r5, r7, asr #28
  24:	2e342043 	cdpcs	0, 3, cr2, cr4, cr3, {2}
  28:	00322e37 	eorseq	r2, r2, r7, lsr lr
  2c:	69696e75 	stmdbvs	r9!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  30:	61765f74 	cmnvs	r6, r4, ror pc
  34:	616d0072 	smcvs	53250	; 0xd002
  38:	6d006e69 	stcvs	14, cr6, [r0, #-420]	; 0xfffffe5c
  3c:	2e6e6961 	cdpcs	9, 6, cr6, cr14, cr1, {3}
  40:	6e750063 	cdpvs	0, 7, cr0, cr5, cr3, {3}
  44:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
  48:	63206465 	teqvs	r0, #1694498816	; 0x65000000
  4c:	00726168 	rsbseq	r6, r2, r8, ror #2
  50:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0x973
  54:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
  58:	69757600 	ldmdbvs	r5!, {r9, sl, ip, sp, lr}^
  5c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  60:	5c3a4500 	cfldr32pl	mvfx4, [sl], #-0
  64:	64757453 	ldrbtvs	r7, [r5], #-1107	; 0x453
  68:	6d455c79 	stclvs	12, cr5, [r5, #-484]	; 0xfffffe1c
  6c:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
  70:	44206465 	strtmi	r6, [r0], #-1125	; 0x465
  74:	6f6c7069 	svcvs	0x006c7069
  78:	555c616d 	ldrbpl	r6, [ip, #-365]	; 0x16d
  7c:	2074696e 	rsbscs	r6, r4, lr, ror #18
  80:	654c5c33 	strbvs	r5, [ip, #-3123]	; 0xc33
  84:	6e6f7373 	mcrvs	3, 3, r7, cr15, cr3, {3}
  88:	73415c33 	movtvc	r5, #7219	; 0x1c33
  8c:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
  90:	746e656d 	strbtvc	r6, [lr], #-1389	; 0x56d
  94:	66654400 	strbtvs	r4, [r5], -r0, lsl #8
  98:	746c7561 	strbtvc	r7, [ip], #-1377	; 0x561
  9c:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
  a0:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
  a4:	61747300 	cmnvs	r4, r0, lsl #6
  a8:	2e707572 	mrccs	5, 3, r7, cr0, cr2, {3}
  ac:	5f500063 	svcpl	0x00500063
  b0:	00747364 	rsbseq	r7, r4, r4, ror #6
  b4:	745f455f 	ldrbvc	r4, [pc], #-1375	; bc <vectors-0x7ffff44>
  b8:	00747865 	rsbseq	r7, r4, r5, ror #16
  bc:	645f535f 	ldrbvs	r5, [pc], #-863	; c4 <vectors-0x7ffff3c>
  c0:	00617461 	rsbeq	r7, r1, r1, ror #8
  c4:	625f535f 	subsvs	r5, pc, #2080374785	; 0x7c000001
  c8:	5f007373 	svcpl	0x00007373
  cc:	73625f45 	cmnvc	r2, #276	; 0x114
  d0:	65520073 	ldrbvs	r0, [r2, #-115]	; 0x73
  d4:	5f746573 	svcpl	0x00746573
  d8:	646e6148 	strbtvs	r6, [lr], #-328	; 0x148
  dc:	0072656c 	rsbseq	r6, r2, ip, ror #10
  e0:	72735f50 	rsbsvc	r5, r3, #80, 30	; 0x140
  e4:	41440063 	cmpmi	r4, r3, rrx
  e8:	735f4154 	cmpvc	pc, #84, 2
  ec:	00657a69 	rsbeq	r7, r5, r9, ror #20
  f0:	6174735f 	cmnvs	r4, pc, asr r3
  f4:	745f6b63 	ldrbvc	r6, [pc], #-2915	; fc <vectors-0x7ffff04>
  f8:	6200706f 	andvs	r7, r0, #111	; 0x6f
  fc:	735f7373 	cmpvc	pc, #-872415231	; 0xcc000001
 100:	00657a69 	rsbeq	r7, r5, r9, ror #20
 104:	74636576 	strbtvc	r6, [r3], #-1398	; 0x576
 108:	0073726f 	rsbseq	r7, r3, pc, ror #4
 10c:	645f455f 	ldrbvs	r4, [pc], #-1375	; 114 <vectors-0x7fffeec>
 110:	00617461 	rsbeq	r7, r1, r1, ror #8

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	34202955 	strtcc	r2, [r0], #-2389	; 0x955
   c:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0x202
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x00000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	0800001c 	stmdaeq	r0, {r2, r3, r4}
  1c:	000000b4 	strheq	r0, [r0], -r4
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000d0 	stmdaeq	r0, {r4, r6, r7}
  48:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000018 	andeq	r0, r0, r8, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	08000180 	stmdaeq	r0, {r7, r8}
  68:	0000000a 	andeq	r0, r0, sl
  6c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  70:	41018e02 	tstmi	r1, r2, lsl #28
  74:	0000070d 	andeq	r0, r0, sp, lsl #14
