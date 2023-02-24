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
	.global	goToGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	ldr	r3, .L6
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L6+4
	ldr	r0, [r3]
	ldr	r1, .L6+8
	cmp	r0, #0
	str	r2, [r1]
	bne	.L2
	ldr	r1, .L6+12
	str	r2, [r3]
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L2:
	ldr	r3, .L6+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	fillScreen
	.word	gameStarted
	.word	state
	.word	initializeGame
	.word	drawBackGround
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"PAUSED\000"
	.align	2
.LC1:
	.ascii	"Press SELECT to resume game\000"
	.align	2
.LC2:
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
	mov	r1, #2
	push	{r4, r5, r6, lr}
	ldr	r2, .L10
	ldr	r5, .L10+4
	mov	r0, #0
	ldr	r3, .L10+8
	ldr	r4, .L10+12
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r1, #50
	mov	r0, #101
	ldr	r2, .L10+16
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #80
	mov	r0, #40
	ldr	r2, .L10+20
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #90
	mov	r0, #38
	ldr	r2, .L10+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	state
	.word	32767
	.word	fillScreen
	.word	drawString
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"YOU WIN!\000"
	.align	2
.LC4:
	.ascii	"Press SELECT to play again!\000"
	.align	2
.LC5:
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
	push	{r4, r5, r6, lr}
	mov	r0, #0
	ldr	r3, .L14
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	lr, #3
	ldr	r6, .L14+4
	ldr	r1, .L14+8
	ldr	ip, .L14+12
	ldr	r4, .L14+16
	mov	r2, r6
	str	r0, [r1]
	ldr	r5, .L14+20
	mov	r1, #46
	mov	r0, #96
	ldr	r3, .L14+24
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #45
	mov	r0, #95
	ldr	r3, .L14+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #100
	mov	r0, #42
	ldr	r2, .L14+32
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #120
	mov	r0, #39
	ldr	r2, .L14+36
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	fillScreen
	.word	.LC3
	.word	gameStarted
	.word	state
	.word	drawString
	.word	21140
	.word	15855
	.word	32736
	.word	.LC4
	.word	.LC5
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"YOU LOSE\000"
	.align	2
.LC7:
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
	push	{r4, r5, r6, lr}
	mov	r0, #0
	ldr	r3, .L18
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	lr, #4
	ldr	r6, .L18+4
	ldr	r1, .L18+8
	ldr	ip, .L18+12
	ldr	r4, .L18+16
	mov	r2, r6
	str	r0, [r1]
	ldr	r5, .L18+20
	mov	r1, #46
	mov	r0, #96
	ldr	r3, .L18+24
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r3, #31
	mov	r1, #45
	mov	r0, #95
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #100
	mov	r0, #47
	ldr	r2, .L18+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #120
	mov	r0, #39
	ldr	r2, .L18+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	fillScreen
	.word	.LC6
	.word	gameStarted
	.word	state
	.word	drawString
	.word	21140
	.word	10570
	.word	.LC7
	.word	.LC5
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"JezzBall\000"
	.align	2
.LC9:
	.ascii	"Press START to play!\000"
	.align	2
.LC10:
	.ascii	"Press SELECT for instructions\000"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #0
	sub	sp, sp, #12
	mov	r0, r7
	ldr	r6, .L22
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	ldr	lr, .L22+8
	ldr	ip, .L22+12
	ldr	r4, .L22+16
	mov	r2, r6
	ldr	r5, .L22+20
	mov	r1, #36
	mov	r0, #96
	ldr	r3, .L22+24
	str	r7, [lr]
	str	r7, [ip]
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r1, #35
	mov	r0, #95
	ldr	r3, .L22+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #100
	mov	r0, #64
	ldr	r2, .L22+32
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #120
	mov	r0, #37
	ldr	r2, .L22+36
	mov	lr, pc
	bx	r4
	mov	r3, #36
	ldr	r9, .L22+40
	ldr	r4, .L22+44
	mov	r2, r3
	mov	r1, #47
	mov	r0, #17
	str	r9, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #34
	str	r7, [sp]
	mov	r2, r3
	mov	r1, #48
	mov	r0, #18
	mov	lr, pc
	bx	r4
	mov	r3, #30
	ldr	r8, .L22+48
	mov	r5, #30
	mov	r2, r3
	mov	r1, #50
	mov	r0, #20
	str	r8, [sp]
	mov	lr, pc
	bx	r4
	mov	r6, #60
	mov	r3, #36
	ldr	ip, .L22+52
	str	r9, [sp]
	ldr	r1, .L22+56
	str	r5, [ip]
	ldr	r0, .L22+60
	ldr	ip, .L22+64
	mov	r2, r3
	str	r6, [ip]
	str	r5, [r1]
	str	r6, [r0]
	mov	r1, #47
	mov	r0, #187
	mov	lr, pc
	bx	r4
	mov	r3, #34
	str	r7, [sp]
	mov	r2, r3
	mov	r1, #48
	mov	r0, #188
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r2, r5
	mov	r1, #50
	mov	r0, #190
	str	r8, [sp]
	mov	lr, pc
	bx	r4
	mov	lr, #200
	mov	r0, #2
	mov	r2, #1
	ldr	r3, .L22+68
	ldr	r7, .L22+72
	str	r6, [r3]
	ldr	r4, .L22+76
	ldr	ip, .L22+80
	ldr	r1, .L22+84
	ldr	r3, .L22+88
	str	r5, [r7]
	str	r6, [r4]
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LC8
	.word	fillScreen
	.word	state
	.word	gameStarted
	.word	drawString
	.word	21140
	.word	10570
	.word	31775
	.word	.LC9
	.word	.LC10
	.word	32767
	.word	drawRect
	.word	15855
	.word	startBallX1
	.word	startBallOldX1
	.word	startBallY1
	.word	startBallOldY1
	.word	startBallY2
	.word	startBallOldX2
	.word	startBallOldY2
	.word	startBallX2
	.word	ballVx
	.word	ballVy
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
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r2, #0
	ldr	r0, .L25
	ldr	r3, .L25+4
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L26:
	.align	2
