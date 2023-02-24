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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnEnemies.part.0, %function
spawnEnemies.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L8
	mov	r5, #0
	ldr	r8, .L8+4
	ldr	r7, .L8+8
	ldr	r9, .L8+12
	add	r6, r4, #192
	b	.L4
.L2:
	add	r4, r4, #24
	cmp	r4, r6
	beq	.L1
.L4:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L2
	mov	r0, r4
	mov	lr, pc
	bx	r8
	ldr	r3, [r7]
	ldr	r2, [r9]
	add	r5, r5, #1
	add	r3, r3, #1
	cmp	r5, r2
	str	r3, [r7]
	bne	.L2
.L1:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	enemies
	.word	initializeEnemy
	.word	numOnBoard
	.word	numPerSpawn
	.size	spawnEnemies.part.0, .-spawnEnemies.part.0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Lives:\000"
	.text
	.align	2
	.global	drawBackground
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBackground, %function
drawBackground:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #160
	push	{r4, lr}
	ldr	r1, .L12
	sub	sp, sp, #8
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #40
	mov	r1, #0
	ldr	r4, .L12+4
	mov	lr, pc
	bx	r4
	mov	r1, #2
	ldr	r3, .L12+8
	mov	r0, r1
	ldr	r2, .L12+12
	ldr	r4, .L12+16
	mov	lr, pc
	bx	r4
	mov	ip, #31
	ldr	r3, .L12+20
	ldr	r1, .L12+24
	ldr	r3, [r3]
	ldr	r0, .L12+28
	str	ip, [sp]
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r4, .L12+32
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	16191
	.word	drawRectDMA
	.word	32767
	.word	.LC0
	.word	drawString
	.word	zoneSize
	.word	zoneY
	.word	zoneX
	.word	drawRect
	.size	drawBackground, .-drawBackground
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L20
	mov	lr, pc
	bx	r5
	ldr	r4, .L20+4
	smull	r2, r3, r4, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #5
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	ldr	r3, .L20+8
	sub	r0, r0, r2, lsl #2
	add	r0, r0, #50
	str	r0, [r3]
	mov	lr, pc
	bx	r5
	mov	ip, #30
	mov	r2, #0
	smull	r3, r4, r0, r4
	asr	r3, r0, #31
	rsb	r3, r3, r4, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	ldr	r3, .L20+12
	add	r0, r0, #40
	str	r0, [r3]
	ldr	r0, .L20+16
	ldr	lr, .L20+20
	ldr	r3, .L20+24
	str	ip, [r0]
	mov	r1, r2
	str	r2, [lr]
	add	r2, r3, #400
