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
	.global	shootRight
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootRight, %function
shootRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L12
	mov	r3, #0
	mov	r2, r0
	b	.L4
.L2:
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #20
	bxeq	lr
.L4:
	ldr	r1, [r2, #12]
	cmp	r1, #0
	bne	.L2
	mov	ip, #2
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r2, .L12+4
	ldr	r1, [r2]
	ldr	r2, [r1, #8]
	ldr	r1, [r1, #12]
	add	r3, r3, r3, lsl ip
	add	r2, r2, #8
	str	r2, [r0, r3, lsl #2]
	add	r1, r1, #4
	add	r3, r0, r3, lsl ip
	stmib	r3, {r1, r2, lr}
	str	ip, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	bullets
	.word	playerPtr
	.size	shootRight, .-shootRight
	.align	2
	.global	shootLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootLeft, %function
shootLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L24
	mov	r3, #0
	mov	r2, r0
	b	.L17
.L15:
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #20
	bxeq	lr
.L17:
	ldr	r1, [r2, #12]
	cmp	r1, #0
	bne	.L15
	str	lr, [sp, #-4]!
	mvn	ip, #1
	mov	lr, #1
	ldr	r2, .L24+4
	ldr	r1, [r2]
	ldr	r2, [r1, #12]
	ldr	r1, [r1, #8]
	add	r3, r3, r3, lsl #2
	str	r1, [r0, r3, lsl #2]
	add	r2, r2, #4
	add	r3, r0, r3, lsl #2
	str	lr, [r3, #12]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	ip, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	bullets
	.word	playerPtr
	.size	shootLeft, .-shootLeft
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L35
	ldr	r8, .L35+4
	ldr	r6, .L35+8
	ldr	r7, .L35+12
	sub	sp, sp, #8
	add	r5, r4, #400
	b	.L28
.L27:
	add	r4, r4, #20
	cmp	r4, r5
	beq	.L34
.L28:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L27
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	mov	r3, #1
	mov	r2, #2
	str	r8, [sp]
	mov	lr, pc
	bx	r6
	ldm	r4, {r0, r1}
	mov	r3, #1
	mov	r2, #2
	str	r7, [sp]
	add	r4, r4, #20
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L28
.L34:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	bullets
	.word	16191
	.word	drawRect
	.word	32767
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
	mov	r3, #8
	push	{r4, r5, lr}
	ldr	r5, .L39
	ldr	r2, [r5]
	ldm	r2, {r0, r1}
	ldrh	r2, [r2, #16]
	sub	sp, sp, #12
	str	r2, [sp]
	ldr	r4, .L39+4
	mov	r2, r3
	mov	lr, pc
	bx	r4
	mov	r3, #8
	ldr	r2, [r5]
	add	r0, r2, #8
	ldrh	r2, [r2, #18]
	ldm	r0, {r0, r1}
	str	r2, [sp]
	mov	r2, r3
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawBullet
.L40:
	.align	2
.L39:
	.word	playerPtr
	.word	drawRect
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r8, .L53
	mov	r6, r0
	mov	r4, r8
	mov	r5, #0
	mov	r7, #8
	ldr	r9, .L53+4
	sub	sp, sp, #20
	b	.L44
.L42:
	add	r5, r5, #1
	cmp	r5, #50
	add	r4, r4, #24
	beq	.L41
.L44:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L42
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	stmib	sp, {r2, r7}
	str	r3, [sp]
	str	r7, [sp, #12]
	mov	r3, #1
	mov	r2, #2
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L42
	mov	r1, #0
	mov	r2, #67108864
	mov	ip, #21248
	mov	r3, #8
	ldr	r0, .L53+8
	ldr	r7, .L53+12
	add	r5, r5, r5, lsl #1
	add	r5, r8, r5, lsl #3
	str	r1, [r5, #16]
	ldr	r4, .L53+16
	str	r1, [r6, #12]
	strh	ip, [r2, #104]	@ movhi
	ldr	r1, [r5, #12]
	strh	r0, [r2, #108]	@ movhi
	mov	r2, r3
	ldr	r0, [r5, #8]
	str	r7, [sp]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	mov	r3, #1
	ldm	r6, {r0, r1}
	mov	r2, #2
	mov	lr, pc
	bx	r4
	ldr	r0, .L53+20
	ldr	r1, .L53+24
	ldr	r2, [r0]
	ldr	r3, [r1]
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r0]
	str	r3, [r1]
.L41:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	enemies
	.word	collision
	.word	-14867
	.word	16191
	.word	drawRect
	.word	numKilled
	.word	numOnBoard
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
	ldr	r6, .L66
	mov	r5, #0
	mov	r4, r6
	sub	sp, sp, #8
.L59:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L56
	ldr	r0, [r4]
	sub	r3, r0, #43
	cmp	r3, #153
	bhi	.L65
	mov	r0, r4
	bl	checkBulletCollision
	ldr	r2, [r4]
	ldr	r3, [r4, #16]
	add	r3, r3, r2
	str	r2, [r4, #8]
	str	r3, [r4]
.L56:
	add	r5, r5, #1
	cmp	r5, #20
	add	r4, r4, #20
	bne	.L59
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	mov	ip, #0
	ldr	r3, .L66+4
	add	r5, r5, r5, lsl #2
	add	r5, r6, r5, lsl #2
	ldr	r1, [r5, #4]
	mov	r2, #2
	str	r3, [sp]
	ldr	r4, .L66+8
	mov	r3, #1
	str	ip, [r5, #12]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	bullets
	.word	16191
	.word	drawRect
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L104
	ldrh	r3, [r4]
	ldr	r7, .L104+4
	tst	r3, #128
	ldr	r2, [r7]
	sub	sp, sp, #20
	bne	.L69
	ldr	r1, [r2, #12]
	cmp	r1, #149
	bgt	.L69
	ldr	r0, [r2, #24]
	ldr	ip, [r2, #8]
	add	r0, r0, r1
	str	r1, [r2, #4]
	str	r0, [r2, #12]
	str	ip, [r2]
.L70:
	ldr	r5, .L104+8
	ldrh	r1, [r5]
	tst	r1, #1
	beq	.L73
	tst	r3, #1
	bne	.L73
	ldr	r3, [r2, #20]
	cmp	r3, #0
	bne	.L101
.L73:
	tst	r1, #2
	ldr	r0, [r2, #8]
	beq	.L74
	ldrh	r3, [r4]
	ands	r3, r3, #2
	bne	.L74
	ldr	r1, [r2, #20]
	cmp	r1, #0
	beq	.L74
	ldr	lr, .L104+12
	mov	r1, lr
	b	.L76
.L75:
	add	r3, r3, #1
	cmp	r3, #20
	add	r1, r1, #20
	beq	.L74
.L76:
	ldr	ip, [r1, #12]
	cmp	ip, #0
	bne	.L75
	mov	r4, #1
	mvn	ip, #1
	ldr	r1, [r2, #12]
	add	r3, r3, r3, lsl #2
	str	r0, [lr, r3, lsl #2]
	add	r1, r1, #4
	add	r3, lr, r3, lsl #2
	str	r4, [r3, #12]
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	str	ip, [r3, #16]
.L74:
	ldr	r4, .L104+16
	ldr	r8, .L104+20
	ldr	r10, .L104+24
	ldr	r9, .L104+28
	add	r5, r4, #1200
	b	.L79
.L77:
	add	r4, r4, #24
	cmp	r4, r5
	beq	.L102
.L79:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L77
	mov	r6, #8
	add	ip, r4, #8
	ldm	ip, {ip, lr}
	ldr	r1, [r2, #12]
	mov	r3, r6
	mov	r2, r6
	stm	sp, {ip, lr}
	str	r6, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L78
.L100:
	ldr	r2, [r7]
	add	r4, r4, #24
	cmp	r4, r5
	ldr	r0, [r2, #8]
	bne	.L79
.L102:
	ldr	r3, .L104+32
	ldr	r3, [r3]
	cmp	r3, r0
	bge	.L80
	ldr	r1, .L104+36
	ldr	r1, [r1]
	add	r3, r3, r1
	cmp	r3, r0
	ble	.L80
	ldr	r0, .L104+40
	ldr	r3, [r2, #12]
	ldr	r0, [r0]
	cmp	r3, r0
	ble	.L80
	add	r1, r1, r0
	cmp	r3, r1
	bge	.L80
	mvn	r1, #32768
	mov	r3, #0
	strh	r1, [r2, #18]	@ movhi
	str	r3, [r2, #20]
	b	.L81
.L69:
	tst	r3, #64
	bne	.L71
	ldr	r1, [r2, #12]
	cmp	r1, #2
	ble	.L71
	ldr	r0, [r2, #24]
	ldr	ip, [r2, #8]
	sub	r0, r1, r0
	str	r1, [r2, #4]
	str	r0, [r2, #12]
	str	ip, [r2]
	b	.L70
.L71:
	tst	r3, #16
	beq	.L103
.L72:
	tst	r3, #32
	bne	.L70
	ldr	r1, [r2, #8]
	cmp	r1, #42
	ble	.L70
	ldr	r0, [r2, #24]
	ldr	ip, [r2, #12]
	sub	r0, r1, r0
	str	r1, [r2]
	str	r0, [r2, #8]
	str	ip, [r2, #4]
	b	.L70
.L103:
	ldr	r1, [r2, #8]
	cmp	r1, #189
	bgt	.L72
	ldr	r0, [r2, #24]
	ldr	ip, [r2, #12]
	add	r0, r0, r1
	str	r1, [r2]
	str	r0, [r2, #8]
	str	ip, [r2, #4]
	b	.L70
.L78:
	mov	fp, #0
	ldr	r3, .L104+44
	ldr	ip, .L104+48
	str	r3, [sp]
	str	fp, [ip]
	ldr	ip, .L104+52
	mov	r3, r6
	mov	r2, r6
	mov	r6, ip
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	ip
	mov	r3, #10
	mov	r2, #35
	mov	r1, #12
	mov	r0, #2
	mov	ip, r6
	str	fp, [sp]
	mov	lr, pc
	bx	ip
	mov	r1, #67108864
	mov	ip, #20480
	ldr	r2, [r10]
	ldr	r3, [r9]
	ldr	r0, .L104+56
	sub	r2, r2, #1
	sub	r3, r3, #1
	str	fp, [r4, #16]
	str	r2, [r10]
	str	r3, [r9]
	strh	ip, [r1, #104]	@ movhi
	strh	r0, [r1, #108]	@ movhi
	b	.L100
.L80:
	mov	r1, #1
	ldr	r3, .L104+60
	str	r1, [r2, #20]
	strh	r3, [r2, #18]	@ movhi
.L81:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateBullet
.L101:
	bl	shootRight
	ldrh	r1, [r5]
	ldr	r2, [r7]
	b	.L73
.L105:
	.align	2
.L104:
	.word	buttons
	.word	playerPtr
	.word	oldButtons
	.word	bullets
	.word	enemies
	.word	collision
	.word	lives
	.word	numOnBoard
	.word	zoneX
	.word	zoneSize
	.word	zoneY
	.word	16191
	.word	timeSoundPlays
	.word	drawRect
	.word	-30943
	.word	31775
	.size	updatePlayer, .-updatePlayer
	.comm	bullets,400,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
