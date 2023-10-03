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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #1024
	ldr	r2, .L4
	ldr	r1, .L4+4
	ldr	r4, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L4+12
	ldr	r2, .L4+16
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	100718592
	.word	startScreenMap
	.word	DMANow
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	goToGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame1, %function
goToGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	mov	r4, #1
	ldr	r1, .L8
	ldr	r2, .L8+4
	ldr	r3, .L8+8
	str	r4, [r2]
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	flagsCollected
	.word	level
	.word	initializeGame1
	.word	state
	.size	goToGame1, .-goToGame1
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	mov	r4, #2
	ldr	r1, .L12
	ldr	r2, .L12+4
	ldr	r3, .L12+8
	str	r4, [r2]
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	flagsCollected
	.word	level
	.word	initializeGame2
	.word	state
	.size	goToGame2, .-goToGame2
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+8
	mov	r3, #1024
	ldr	r2, .L16+12
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L16+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	hideSprites
	.word	drawGame
	.word	DMANow
	.word	100718592
	.word	pauseScreenMap
	.word	state
	.size	goToPause, .-goToPause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+4
	ldr	r4, .L80+8
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L80+12
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	r3, #4864
	ldr	r2, .L80+16
	ldr	r0, .L80+20
	strh	r3, [r1]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #384
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L80+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L80+28
	ldr	r1, .L80+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L80+36
	ldr	r1, .L80+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L80+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L80+48
	ldr	r1, .L80+52
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L80+56
	ldr	r1, .L80+60
	mov	lr, pc
	bx	r4
	ldr	r2, .L80+64
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L80+68
	mov	lr, pc
	bx	r4
	mov	r4, #0
	ldr	r7, .L80+72
	ldr	r9, .L80+76
	ldr	r5, .L80+80
	str	r4, [r7]
	str	r4, [r9]
	ldrh	r2, [r5]
	ldr	r6, .L80+84
	ldr	r8, .L80+88
	ldr	r10, .L80+92
	ldr	fp, .L80+96
.L19:
	ldr	r1, .L80+100
