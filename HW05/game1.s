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
	.file	"game1.c"
	.text
	.align	2
	.global	colorAt
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAt, %function
colorAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	ldr	r3, [r3]
	cmp	r3, #1
	ldreq	r3, .L5+4
	ldrne	r3, .L5+8
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	bx	lr
.L6:
	.align	2
.L5:
	.word	level
	.word	collision1Bitmap
	.word	collision2Bitmap
	.size	colorAt, .-colorAt
	.align	2
	.global	initializeEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeEnemies, %function
initializeEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	mov	r8, #1
	mov	r9, r5
	ldr	r4, .L14
	ldr	r7, .L14+4
	ldr	fp, .L14+8
	ldr	r10, .L14+12
	ldr	r6, .L14+16
.L10:
	mov	lr, pc
	bx	r7
	mov	ip, #3
	mov	r2, #2
	mov	r1, #16
	mov	lr, #20
	rsbs	r3, r0, #0
	and	r3, r3, ip
	str	r2, [r4, #8]
	str	r2, [r4, #12]
	ldr	r2, [r10]
	and	r0, r0, ip
	rsbpl	r0, r3, #0
	ldr	r3, [fp]
	add	r2, r5, r2
	cmp	r3, #1
	str	r1, [r4, #20]
	str	r1, [r4, #16]
	smull	r3, r1, r6, r2
	str	r8, [r4, #32]
	str	r9, [r4, #36]
	str	r9, [r4, #44]
	str	r0, [r4, #28]
	str	lr, [r4, #24]
	str	ip, [r4, #40]
	asr	r3, r2, #31
	add	r1, r1, r2
	beq	.L13
	rsb	r3, r3, r1, asr #3
	rsb	r3, r3, r3, lsl #4
	sub	r3, r2, r3
	ldr	r1, .L14+20
	ldr	r2, .L14+24
	ldr	r2, [r2, r3, lsl #2]
	ldr	r3, [r1, r3, lsl #2]
	lsl	r2, r2, #3
	lsl	r3, r3, #3
	stm	r4, {r2, r3}
.L9:
	add	r5, r5, #5
	cmp	r5, #15
	add	r4, r4, #56
	bne	.L10
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	rsb	r3, r3, r1, asr ip
	rsb	r3, r3, r3, lsl #4
	ldr	r1, .L14+28
	sub	r3, r2, r3
	add	r2, r1, r3, lsl #2
	ldr	r2, [r2, #60]
	ldr	r3, [r1, r3, lsl #2]
	lsl	r2, r2, ip
	lsl	r3, r3, ip
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L9
.L15:
	.align	2
.L14:
	.word	enemyPool
	.word	rand
	.word	level
	.word	randomIndex
	.word	-2004318071
	.word	yEnemySpawn2
	.word	xEnemySpawn2
	.word	.LANCHOR0
	.size	initializeEnemies, .-initializeEnemies
	.align	2
	.global	initializeRocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeRocks, %function
initializeRocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	mov	fp, #24
	ldr	r4, .L22
	ldr	r7, .L22+4
	ldr	r8, .L22+8
	ldr	r10, .L22+12
	ldr	r6, .L22+16
	ldr	r9, .L22+20
.L19:
	mov	lr, pc
	bx	r7
	ldr	r0, [r10]
	ldr	r3, [r8]
	add	r0, r5, r0
	cmp	r3, #1
	smull	r3, ip, r6, r0
	asr	r3, r0, #31
	add	ip, ip, r0
	rsb	r3, r3, ip, asr #3
	ldreq	r2, .L22+24
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3
	ldrne	r2, .L22+28
	addeq	r3, r2, r3, lsl #2
	ldreq	r0, [r3, #120]
	ldrne	r0, [r9, r3, lsl #2]
	ldreq	r3, [r3, #180]
	ldrne	r3, [r2, r3, lsl #2]
	add	r5, r5, #5
	lsl	r0, r0, #3
	lsl	r3, r3, #3
	cmp	r5, #15
	stm	r4, {r0, r3}
	str	fp, [r4, #20]
	str	fp, [r4, #16]
	add	r4, r4, #56
	bne	.L19
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	rockPool
	.word	rand
	.word	level
	.word	randomIndex
	.word	-2004318071
	.word	xRockSpawn2
	.word	.LANCHOR0
	.word	yRockSpawn2
	.size	initializeRocks, .-initializeRocks
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"special: %d, lucky: %d\000"
	.text
	.align	2
	.global	initializeFlags
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeFlags, %function
initializeFlags:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L33
	mov	lr, pc
	bx	r7
	ldr	r5, .L33+4
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	ldr	r6, .L33+8
	sub	r0, r0, r3, lsl #1
	str	r0, [r6]
	mov	lr, pc
	bx	r7
	mov	r9, #0
	smull	r2, r3, r5, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #2
	ldr	r10, .L33+12
	add	r2, r2, r2, lsl #2
	sub	r2, r0, r2, lsl #1
	ldr	r4, .L33+16
	ldr	r1, [r6]
	ldr	r0, .L33+20
	str	r2, [r10]
	ldr	r8, .L33+24
	mov	lr, pc
	bx	r4
	ldr	fp, .L33+28
	ldr	r4, .L33+32
.L30:
	mov	lr, pc
	bx	r7
	ldr	r2, [r8]
	cmp	r2, #1
	mov	r2, #8
	mov	r3, #0
	str	r2, [r4, #20]
	mov	r2, #16
	str	r3, [r4, #44]
	ldr	r3, [fp]
	str	r2, [r4, #16]
	lsl	r2, r9, #1
	add	r2, r2, r3
	smull	r3, r1, r5, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	ldreq	r2, .L33+36
	ldrne	r2, .L33+40
	ldrne	r1, .L33+44
	addeq	r3, r2, r3, lsl #2
	ldreq	r2, [r3, #240]
	ldrne	r2, [r2, r3, lsl #2]
	ldreq	r3, [r3, #320]
	ldrne	r3, [r1, r3, lsl #2]
	lsl	r2, r2, #3
	lsl	r3, r3, #3
	stm	r4, {r2, r3}
	ldr	r3, [r6]
	cmp	r3, r9
	moveq	r3, #1
	streq	r3, [r4, #52]
	beq	.L28
	ldr	r3, [r10]
	cmp	r3, r9
	movne	r3, #0
	moveq	r3, #1
	strne	r3, [r4, #48]
	streq	r3, [r4, #48]
	strne	r3, [r4, #52]
.L28:
	add	r9, r9, #1
	cmp	r9, #10
	add	r4, r4, #56
	bne	.L30
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	rand
	.word	1717986919
	.word	specialIndex
	.word	luckyIndex
	.word	mgba_printf
	.word	.LC0
	.word	level
	.word	randomIndex
	.word	flagPool
	.word	.LANCHOR0
	.word	xFlagSpawn2
	.word	yFlagSpawn2
	.size	initializeFlags, .-initializeFlags
	.align	2
	.global	initializeGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame1, %function
initializeGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r2, .L37
	ldr	ip, .L37+4
	ldr	r1, .L37+8
	push	{r4, r5, r6, lr}
	ldr	r0, [r2]
	ldr	r6, .L37+12
	ldr	r2, .L37+16
	str	r3, [ip]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	mov	lr, pc
	bx	r6
	ldr	r2, .L37+20
	ldr	r3, .L37+24
	ldr	r4, .L37+28
	str	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L37+32
	mov	lr, pc
	bx	r4
	bl	initializeEnemies
	bl	initializeRocks
	bl	initializeFlags
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L37+36
	ldr	r1, .L37+40
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L37+44
	ldr	r1, .L37+48
	mov	lr, pc
	bx	r4
	mov	r5, #3
	mov	r3, #16
	mov	ip, #100
	mov	r1, #248
	mov	r2, #464
	ldr	r4, .L37+52
	ldr	r0, .L37+56
	stm	r4, {r1, r2}
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	ip, [r0]
	str	r5, [r4, #40]
	mov	lr, pc
	bx	r6
	mov	ip, #20
	mov	r1, #2
	mov	r2, #1
	rsbs	r3, r0, #0
	and	r3, r3, r5
	and	r0, r0, r5
	rsbpl	r0, r3, #0
	ldr	r3, .L37+60
	str	r0, [r4, #28]
	str	r5, [r3]
	ldr	lr, [r4]
	str	ip, [r4, #24]
	ldr	r0, [r4, #4]
	ldr	ip, .L37+64
	ldr	r3, .L37+68
	str	lr, [ip]
	str	r1, [r4, #8]
	str	r1, [r4, #12]
	str	r2, [r4, #36]
	str	r2, [r4, #32]
	str	r0, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	seed
	.word	score
	.word	flagsCollected
	.word	rand
	.word	srand
	.word	randomIndex
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	100720640
	.word	level1MapMap
	.word	100718592
	.word	overlayMap
	.word	player
	.word	fuel
	.word	lives
	.word	playerSpawnX
	.word	playerSpawnY
	.size	initializeGame1, .-initializeGame1
	.global	__aeabi_idivmod
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r0, [r0, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	sub	sp, sp, #16
	ldr	r5, .L94
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	ldr	r7, .L94+4
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L40
	ldr	r2, .L94+8
	ldr	r0, .L94+12
	ldr	r1, .L94+16
	ldr	r3, [r2]
	ldr	r0, [r0]
	ldr	r1, [r1]
	sub	r3, r3, #1
	stm	r5, {r0, r1}
	str	r3, [r2]
.L40:
	ldr	r3, .L94+20
	ldr	r3, [r3]
	cmp	r3, #0
	cmpne	r3, #120
	add	r2, r4, #16
	moveq	r6, #1
	movne	r6, #0
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	bne	.L41
	mov	ip, #2
	str	ip, [r4, #8]
	str	ip, [r4, #12]
.L42:
	ldr	ip, [r5]
	add	r2, r2, r0
	add	r3, r3, r1
	cmp	ip, r0
	sub	r2, r2, #1
	sub	r3, r3, #1
	bge	.L44
	ldr	lr, .L94+24
	ldr	ip, [r4, #8]
	ldr	lr, [lr]
	sub	ip, r0, ip
	cmp	lr, #1
	add	lr, ip, r3, lsl #9
	beq	.L90
	ldr	r6, .L94+28
	ldrb	lr, [r6, lr]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L48
.L49:
	ldr	ip, [r5, #4]
	cmp	ip, r1
	bge	.L57
	ldr	r3, [r4, #12]
	sub	r1, r1, r3
.L58:
	add	r0, r0, r1, lsl #9
	ldrb	r3, [r6, r0]	@ zero_extendqisi2
	cmp	r3, #0
	lsl	r3, r1, #9
	bne	.L60
.L52:
	ldr	r3, [r4, #24]
	subs	r3, r3, #1
	strne	r3, [r4, #24]
	bne	.L39
	mov	r3, #20
	ldr	r0, [r4, #36]
	str	r3, [r4, #24]
	ldr	r1, [r4, #40]
	ldr	r3, .L94+32
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L39:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L44:
	ble	.L51
	ldr	ip, .L94+24
	ldr	lr, [r4, #8]
	ldr	r6, [ip]
	add	ip, lr, r2
	cmp	r6, #1
	add	r7, ip, r3, lsl #9
	beq	.L91
	ldr	r6, .L94+28
	ldrb	r7, [r6, r7]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L49
.L55:
	add	ip, ip, r1, lsl #9
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L51
	mov	r3, #1
	add	r0, lr, r0
	str	r0, [r4]
	str	r3, [r4, #28]
	b	.L52
.L90:
	ldr	r6, .L94+36
	ldrb	lr, [r6, lr]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L49
.L48:
	add	lr, ip, r1, lsl #9
	ldrb	lr, [r6, lr]	@ zero_extendqisi2
	cmp	lr, #0
	movne	r3, #3
	strne	ip, [r4]
	strne	r3, [r4, #28]
	bne	.L52
.L51:
	ldr	ip, [r5, #4]
	cmp	ip, r1
	blt	.L92
.L57:
	cmp	ip, r1
	ble	.L52
	ldr	ip, .L94+24
	ldr	lr, [ip]
	ldr	ip, [r4, #12]
	cmp	lr, #1
	add	r3, ip, r3
	add	r0, r0, r3, lsl #9
	lsl	r3, r3, #9
	beq	.L93
	ldr	lr, .L94+28
	ldrb	r0, [r0, lr]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L52
.L64:
	add	r3, r2, r3
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #2
	addne	r1, ip, r1
	strne	r1, [r4, #4]
	strne	r3, [r4, #28]
	b	.L52
.L41:
	mov	ip, #24
	ldr	lr, .L94+40
	ldr	r8, [lr, #4]
	ldr	lr, [lr]
	str	r8, [sp, #4]
	str	lr, [sp]
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	mov	lr, pc
	bx	r7
	add	r2, r4, #16
	cmp	r0, #0
	strne	r6, [r4, #8]
	strne	r6, [r4, #12]
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	b	.L42
.L60:
	add	r3, r2, r3
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #0
	strne	r1, [r4, #4]
	strne	r3, [r4, #28]
	b	.L52
.L92:
	ldr	r3, .L94+24
	ldr	ip, [r3]
	ldr	r3, [r4, #12]
	cmp	ip, #1
	ldrne	r6, .L94+28
	ldreq	r6, .L94+36
	sub	r1, r1, r3
	b	.L58
.L91:
	ldr	r6, .L94+36
	ldrb	r7, [r6, r7]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L55
	b	.L49
.L93:
	ldr	lr, .L94+36
	ldrb	r0, [r0, lr]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L64
	b	.L52
.L95:
	.align	2
.L94:
	.word	player
	.word	collision
	.word	lives
	.word	playerSpawnX
	.word	playerSpawnY
	.word	smokeFrame
	.word	level
	.word	collision2Bitmap
	.word	__aeabi_idivmod
	.word	collision1Bitmap
	.word	smoke
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateFuel
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFuel, %function
updateFuel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L109
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #60
	moveq	r0, #0
	ldr	r1, .L109+4
	str	r3, [r2]
	ldr	r3, [r1]
	subeq	r3, r3, #1
	streq	r3, [r1]
	streq	r0, [r2]
	cmp	r3, #90
	bxgt	lr
	cmp	r3, #80
	ble	.L99
	mov	r2, #96
	ldr	r3, .L109+8
	strh	r2, [r3, #234]	@ movhi
	bx	lr
.L99:
	cmp	r3, #70
	bgt	.L107
	cmp	r3, #60
	ble	.L101
	ldr	r3, .L109+12
	ldr	r2, .L109+16
	str	r2, [r3, #2284]
	bx	lr
.L107:
	mov	r2, #97
	ldr	r3, .L109+8
	strh	r2, [r3, #236]	@ movhi
	bx	lr
.L101:
	cmp	r3, #50
	bgt	.L108
	cmp	r3, #40
	ble	.L103
	mov	r2, #131
	ldr	r3, .L109+8
	strh	r2, [r3, #240]	@ movhi
	bx	lr
.L108:
	mov	r1, #130
	mov	r2, #99
	ldr	r3, .L109+8
	strh	r1, [r3, #238]	@ movhi
	strh	r2, [r3, #240]	@ movhi
	bx	lr
.L103:
	cmp	r3, #30
	ble	.L104
	mov	r2, #100
	ldr	r3, .L109+8
	strh	r2, [r3, #242]	@ movhi
	bx	lr
.L104:
	cmp	r3, #20
	ble	.L105
	mov	r1, #132
	mov	r2, #101
	ldr	r3, .L109+8
	strh	r1, [r3, #242]	@ movhi
	strh	r2, [r3, #244]	@ movhi
	bx	lr
.L105:
	cmp	r3, #10
	ble	.L106
	ldr	r3, .L109+12
	ldr	r2, .L109+20
	str	r2, [r3, #2292]
	bx	lr
.L106:
	cmp	r3, #0
	movgt	r2, #134
	ldrgt	r3, .L109+8
	strhgt	r2, [r3, #246]	@ movhi
	bx	lr
.L110:
	.align	2
.L109:
	.word	moved
	.word	fuel
	.word	100718592
	.word	100716544
	.word	6422657
	.word	6684805
	.size	updateFuel, .-updateFuel
	.align	2
	.global	updateScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScore, %function
updateScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L113
	ldr	r3, .L113+4
	ldr	r1, [r2]
	ldr	ip, .L113+8
	ldr	r0, .L113+12
	smull	r2, r3, r1, r3
	push	{r4, r5, lr}
	smull	r2, r5, r0, r1
	smull	r2, lr, ip, r1
	asr	r2, r1, #31
	rsb	r3, r2, r3, asr #12
	rsb	lr, r2, lr, asr #6
	rsb	r4, r3, r3, lsl #5
	rsb	r2, r2, r5, asr #5
	add	r3, r3, r4, lsl #2
	add	r2, r2, r2, lsl #2
	rsb	r4, lr, lr, lsl #5
	add	lr, lr, r4, lsl #2
	add	r3, r3, r3, lsl #2
	ldr	r4, .L113+16
	add	r2, r2, r2, lsl #2
	sub	r3, r1, r3, lsl #4
	sub	r2, r1, r2, lsl #2
	sub	r1, r1, lr, lsl #3
	smull	lr, r0, r1, r0
	smull	lr, ip, r3, ip
	smull	r5, lr, r4, r2
	asr	r3, r3, #31
	asr	r1, r1, #31
	asr	r2, r2, #31
	rsb	r3, r3, ip, asr #6
	rsb	r2, r2, lr, asr #2
	ldr	ip, .L113+20
	rsb	r1, r1, r0, asr #5
	add	r3, r3, #15
	add	r1, r1, #15
	add	r2, r2, #15
	strh	r3, [ip, #114]	@ movhi
	strh	r1, [ip, #116]	@ movhi
	strh	r2, [ip, #118]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	score
	.word	1759218605
	.word	274877907
	.word	1374389535
	.word	1717986919
	.word	100718592
	.size	updateScore, .-updateScore
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L116
	ldr	r3, [r3]
	ldr	r2, .L116+4
	add	r3, r3, #15
	strh	r3, [r2, #14]	@ movhi
	bx	lr
.L117:
	.align	2
.L116:
	.word	lives
	.word	100719744
	.size	updateLives, .-updateLives
	.align	2
	.global	releaseSmoke
	.syntax unified
	.arm
	.fpu softvfp
	.type	releaseSmoke, %function
releaseSmoke:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L126
	ldr	lr, .L126+4
	ldr	ip, [r4]
	ldr	r3, [lr]
	sub	ip, ip, #10
	sub	r3, r3, #1
	str	ip, [r4]
	str	r3, [lr]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L118
.L121:
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L120
.L123:
	ldr	r3, .L126+8
	sub	r0, r0, #24
	stm	r3, {r0, r1}
.L118:
	pop	{r4, lr}
	bx	lr
.L120:
	ldr	r3, .L126+8
	add	r0, r0, #16
	stm	r3, {r0, r1}
	pop	{r4, lr}
	bx	lr
.L124:
	ldr	r3, .L126+8
	add	r1, r1, #16
	stm	r3, {r0, r1}
	pop	{r4, lr}
	bx	lr
.L122:
	ldr	r3, .L126+8
	sub	r1, r1, #24
	stm	r3, {r0, r1}
	pop	{r4, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	fuel
	.word	smokeFrame
	.word	smoke
	.size	releaseSmoke, .-releaseSmoke
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	bl	updateFuel
	ldr	r2, .L193
	ldr	r3, .L193+4
	ldr	r1, [r2]
	ldr	ip, .L193+8
	smull	r2, r3, r1, r3
	ldr	r0, .L193+12
	smull	r2, lr, ip, r1
	smull	r2, r5, r0, r1
	asr	r2, r1, #31
	rsb	r3, r2, r3, asr #12
	rsb	r4, r3, r3, lsl #5
	rsb	lr, r2, lr, asr #6
	add	r3, r3, r4, lsl #2
	rsb	r2, r2, r5, asr #5
	rsb	r4, lr, lr, lsl #5
	add	r2, r2, r2, lsl #2
	add	r3, r3, r3, lsl #2
	add	lr, lr, r4, lsl #2
	sub	r3, r1, r3, lsl #4
	add	r2, r2, r2, lsl #2
	sub	r2, r1, r2, lsl #2
	sub	r1, r1, lr, lsl #3
	smull	lr, ip, r3, ip
	ldr	r4, .L193+16
	smull	lr, r0, r1, r0
	smull	r5, lr, r4, r2
	asr	r3, r3, #31
	rsb	r3, r3, ip, asr #6
	ldr	ip, .L193+20
	add	r3, r3, #15
	strh	r3, [ip, #114]	@ movhi
	asr	r2, r2, #31
	ldr	r3, .L193+24
	rsb	r2, r2, lr, asr #2
	ldr	r3, [r3]
	add	r2, r2, #15
	asr	r1, r1, #31
	strh	r2, [ip, #118]	@ movhi
	rsb	r1, r1, r0, asr #5
	ldr	r2, .L193+28
	add	r3, r3, #15
	add	r1, r1, #15
	strh	r1, [ip, #116]	@ movhi
	strh	r3, [r2, #14]	@ movhi
	ldr	r3, .L193+32
	ldrh	r3, [r3]
	ldr	r4, .L193+36
	ands	r2, r3, #64
	streq	r2, [r4, #28]
	tst	r3, #128
	moveq	r2, #2
	streq	r2, [r4, #28]
	tst	r3, #32
	moveq	r2, #3
	streq	r2, [r4, #28]
	tst	r3, #16
	moveq	r2, #1
	streq	r2, [r4, #28]
	ldr	r2, .L193+40
	ldr	r10, [r4]
	ldr	r7, [r4, #16]
	ldr	r5, [r4, #4]
	ldr	r6, [r4, #20]
	ldrh	r2, [r2]
	add	r7, r10, r7
	add	r6, r5, r6
	tst	r2, #1
	sub	r9, r7, #1
	sub	r8, r6, #1
	beq	.L133
	tst	r3, #1
	beq	.L187
.L133:
	ldr	fp, [r4, #8]
	cmp	fp, #0
	ble	.L135
	mov	r3, #0
	sub	lr, r10, #1
	str	r3, [sp, #20]
	str	r3, [sp, #16]
	str	r3, [sp, #28]
	add	r3, lr, r8, lsl #9
	str	r3, [sp, #12]
	ldr	r3, [r4, #4]
	str	r3, [sp, #4]
	ldr	r3, [r4]
	ldr	ip, .L193+44
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	add	lr, lr, r5, lsl #9
	add	r3, r3, ip
	str	r3, [sp, #24]
	add	r3, lr, ip
	ldr	r2, .L193+48
	str	r3, [sp, #40]
	ldr	r3, [sp, #12]
	sub	r0, r5, #1
	add	r3, r3, r2
	add	r8, r7, r8, lsl #9
	add	r5, r7, r5, lsl #9
	str	r3, [sp, #12]
	add	r7, r10, r0, lsl #9
	add	r3, lr, r2
	add	r0, r9, r0, lsl #9
	str	r3, [sp, #52]
	add	r3, r0, ip
	add	r10, r10, r6, lsl #9
	str	r3, [sp, #36]
	add	r6, r9, r6, lsl #9
	add	r3, r0, r2
	str	r3, [sp, #48]
	add	r3, r6, ip
	str	r3, [sp, #32]
	add	r3, r6, r2
	str	r3, [sp, #44]
	mov	r3, #0
	ldr	r1, .L193+52
	ldr	r9, [r1]
	ldr	r1, [r4, #28]
	add	lr, r7, ip
	add	r0, r10, ip
	add	r6, r8, ip
	add	r7, r7, r2
	add	ip, r5, ip
	add	r10, r10, r2
	add	r8, r8, r2
	add	r5, r5, r2
.L158:
	cmp	r1, #3
	ldrls	pc, [pc, r1, asl #2]
	b	.L136
.L138:
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L137
.L137:
	cmp	r9, #1
	beq	.L188
	ldr	r2, [sp, #24]
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #40]
	ldrb	r2, [r2]	@ zero_extendqisi2
.L157:
	cmp	r2, #0
	movne	r2, #1
	strne	r2, [sp, #20]
	ldrne	r2, [sp, #8]
	subne	r2, r2, #1
	strne	r2, [sp, #8]
.L136:
	add	r3, r3, #1
	cmp	r3, fp
	bne	.L158
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ldrne	r3, [sp, #4]
	strne	r3, [r4, #4]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ldrne	r3, [sp, #8]
	strne	r3, [r4]
.L135:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L161
	ldr	r3, [r4, #24]
	subs	r3, r3, #1
	strne	r3, [r4, #24]
	beq	.L189
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L140:
	cmp	r9, #1
	beq	.L190
	ldrb	r2, [r6]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldrb	r2, [ip]	@ zero_extendqisi2
.L153:
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #8]
	add	r2, r2, #1
	str	r2, [sp, #8]
	mov	r2, #1
	str	r2, [sp, #20]
	b	.L136
.L139:
	cmp	r9, #1
	beq	.L191
	ldrb	r2, [r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #32]
	ldrb	r2, [r2]	@ zero_extendqisi2
.L145:
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #4]
	add	r2, r2, #1
	str	r2, [sp, #4]
	mov	r2, #1
	str	r2, [sp, #16]
	b	.L136
.L141:
	cmp	r9, #1
	beq	.L192
	ldrb	r2, [lr]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #36]
	ldrb	r2, [r2]	@ zero_extendqisi2
.L149:
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #4]
	sub	r2, r2, #1
	str	r2, [sp, #4]
	mov	r2, #1
	str	r2, [sp, #16]
	b	.L136
.L188:
	ldr	r2, [sp, #12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #52]
	ldrb	r2, [r2]	@ zero_extendqisi2
	b	.L157
.L190:
	ldrb	r2, [r8]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldrb	r2, [r5]	@ zero_extendqisi2
	b	.L153
.L191:
	ldrb	r2, [r10]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #44]
	ldrb	r2, [r2]	@ zero_extendqisi2
	b	.L145
.L192:
	ldrb	r2, [r7]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L136
	ldr	r2, [sp, #48]
	ldrb	r2, [r2]	@ zero_extendqisi2
	b	.L149
.L189:
	mov	r2, #20
	ldr	r0, [r4, #36]
	ldr	r3, .L193+56
	ldr	r1, [r4, #40]
	str	r2, [r4, #24]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L187:
	ldr	r3, .L193+60
	ldr	r3, [r3]
	cmp	r3, #120
	bne	.L133
	mov	r1, r5
	mov	r0, r10
	ldr	r2, [r4, #28]
	bl	releaseSmoke
	b	.L133
.L161:
	mov	r2, #10
	str	r3, [r4, #36]
	str	r2, [r4, #24]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L194:
	.align	2
.L193:
	.word	score
	.word	1759218605
	.word	274877907
	.word	1374389535
	.word	1717986919
	.word	100718592
	.word	lives
	.word	100719744
	.word	buttons
	.word	player
	.word	oldButtons
	.word	collision2Bitmap
	.word	collision1Bitmap
	.word	level
	.word	__aeabi_idivmod
	.word	smokeFrame
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, .L238
	sub	sp, sp, #28
	bl	updateEnemy
	ldr	r6, .L238+4
	ldr	r0, .L238+8
	bl	updateEnemy
	ldr	r0, .L238+12
	bl	updateEnemy
	bl	updatePlayer
	ldr	lr, [r6, #16]
	ldr	r1, [r6]
	rsb	r3, lr, #240
	ldr	r4, .L238+16
	add	r3, r3, r3, lsr #31
	cmp	r1, #0
	sub	r3, r1, r3, asr #1
	str	r3, [r4]
	movlt	r4, #0
	ldr	ip, [r6, #4]
	movlt	r1, r4
	strlt	r4, [r6]
	cmp	ip, #0
	movlt	r4, #0
	ldr	r0, [r6, #20]
	rsb	r2, r0, #160
	add	r2, r2, r2, lsr #31
	sub	r2, ip, r2, asr #1
	movlt	ip, r4
	rsb	lr, lr, #512
	rsb	r0, r0, #512
	strlt	r4, [r6, #4]
	cmp	lr, r1
	movlt	r1, lr
	ldr	r10, .L238+20
	strlt	lr, [r6]
	cmp	r0, ip
	movlt	ip, r0
	strlt	r0, [r6, #4]
	cmp	r3, #0
	str	r2, [r10]
	blt	.L235
	cmp	r2, #0
	blt	.L236
	cmp	r3, #272
	lslle	r3, r3, #16
	lsrle	r3, r3, #16
	movgt	r3, #272
	ldrgt	r0, .L238+16
	strgt	r3, [r0]
.L201:
	cmp	r2, #352
	ble	.L207
	mov	r0, #352
	mov	r2, r0
	mov	r7, r0
	str	r0, [r10]
	add	r0, r0, #159
	str	r0, [sp, #20]
.L205:
	ldr	r5, .L238+24
	mov	r8, #512
	mov	r4, r5
	mov	r0, r5
	ldr	lr, .L238+28
	sub	r1, r1, r3
	and	r1, r1, lr
	ldr	fp, [r6, #36]
	ldr	lr, [r6, #28]
	ldr	r9, .L238+32
	orr	r1, r1, #16384
	sub	ip, ip, r7
	add	lr, lr, fp, lsl #5
	strh	r1, [r5, #2]	@ movhi
	and	r9, r9, lr, lsl #1
	ldr	r1, .L238
	and	ip, ip, #255
	orr	r9, r9, #1024
	strh	ip, [r5]	@ movhi
	strh	r9, [r5, #4]	@ movhi
	add	r9, r1, #168
.L211:
	ldr	lr, [r1, #4]
	ldr	ip, [r1, #20]
	add	ip, lr, ip
	cmp	ip, r2
	ble	.L209
	ldr	ip, [sp, #20]
	sub	r5, lr, r7
	cmp	lr, ip
	and	r5, r5, #255
	bgt	.L209
	ldr	ip, [r1, #28]
	ldr	lr, [r1, #36]
	add	ip, ip, #4
	add	ip, ip, lr, lsl #5
	ldr	lr, [r1]
	ldr	fp, .L238+32
	sub	lr, lr, r3
	lsl	lr, lr, #23
	and	ip, fp, ip, lsl #1
	lsr	lr, lr, #23
	orr	ip, ip, #1024
	orr	lr, lr, #16384
	strh	r5, [r0, #8]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	strh	lr, [r0, #10]	@ movhi
.L210:
	add	r1, r1, #56
	cmp	r9, r1
	add	r0, r0, #8
	bne	.L211
	ldr	r0, .L238+36
	ldr	r2, [r0]
	cmp	r2, #120
	cmpne	r2, #0
	bne	.L212
	mov	r2, #512
	mov	r3, #120
	ldr	r1, .L238+24
	str	r3, [r0]
	strh	r2, [r1, #32]	@ movhi
.L213:
	ldr	r5, .L238+40
	ldr	r7, .L238+24
	ldr	r9, .L238+44
	ldr	fp, .L238+48
	add	r8, r5, #168
.L217:
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	ip, .L238+52
	ldm	r6, {r0, r1}
	mov	lr, pc
	bx	ip
	ldr	r3, [r10]
	cmp	r0, #0
	add	ip, r3, #159
	beq	.L214
	ldr	r2, [r9]
	sub	r2, r2, #1
	str	r2, [r9]
	ldr	r2, .L238+56
	ldr	r1, [fp]
	ldr	r2, [r2]
	stm	r6, {r1, r2}
.L214:
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #20]
	add	r2, r1, r2
	cmp	r2, r3
	ble	.L215
	sub	r3, r1, r3
	cmp	r1, ip
	and	r3, r3, #255
	bgt	.L215
	ldr	r1, .L238+16
	ldr	r2, [r5]
	ldr	r1, [r1]
	sub	r2, r2, r1
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mov	r1, #1040
	mvn	r2, r2, lsr #17
	strh	r3, [r7, #40]	@ movhi
	strh	r2, [r7, #42]	@ movhi
	strh	r1, [r7, #44]	@ movhi
.L216:
	add	r5, r5, #56
	cmp	r8, r5
	add	r7, r7, #8
	bne	.L217
	ldr	r8, .L238+60
	mov	r5, r8
	ldr	r9, .L238+64
	ldr	fp, .L238+68
	add	r7, r8, #560
.L223:
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #20]
	ldr	r3, [r10]
	add	r0, r2, r1
	cmp	r0, r3
	ble	.L218
	add	r3, r3, #159
	cmp	r2, r3
	bgt	.L218
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L237
.L218:
	mov	r3, #512
	strh	r3, [r4, #64]	@ movhi
.L222:
	add	r5, r5, #56
	cmp	r7, r5
	add	r4, r4, #8
	bne	.L223
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L236:
	mov	r2, #0
	cmp	r3, #272
	str	r2, [r10]
	ble	.L202
	mov	r3, #272
	ldr	r0, .L238+16
	str	r3, [r0]
.L207:
	lsl	r7, r2, #16
	add	r0, r2, #159
	str	r0, [sp, #20]
	lsr	r7, r7, #16
	b	.L205
.L235:
	mov	r3, #0
	ldr	r0, .L238+16
	cmp	r2, r3
	str	r3, [r0]
	strlt	r3, [r10]
	bge	.L201
.L202:
	mov	r7, #0
	mov	r0, #159
	lsl	r3, r3, #16
	mov	r2, r7
	str	r0, [sp, #20]
	lsr	r3, r3, #16
	b	.L205
.L215:
	mov	r3, #512
	strh	r3, [r7, #40]	@ movhi
	b	.L216
.L209:
	strh	r8, [r0, #8]	@ movhi
	b	.L210
.L237:
	ldr	r0, [r5, #16]
	ldr	r3, [r5]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldm	r6, {r0, r1}
	ldr	ip, .L238+52
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L233
	ldr	r2, [r5, #48]
.L219:
	ldr	r3, [r5, #52]
	rsb	r3, r3, #30
	sub	r3, r3, r2, lsl #1
	ldr	r1, [r5, #4]
	ldr	r2, [r10]
	sub	r1, r1, r2
	and	r1, r1, #255
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r0, .L238+16
	ldr	r2, [r5]
	ldr	r0, [r0]
	lsl	r3, r3, #22
	sub	r2, r2, r0
	lsr	r3, r3, #22
	lsl	r2, r2, #23
	orr	r3, r3, #1024
	lsr	r2, r2, #23
	strh	r3, [r4, #68]	@ movhi
	strh	r1, [r4, #64]	@ movhi
	strh	r2, [r4, #66]	@ movhi
	b	.L222
.L212:
	ldr	r1, .L238+72
	ldr	r3, .L238+16
	ldr	ip, [r3]
	ldr	r3, [r1]
	sub	r3, r3, ip
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	ip, #20
	mvn	r3, r3, lsr #17
	ldr	r1, [r1, #4]
	ldr	lr, [r10]
	sub	r2, r2, #1
	str	r2, [r0]
	sub	r1, r1, lr
	ldr	r2, .L238+24
	and	r1, r1, #255
	strh	r3, [r2, #34]	@ movhi
	strh	r1, [r2, #32]	@ movhi
	strh	ip, [r2, #36]	@ movhi
	b	.L213
.L233:
	mov	r1, #1
	ldr	r3, [r9]
	ldr	r2, [r5, #48]
	add	r3, r3, r1
	cmp	r2, #0
	str	r3, [r9]
	str	r1, [r5, #44]
	ldr	r0, [fp]
	beq	.L220
	ldr	r3, .L238+76
	ldr	r1, .L238+80
	ldr	r3, [r3]
	ldr	r1, [r1]
	mul	r3, r1, r3
	add	r3, r3, r3, lsl #2
	add	r3, r0, r3, lsl #1
	str	r3, [fp]
	b	.L219
.L220:
	ldr	r3, .L238+84
	ldr	r1, [r3]
	rsb	r1, r1, r1, lsl #3
	add	r1, r8, r1, lsl #3
	ldr	r3, [r1, #44]
	cmp	r3, #0
	addne	r3, r0, #200
	addeq	r3, r0, #100
	str	r3, [fp]
	b	.L219
.L239:
	.align	2
.L238:
	.word	enemyPool
	.word	player
	.word	enemyPool+56
	.word	enemyPool+112
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	511
	.word	1022
	.word	smokeFrame
	.word	rockPool
	.word	lives
	.word	playerSpawnX
	.word	collision
	.word	playerSpawnY
	.word	flagPool
	.word	flagsCollected
	.word	score
	.word	smoke
	.word	fuel
	.word	level
	.word	specialIndex
	.size	updateGame, .-updateGame
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
	@ link register save eliminated.
	ldr	r1, .L241
	ldr	r2, .L241+4
	ldr	r0, .L241+8
	ldr	r3, [r1]
	ldr	ip, [r2]
	ldr	r0, [r0]
	ldr	r2, .L241+12
	sub	r3, r3, #1
	str	r3, [r1]
	str	ip, [r2]
	str	r0, [r2, #4]
	bx	lr
.L242:
	.align	2
.L241:
	.word	lives
	.word	playerSpawnX
	.word	playerSpawnY
	.word	player
	.size	collisionOccurred, .-collisionOccurred
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
	mov	r2, #67108864
	ldr	r3, .L245
	push	{r4, lr}
	ldrh	r1, [r3]
	ldr	r3, .L245+4
	strh	r1, [r2, #20]	@ movhi
	ldrh	r1, [r3]
	ldr	r4, .L245+8
	strh	r1, [r2, #22]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L245+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L246:
	.align	2
.L245:
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	luckyIndex,4,4
	.comm	specialIndex,4,4
	.comm	randomIndex,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	yFlagSpawn
	.global	xFlagSpawn
	.global	yRockSpawn
	.global	xRockSpawn
	.global	yEnemySpawn
	.global	xEnemySpawn
	.comm	smoke,56,4
	.comm	smokeFrame,4,4
	.comm	moved,4,4
	.comm	playerSpawnY,4,4
	.comm	playerSpawnX,4,4
	.comm	player,56,4
	.comm	flagPool,560,4
	.comm	rockPool,168,4
	.comm	enemyPool,168,4
	.comm	score,4,4
	.comm	level,4,4
	.comm	flagsCollected,4,4
	.comm	fuel,4,4
	.comm	lives,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xEnemySpawn, %object
	.size	xEnemySpawn, 60
xEnemySpawn:
	.word	4
	.word	12
	.word	46
	.word	58
	.word	15
	.word	7
	.word	30
	.word	21
	.word	33
	.word	41
	.word	30
	.word	49
	.word	49
	.word	4
	.word	57
	.type	yEnemySpawn, %object
	.size	yEnemySpawn, 60
yEnemySpawn:
	.word	4
	.word	11
	.word	12
	.word	4
	.word	22
	.word	34
	.word	27
	.word	33
	.word	34
	.word	22
	.word	13
	.word	22
	.word	35
	.word	25
	.word	28
	.type	xRockSpawn, %object
	.size	xRockSpawn, 60
xRockSpawn:
	.word	10
	.word	38
	.word	49
	.word	26
	.word	7
	.word	47
	.word	26
	.word	9
	.word	20
	.word	9
	.word	16
	.word	41
	.word	38
	.word	55
	.word	50
	.type	yRockSpawn, %object
	.size	yRockSpawn, 60
yRockSpawn:
	.word	6
	.word	8
	.word	17
	.word	17
	.word	13
	.word	30
	.word	33
	.word	37
	.word	41
	.word	48
	.word	54
	.word	39
	.word	46
	.word	42
	.word	50
	.type	xFlagSpawn, %object
	.size	xFlagSpawn, 80
xFlagSpawn:
	.word	18
	.word	39
	.word	15
	.word	58
	.word	44
	.word	4
	.word	30
	.word	17
	.word	41
	.word	59
	.word	22
	.word	11
	.word	42
	.word	59
	.word	33
	.word	10
	.word	47
	.word	23
	.word	54
	.word	17
	.type	yFlagSpawn, %object
	.size	yFlagSpawn, 80
yFlagSpawn:
	.word	4
	.word	5
	.word	10
	.word	11
	.word	12
	.word	15
	.word	17
	.word	25
	.word	26
	.word	48
	.word	30
	.word	34
	.word	35
	.word	35
	.word	40
	.word	43
	.word	44
	.word	45
	.word	51
	.word	52
	.ident	"GCC: (devkitARM release 53) 9.1.0"
