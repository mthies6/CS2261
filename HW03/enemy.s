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
	mov	r3, #1
	push	{r4, r5, r6, lr}
	str	r3, [r0, #16]
	ldr	r5, .L6
	mov	r4, r0
	mov	lr, pc
	bx	r5
	tst	r0, #1
	movne	r3, #190
	moveq	r3, #40
	str	r3, [r4]
	str	r3, [r4, #8]
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	sub	r3, r3, #10
	add	r3, r3, r3, lsl #2
	lsl	r3, r3, #1
	add	r3, r3, #70
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	rand
	.word	1717986919
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
	ldr	r3, .L13
	ldr	r1, [r3]
	ldr	r2, [r0, #8]
	ldr	ip, [r1, #8]
	ldr	r3, [r0, #12]
	cmp	r2, ip
	stm	r0, {r2, r3}
	subgt	r2, r2, #1
	strgt	r2, [r0, #8]
	cmp	ip, r2
	addgt	r2, r2, #1
	strgt	r2, [r0, #8]
	ldr	r2, [r1, #12]
	cmp	r3, r2
	subgt	r3, r3, #1
	strgt	r3, [r0, #12]
	cmp	r2, r3
	addgt	r3, r3, #1
	strgt	r3, [r0, #12]
	bx	lr
.L14:
	.align	2
.L13:
	.word	playerPtr
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
	mov	r3, #8
	push	{r4, r5, lr}
	ldr	ip, .L17
	sub	sp, sp, #12
	mov	r4, r0
	mov	r2, r3
	ldm	r0, {r0, r1}
	ldr	r5, .L17+4
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #8
	mov	r2, #512
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	str	r2, [sp]
	mov	r2, r3
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	16191
	.word	drawRect
	.size	drawEnemy, .-drawEnemy
	.comm	enemies,1200,4
	.comm	maxOnBoard,4,4
	.comm	numOnBoard,4,4
	.comm	numPerSpawn,4,4
	.comm	numKilled,4,4
	.comm	playerPtr,4,4
	.comm	p,28,4
	.comm	seed,4,4
	.comm	zoneSize,4,4
	.comm	zoneY,4,4
	.comm	zoneX,4,4
	.comm	gameStarted,4,4
	.comm	timeSoundPlays,4,4
	.comm	lives,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
