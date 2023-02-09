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
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	mov	r1, #3
	mov	ip, #31
	ldr	r0, .L4
	str	lr, [sp, #-4]!
	strh	r0, [r3]	@ movhi
	ldr	lr, .L4+4
	ldr	r3, .L4+8
	ldr	r0, .L4+12
	strh	r2, [lr]	@ movhi
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	strh	ip, [r3, #16]	@ movhi
	str	r3, [r0]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	oldButtons
	.word	player
	.word	ptr
	.size	initialize, .-initialize
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Heyyy\000"
	.text
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #10
	push	{r4, lr}
	mov	r0, r1
	ldr	r4, .L8
	ldr	r3, .L8+4
	ldr	r2, .L8+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	drawString
	.word	32767
	.word	.LC0
	.size	start, .-start
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	draw, .-draw
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"PAUSED\000"
	.align	2
.LC2:
	.ascii	"Press SELECT to continue\000"
	.align	2
.LC3:
	.ascii	"Press START to quit\000"
	.text
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L13
	ldr	r4, .L13+4
	mov	r3, r5
	mov	r1, #10
	mov	r0, #80
	ldr	r2, .L13+8
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #90
	mov	r0, #15
	ldr	r2, .L13+12
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #100
	mov	r0, #15
	ldr	r2, .L13+16
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	32767
	.word	drawString
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	pause, .-pause
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
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #0
	mov	r0, #3
	mov	lr, #31
	ldr	r2, .L33+4
	ldr	r7, .L33+8
	strh	r2, [r3]	@ movhi
	ldr	r4, .L33+12
	ldr	r2, .L33+16
	ldr	ip, .L33+20
	ldr	r3, [r7]
	strh	r1, [r4]	@ movhi
	str	r1, [r2]
	str	r1, [r2, #4]
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	strh	lr, [r2, #16]	@ movhi
	str	r2, [ip]
	str	r0, [r2, #20]
	str	r0, [r2, #24]
	ldr	fp, .L33+24
	ldr	r6, .L33+28
	ldr	r8, .L33+32
	ldr	r5, .L33+36
	ldr	r10, .L33+40
	ldr	r9, .L33+44
.L17:
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L17
.L19:
	.word	.L22
	.word	.L21
	.word	.L20
	.word	.L18
	.word	.L18
.L18:
	mov	lr, pc
	bx	r6
	ldr	r3, [r7]
	b	.L17
.L21:
	ldr	r3, .L33+48
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L20
	ldrh	r0, [r5, #48]
	ands	r0, r0, #4
	moveq	r3, #2
	streq	r3, [r7]
	ldreq	r3, .L33+52
	moveq	lr, pc
	bxeq	r3
.L20:
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r8
	ldr	r3, [r7]
	b	.L17
.L22:
	mov	r1, #10
	mov	r3, r10
	mov	r0, r1
	mov	r2, r9
	mov	lr, pc
	bx	fp
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L23
	ldrh	r0, [r5, #48]
	ands	r0, r0, #8
	bne	.L23
	ldr	r3, .L33+52
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r7]
	b	.L17
.L23:
	ldr	r3, [r7]
	b	.L17
.L34:
	.align	2
.L33:
	.word	mgba_open
	.word	1027
	.word	.LANCHOR0
	.word	oldButtons
	.word	player
	.word	ptr
	.word	drawString
	.word	waitForVBlank
	.word	pause
	.word	67109120
	.word	32767
	.word	.LC0
	.word	game
	.word	fillScreen
	.size	main, .-main
	.text
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
	push	{r4, lr}
	ldr	r3, .L37
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L37+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	.align	2
.L37:
	.word	fillScreen
	.word	.LANCHOR0
	.size	goToGame, .-goToGame
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
	push	{r4, lr}
	ldr	r2, .L41
	mov	r0, #0
	ldr	r3, .L41+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.word	fillScreen
	.size	goToPause, .-goToPause
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
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L44
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
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
	@ link register save eliminated.
	mov	r2, #4
	ldr	r3, .L47
	str	r2, [r3]
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.size	goToLose, .-goToLose
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
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L50
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.size	goToStart, .-goToStart
	.comm	oldButtons,2,2
	.global	state
	.comm	ptr,4,4
	.comm	player,28,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	state, %object
	.size	state, 4
state:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
