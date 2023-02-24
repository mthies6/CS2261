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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.global	drawBackGround
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBackGround, %function
drawBackGround:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L4
	ldr	r9, .L4+4
	ldr	r2, [r8]
	ldr	r3, [r9]
	mul	r1, r3, r2
	ldr	r6, .L4+8
	ldr	r7, .L4+12
	ldr	ip, [r6]
	ldr	r0, [r7]
	ldr	lr, .L4+16
	ldr	r5, .L4+20
	add	r2, r2, ip
	add	r3, r3, r0
	ldr	ip, .L4+24
	sub	sp, sp, #12
	sub	r2, r2, #1
	sub	r3, r3, #1
	ldr	r0, .L4+28
	ldr	r4, .L4+32
	str	r2, [lr]
	str	r3, [r5]
	str	r1, [ip]
	mov	lr, pc
	bx	r4
	ldr	r0, [r6]
	ldr	r2, [r8]
	ldr	r5, .L4+36
	sub	r0, r0, #6
	add	r2, r2, #11
	ldr	r1, [r7]
	ldr	r3, [r9]
	ldr	r4, .L4+40
	add	lr, r0, r2
	str	r5, [sp]
	ldr	r10, .L4+44
	sub	r1, r1, #6
	str	lr, [r4]
	add	r3, r3, #11
	ldr	lr, .L4+48
	add	ip, r1, r3
	ldr	fp, .L4+52
	str	ip, [lr]
	str	r3, [r10]
	ldr	ip, .L4+56
	ldr	r3, .L4+60
	ldr	r4, .L4+64
	str	r1, [ip]
	str	r2, [r3]
	str	r0, [fp]
	mov	r3, #1
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+60
	ldr	lr, .L4+48
	ldr	r2, [r3]
	str	r5, [sp]
	ldr	r0, [fp]
	ldr	r1, [lr]
	mov	r3, #1
	add	r2, r2, #1
	mov	lr, pc
	bx	r4
	ldr	ip, .L4+56
	str	r5, [sp]
	ldr	r0, [fp]
	mov	fp, ip
	ldr	r1, [ip]
	ldr	r3, [r10]
	mov	r2, #1
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r2, .L4+40
	ldr	r3, [r10]
	ldr	r1, [fp]
	ldr	r0, [r2]
	mov	r2, #1
	mov	lr, pc
	bx	r4
	ldr	ip, .L4+68
	ldr	r3, [r9]
	ldr	r2, [r8]
	ldr	r1, [r7]
	ldr	r0, [r6]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	rectWidth
	.word	rectHeight
	.word	leftBound
	.word	topBound
	.word	rightBound
	.word	bottomBound
	.word	rectArea
	.word	.LC0
	.word	mgba_printf
	.word	32767
	.word	pRightBound
	.word	pHeight
	.word	pBottomBound
	.word	pLeftBound
	.word	pTopBound
	.word	pWidth
	.word	drawRect
	.word	15855
	.size	drawBackGround, .-drawBackGround
	.align	2
	.global	initializeGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	lr, #41
	mov	r2, #1
	mov	r10, #992
	mov	r9, #0
	mov	ip, #3
	mov	r0, #120
	mov	r1, #80
	mov	r8, #2
	mov	r7, #46
	mov	r6, #6
	mov	r5, #149
	mov	r4, #148
	ldr	r3, .L8
	str	lr, [r3]
	str	lr, [r3, #8]
	ldr	lr, .L8+4
	strh	r10, [r3, #16]	@ movhi
	str	r9, [r3, #20]
	str	r2, [r3, #4]
	str	r3, [lr]
	str	r2, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	ldr	r3, .L8+8
	str	ip, [r3]
	ldr	r3, .L8+12
	str	ip, [r3]
	ldr	r3, .L8+16
	str	r0, [r3]
	ldr	r3, .L8+20
	str	r0, [r3]
	ldr	r3, .L8+24
	str	r1, [r3]
	ldr	r3, .L8+28
	str	r1, [r3]
	ldr	r3, .L8+32
	str	r8, [r3]
	ldr	r3, .L8+36
	ldr	r1, .L8+40
	str	r7, [r3]
	ldr	r2, .L8+44
	ldr	r3, .L8+48
	str	r6, [r1]
	str	r5, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	drawBackGround
.L9:
	.align	2
.L8:
	.word	player
	.word	ptr
	.word	lives
	.word	ballVy
	.word	ballX
	.word	ballOldX
	.word	ballY
	.word	ballOldY
	.word	ballVx
	.word	leftBound
	.word	topBound
	.word	rectWidth
	.word	rectHeight
	.size	initializeGame, .-initializeGame
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"collision\000"
	.text
	.align	2
	.global	collisionOccurred
	.syntax unified
	.arm
	.fpu softvfp
	.type	collisionOccurred, %function
collisionOccurred:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L12
	sub	sp, sp, #8
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	r0, .L12+8
	ldr	r1, [r0]
	ldr	lr, .L12+12
	sub	r1, r1, #1
	str	ip, [sp]
	mov	r3, #10
	str	r1, [r0]
	mov	r2, #35
	mov	r1, #12
	mov	r0, #2
	str	ip, [lr, #20]
	str	ip, [lr]
	str	ip, [lr, #4]
	str	ip, [lr, #12]
	str	ip, [lr, #16]
	ldr	r4, .L12+16
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	b	drawBackGround
.L13:
	.align	2
.L12:
	.word	.LC1
	.word	mgba_printf
	.word	lives
	.word	currLine
	.word	drawRect
	.size	collisionOccurred, .-collisionOccurred
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L67
	ldr	r3, [r4]
	ldr	r2, [r3, #20]
	cmp	r2, #0
	sub	sp, sp, #12
	bne	.L15
	ldr	r10, .L67+4
	ldr	r6, .L67+8
	ldr	r7, [r10]
	ldr	lr, [r3, #4]
	ldr	r0, [r6]
	ldr	r5, .L67+12
	add	r1, r7, #1
	cmp	lr, r1
	ldrh	ip, [r5]
	ldr	r2, [r3]
	sub	r0, r0, #5
	beq	.L62
	cmp	lr, r0
	beq	.L63
.L18:
	tst	ip, #32
	beq	.L21
	ldr	r0, .L67+16
	ldrh	r0, [r0]
	tst	r0, #32
	bne	.L21
	ldr	r0, [r3, #8]
	cmp	r0, r2
	bge	.L21
.L22:
	ldr	ip, [r3, #24]
	ldr	r0, [r3, #28]
	rsb	ip, ip, #0
	rsb	r0, r0, #0
	str	ip, [r3, #24]
	str	r0, [r3, #28]
.L23:
	ldr	fp, .L67+20
	ldr	ip, [fp]
	ldr	r0, .L67+24
	cmp	ip, r2
	ldr	r0, [r0]
	bge	.L24
	sub	r7, r0, #4
	cmp	r7, r2
	bgt	.L64
.L24:
	sub	r0, r0, #5
	cmp	r0, r2
	beq	.L26
	add	ip, ip, #1
	cmp	ip, r2
	beq	.L26
.L14:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L15:
	cmp	r2, #1
	bne	.L14
	ldr	r0, [r3]
	ldr	r10, .L67+4
	ldr	r6, .L67+8
	ldr	r5, .L67+12
	ldr	fp, .L67+20
	b	.L28
.L21:
	tst	ip, #16
	beq	.L23
	ldr	r0, .L67+16
	ldrh	r0, [r0]
	tst	r0, #16
	bne	.L23
	ldr	r0, [r3, #8]
	cmp	r0, r2
	ble	.L23
	b	.L22
.L26:
	mov	r8, #0
	ldr	r3, .L67+28
	str	r8, [sp]
	ldr	r9, .L67+32
	ldr	r7, .L67+36
	ldr	r0, [r3]
	mov	r2, #1
	mov	r3, #5
	mov	lr, pc
	bx	r7
	ldr	r1, [r9]
	ldr	r2, .L67+40
	str	r8, [sp]
	mov	r3, #5
	ldr	r0, [r2]
	add	r1, r1, #1
	mov	r2, #1
	mov	lr, pc
	bx	r7
	ldr	r1, [r9]
	ldr	r3, .L67+28
	str	r8, [sp]
	mov	r2, #1
	ldr	r0, [r3]
	add	r1, r1, #1
	mov	r3, #5
	mov	lr, pc
	bx	r7
	ldr	r1, [r10]
	str	r8, [sp]
	ldr	r2, .L67+40
	mov	r3, #5
	ldr	r0, [r2]
	add	r1, r1, #1
	mov	r2, #1
	mov	lr, pc
	bx	r7
	mov	r2, #1
	ldr	r3, [r4]
	ldr	r0, [r3]
	str	r2, [r3, #20]
	str	r0, [r3, #8]
.L28:
	ldr	r2, .L67+44
	ldr	lr, [fp]
	ldr	r1, [r2]
	add	r7, lr, #1
	add	r1, lr, r1
	cmp	r7, r0
	ldrh	ip, [r5]
	ldr	r2, [r3, #4]
	sub	r1, r1, #5
	beq	.L65
	cmp	r1, r0
	beq	.L66
.L32:
	tst	ip, #64
	beq	.L35
	ldr	r1, .L67+16
	ldrh	r1, [r1]
	tst	r1, #64
	bne	.L35
	ldr	r1, [r3, #12]
	cmp	r1, r2
	bge	.L35
.L36:
	ldr	ip, [r3, #24]
	ldr	r1, [r3, #28]
	rsb	ip, ip, #0
	rsb	r1, r1, #0
	str	ip, [r3, #24]
	str	r1, [r3, #28]
.L37:
	ldr	r1, [r10]
	cmp	r1, r2
	bge	.L38
	ldr	ip, .L67+48
	ldr	ip, [ip]
	add	ip, r1, ip
	sub	ip, ip, #4
	cmp	ip, r2
	ble	.L38
	cmp	r7, r0
	ldr	r0, [r3, #28]
	str	r2, [r3, #12]
	subeq	r2, r2, r0
	addne	r2, r2, r0
	str	r2, [r3, #4]
.L38:
	ldr	r3, [r6]
	sub	r3, r3, #5
	cmp	r3, r2
	beq	.L40
	add	r1, r1, #1
	cmp	r1, r2
	bne	.L14
.L40:
	mov	r5, #0
	ldr	r9, .L67+28
	ldr	r7, .L67+32
	ldr	r0, [r9]
	str	r5, [sp]
	ldr	r6, .L67+36
	ldr	r1, [r7]
	mov	r3, #1
	mov	r2, #5
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	ldr	r8, .L67+52
	ldr	r0, [fp]
	str	r5, [sp]
	mov	r3, #1
	ldr	r1, [r8]
	mov	r2, #5
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	ldr	r0, [r9]
	str	r5, [sp]
	mov	r3, #1
	ldr	r1, [r8]
	mov	r2, #5
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	ldr	r0, [fp]
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #5
	ldr	r1, [r7]
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	ldr	r2, [r3, #4]
	str	r5, [r3, #20]
	str	r2, [r3, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L35:
	tst	ip, #128
	beq	.L37
	ldr	r1, .L67+16
	ldrh	r1, [r1]
	tst	r1, #128
	bne	.L37
	ldr	r1, [r3, #12]
	cmp	r1, r2
	ble	.L37
	b	.L36
.L62:
	tst	ip, #1
	beq	.L18
	ldr	r8, .L67+16
	ldrh	r8, [r8]
	tst	r8, #1
	bne	.L18
	ldr	r8, .L67+56
	ldr	r9, [r8, #20]
	cmp	r9, #0
	bne	.L20
	ldr	fp, .L67+40
	ldr	fp, [fp]
	cmp	fp, r2
	bge	.L20
	ldr	fp, .L67+28
	ldr	fp, [fp]
	cmp	fp, r2
	ble	.L20
	mov	fp, #2
	add	r7, r7, #6
	str	r7, [r8, #4]
	str	r7, [r8, #8]
	str	r2, [r8]
	str	r9, [r8, #16]
	str	fp, [r8, #20]
	str	fp, [r8, #12]
.L20:
	cmp	lr, r0
	bne	.L18
.L42:
	ldr	r0, [r8, #20]
	cmp	r0, #0
	bne	.L18
	ldr	r7, .L67+40
	ldr	r7, [r7]
	cmp	r7, r2
	bge	.L18
	ldr	r7, .L67+28
	ldr	r7, [r7]
	cmp	r7, r2
	ble	.L18
	mov	r9, #1
	mov	r7, #2
	str	r0, [r8, #16]
	sub	r0, lr, #1
	str	r2, [r8]
	str	r9, [r8, #20]
	str	r7, [r8, #12]
	str	r0, [r8, #4]
	str	r0, [r8, #8]
	b	.L18
.L64:
	cmp	lr, r1
	ldr	lr, [r3, #24]
	str	r2, [r3, #8]
	addeq	r2, r2, lr
	subne	r2, r2, lr
	str	r2, [r3]
	b	.L24
.L66:
	tst	ip, #1
	beq	.L32
	ldr	r1, .L67+16
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L32
	ldr	r8, .L67+56
.L41:
	ldr	r1, [r8, #20]
	cmp	r1, #0
	bne	.L32
	ldr	lr, .L67+52
	ldr	lr, [lr]
	cmp	lr, r2
	bge	.L32
	ldr	lr, .L67+32
	ldr	lr, [lr]
	cmp	lr, r2
	ble	.L32
	mov	r5, #4
	mov	lr, #2
	str	r1, [r8, #12]
	sub	r1, r0, #1
	str	r2, [r8, #4]
	str	r5, [r8, #20]
	str	lr, [r8, #16]
	str	r1, [r8]
	str	r1, [r8, #8]
	b	.L32
.L65:
	tst	ip, #1
	beq	.L32
	ldr	r5, .L67+16
	ldrh	r5, [r5]
	tst	r5, #1
	bne	.L32
	ldr	r8, .L67+56
	ldr	r5, [r8, #20]
	cmp	r5, #0
	bne	.L34
	ldr	r9, .L67+52
	ldr	r9, [r9]
	cmp	r9, r2
	bge	.L34
	ldr	r9, .L67+32
	ldr	r9, [r9]
	cmp	r9, r2
	ble	.L34
	add	lr, lr, #6
	mov	r9, #3
	stmib	r8, {r2, lr}
	str	lr, [r8]
	mov	lr, #2
	str	r5, [r8, #12]
	str	r9, [r8, #20]
	str	lr, [r8, #16]
.L34:
	cmp	r1, r0
	bne	.L32
	b	.L41
.L63:
	tst	ip, #1
	beq	.L18
	ldr	r0, .L67+16
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L18
	ldr	r8, .L67+56
	b	.L42
.L68:
	.align	2
.L67:
	.word	ptr
	.word	pTopBound
	.word	pBottomBound
	.word	oldButtons
	.word	buttons
	.word	pLeftBound
	.word	pRightBound
	.word	rightBound
	.word	bottomBound
	.word	drawRect
	.word	leftBound
	.word	pWidth
	.word	pHeight
	.word	topBound
	.word	currLine
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	mov	r3, #5
	push	{r4, r5, lr}
	ldr	r5, .L71
	ldr	r2, [r5]
	sub	sp, sp, #12
	add	r0, r2, #8
	ldm	r0, {r0, r1}
	mov	r2, r3
	str	ip, [sp]
	ldr	r4, .L71+4
	mov	lr, pc
	bx	r4
	mov	r3, #5
	ldr	r2, [r5]
	ldm	r2, {r0, r1}
	ldrh	r2, [r2, #16]
	str	r2, [sp]
	mov	r2, r3
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	ptr
	.word	drawRect
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L79
	ldr	r5, .L79+4
	ldr	r4, .L79+8
	ldr	ip, [r5]
	ldr	r2, [r4]
	ldr	r1, [r3]
	ldr	r6, .L79+12
	ldr	lr, .L79+16
	str	r2, [r6]
	add	r1, r1, #1
	add	r2, r2, ip
	cmp	r2, r1
	ldr	r3, [lr]
	ldr	r1, .L79+20
	str	r3, [r1]
	ldr	r1, .L79+24
	ldr	r1, [r1]
	rsble	ip, ip, #0
	strle	ip, [r5]
	sub	r1, r1, #6
	cmp	r2, r1
	str	r2, [r4]
	ldrge	r2, [r5]
	rsbge	r2, r2, #0
	ldr	r0, .L79+28
	strge	r2, [r5]
	ldr	r2, .L79+32
	ldr	r6, [r0]
	ldr	r2, [r2]
	add	r3, r3, r6
	add	r2, r2, #2
	cmp	r3, r2
	rsble	r2, r6, #0
	strle	r2, [r0]
	ldr	r2, .L79+36
	ldr	r2, [r2]
	sub	r2, r2, #6
	cmp	r3, r2
	str	r3, [lr]
	ldrge	r3, [r0]
	rsbge	r3, r3, #0
	strge	r3, [r0]
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	leftBound
	.word	ballVx
	.word	ballX
	.word	ballOldX
	.word	ballY
	.word	ballOldY
	.word	rightBound
	.word	ballVy
	.word	topBound
	.word	bottomBound
	.size	updateBall, .-updateBall
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
	push	{r4, lr}
	ldr	r4, .L85
	bl	updatePlayer
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #3
	str	r3, [r4]
	beq	.L84
	pop	{r4, lr}
	bx	lr
.L84:
	bl	updateBall
	mov	r3, #0
	str	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	skipFrame
	.size	updateGame, .-updateGame
	.align	2
	.global	drawBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #5
	push	{r4, lr}
	ldr	ip, .L89
	ldr	r1, .L89+4
	ldr	r0, .L89+8
	sub	sp, sp, #8
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r4, .L89+12
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	ldr	ip, .L89+16
	ldr	r1, .L89+20
	ldr	r0, .L89+24
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	15855
	.word	ballOldY
	.word	ballOldX
	.word	drawRect
	.word	31775
	.word	ballY
	.word	ballX
	.size	drawBall, .-drawBall
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Lives:\000"
	.text
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L96
	ldr	r3, .L96+4
	mov	r0, r1
	ldr	r2, .L96+8
	ldr	r4, .L96+12
	sub	sp, sp, #8
	mov	lr, pc
	bx	r4
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L91
	mov	r5, #2
	mov	r4, #0
	ldr	r8, .L96+16
	ldr	r7, .L96+20
.L93:
	mov	r3, #10
	mov	r0, r5
	mov	r2, r3
	mov	r1, #12
	str	r7, [sp]
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	add	r4, r4, #1
	cmp	r3, r4
	add	r5, r5, #12
	bgt	.L93
.L91:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	lives
	.word	32767
	.word	.LC2
	.word	drawString
	.word	drawRect
	.word	31775
	.size	drawLives, .-drawLives
	.align	2
	.global	pOutOfBounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	pOutOfBounds, %function
pOutOfBounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #5
	mov	r4, #0
	ldr	r5, .L100
	ldr	r2, [r5]
	sub	sp, sp, #8
	add	r0, r2, #8
	ldm	r0, {r0, r1}
	mov	r2, r3
	str	r4, [sp]
	ldr	r6, .L100+4
	mov	lr, pc
	bx	r6
	ldr	r3, .L100+8
	ldr	r1, .L100+12
	ldr	r2, [r3]
	ldr	r1, [r1]
	ldr	r3, [r5]
	add	r2, r2, #1
	str	r4, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawBackGround
.L101:
	.align	2
.L100:
	.word	ptr
	.word	drawRect
	.word	pTopBound
	.word	leftBound
	.size	pOutOfBounds, .-pOutOfBounds
	.align	2
	.global	cutRectRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutRectRight, %function
cutRectRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, lr}
	ldr	r2, .L106
	ldr	r4, .L106+4
	ldr	ip, .L106+8
	ldr	r3, .L106+12
	ldr	r0, [r4]
	ldr	r2, [r2]
	ldr	ip, [ip]
	sub	sp, sp, #12
	ldr	r3, [r3]
	ldr	lr, .L106+16
	str	r1, [sp]
	ldr	r1, .L106+20
	sub	r2, r2, r0
	sub	ip, r0, ip
	add	r2, r2, #1
	add	r3, r3, #1
	ldr	r1, [r1]
	str	ip, [lr]
	ldr	r5, .L106+24
	mov	lr, pc
	bx	r5
	bl	drawBackGround
	ldr	r3, .L106+28
	ldr	r2, [r3]
	ldr	r3, [r4]
	ldr	r2, [r2]
	cmp	r2, r3
	bgt	.L105
.L103:
	mov	r3, #0
	str	r3, [r4, #20]
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L105:
	bl	pOutOfBounds
	b	.L103
.L107:
	.align	2
.L106:
	.word	pRightBound
	.word	currLine
	.word	leftBound
	.word	pHeight
	.word	rectWidth
	.word	pTopBound
	.word	drawRect
	.word	ptr
	.size	cutRectRight, .-cutRectRight
	.align	2
	.global	cutRectLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutRectLeft, %function
cutRectLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r4, .L112
	ldr	r2, .L112+4
	ldr	ip, [r4]
	ldr	r2, [r2]
	ldr	r1, .L112+8
	ldr	r3, .L112+12
	sub	sp, sp, #8
	ldr	r0, [r1]
	ldr	r3, [r3]
	ldr	lr, .L112+16
	str	r5, [sp]
	sub	r2, r2, ip
	ldr	r5, .L112+20
	ldr	r1, .L112+24
	add	r2, r2, #1
	str	r2, [lr]
	add	r3, r3, #1
	sub	r2, ip, r0
	ldr	r1, [r1]
	str	ip, [r5]
	ldr	r6, .L112+28
	mov	lr, pc
	bx	r6
	bl	drawBackGround
	ldr	r3, .L112+32
	ldr	r2, [r3]
	ldr	r3, [r5]
	ldr	r2, [r2]
	cmp	r2, r3
	blt	.L111
.L109:
	mov	r3, #0
	str	r3, [r4, #20]
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L111:
	bl	pOutOfBounds
	b	.L109
.L113:
	.align	2
.L112:
	.word	currLine
	.word	rightBound
	.word	pLeftBound
	.word	pHeight
	.word	rectWidth
	.word	leftBound
	.word	pTopBound
	.word	drawRect
	.word	ptr
	.size	cutRectLeft, .-cutRectLeft
	.align	2
	.global	cutRectBottom
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutRectBottom, %function
cutRectBottom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, lr}
	ldr	r3, .L118
	ldr	r4, .L118+4
	ldr	ip, .L118+8
	ldr	r2, .L118+12
	ldr	r1, [r4, #4]
	ldr	r3, [r3]
	ldr	ip, [ip]
	sub	sp, sp, #12
	ldr	r2, [r2]
	ldr	lr, .L118+16
	str	r0, [sp]
	ldr	r0, .L118+20
	sub	r3, r3, r1
	sub	ip, r1, ip
	add	r3, r3, #1
	add	r2, r2, #1
	ldr	r0, [r0]
	str	ip, [lr]
	ldr	r5, .L118+24
	mov	lr, pc
	bx	r5
	bl	drawBackGround
	ldr	r2, .L118+28
	ldr	r3, .L118+32
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r2, [r2, #4]
	cmp	r2, r3
	bgt	.L117
.L115:
	mov	r3, #0
	str	r3, [r4, #20]
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L117:
	bl	pOutOfBounds
	b	.L115
.L119:
	.align	2
.L118:
	.word	pBottomBound
	.word	currLine
	.word	topBound
	.word	pWidth
	.word	rectHeight
	.word	pLeftBound
	.word	drawRect
	.word	ptr
	.word	bottomBound
	.size	cutRectBottom, .-cutRectBottom
	.align	2
	.global	cutRectTop
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutRectTop, %function
cutRectTop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r4, .L124
	ldr	r3, .L124+4
	ldr	ip, [r4, #4]
	ldr	r3, [r3]
	ldr	r1, .L124+8
	ldr	r2, .L124+12
	sub	sp, sp, #8
	ldr	r1, [r1]
	ldr	r2, [r2]
	ldr	lr, .L124+16
	str	r5, [sp]
	sub	r3, r3, ip
	ldr	r5, .L124+20
	ldr	r0, .L124+24
	add	r3, r3, #1
	str	r3, [lr]
	add	r2, r2, #1
	sub	r3, ip, r1
	ldr	r0, [r0]
	str	ip, [r5]
	ldr	r6, .L124+28
	mov	lr, pc
	bx	r6
	bl	drawBackGround
	ldr	r3, .L124+32
	ldr	r2, [r3]
	ldr	r3, [r5]
	ldr	r2, [r2, #4]
	cmp	r2, r3
	blt	.L123
.L121:
	mov	r3, #0
	str	r3, [r4, #20]
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L123:
	bl	pOutOfBounds
	b	.L121
.L125:
	.align	2
.L124:
	.word	currLine
	.word	bottomBound
	.word	pTopBound
	.word	pWidth
	.word	rectHeight
	.word	topBound
	.word	pLeftBound
	.word	drawRect
	.word	ptr
	.size	cutRectTop, .-cutRectTop
	.align	2
	.global	drawLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLine, %function
drawLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L152
	ldr	r3, [r4, #20]
	sub	r3, r3, #1
	sub	sp, sp, #8
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L126
.L129:
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L128
.L130:
	ldr	r2, .L152+4
	mov	r3, #2
	str	r2, [sp]
	ldr	r1, [r4, #4]
	mov	r2, #1
	ldr	r0, [r4, #8]
	ldr	r6, .L152+8
	ldr	r5, .L152+12
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r1, [r5]
	add	r3, r3, #1
	add	r2, r2, #1
	cmp	r3, r1
	str	r3, [r4, #12]
	str	r2, [r4, #8]
	bne	.L126
.L146:
	ldr	r6, .L152+16
	ldr	r3, [r4, #4]
	ldr	r2, [r6]
	cmp	r3, r2
	bgt	.L148
.L138:
	cmp	r2, r3
	bgt	.L149
.L126:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L128:
	ldr	r2, .L152+4
	mov	r3, #2
	str	r2, [sp]
	ldr	r1, [r4, #4]
	mov	r2, #1
	ldr	r0, [r4, #8]
	ldr	r6, .L152+8
	ldr	r5, .L152+12
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r1, [r5]
	add	r3, r3, #1
	sub	r2, r2, #1
	cmp	r3, r1
	str	r3, [r4, #12]
	str	r2, [r4, #8]
	beq	.L146
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L131:
	ldr	r2, .L152+4
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, [r4, #8]
	mov	r2, #2
	ldr	r0, [r4]
	ldr	r6, .L152+8
	ldr	r5, .L152+20
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #8]
	ldr	r1, [r5]
	add	r3, r3, #1
	add	r2, r2, #1
	cmp	r3, r1
	str	r3, [r4, #16]
	str	r2, [r4, #8]
	bne	.L126
	ldr	r6, .L152+24
	ldr	r3, [r4]
	ldr	r2, [r6]
	cmp	r3, r2
	bgt	.L150
.L134:
	cmp	r2, r3
	ble	.L126
.L137:
	mov	r3, #0
	str	r3, [r4, #20]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	cutRectLeft
.L132:
	ldr	r2, .L152+4
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, [r4, #8]
	mov	r2, #2
	ldr	r0, [r4]
	ldr	r6, .L152+8
	ldr	r5, .L152+20
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #8]
	ldr	r1, [r5]
	add	r3, r3, #1
	sub	r2, r2, #1
	cmp	r3, r1
	str	r3, [r4, #16]
	str	r2, [r4, #8]
	bne	.L126
	ldr	r6, .L152+24
	ldr	r2, [r4]
	ldr	r3, [r6]
	cmp	r2, r3
	bgt	.L151
.L136:
	cmp	r2, r3
	bge	.L126
	b	.L137
.L149:
	mov	r3, #0
	str	r3, [r4, #20]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	cutRectTop
.L150:
	mov	r3, #0
	str	r3, [r4, #20]
	bl	cutRectRight
	ldr	r3, [r5]
	ldr	r2, [r4, #16]
	cmp	r2, r3
	bne	.L126
	ldr	r2, [r6]
	ldr	r3, [r4]
	b	.L134
.L151:
	mov	r3, #0
	str	r3, [r4, #20]
	bl	cutRectRight
	ldr	r3, [r5]
	ldr	r2, [r4, #16]
	cmp	r2, r3
	bne	.L126
	ldr	r3, [r6]
	ldr	r2, [r4]
	b	.L136
.L148:
	mov	r3, #0
	str	r3, [r4, #20]
	bl	cutRectBottom
	ldr	r3, [r5]
	ldr	r2, [r4, #12]
	cmp	r2, r3
	bne	.L126
	ldr	r2, [r6]
	ldr	r3, [r4, #4]
	b	.L138
.L153:
	.align	2
.L152:
	.word	currLine
	.word	32736
	.word	drawRect
	.word	rectWidth
	.word	ballY
	.word	rectHeight
	.word	ballX
	.size	drawLine, .-drawLine
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
	push	{r4, r5, lr}
	sub	sp, sp, #20
	bl	drawBall
	bl	drawPlayer
	bl	drawLine
	ldr	r2, .L164
	ldr	r3, [r2, #20]
	cmp	r3, #1
	beq	.L155
	cmp	r3, #4
	beq	.L156
	mov	r3, #5
	ldm	r2, {ip, lr}
	add	r4, r2, #12
	mov	r2, r3
	ldm	r4, {r4, r5}
	ldr	r1, .L164+4
	ldr	r0, .L164+8
	ldr	r1, [r1]
	ldr	r0, [r0]
	str	r5, [sp, #12]
	str	r4, [sp, #8]
	str	lr, [sp, #4]
.L163:
	str	ip, [sp]
	ldr	r4, .L164+12
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L158
.L159:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	drawLives
.L156:
	mov	r3, #5
	ldr	r0, [r2, #12]
	ldr	r1, [r2]
	ldr	lr, [r2, #16]
	ldr	ip, [r2, #4]
	sub	r2, r1, r0
	str	r2, [sp]
	str	r0, [sp, #8]
	ldr	r4, .L164+8
	ldr	r5, .L164+4
	ldr	r0, [r4]
	ldr	r1, [r5]
	mov	r2, r3
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	ldr	r4, .L164+12
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L159
.L158:
	bl	collisionOccurred
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	drawLives
.L155:
	mov	r3, #5
	ldr	r0, [r2, #16]
	ldr	r1, [r2, #4]
	ldr	lr, [r2, #12]
	ldr	ip, [r2]
	sub	r2, r1, r0
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	ldr	r5, .L164+4
	ldr	r4, .L164+8
	ldr	r1, [r5]
	ldr	r0, [r4]
	mov	r2, r3
	str	lr, [sp, #8]
	b	.L163
.L165:
	.align	2
.L164:
	.word	currLine
	.word	ballY
	.word	ballX
	.word	collision
	.size	drawGame, .-drawGame
	.align	2
	.global	clearLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearLine, %function
clearLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L167
	str	r2, [r3, #20]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	bx	lr
.L168:
	.align	2
.L167:
	.word	currLine
	.size	clearLine, .-clearLine
	.comm	currLine,24,4
	.comm	ptr,4,4
	.comm	player,32,4
	.comm	pWidth,4,4
	.comm	pHeight,4,4
	.comm	pBottomBound,4,4
	.comm	pRightBound,4,4
	.comm	pTopBound,4,4
	.comm	pLeftBound,4,4
	.comm	rectArea,4,4
	.comm	rectWidth,4,4
	.comm	rectHeight,4,4
	.comm	bottomBound,4,4
	.comm	rightBound,4,4
	.comm	topBound,4,4
	.comm	leftBound,4,4
	.comm	ballVy,4,4
	.comm	ballVx,4,4
	.comm	ballOldY,4,4
	.comm	ballOldX,4,4
	.comm	ballY,4,4
	.comm	ballX,4,4
	.comm	gameStarted,4,4
	.comm	skipFrame,4,4
	.comm	lives,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
