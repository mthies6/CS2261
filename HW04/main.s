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
	.ascii	"Space Invaders\000"
	.align	2
.LC1:
	.ascii	"Press SELECT for scores\000"
	.align	2
.LC2:
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
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r2, .L4
	mov	r0, r4
	ldr	r6, .L4+4
	ldr	r3, .L4+8
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r0, .L4+12
	ldr	r3, .L4+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L4+20
	mov	r3, r4
	mov	r2, r6
	mov	r1, #13
	mov	r0, #12
	mov	lr, pc
	bx	r5
	mov	r2, r6
	mov	r3, #90
	mov	r1, #12
	mov	r0, #11
	mov	lr, pc
	bx	r5
	mov	r3, #90
	mov	r1, #127
	mov	r0, #92
	ldr	r2, .L4+24
	mov	lr, pc
	bx	r5
	mov	r1, #137
	mov	r0, #112
	ldr	r2, .L4+28
	mov	r3, #90
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+40
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	gameStarted
	.word	.LC0
	.word	fillScreen4
	.word	space_startBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC1
	.word	.LC2
	.word	waitForVBlank
	.word	flipPage
	.word	state
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
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8
	ldr	r4, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r0, #128
	mvn	r1, #170
	mov	r2, #2
	strh	r0, [r3, #132]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	space_startPal
	.word	DMANow
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
	ldr	r3, .L14
	mov	r0, #0
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+4
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L13
.L11:
	ldr	r3, .L14+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L14+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	mov	r1, #1
	ldr	r2, .L14+20
	str	r1, [r3]
	mov	lr, pc
	bx	r2
	b	.L11
.L15:
	.align	2
.L14:
	.word	fillScreen4
	.word	gameStarted
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.word	initializeGame
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"PAUSED\000"
	.align	2
.LC4:
	.ascii	"Press SELECT to resume game\000"
	.align	2
.LC5:
	.ascii	"Press START to quit to start\000"
	.align	2
.LC6:
	.ascii	"Press LSHOULDER to go to scoreboard\000"
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
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L18
	mov	lr, pc
	bx	r3
	ldr	r4, .L18+4
	mov	r3, #8
	mov	r1, #50
	mov	r0, #101
	ldr	r2, .L18+8
	mov	lr, pc
	bx	r4
	mov	r3, #8
	mov	r1, #80
	mov	r0, #40
	ldr	r2, .L18+12
	mov	lr, pc
	bx	r4
	mov	r3, #8
	mov	r1, #90
	mov	r0, #38
	ldr	r2, .L18+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L18+20
	mov	r1, #110
	mov	r0, #20
	mov	r3, #8
	mov	lr, pc
	bx	r4
	ldr	r3, .L18+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L18+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	fillScreen4
	.word	drawString4
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"High Score:\000"
	.align	2
.LC8:
	.ascii	"%d\000"
	.text
	.align	2
	.global	goToScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToScore, %function
goToScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, #0
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	ldr	r4, .L22+4
	mov	r3, #48
	mov	r1, #30
	mov	r0, #81
	ldr	r2, .L22+8
	mov	lr, pc
	bx	r4
	ldr	r5, .L22+12
	ldr	r3, .L22+16
	mov	r0, r5
	ldr	r2, [r3]
	ldr	r1, .L22+20
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r3
	mov	r2, r5
	mov	r3, #48
	mov	r1, #30
	mov	r0, #150
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r1, #80
	mov	r0, #40
	ldr	r2, .L22+28
	mov	lr, pc
	bx	r4
	ldr	r2, .L22+32
	mov	r1, #90
	mov	r0, #38
	mov	r3, #48
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+40
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L22+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L23:
	.align	2
.L22:
	.word	fillScreen4
	.word	drawString4
	.word	.LC7
	.word	buffer
	.word	.LANCHOR0
	.word	.LC8
	.word	sprintf
	.word	.LC4
	.word	.LC5
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToScore, .-goToScore
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"YOU WIN\000"
	.align	2
.LC10:
	.ascii	"Press SELECT to play again!\000"
	.align	2
.LC11:
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
	ldr	r3, .L27
	ldr	r2, .L27+4
	ldr	r1, [r3]
	ldr	r2, [r2]
	cmp	r2, r1
	push	{r4, lr}
	strgt	r2, [r3]
	ldr	r2, .L27+8
	ldr	r3, .L27+12
	ldr	r4, .L27+16
	str	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #8
	mov	r1, #45
	mov	r0, #95
	ldr	r2, .L27+20
	mov	lr, pc
	bx	r4
	mov	r3, #8
	mov	r1, #100
	mov	r0, #42
	ldr	r2, .L27+24
	mov	lr, pc
	bx	r4
	ldr	r2, .L27+28
	mov	r1, #120
	mov	r0, #39
	mov	r3, #8
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+36
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L27+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.word	score
	.word	gameStarted
	.word	fillScreen4
	.word	drawString4
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC12:
	.ascii	"YOU LOSE\000"
	.align	2
.LC13:
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
	mov	r3, #67108864
	mov	r1, #59
	mov	r2, #21248
	ldr	r0, .L32
	push	{r4, lr}
	strh	r1, [r3, #96]	@ movhi
	strh	r2, [r3, #98]	@ movhi
	strh	r0, [r3, #100]	@ movhi
	mov	r0, #0
	ldr	r2, .L32+4
	ldr	r1, .L32+8
	ldr	r3, [r1]
	ldr	r1, [r2]
	cmp	r3, r1
	strgt	r3, [r2]
	ldr	r1, .L32+12
	ldr	r2, .L32+16
	ldr	r3, .L32+20
	ldr	r4, .L32+24
	str	r0, [r1]
	str	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #8
	mov	r1, #45
	mov	r0, #95
	ldr	r2, .L32+28
	mov	lr, pc
	bx	r4
	mov	r3, #8
	mov	r1, #100
	mov	r0, #47
	ldr	r2, .L32+32
	mov	lr, pc
	bx	r4
	ldr	r2, .L32+36
	mov	r1, #120
	mov	r0, #39
	mov	r3, #8
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+44
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L32+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	-31221
	.word	.LANCHOR0
	.word	score
	.word	gameStarted
	.word	lost
	.word	fillScreen4
	.word	drawString4
	.word	.LC12
	.word	.LC13
	.word	.LC11
	.word	waitForVBlank
	.word	flipPage
	.word	state
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L107
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	r2, #0
	ldr	ip, .L107+4
	ldr	r3, .L107+8
	ldr	r10, .L107+12
	strh	ip, [r0]	@ movhi
	str	r2, [r3]
	ldr	r3, .L107+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L107+20
	ldr	fp, .L107+24
	ldrh	ip, [r10]
	ldr	r7, .L107+28
	ldr	r6, .L107+32
	ldr	r9, .L107+36
	ldr	r8, .L107+40
	ldr	r4, .L107+44
.L35:
	ldr	r2, [r5]
.L36:
	strh	ip, [fp]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L54
.L38:
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L37
	.word	.L37
	.word	.L37
.L37:
	tst	ip, #8
	beq	.L64
	tst	r3, #8
	beq	.L101
.L64:
	mov	r2, ip
	mov	ip, r3
.L53:
	tst	r2, #4
	beq	.L35
	tst	ip, #4
	bne	.L35
	ldr	r3, .L107+48
	mov	lr, pc
	bx	r3
	b	.L89
.L42:
	ldr	r3, .L107+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+56
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	ldrh	r3, [fp]
	tst	r3, #4
	beq	.L46
	ldrh	r3, [r10]
	tst	r3, #4
	beq	.L102
.L46:
	ldr	r3, [r9]
	cmp	r3, #400
	bge	.L103
	ldr	r3, [r8]
	cmp	r3, #1
	beq	.L48
.L89:
	ldrh	ip, [r10]
	b	.L35
.L41:
	tst	ip, #8
	beq	.L49
	tst	r3, #8
	beq	.L104
.L49:
	tst	ip, #4
	beq	.L58
	tst	r3, #4
	beq	.L105
.L58:
	mov	r2, ip
	mov	ip, r3
.L50:
	tst	r2, #512
	beq	.L35
	tst	ip, #512
	bne	.L35
	b	.L88
.L43:
	tst	ip, #8
	beq	.L44
	tst	r3, #8
	beq	.L106
.L44:
	tst	ip, #4
	beq	.L56
	tst	r3, #4
	bne	.L56
.L88:
	ldr	r3, .L107+60
	mov	lr, pc
	bx	r3
	ldrh	ip, [r10]
	b	.L35
.L56:
	mov	ip, r3
	b	.L35
.L101:
	ldr	r3, .L107+16
	mov	lr, pc
	bx	r3
	ldrh	r2, [fp]
	ldrh	ip, [r10]
	b	.L53
.L103:
	ldr	r3, .L107+64
	mov	lr, pc
	bx	r3
	ldr	r3, [r8]
	cmp	r3, #1
	bne	.L89
.L48:
	ldr	r3, .L107+68
	mov	lr, pc
	bx	r3
	ldrh	ip, [r10]
	b	.L35
.L106:
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	ldr	r3, .L107+48
	mov	lr, pc
	bx	r3
	ldrh	ip, [fp]
	ldrh	r3, [r10]
	b	.L44
.L102:
	ldr	r3, .L107+72
	mov	lr, pc
	bx	r3
	b	.L46
.L104:
	ldr	r3, .L107+16
	mov	lr, pc
	bx	r3
	ldrh	ip, [fp]
	ldrh	r3, [r10]
	b	.L49
.L105:
	ldr	r3, .L107+48
	mov	lr, pc
	bx	r3
	ldrh	r2, [fp]
	ldrh	ip, [r10]
	b	.L50
.L54:
	mov	ip, r3
	b	.L36
.L108:
	.align	2
.L107:
	.word	mgba_open
	.word	1044
	.word	gameStarted
	.word	buttons
	.word	initialize
	.word	state
	.word	oldButtons
	.word	waitForVBlank
	.word	flipPage
	.word	score
	.word	lost
	.word	67109120
	.word	goToGame
	.word	updateGame
	.word	drawGame
	.word	goToScore
	.word	goToWin
	.word	goToLose
	.word	goToPause
	.size	main, .-main
	.comm	state,4,4
	.comm	buffer,20,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	NOTES,2,2
	.comm	lowestY,4,4
	.comm	lost,4,4
	.comm	score,4,4
	.comm	gameStarted,4,4
	.comm	p1,20,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	highScore, %object
	.size	highScore, 4
highScore:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
