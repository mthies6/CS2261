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
	.file	"enemy.c"
	.text
	.align	2
	.global	initializeEnemy
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeEnemy, %function
initializeEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	lr, #0
	ldr	r3, .L7
	mov	r2, lr
	mov	ip, lr
	mov	r4, #1
	add	r5, r3, #468
	b	.L2
.L4:
	cmp	r2, #10
	moveq	r2, #0
	addeq	lr, lr, #1
	lsleq	ip, lr, #4
	add	r3, r3, #12
.L2:
	lsl	r1, r2, #4
	add	r1, r1, #42
	add	r0, ip, #10
	cmp	r3, r5
	str	r4, [r3, #8]
	str	r1, [r3]
	str	r0, [r3, #4]
	add	r2, r2, #1
	bne	.L4
	pop	{r4, r5, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	enemies
	.size	initializeEnemy, .-initializeEnemy
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L54
	ldr	r3, [r0]
	add	r3, r3, #1
	cmp	r3, #20
	str	r3, [r0]
	beq	.L50
	cmp	r3, #40
	beq	.L51
	cmp	r3, #60
	beq	.L52
	cmp	r3, #80
	beq	.L53
	cmp	r3, #100
	bxne	lr
	mov	r1, #0
	ldr	r3, .L54+4
	add	ip, r3, #480
.L25:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ldr	r2, [r3, #4]
	addne	r2, r2, #5
	strne	r2, [r3, #4]
	cmp	r1, r2
	add	r3, r3, #12
	movlt	r1, r2
	cmp	r3, ip
	bne	.L25
	mov	r3, #0
	ldr	r2, .L54+8
	add	r1, r1, #12
	str	r1, [r2]
	str	r3, [r0]
	bx	lr
.L51:
	ldr	r3, .L54+4
	add	r1, r3, #480
.L16:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ldrne	r2, [r3]
	subne	r2, r2, #2
	strne	r2, [r3]
	add	r3, r3, #12
	cmp	r3, r1
	bne	.L16
	bx	lr
.L50:
	ldr	r3, .L54+4
	add	r1, r3, #480
.L12:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ldrne	r2, [r3]
	addne	r2, r2, #2
	strne	r2, [r3]
	add	r3, r3, #12
	cmp	r1, r3
	bne	.L12
	bx	lr
.L53:
	ldr	r3, .L54+4
	add	r1, r3, #480
.L23:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ldrne	r2, [r3]
	addne	r2, r2, #2
	strne	r2, [r3]
	add	r3, r3, #12
	cmp	r3, r1
	bne	.L23
	bx	lr
.L52:
	ldr	r3, .L54+4
	add	r1, r3, #480
.L20:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ldrne	r2, [r3]
	subne	r2, r2, #2
	strne	r2, [r3]
	add	r3, r3, #12
	cmp	r3, r1
	bne	.L20
	bx	lr
.L55:
	.align	2
.L54:
	.word	.LANCHOR0
	.word	enemies
	.word	lowestY
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L65
	ldr	r7, .L65+4
	ldr	r6, .L65+8
	sub	sp, sp, #12
	add	r5, r4, #480
	b	.L58
.L57:
	add	r4, r4, #12
	cmp	r4, r5
	beq	.L64
.L58:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L57
	mov	r3, #12
	ldm	r4, {r0, r1}
	mov	r2, r3
	str	r7, [sp]
	add	r4, r4, #12
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L58
.L64:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	enemies
	.word	alienBitmap
	.word	drawImage4
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	antiBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	antiBullet, %function
antiBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #1
	mov	r3, #2
	add	r1, r1, #6
	stm	r0, {r1, r2, ip}
	str	r3, [r0, #12]
	bx	lr
	.size	antiBullet, .-antiBullet
	.global	skipFrame
	.comm	enemies,480,4
	.comm	lowestY,4,4
	.comm	lost,4,4
	.comm	score,4,4
	.comm	gameStarted,4,4
	.comm	p1,20,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	skipFrame, %object
	.size	skipFrame, 4
skipFrame:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