.L25:
	.word	1027
	.word	oldButtons
	.size	initialize, .-initialize
	.align	2
	.global	updateStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStart, %function
updateStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, .L45
	ldr	r4, .L45+4
	ldr	r9, .L45+8
	ldr	r1, [r4]
	ldr	r2, [r3]
	ldr	r8, [r9]
	add	r5, r2, r1
	add	ip, r1, r8
	cmp	r5, #20
	cmpgt	ip, #190
	rsble	r1, r1, #0
	strle	r1, [r4]
	cmp	r5, #45
	cmple	ip, #215
	ldr	lr, .L45+12
	ldr	r7, .L45+16
	ldr	r0, .L45+20
	str	ip, [r9]
	ldr	r9, .L45+24
	ldrgt	r1, [r4]
	str	r5, [r3]
	str	r2, [r0]
	ldr	r3, [r7]
	ldr	r2, [lr]
	str	r8, [r9]
	ldr	r8, .L45+28
	rsbgt	r1, r1, #0
	str	r3, [r8]
	add	r3, r3, r2
	strgt	r1, [r4]
	cmp	r3, #50
	cmpgt	ip, #50
	ldr	r6, .L45+32
	ldr	r0, [r6]
	str	r3, [r7]
	add	r7, r2, r0
	rsble	r2, r2, #0
	strle	r2, [lr]
	cmp	r3, #76
	movle	r3, #0
	movgt	r3, #1
	cmp	ip, #75
	orrle	r3, r3, #1
	cmp	r3, #0
	ldrne	r3, [lr]
	ldr	r8, .L45+36
	rsbne	r3, r3, #0
	str	r7, [r6]
	str	r0, [r8]
	strne	r3, [lr]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	startBallX1
	.word	ballVx
	.word	startBallX2
	.word	ballVy
	.word	startBallY1
	.word	startBallOldX1
	.word	startBallOldX2
	.word	startBallOldY1
	.word	startBallY2
	.word	startBallOldY2
	.size	updateStart, .-updateStart
	.align	2
	.global	drawStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStart, %function
drawStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #3
	push	{r4, r5, r6, lr}
	ldr	r1, .L49
	ldr	r6, .L49+4
	ldr	r0, .L49+8
	sub	sp, sp, #8
	ldr	r4, .L49+12
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r5, .L49+16
	ldr	r1, .L49+20
	ldr	r0, .L49+24
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	str	r6, [sp]
	ldr	r1, .L49+28
	ldr	r0, .L49+32
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	str	r5, [sp]
	ldr	r1, .L49+36
	ldr	r0, .L49+40
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	startBallOldY1
	.word	15855
	.word	startBallOldX1
	.word	drawRect
	.word	31775
	.word	startBallY1
	.word	startBallX1
	.word	startBallOldY2
	.word	startBallOldX2
	.word	startBallY2
	.word	startBallX2
	.size	drawStart, .-drawStart
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"Game Controls\000"
	.align	2
.LC12:
	.ascii	"Press A to draw a line\000"
	.align	2
.LC13:
	.ascii	"Press UP/DOWN or LEFT/RIGHT to change  direction\000"
	.align	2
.LC14:
	.ascii	"Press SELECT at anytime to pause game\000"
	.align	2
