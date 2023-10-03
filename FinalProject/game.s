	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initializeRoom
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeRoom, %function
initializeRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5888
	push	{r4, r5, r6, lr}
	ldr	r3, .L6
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L6+4
	ldr	r2, .L6+8
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L6+12
	mov	lr, pc
	bx	r4
	mov	r2, #0
.L2:
	lsl	r3, r2, #1
	add	r3, r3, #100663296
	add	r3, r3, #63488
	ldrh	r1, [r3]
	add	r2, r2, #1
	orr	r1, r1, #8192
	cmp	r2, #1024
	strh	r1, [r3]	@ movhi
	bne	.L2
	mov	r6, #150
	mov	r5, #0
	mov	r4, #3
	mov	lr, #20
	mov	ip, #32
	mov	r0, #16
	mov	r1, #50
	mov	r2, #98
	ldr	r3, .L6+16
	str	r6, [r3]
	ldr	r3, .L6+20
	str	r5, [r3]
	ldr	r3, .L6+24
	str	r4, [r3, #40]
	str	lr, [r3, #32]
	stm	r3, {r1, r2}
	str	ip, [r3, #20]
	str	r0, [r3, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	mgba_open
	.word	DMANow
	.word	100726784
	.word	tableMap
	.word	hOff
	.word	gameState
	.word	arrow
	.size	initializeRoom, .-initializeRoom
	.align	2
	.global	goToRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToRoom, %function
goToRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L10
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L10+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L10+12
	mov	lr, pc
	bx	r4
	bl	initializeRoom
	mov	r2, #0
	ldr	r3, .L10+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L11:
	.align	2
.L10:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	gameState
	.size	goToRoom, .-goToRoom
	.align	2
	.global	goToSpray
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSpray, %function
goToSpray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L14
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L14+8
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L14+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L14+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L14+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L15:
	.align	2
.L14:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	initializeSpray
	.word	gameState
	.size	goToSpray, .-goToSpray
	.align	2
	.global	goToBible
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBible, %function
goToBible:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4352
	push	{r4, lr}
	mov	r3, #1024
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L20
	ldr	r1, .L20+4
	ldr	r4, .L20+8
	mov	lr, pc
	bx	r4
	mov	r2, #0
.L17:
	lsl	r3, r2, #1
	add	r3, r3, #100663296
	add	r3, r3, #63488
	ldrh	r1, [r3]
	add	r2, r2, #1
	orr	r1, r1, #8192
	cmp	r2, #1024
	strh	r1, [r3]	@ movhi
	bne	.L17
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+16
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L20+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	100726784
	.word	bugBibleMap
	.word	DMANow
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	gameState
	.size	goToBible, .-goToBible
	.align	2
	.global	goToPuzzle
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPuzzle, %function
goToPuzzle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L24
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L24+8
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L24+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L24+16
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L24+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	initializePuzzle
	.word	gameState
	.size	goToPuzzle, .-goToPuzzle
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"bug num: %d, found?: %d\000"
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L54
	ldrh	r0, [r7]
	ldr	r8, .L54+4
	tst	r0, #512
	ldrh	r3, [r8]
	beq	.L27
	ands	r4, r3, #512
	bne	.L27
	ldr	r5, .L54+8
	ldr	r9, .L54+12
	ldr	r6, .L54+16
.L28:
	mov	r1, r4
	ldr	r2, [r5, #16]
	mov	r0, r6
	add	r4, r4, #1
	mov	lr, pc
	bx	r9
	cmp	r4, #12
	add	r5, r5, #44
	bne	.L28
	ldrh	r3, [r8]
	ldrh	r0, [r7]
.L27:
	ldr	ip, .L54+20
	ldr	r2, [ip]
	tst	r3, #32
	subeq	r2, r2, #1
	ldr	lr, .L54+24
	streq	r2, [ip]
	tst	r3, #16
	ldr	r1, [lr]
	addeq	r2, r2, #1
	streq	r2, [ip]
	tst	r3, #64
	subeq	r1, r1, #1
	streq	r1, [lr]
	tst	r3, #128
	addeq	r1, r1, #1
	streq	r1, [lr]
	tst	r0, #1
	beq	.L52
	tst	r3, #1
	beq	.L50
.L52:
	ldr	r4, .L54+28
.L33:
	tst	r0, #2
	beq	.L36
	tst	r3, #2
	beq	.L53
.L36:
	ldr	r5, [r4]
	ldrb	r6, [r4, #4]	@ zero_extendqisi2
	lsl	r5, r5, #23
	lsr	r5, r5, #23
	orr	r5, r5, #32768
	orr	r6, r6, #32768
.L35:
	cmp	r1, #96
	movgt	r3, #96
	strgt	r3, [lr]
	bgt	.L38
	cmp	r1, #0
	movlt	r3, #0
	strlt	r3, [lr]
.L38:
	cmp	r2, #272
	movgt	r3, #272
	strgt	r3, [ip]
	bgt	.L40
	cmp	r2, #0
	movlt	r3, #0
	strlt	r3, [ip]
.L40:
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	ldr	r1, [r4, #36]
	bne	.L41
	ldr	r3, .L54+32
	add	r0, r1, #1
	ldr	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	mov	r3, #20
	str	r1, [r4, #36]
	str	r3, [r4, #32]
.L41:
	mov	ip, #75
	lsl	r0, r1, #7
	add	r0, r0, #1
	ldr	r3, .L54+36
	ldr	r1, .L54+40
	ldr	r2, .L54+44
	lsl	r0, r0, #22
	lsr	r0, r0, #22
	strh	r6, [r3]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L53:
	mov	r0, #50
	mov	r3, #98
	ldr	r5, .L54+48
	stm	r4, {r0, r3}
	ldr	r6, .L54+52
	b	.L35
.L50:
	mov	r6, #174
	mov	r5, #50
	ldr	r4, .L54+28
	str	r6, [r4]
	str	r5, [r4, #4]
	b	.L33
.L55:
	.align	2
.L54:
	.word	oldButtons
	.word	buttons
	.word	bugs
	.word	mgba_printf
	.word	.LC0
	.word	hOff
	.word	vOff
	.word	arrow
	.word	__aeabi_idivmod
	.word	shadowOAM
	.word	-12153
	.word	4102
	.word	32818
	.word	32866
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	r3, .L58
	ldr	ip, [r3]
	lsl	r3, ip, #16
	lsr	r3, r3, #16
	push	{r4, lr}
	strh	r3, [r0, #20]	@ movhi
	ldr	r3, .L58+4
	ldr	r1, .L58+8
	ldr	r3, [r3]
	smull	lr, r2, r1, ip
	smull	lr, r1, r3, r1
	sub	r2, r2, ip, asr #31
	sub	r1, r1, r3, asr #31
	sub	r2, r2, #10
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsl	r1, r1, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r1, r1, #16
	strh	r3, [r0, #22]	@ movhi
	ldr	r4, .L58+12
	strh	r2, [r0, #24]	@ movhi
	mov	r3, #512
	strh	r1, [r0, #26]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L58+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	hOff
	.word	vOff
	.word	1431655766
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	gameMain
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameMain, %function
gameMain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L88
	ldr	r3, [r3]
	push	{r4, r5, r6, lr}
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L60
.L63:
	.word	.L66
	.word	.L65
	.word	.L64
	.word	.L62
.L66:
	ldr	r4, .L88+4
	bl	updateGame
	ldr	r3, .L88+8
	mov	lr, pc
	bx	r3
	bl	drawGame
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L60
	ldr	r5, .L88+12
	ldrh	r3, [r5]
	tst	r3, #8
	bne	.L60
	ldr	r6, .L88+16
	ldr	r3, [r6]
	cmp	r3, #174
	bne	.L69
	bl	goToSpray
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L60
	ldrh	r3, [r5]
	tst	r3, #8
	bne	.L60
.L69:
	ldr	r3, [r6]
	cmp	r3, #50
	beq	.L87
.L60:
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	mov	r0, #4
	ldr	r3, .L88+20
	ldr	r2, .L88+24
	ldr	r1, .L88+28
	ldr	lr, .L88+32
	ldr	ip, .L88+36
	strh	r0, [r3, #84]	@ movhi
	strh	r2, [r3, #90]	@ movhi
	add	r0, r0, #8192
	sub	r2, r2, #144
	strh	r1, [r3, #92]	@ movhi
	strh	lr, [r3, #96]	@ movhi
	ldr	r1, .L88+8
	strh	ip, [r3, #98]	@ movhi
	strh	r0, [r3, #100]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	strh	r2, [r3, #88]	@ movhi
	mov	lr, pc
	bx	r1
.L86:
	bl	drawGame
	ldr	r3, .L88+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L60
	ldr	r3, .L88+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L60
	pop	{r4, r5, r6, lr}
	b	goToRoom
.L64:
	ldr	r3, .L88+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+8
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	drawGame
.L65:
	ldr	r3, .L88+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+8
	mov	lr, pc
	bx	r3
	b	.L86
.L87:
	pop	{r4, r5, r6, lr}
	b	goToBible
.L89:
	.align	2
.L88:
	.word	gameState
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	arrow
	.word	shadowOAM
	.word	-32592
	.word	4100
	.word	-32672
	.word	-32656
	.word	updatePuzzle
	.word	updateSpray
	.size	gameMain, .-gameMain
	.comm	gameState,4,4
	.comm	arrow,52,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