.L15:
	str	r1, [r3, #12]
	add	r3, r3, #20
	cmp	r3, r2
	bne	.L15
	mov	r2, #0
	ldr	r3, .L20+28
	add	r1, r3, #1200
.L16:
	str	r2, [r3, #16]
	add	r3, r3, #24
	cmp	r3, r1
	bne	.L16
	mov	lr, #100
	mov	ip, #65
	mov	r0, #1
	mov	r1, #2
	mov	r4, #3
	ldr	r3, .L20+32
	str	lr, [r3]
	str	lr, [r3, #8]
	ldr	lr, .L20+36
	str	r3, [lr]
	ldr	lr, .L20+40
	str	ip, [r3, #4]
	str	ip, [r3, #12]
	str	lr, [r3, #16]
	str	r0, [r3, #20]
	ldr	lr, .L20+44
	str	r0, [r3, #24]
	ldr	r3, .L20+48
	ldr	ip, .L20+52
	str	r1, [r3]
	str	r1, [lr]
	ldr	r0, .L20+56
	ldr	r1, .L20+60
	ldr	r3, .L20+64
	str	r4, [ip]
	pop	{r4, r5, r6, lr}
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	b	drawBackground
.L21:
	.align	2
.L20:
	.word	rand
	.word	1374389535
	.word	zoneX
	.word	zoneY
	.word	zoneSize
	.word	zoneMoved
	.word	bullets
	.word	enemies
	.word	p
	.word	playerPtr
	.word	1343176511
	.word	numPerSpawn
	.word	maxOnBoard
	.word	lives
	.word	powerActivated
	.word	numKilled
	.word	numOnBoard
	.size	initializeGame, .-initializeGame
	.align	2
	.global	spawnEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnEnemies, %function
spawnEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L24
	ldr	r3, .L24+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bxge	lr
	b	spawnEnemies.part.0
.L25:
	.align	2
.L24:
	.word	numOnBoard
	.word	maxOnBoard
	.size	spawnEnemies, .-spawnEnemies
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L57
	ldr	r0, [r8]
	sub	sp, sp, #20
	add	r0, r0, #1
	ldr	r9, .L57+4
	str	r0, [r8]
	mov	lr, pc
	bx	r9
	ldr	r3, .L57+8
	mov	lr, pc
	bx	r3
	ldr	r2, .L57+12
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #45
	str	r3, [r2]
	moveq	r1, #32768
	moveq	r3, #67108864
	moveq	r2, #0
	ldr	r7, .L57+16
	strheq	r1, [r3, #108]	@ movhi
	strheq	r2, [r3, #104]	@ movhi
	ldr	r3, [r7]
	add	r3, r3, #1
	cmp	r3, #3
	str	r3, [r7]
	beq	.L52
.L28:
	ldr	r3, [r7, #4]
	add	r3, r3, #1
	cmp	r3, #8
	str	r3, [r7, #4]
	beq	.L53
.L31:
	ldr	r3, .L57+20
	ldr	r3, [r3]
	cmp	r3, #2
	bgt	.L33
	mov	r2, #2
	ldr	r3, .L57+24
	ldr	r4, .L57+28
	str	r2, [r3]
	ldr	r3, [r4]
.L34:
	cmp	r3, #0
	bne	.L54
.L26:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L33:
	cmp	r3, #12
	bgt	.L35
	mov	r2, #6
	ldr	r3, .L57+24
	ldr	r4, .L57+28
	str	r2, [r3]
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L26
.L54:
	ldr	r10, .L57+32
	ldr	r6, .L57+36
	ldr	r7, .L57+40
.L38:
	mov	r5, #5
	mov	r3, #8
	ldr	r2, [r10]
	ldr	lr, [r7]
	ldr	ip, [r6]
	add	r0, r2, #8
	ldm	r0, {r0, r1}
	mov	r2, r3
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	str	r5, [sp, #8]
	ldr	r8, .L57+44
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L26
	mov	ip, #0
	ldr	r2, [r10]
	ldr	r3, [r2, #24]
	lsl	r3, r3, #1
	str	r3, [r2, #24]
	ldr	r3, .L57+48
	mov	r2, r5
	ldr	r1, [r7]
	ldr	r0, [r6]
	str	r3, [sp]
	mov	r3, r5
	str	ip, [r4]
	ldr	r5, .L57+52
	mov	lr, pc
	bx	r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L53:
	ldr	r2, .L57+56
	ldr	r3, .L57+24
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bllt	spawnEnemies.part.0
.L32:
	mov	r3, #0
	str	r3, [r7, #4]
	b	.L31
.L52:
	ldr	r4, .L57+60
	ldr	r6, .L57+64
	add	r5, r4, #1200
	b	.L30
.L29:
	add	r4, r4, #24
	cmp	r4, r5
	beq	.L55
.L30:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L29
	mov	r0, r4
	add	r4, r4, #24
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L30
.L55:
	mov	r3, #0
	str	r3, [r7]
	b	.L28
.L35:
	cmp	r3, #20
	bgt	.L36
	ldr	r4, .L57+68
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L37
	mov	r2, #12
	ldr	r3, .L57+24
	ldr	r4, .L57+28
	str	r2, [r3]
	ldr	r3, [r4]
	b	.L34
.L36:
	cmp	r3, #40
	bgt	.L40
	ldr	r5, .L57+68
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L56
.L40:
	ldr	r4, .L57+28
	ldr	r3, [r4]
	b	.L34
.L56:
	ldr	r7, .L57+72
	ldr	ip, .L57+48
	ldr	r3, [r7]
	ldr	r6, .L57+76
	ldr	r8, .L57+80
	mov	r2, r3
	ldr	r1, [r6]
	ldr	r0, [r8]
	ldr	r4, .L57+84
	str	ip, [sp]
	ldr	r9, .L57+88
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r4
	ldr	r9, .L57+92
	smull	r2, r1, r9, r0
	asr	r2, r0, #31
	rsb	r2, r2, r1, asr #5
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r3, r0, r2, lsl #2
	add	r3, r3, #50
	str	r3, [r8]
	mov	lr, pc
	bx	r4
	mov	r3, r0
	mov	r1, #2
	mov	r0, #40
	smull	r2, r9, r3, r9
	asr	r2, r3, #31
	rsb	r2, r2, r9, asr #5
	add	r2, r2, r2, lsl r1
	add	r2, r2, r2, lsl r1
	ldr	r4, .L57+28
	sub	r3, r3, r2, lsl r1
	add	r3, r3, #10
	str	r3, [r6]
	str	r0, [r7]
	str	r1, [r5]
	ldr	r3, [r4]
	b	.L34
.L37:
	ldr	fp, .L57+72
	ldr	ip, .L57+48
	ldr	r3, [fp]
	ldr	r6, .L57+76
	ldr	r10, .L57+80
	ldr	r1, [r6]
	ldr	r7, .L57+84
	mov	r2, r3
	ldr	r0, [r10]
	ldr	r5, .L57+88
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r7
	ldr	r5, .L57+92
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #50
	str	r3, [r10]
	mov	lr, pc
	bx	r7
	mov	r2, #1
	mov	r1, #35
	smull	r3, ip, r5, r0
	ldr	r10, .L57+32
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #5
	add	r3, r3, r3, lsl #2
	ldr	ip, [r10]
	add	r3, r3, r3, lsl #2
	ldr	ip, [ip, #8]
	sub	r3, r0, r3, lsl #2
	ldr	r0, [r8]
	add	r3, r3, #10
	add	r0, ip, r0
	str	r3, [r6]
	str	r2, [r4]
	str	r1, [fp]
	str	r0, [r8]
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r7
	smull	r3, r1, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	ldr	r6, .L57+36
	add	r3, r3, #50
	str	r3, [r6]
	mov	lr, pc
	bx	r7
	mov	r1, #12
	mov	r2, #1
	smull	r3, r5, r0, r5
	asr	r3, r0, #31
	rsb	r3, r3, r5, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	ldr	r4, .L57+28
	ldr	r7, .L57+40
	ldr	r0, .L57+24
	add	r3, r3, #10
	str	r2, [r4]
	str	r3, [r7]
	str	r1, [r0]
	b	.L38
.L58:
	.align	2
.L57:
	.word	seed
	.word	srand
	.word	updatePlayer
	.word	timeSoundPlays
	.word	.LANCHOR0
	.word	numKilled
	.word	maxOnBoard
	.word	powerActivated
	.word	playerPtr
	.word	powerUpX
	.word	powerUpY
	.word	collision
	.word	16191
	.word	drawRect
	.word	numOnBoard
	.word	enemies
	.word	updateEnemy
	.word	zoneMoved
	.word	zoneSize
	.word	zoneY
	.word	zoneX
	.word	rand
	.word	drawRectDMA
	.word	1374389535
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
	mov	ip, #31
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L76
	sub	sp, sp, #8
	ldr	r3, [r3]
	ldr	r1, .L76+4
	str	ip, [sp]
	ldr	r0, .L76+8
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r4, .L76+12
	mov	lr, pc
	bx	r4
	ldr	r4, .L76+16
	ldr	r3, .L76+20
	mov	lr, pc
	bx	r3
	ldr	r6, .L76+24
	add	r5, r4, #1200
	b	.L61
.L60:
	add	r4, r4, #24
	cmp	r4, r5
	beq	.L74
.L61:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L60
	mov	r0, r4
	add	r4, r4, #24
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L61
.L74:
	ldr	r6, .L76+28
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L62
	mov	r5, #2
	mov	r4, #0
	ldr	r8, .L76+32
	ldr	r7, .L76+36
.L63:
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
	bgt	.L63
.L62:
	ldr	r3, .L76+40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L75
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L75:
	mov	r2, #31744
	mov	r3, #5
	str	r2, [sp]
	ldr	r1, .L76+44
	ldr	r0, .L76+48
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r4, .L76+32
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	zoneSize
	.word	zoneY
	.word	zoneX
	.word	drawRectDMA
	.word	enemies
	.word	drawPlayer
	.word	drawEnemy
	.word	lives
	.word	drawRect
	.word	31775
	.word	powerActivated
	.word	powerUpY
	.word	powerUpX
	.size	drawGame, .-drawGame
	.global	skipFrame2
	.global	skipFrame
	.comm	powerActivated,4,4
	.comm	powerUpY,4,4
	.comm	powerUpX,4,4
	.comm	zoneMoved,4,4
	.comm	NOTES,2,2
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
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	skipFrame, %object
	.size	skipFrame, 4
skipFrame:
	.space	4
	.type	skipFrame2, %object
	.size	skipFrame2, 4
skipFrame2:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
