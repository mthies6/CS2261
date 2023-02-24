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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Shoot 'Em Up!\000"
	.align	2
.LC1:
	.ascii	"Press START to play!\000"
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	ldr	r7, .L4
	ldr	r0, .L4+4
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	ldr	ip, .L4+12
	ldr	r4, .L4+16
	mov	r3, r5
	mov	r2, r7
	ldr	r6, .L4+20
	mov	r1, #37
	mov	r0, #81
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, r7
	mov	r1, #36
	mov	r0, #80
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r2, r6
	mov	r1, #101
	mov	r0, #62
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #100
	mov	r0, #61
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	10575
	.word	fillScreen
	.word	state
	.word	drawString
	.word	.LC1
	.word	32736
	.word	32767
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	goToStart
	mov	r3, #67108864
	mov	r0, #128
	mvn	r1, #170
	mov	r2, #2
	strh	r0, [r3, #132]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L12
	mov	r0, #0
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L9
	mov	r1, #1
	ldr	r2, .L12+8
	str	r1, [r3]
	mov	lr, pc
	bx	r2
.L10:
	mov	r2, #1
	ldr	r3, .L12+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	ldr	r3, .L12+16
	mov	lr, pc
	bx	r3
	b	.L10
.L13:
	.align	2
.L12:
	.word	fillScreen
	.word	gameStarted
	.word	initializeGame
	.word	state
	.word	drawBackground
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"PAUSED\000"
	.align	2
.LC3:
	.ascii	"Press SELECT to resume game\000"
	.align	2
.LC4:
	.ascii	"Press START to quit to start\000"
	.text
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
	push	{r4, r5, r6, lr}
	mov	r0, #0
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r5, .L16+4
	ldr	ip, .L16+8
	ldr	r4, .L16+12
	mov	r3, r5
	mov	r1, #50
	mov	r0, #101
	ldr	r2, .L16+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #80
	mov	r0, #40
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #90
	mov	r0, #38
	ldr	r2, .L16+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	fillScreen
	.word	32767
	.word	state
	.word	drawString
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"YOU WIN\000"
	.align	2
.LC6:
	.ascii	"Press SELECT to play again!\000"
	.align	2
.LC7:
	.ascii	"Press START to exit to start\000"
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
	mov	r0, #0
	ldr	r2, .L20
	push	{r4, r5, r6, lr}
	ldr	r3, .L20+4
	str	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	lr, #3
	ldr	r6, .L20+8
	ldr	ip, .L20+12
	ldr	r4, .L20+16
	mov	r2, r6
	ldr	r5, .L20+20
	mov	r1, #46
	mov	r0, #96
	ldr	r3, .L20+24
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #45
	mov	r0, #95
	ldr	r3, .L20+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #100
	mov	r0, #42
	ldr	r2, .L20+32
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #120
	mov	r0, #39
	ldr	r2, .L20+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	gameStarted
	.word	fillScreen
	.word	.LC5
	.word	state
	.word	drawString
	.word	21140
	.word	15855
	.word	31775
	.word	.LC6
	.word	.LC7
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"YOU LOSE\000"
	.align	2
.LC9:
	.ascii	"Press SELECT to try again\000"
	.text
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
	mov	r0, #0
	mov	r3, #67108864
	mov	r1, #32768
	ldr	r2, .L24
	push	{r4, r5, r6, lr}
	str	r0, [r2]
	strh	r1, [r3, #108]	@ movhi
	ldr	r2, .L24+4
	strh	r0, [r3, #104]	@ movhi
	mov	lr, pc
	bx	r2
	mov	lr, #4
	ldr	r6, .L24+8
	ldr	ip, .L24+12
	ldr	r4, .L24+16
	mov	r2, r6
	ldr	r5, .L24+20
	mov	r1, #46
	mov	r0, #96
	ldr	r3, .L24+24
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #45
	mov	r0, #95
	ldr	r3, .L24+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #100
	mov	r0, #47
	ldr	r2, .L24+32
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #120
	mov	r0, #39
	ldr	r2, .L24+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	gameStarted
	.word	fillScreen
	.word	.LC8
	.word	state
	.word	drawString
	.word	21140
	.word	10570
	.word	32767
	.word	.LC9
	.word	.LC7
	.size	goToLose, .-goToLose
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
	mov	r5, #67108864
	ldr	r2, .L79
	ldr	r3, [r2]
	push	{r4, r7, fp, lr}
	ldr	r1, .L79+4
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	ldr	r3, .L79+8
	strh	r3, [r5]	@ movhi
	ldr	r3, .L79+12
	mov	lr, pc
	bx	r3
	mov	r2, #128
	mvn	r1, #170
	mov	r3, #2
	strh	r2, [r5, #132]	@ movhi
	ldr	r10, .L79+16
	strh	r1, [r5, #128]	@ movhi
	ldr	r4, .L79+20
	strh	r3, [r5, #130]	@ movhi
	ldr	r7, .L79+24
	ldrh	ip, [r10]
	ldr	lr, [r4]
	ldr	r9, .L79+28
	ldr	r8, .L79+32
	ldr	r6, .L79+36
	ldr	r5, .L79+40
	ldr	fp, .L79+44
.L27:
	strh	ip, [r7]	@ movhi
	ldrh	r3, [fp, #48]
	strh	r3, [r10]	@ movhi
	cmp	lr, #4
	ldrls	pc, [pc, lr, asl #2]
	b	.L50
.L31:
	.word	.L35
	.word	.L34
	.word	.L30
	.word	.L30
	.word	.L30
.L30:
	tst	ip, #8
	beq	.L47
	tst	r3, #8
	beq	.L76
.L47:
	tst	ip, #4
	beq	.L66
	tst	r3, #4
	beq	.L49
.L66:
	mov	ip, r3
	ldr	lr, [r4]
	b	.L27
.L34:
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	ldr	r3, .L79+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r7]
	tst	r3, #4
	beq	.L38
	ldrh	r3, [r10]
	tst	r3, #4
	beq	.L77
.L38:
	ldr	r3, [r6]
	cmp	r3, #49
	bgt	.L78
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L40
.L67:
	ldrh	ip, [r10]
	ldr	lr, [r4]
	b	.L27
.L37:
	strh	r3, [r7]	@ movhi
	ldrh	r2, [fp, #48]
	mov	ip, r3
	mov	r3, r2
	strh	r2, [r10]	@ movhi
.L35:
	tst	ip, #8
	beq	.L37
	tst	r3, #8
	bne	.L37
.L49:
	ldr	r3, .L79+52
	mov	lr, pc
	bx	r3
	b	.L67
.L76:
	ldr	r3, .L79+12
	mov	lr, pc
	bx	r3
	ldrh	ip, [r7]
	ldrh	r3, [r10]
	b	.L47
.L78:
	ldr	r3, .L79+56
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #0
	bgt	.L67
.L40:
	ldr	r3, .L79+60
	mov	lr, pc
	bx	r3
	ldrh	ip, [r10]
	ldr	lr, [r4]
	b	.L27
.L77:
	ldr	r3, .L79+64
	mov	lr, pc
	bx	r3
	b	.L38
.L50:
	mov	ip, r3
	b	.L27
.L80:
	.align	2
.L79:
	.word	seed
	.word	mgba_open
	.word	1027
	.word	goToStart
	.word	buttons
	.word	state
	.word	oldButtons
	.word	updateGame
	.word	waitForVBlank
	.word	numKilled
	.word	lives
	.word	67109120
	.word	drawGame
	.word	goToGame
	.word	goToWin
	.word	goToLose
	.word	goToPause
	.size	main, .-main
	.comm	state,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
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
