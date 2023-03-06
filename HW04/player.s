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
	.file	"player.c"
	.text
	.align	2
	.global	shoot
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	shoot, %function
shoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L12
	b	.L4
.L2:
	add	r3, r3, #1
	cmp	r3, #10
	bxeq	lr
.L4:
	ldr	r2, [r1, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	bne	.L2
	push	{r4, lr}
	mov	r4, #1
	mvn	lr, #1
	ldr	ip, .L12+4
	ldr	r0, .L12+8
	ldm	ip, {r1, ip}
	add	r2, r0, r2
	add	r1, r1, #5
	str	r4, [r2, #8]
	str	lr, [r2, #12]
	str	r1, [r0, r3, lsl #4]
	str	ip, [r2, #4]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	bullets+8
	.word	p1
	.word	bullets
	.size	shoot, .-shoot
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L23
	mov	r7, #8
	ldr	r6, .L23+4
	sub	sp, sp, #12
	add	r5, r4, #160
	b	.L16
.L15:
	add	r4, r4, #16
	cmp	r4, r5
	beq	.L22
.L16:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L15
	ldm	r4, {r0, r1}
	mov	r3, #2
	mov	r2, #1
	str	r7, [sp]
	add	r4, r4, #16
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L16
.L22:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	bullets
	.word	drawRect4
	.size	drawBullet, .-drawBullet
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
	ldr	r3, .L29
	ldr	r2, [r3]
	ldr	r3, .L29+4
	ldm	r3, {r0, r1}
	mov	r3, #12
	push	{r4, lr}
	cmp	r2, #0
	ldrne	ip, .L29+8
	ldreq	ip, .L29+12
	sub	sp, sp, #8
	mov	r2, r3
	str	ip, [sp]
	ldr	r4, .L29+16
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	b	drawBullet
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.word	p1
	.word	rocket2Bitmap
	.word	rocketBitmap
	.word	drawImage4
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	checkBulletCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkBulletCollision, %function
checkBulletCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L49
	mov	r6, r0
	mov	r4, fp
	mov	r5, #0
	mov	r7, #13
	ldr	r9, .L49+4
	ldr	r10, .L49+8
	ldr	r8, .L49+12
	sub	sp, sp, #20
	b	.L37
.L32:
	add	r5, r5, #1
	cmp	r5, #40
	add	r4, r4, #12
	beq	.L31
.L37:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r9]
	cmp	r3, #0
	ldm	r6, {r0, r1}
	bne	.L33
	ldr	r3, [r6, #12]
	cmp	r3, #0
	ble	.L33
	mov	r3, #12
	ldm	r10, {r2, ip}
	str	r3, [sp, #12]
	stm	sp, {r2, ip}
	str	r3, [sp, #8]
	mov	r2, #1
	mov	r3, #2
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r3, #1
	ldrne	r2, .L49+16
	ldrne	r0, [r6]
	ldmeq	r6, {r0, r1}
	strne	r3, [r2]
	ldrne	r1, [r6, #4]
.L33:
	ldr	r2, [r4, #4]
	ldr	ip, [r4]
	mov	r3, #2
	stmib	sp, {r2, r7}
	str	r7, [sp, #12]
	mov	r2, #1
	str	ip, [sp]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L32
	mov	r3, #0
	add	r5, r5, r5, lsl #1
	add	r4, fp, r5, lsl #2
	str	r3, [r4, #8]
	ldr	r2, .L49+20
	str	r3, [r6, #8]
	mov	lr, pc
	bx	r2
	ldr	r3, .L49+24
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	lsl	r5, r5, #2
	beq	.L48
.L35:
	mov	r2, #67108864
	mov	ip, #21248
	ldr	r1, .L49+28
	ldr	r3, [r1]
	ldr	r0, .L49+32
	add	r3, r3, #10
	str	r3, [r1]
	strh	ip, [r2, #104]	@ movhi
	strh	r0, [r2, #108]	@ movhi
.L31:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L48:
	mov	r0, r6
	ldr	r2, [r4, #4]
	ldr	r1, [fp, r5]
	ldr	r3, .L49+36
	mov	lr, pc
	bx	r3
	b	.L35
.L50:
	.align	2
.L49:
	.word	enemies
	.word	.LANCHOR0
	.word	p1
	.word	collision
	.word	lost
	.word	rand
	.word	1717986919
	.word	score
	.word	-14837
	.word	antiBullet
	.size	checkBulletCollision, .-checkBulletCollision
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L62
	mov	r5, #0
	mov	r4, r6
.L55:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r4, #4]
	sub	r3, r3, #10
	cmp	r3, #130
	bhi	.L61
	mov	r0, r4
	bl	checkBulletCollision
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #12]
	add	r3, r3, r2
	str	r3, [r4, #4]
.L52:
	add	r5, r5, #1
	cmp	r5, #10
	add	r4, r4, #16
	bne	.L55
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	mov	r3, #0
	add	r5, r6, r5, lsl #4
	str	r3, [r5, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	bullets
	.size	updateBullet, .-updateBullet
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
	ldr	r1, .L93
	ldr	r3, [r1, #4]
	add	r3, r3, #1
	cmp	r3, #150
	str	r3, [r1, #4]
	moveq	r3, #0
	ldr	r0, .L93+4
	ldr	r2, .L93+8
	ldrh	r0, [r0]
	ldrh	r2, [r2]
	streq	r3, [r1]
	beq	.L66
	tst	r0, #512
	bne	.L92
.L66:
	tst	r0, #1
	beq	.L83
	ands	r3, r2, #1
	bne	.L83
	ldr	r0, .L93+12
.L69:
	ldr	r1, [r0, r3, lsl #4]
	cmp	r1, #0
	lsl	r1, r3, #4
	beq	.L91
	add	r3, r3, #1
	cmp	r3, #10
	bne	.L69
.L83:
	tst	r2, #16
	bne	.L85
	ldr	r3, .L93+16
	ldr	r1, [r3]
	cmp	r1, #189
	ldrle	r0, [r3, #16]
	addle	r1, r0, r1
	strle	r1, [r3]
.L85:
	tst	r2, #32
	bne	.L88
	ldr	r2, .L93+16
	ldr	r3, [r2]
	cmp	r3, #42
	ldrgt	r1, [r2, #16]
	subgt	r3, r3, r1
	strgt	r3, [r2]
.L88:
	b	updateBullet
.L92:
	lsr	ip, r2, #9
	eor	ip, ip, #1
	cmp	r3, #300
	movlt	r3, #0
	andge	r3, ip, #1
	cmp	r3, #0
	movne	r3, #1
	movne	ip, #0
	stmne	r1, {r3, ip}
	b	.L66
.L91:
	push	{r4, r5, lr}
	mov	r5, #1
	mvn	r4, #1
	ldr	lr, .L93+16
	ldr	ip, .L93+20
	ldm	lr, {r0, lr}
	add	r1, ip, r1
	add	r0, r0, #5
	tst	r2, #16
	str	r0, [ip, r3, lsl #4]
	str	lr, [r1, #4]
	str	r5, [r1, #8]
	str	r4, [r1, #12]
	bne	.L70
	ldr	r3, .L93+16
	ldr	r1, [r3]
	cmp	r1, #189
	ldrle	r0, [r3, #16]
	addle	r1, r0, r1
	strle	r1, [r3]
.L70:
	tst	r2, #32
	bne	.L71
	ldr	r2, .L93+16
	ldr	r3, [r2]
	cmp	r3, #42
	ldrgt	r1, [r2, #16]
	subgt	r3, r3, r1
	strgt	r3, [r2]
.L71:
	pop	{r4, r5, lr}
	b	updateBullet
.L94:
	.align	2
.L93:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	bullets+8
	.word	p1
	.word	bullets
	.size	updatePlayer, .-updatePlayer
	.global	dodging
	.global	coolDown
	.comm	bullets,160,4
	.comm	NOTES,2,2
	.comm	lowestY,4,4
	.comm	lost,4,4
	.comm	score,4,4
	.comm	gameStarted,4,4
	.comm	p1,20,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	dodging, %object
	.size	dodging, 4
dodging:
	.space	4
	.type	coolDown, %object
	.size	coolDown, 4
coolDown:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