.L20:
	strh	r2, [r6]	@ movhi
	ldrh	r3, [r1, #48]
	strh	r3, [r5]	@ movhi
	cmp	r4, #5
	ldrls	pc, [pc, r4, asl #2]
	b	.L48
.L22:
	.word	.L27
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L21
	.word	.L21
.L21:
	tst	r2, #8
	beq	.L45
	ands	r4, r3, #8
	beq	.L74
.L45:
	tst	r2, #4
	beq	.L68
	ands	r2, r3, #4
	beq	.L47
.L68:
	mov	r2, r3
	ldr	r4, [r7]
	b	.L19
.L24:
	tst	r2, #4
	beq	.L38
	tst	r3, #4
	beq	.L75
.L38:
	tst	r2, #8
	beq	.L68
	ands	r4, r3, #8
	bne	.L68
	ldr	r2, .L80+64
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L80+68
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	str	r4, [r7]
	str	r4, [r9]
	ldrh	r2, [r5]
	b	.L19
.L25:
	ldr	r3, .L80+104
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+108
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+112
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	tst	r3, #4
	beq	.L34
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L76
.L34:
	ldr	r3, [r10]
	cmp	r3, #0
	ble	.L35
	ldr	r3, [fp]
	cmp	r3, #0
	ble	.L35
	ldr	r3, [r8]
	cmp	r3, #10
	beq	.L37
.L33:
	ldr	r4, [r7]
	ldrh	r2, [r5]
	b	.L19
.L26:
	ldr	r3, .L80+104
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+108
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+112
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	tst	r3, #4
	beq	.L30
	ldrh	r3, [r5]
	tst	r3, #4
	beq	.L77
.L30:
	ldr	r3, [r10]
	cmp	r3, #0
	ble	.L31
	ldr	r3, [fp]
	cmp	r3, #0
	ble	.L31
.L32:
	ldr	r3, [r8]
	cmp	r3, #10
	bne	.L33
	mov	r4, #2
	mov	r1, #0
	ldr	r0, .L80+116
	ldr	r3, [fp]
	ldr	r2, [r0]
	add	r3, r3, r3, lsl r4
	add	r3, r2, r3, lsl #1
	str	r3, [r0]
	ldr	r3, .L80+120
	str	r1, [r8]
	str	r4, [r3]
	ldr	r3, .L80+124
	mov	lr, pc
	bx	r3
	str	r4, [r7]
	ldrh	r2, [r5]
	b	.L19
.L27:
	tst	r2, #8
	beq	.L28
	ands	r3, r3, #8
	beq	.L78
.L28:
	ldr	r3, [r9]
	add	r3, r3, #1
	str	r3, [r9]
	ldr	r4, [r7]
	ldrh	r2, [r5]
	b	.L19
.L31:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L80+64
	ldr	r1, .L80+128
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	mov	r3, #5
	str	r3, [r7]
	b	.L32
.L35:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L80+64
	ldr	r1, .L80+128
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	mov	r3, #5
	str	r3, [r7]
	ldr	r3, [r8]
	cmp	r3, #10
	bne	.L33
.L37:
	mov	r4, #4
	ldr	lr, .L80+116
	ldr	r3, [fp]
	ldr	ip, [lr]
	add	r3, r3, r3, lsl #2
	add	ip, ip, r3, lsl #2
	ldr	r2, .L80+64
	str	ip, [lr]
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L80+132
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	ldrh	r2, [r5]
	str	r4, [r7]
	b	.L19
.L74:
	mov	r3, #1024
	ldr	r2, .L80+64
	mov	r0, #3
	ldr	r1, .L80+68
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	str	r4, [r7]
	str	r4, [r9]
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	b	.L45
.L47:
	mov	r4, #1
	ldr	r3, .L80+120
	str	r2, [r8]
	str	r4, [r3]
	ldr	r3, .L80+136
	mov	lr, pc
	bx	r3
	str	r4, [r7]
	ldrh	r2, [r5]
	b	.L19
.L75:
	mov	r3, #1024
	ldr	r2, .L80+64
	mov	r0, #3
	ldr	r1, .L80+140
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	ldr	r3, .L80+120
	ldr	r4, [r3]
	cmp	r4, #1
	mov	r3, #4096
	ldr	r2, .L80+28
	beq	.L79
	mov	r0, #3
	ldr	r1, .L80+144
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	mov	r3, #2
	ldrh	r2, [r6]
	str	r3, [r7]
	ldrh	r3, [r5]
	b	.L38
.L78:
	mov	r4, #1
	str	r3, [r8]
	ldr	r3, .L80+120
	str	r4, [r3]
	ldr	r3, .L80+136
	mov	lr, pc
	bx	r3
	str	r4, [r7]
	b	.L28
.L77:
	ldr	r3, .L80+148
	mov	lr, pc
	bx	r3
	b	.L30
.L76:
	ldr	r3, .L80+148
	mov	lr, pc
	bx	r3
	b	.L34
.L79:
	mov	r0, #3
	ldr	r1, .L80+32
	ldr	ip, .L80+8
	mov	lr, pc
	bx	ip
	str	r4, [r7]
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	b	.L38
.L48:
	mov	r2, r3
	b	.L20
.L81:
	.align	2
.L80:
	.word	mgba_open
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	6916
	.word	-9214
	.word	tilesetTiles
	.word	100720640
	.word	level1MapMap
	.word	100679680
	.word	overlayTileSetTiles
	.word	overlayTileSetPal
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	100718592
	.word	startScreenMap
	.word	state
	.word	seed
	.word	buttons
	.word	oldButtons
	.word	flagsCollected
	.word	lives
	.word	fuel
	.word	67109120
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	score
	.word	level
	.word	initializeGame2
	.word	loseScreenMap
	.word	winScreenMap
	.word	initializeGame1
	.word	overlayMap
	.word	level2MapMap
	.word	goToPause
	.size	main, .-main
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #1024
	ldr	r2, .L84
	ldr	r4, .L84+4
	mov	r0, #3
	ldr	r1, .L84+8
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L84+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	100718592
	.word	DMANow
	.word	winScreenMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #1024
	ldr	r2, .L88
	ldr	r4, .L88+4
	mov	r0, #3
	ldr	r1, .L88+8
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L88+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L89:
	.align	2
.L88:
	.word	100718592
	.word	DMANow
	.word	loseScreenMap
	.word	state
	.size	goToLose, .-goToLose
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	state,4,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