.LC15:
	.ascii	"Press START to return to start\000"
	.text
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, #0
	ldr	r3, .L53
	mov	lr, pc
	bx	r3
	mov	lr, #5
	ldr	r5, .L53+4
	ldr	ip, .L53+8
	ldr	r4, .L53+12
	mov	r3, r5
	mov	r1, #10
	mov	r0, #85
	ldr	r2, .L53+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #40
	mov	r0, #4
	ldr	r2, .L53+20
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #52
	mov	r0, #4
	ldr	r2, .L53+24
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #72
	mov	r0, #4
	ldr	r2, .L53+28
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #120
	mov	r0, #4
	ldr	r2, .L53+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	fillScreen
	.word	32767
	.word	state
	.word	drawString
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.size	goToInstructions, .-goToInstructions
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
	ldr	r3, .L115
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	r3, #0
	ldr	ip, .L115+4
	ldr	r10, .L115+8
	ldr	r9, .L115+12
	ldr	r5, .L115+16
	strh	ip, [r0]	@ movhi
	strh	r3, [r10]	@ movhi
	ldr	r3, .L115+20
	mov	lr, pc
	bx	r3
	ldr	fp, .L115+24
	ldr	r6, .L115+28
	ldrh	ip, [r9]
	ldr	r0, [r5]
	ldr	r8, .L115+32
	ldr	r7, .L115+36
	ldr	r4, .L115+40
.L56:
	strh	ip, [r10]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r9]	@ movhi
	cmp	r0, #5
	ldrls	pc, [pc, r0, asl #2]
	b	.L84
.L60:
	.word	.L65
	.word	.L64
	.word	.L61
	.word	.L61
	.word	.L61
	.word	.L59
.L61:
	tst	ip, #8
	beq	.L79
	tst	r3, #8
	beq	.L111
.L79:
	tst	ip, #4
	beq	.L101
	tst	r3, #4
	beq	.L81
.L101:
	mov	ip, r3
	ldr	r0, [r5]
	b	.L56
.L64:
	ldr	r3, .L115+44
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r6
	ldr	r3, .L115+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r10]
	tst	r3, #4
	beq	.L70
	ldrh	r3, [r9]
	tst	r3, #4
	beq	.L112
.L70:
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L113
.L71:
	ldr	r3, [r7]
	cmp	r3, #624
	ble	.L72
.L102:
	ldrh	ip, [r9]
.L100:
	ldr	r0, [r5]
	b	.L56
.L65:
	mov	lr, pc
	bx	fp
	mov	lr, pc
	bx	r6
	ldr	r3, .L115+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r10]
	tst	r3, #8
	ldrh	ip, [r9]
	beq	.L67
	tst	ip, #8
	beq	.L114
.L67:
	tst	r3, #4
	beq	.L100
	tst	ip, #4
	bne	.L100
	ldr	r3, .L115+56
	mov	lr, pc
	bx	r3
	ldrh	ip, [r9]
	ldr	r0, [r5]
	b	.L56
.L83:
	strh	r3, [r10]	@ movhi
	ldrh	r2, [r4, #48]
	mov	ip, r3
	mov	r3, r2
	strh	r2, [r9]	@ movhi
.L59:
	tst	ip, #8
	beq	.L83
	tst	r3, #8
	bne	.L83
	ldr	r3, .L115+20
	mov	lr, pc
	bx	r3
	ldrh	ip, [r9]
	ldr	r0, [r5]
	b	.L56
.L111:
	ldr	r3, .L115+20
	mov	lr, pc
	bx	r3
	ldrh	ip, [r10]
	ldrh	r3, [r9]
	b	.L79
.L81:
	ldr	r3, .L115+60
	mov	lr, pc
	bx	r3
	b	.L102
.L72:
	ldr	r3, .L115+64
	mov	lr, pc
	bx	r3
	ldrh	ip, [r9]
	ldr	r0, [r5]
	b	.L56
.L113:
	ldr	r3, .L115+68
	mov	lr, pc
	bx	r3
	b	.L71
.L114:
	ldr	r3, .L115+60
	mov	lr, pc
	bx	r3
	ldrh	r3, [r10]
	ldrh	ip, [r9]
	b	.L67
.L112:
	ldr	r3, .L115+72
	mov	lr, pc
	bx	r3
	b	.L70
.L84:
	mov	ip, r3
	b	.L56
.L116:
	.align	2
.L115:
	.word	mgba_open
	.word	1027
	.word	oldButtons
	.word	buttons
	.word	state
	.word	goToStart
	.word	updateStart
	.word	waitForVBlank
	.word	lives
	.word	rectArea
	.word	67109120
	.word	updateGame
	.word	drawGame
	.word	drawStart
	.word	goToInstructions
	.word	goToGame
	.word	goToWin
	.word	goToLose
	.word	goToPause
	.size	main, .-main
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	rectArea,4,4
	.comm	gameStarted,4,4
	.comm	lives,4,4
	.comm	state,4,4
	.comm	ballVy,4,4
	.comm	ballVx,4,4
	.comm	startBallOldY2,4,4
	.comm	startBallOldX2,4,4
	.comm	startBallY2,4,4
	.comm	startBallX2,4,4
	.comm	startBallOldY1,4,4
	.comm	startBallOldX1,4,4
	.comm	startBallY1,4,4
	.comm	startBallX1,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
