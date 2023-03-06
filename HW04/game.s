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
	.global	initializeGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6
	ldr	r0, [r3]
	push	{r4, r5, r6, lr}
	ldr	r2, .L6+4
	add	r0, r0, #1
	str	r0, [r3]
	mov	lr, pc
	bx	r2
	mov	r2, #1
	mov	r1, #80
	mov	lr, #120
	mov	r4, #0
	ldr	r0, .L6+8
	ldr	r3, .L6+12
	ldr	ip, .L6+16
	str	r2, [r3]
	str	r2, [r0, #16]
	str	r1, [r0]
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L6+20
	str	lr, [r0, #4]
	ldr	r5, .L6+24
	mov	r0, #3
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r1, #83886080
	mvn	r0, #32768
	mov	r2, r4
	ldr	r3, .L6+28
	strh	r0, [r1, #96]	@ movhi
	add	r1, r3, #160
.L2:
	str	r2, [r3, #8]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L2
	ldr	r3, .L6+32
	mov	lr, pc
	bx	r3
	mov	r2, #58
	ldr	r3, .L6+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L7:
	.align	2
.L6:
	.word	seed
	.word	srand
	.word	p1
	.word	gameStarted
	.word	score
	.word	rocket2Pal
	.word	DMANow
	.word	bullets
	.word	initializeEnemy
	.word	lowestY
	.size	initializeGame, .-initializeGame
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
	ldr	r2, .L11
	ldr	r3, .L11+4
	ldr	r2, [r2, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	movle	r2, #1
	push	{r4, lr}
	ldrle	r3, .L11+8
	strle	r2, [r3]
	ldr	r3, .L11+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L11+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	p1
	.word	lowestY
	.word	lost
	.word	updatePlayer
	.word	updateEnemy
	.size	updateGame, .-updateGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Score:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
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
	push	{r4, r5, r6, lr}
	mov	r0, #0
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L15+12
	mov	r3, #8
	mov	r1, #2
	mov	r0, #170
	ldr	r2, .L15+16
	mov	lr, pc
	bx	r4
	ldr	r5, .L15+20
	ldr	r3, .L15+24
	mov	r0, r5
	ldr	r2, [r3]
	ldr	r1, .L15+28
	ldr	r3, .L15+32
	mov	lr, pc
	bx	r3
	mov	r2, r5
	mov	r3, #8
	mov	r1, #2
	mov	r0, #210
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	fillScreen4
	.word	drawPlayer
	.word	drawEnemy
	.word	drawString4
	.word	.LC0
	.word	buffer
	.word	score
	.word	.LC1
	.word	sprintf
	.size	drawGame, .-drawGame
	.comm	seed,4,4
	.comm	buffer2,20,4
	.comm	buffer,20,4
	.comm	lowestY,4,4
	.comm	lost,4,4
	.comm	score,4,4
	.comm	gameStarted,4,4
	.comm	p1,20,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
