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
	mov	r2, #67108864
	push	{r4, lr}
	mov	r0, #3280
	mov	r4, #0
	ldr	ip, .L4
	ldr	r1, .L4+4
	strh	ip, [r2]	@ movhi
	ldr	r3, .L4+8
	ldr	r2, .L4+12
	strh	r0, [r1]	@ movhi
	str	r4, [r3]
	str	r4, [r2]
	ldr	ip, .L4+16
	ldr	r0, .L4+20
	ldr	r1, .L4+24
	ldr	r3, .L4+28
	ldr	r2, .L4+32
	strh	r4, [ip]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+36
	ldr	r2, .L4+40
	ldrh	r1, [r3, #48]
	ldr	r3, .L4+44
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	lr, #30
	mov	r0, #1
	mov	r2, #3
	ldr	r3, .L4+48
	ldr	ip, .L4+52
	str	r4, [r3]
	ldr	r1, .L4+56
	ldr	r3, .L4+60
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	eyeColor
	.word	isLooping
	.word	currentFrame
	.word	oldButtons
	.word	13514
	.word	bodyColor
	.word	tongueColor
	.word	21087
	.word	67109120
	.word	buttons
	.word	fillScreen
	.word	skipFrameCount
	.word	skipAmount
	.word	loopForward
	.word	speedCount
	.size	initialize, .-initialize
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	ldr	r2, .L62+4
	tst	r3, #8
	ldr	r3, [r2]
	bne	.L7
	ldr	r1, .L62+8
	ldrh	r1, [r1]
	tst	r1, #8
	bne	.L55
.L7:
	cmp	r3, #0
	beq	.L9
	ldr	r0, .L62+12
	ldr	ip, .L62+16
	ldr	r1, [r0]
	ldr	ip, [ip]
	add	r1, r1, #1
	cmp	r1, ip
	str	r1, [r0]
	bge	.L56
.L9:
	ldr	r1, .L62
	ldrh	r1, [r1, #48]
	tst	r1, #4
	bne	.L15
	ldr	r1, .L62+8
	ldrh	r1, [r1]
	tst	r1, #4
	bne	.L57
.L15:
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	ands	r3, r3, #1
	bne	.L17
	ldr	r1, .L62+8
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L58
.L17:
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	tst	r3, #2
	bne	.L19
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L59
.L19:
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	bne	.L21
	ldr	r1, .L62+8
	ldrh	r1, [r1]
	tst	r1, #32
	ldrne	r1, .L62+20
	strne	r3, [r1]
.L21:
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L22
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #16
	movne	r1, #3
	ldrne	r3, .L62+20
	strne	r1, [r3]
.L22:
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L23
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L60
.L23:
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bxne	lr
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #128
	bxeq	lr
	ldr	r1, .L62+24
	ldr	r3, [r1]
	cmp	r3, #1
	bxle	lr
	ldr	r2, [r2]
	cmp	r2, #0
	bxeq	lr
	ldr	r0, .L62+16
	ldr	r2, [r0]
	sub	r3, r3, #1
	lsl	r2, r2, #1
	str	r3, [r1]
	str	r2, [r0]
	bx	lr
.L60:
	ldr	r1, .L62+24
	ldr	r3, [r1]
	cmp	r3, #4
	bgt	.L23
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L23
	ldr	ip, .L62+16
	ldr	r0, [ip]
	add	r0, r0, r0, lsr #31
	add	r3, r3, #1
	asr	r0, r0, #1
	str	r3, [r1]
	str	r0, [ip]
	b	.L23
.L59:
	ldr	r1, .L62+20
	ldr	r3, [r1]
	cmp	r3, #0
	moveq	r3, #3
	subne	r3, r3, #1
	str	r3, [r1]
	b	.L19
.L58:
	ldr	r0, .L62+20
	ldr	r1, [r0]
	cmp	r1, #3
	addne	r1, r1, #1
	streq	r3, [r0]
	strne	r1, [r0]
	b	.L17
.L57:
	cmp	r3, #0
	moveq	r3, #1
	ldr	r1, .L62+28
	streq	r3, [r2]
	ldr	r3, [r1]
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r1]
	b	.L15
.L56:
	ldr	r1, .L62+28
	ldr	r1, [r1]
	ldr	ip, .L62+20
	cmp	r1, #0
	ldr	r1, [ip]
	bne	.L61
	cmp	r1, #0
	moveq	r1, #3
	subne	r1, r1, #1
	str	r1, [ip]
.L13:
	mov	r1, #0
	str	r1, [r0]
	b	.L9
.L55:
	rsbs	r3, r3, #1
	movcc	r3, #0
	str	r3, [r2]
	b	.L7
.L61:
	cmp	r1, #3
	moveq	r1, #0
	addne	r1, r1, #1
	str	r1, [ip]
	b	.L13
.L63:
	.align	2
.L62:
	.word	67109120
	.word	isLooping
	.word	oldButtons
	.word	skipFrameCount
	.word	skipAmount
	.word	currentFrame
	.word	speedCount
	.word	loopForward
	.size	update, .-update
	.align	2
	.global	frameOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	frameOne, %function
frameOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #24
	push	{r4, r5, r6, lr}
	ldr	r5, .L66
	ldrh	r1, [r5]
	sub	sp, sp, #8
	ldr	r4, .L66+4
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #168
	mov	r1, #45
	mov	lr, pc
	bx	r4
	ldrh	r2, [r5]
	mov	r3, #11
	str	r2, [sp]
	mov	r1, #94
	mov	r2, #20
	mov	r0, #105
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldr	r6, .L66+8
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #92
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #97
	mov	r1, #65
	mov	r5, #0
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #100
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #92
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #101
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #103
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #107
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #126
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #121
	mov	r1, #65
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #123
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #126
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L66+12
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #121
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #119
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #6
	mov	r2, #40
	mov	r1, #84
	mov	r0, #95
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #80
	mov	r2, r3
	mov	r0, #91
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #80
	mov	r2, r3
	mov	r0, #135
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #28
	mov	r1, #90
	mov	r0, #101
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #104
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #114
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	bodyColor
	.word	drawRect
	.word	eyeColor
	.word	32767
	.size	frameOne, .-frameOne
	.align	2
	.global	frameTwo
	.syntax unified
	.arm
	.fpu softvfp
	.type	frameTwo, %function
frameTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #24
	push	{r4, r5, r6, lr}
	ldr	r2, .L70
	ldrh	r1, [r2]
	sub	sp, sp, #8
	ldr	r4, .L70+4
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #168
	mov	r1, #45
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldr	r6, .L70+8
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #92
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #97
	mov	r1, #65
	mov	r5, #0
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #100
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #92
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #101
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #103
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #107
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #126
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #121
	mov	r1, #65
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #123
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #126
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L70+12
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #121
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #119
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #40
	mov	r1, #84
	mov	r0, #95
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #40
	mov	r1, #87
	mov	r0, #95
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #80
	mov	r2, r3
	mov	r0, #91
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #80
	mov	r2, r3
	mov	r0, #135
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #28
	mov	r1, #90
	mov	r0, #101
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #104
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #114
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+16
	ldrh	r2, [r3]
	mov	r1, #90
	str	r2, [sp]
	mov	r3, #15
	mov	r2, #20
	mov	r0, #105
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	bodyColor
	.word	drawRect
	.word	eyeColor
	.word	32767
	.word	tongueColor
	.size	frameTwo, .-frameTwo
	.align	2
	.global	frameThree
	.syntax unified
	.arm
	.fpu softvfp
	.type	frameThree, %function
frameThree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #24
	push	{r4, r5, r6, lr}
	ldr	r2, .L74
	ldrh	r1, [r2]
	sub	sp, sp, #8
	ldr	r4, .L74+4
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #168
	mov	r1, #45
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldr	r6, .L74+8
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #92
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #97
	mov	r1, #65
	mov	r5, #0
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #100
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #92
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #101
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #103
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #107
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #126
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #121
	mov	r1, #65
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #123
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #126
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L74+12
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #121
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #119
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #40
	mov	r1, #84
	mov	r0, #95
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r2, #40
	mov	r1, #87
	mov	r0, #95
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #80
	mov	r2, r3
	mov	r0, #91
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #80
	mov	r2, r3
	mov	r0, #135
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r2, #28
	mov	r1, #90
	mov	r0, #101
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #104
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #114
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r3, .L74+16
	ldrh	r2, [r3]
	mov	r1, #90
	str	r2, [sp]
	mov	r3, #15
	mov	r2, #20
	mov	r0, #105
	mov	lr, pc
	bx	r4
	mov	r3, #14
	mov	r2, #10
	mov	r1, #50
	mov	r0, #175
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #14
	mov	r1, #52
	mov	r0, #173
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldr	r1, .L74+20
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #175
	mov	r1, #52
	mov	lr, pc
	bx	r4
	mov	r3, #6
	mov	r1, #54
	mov	r2, r3
	mov	r0, #177
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	bodyColor
	.word	drawRect
	.word	eyeColor
	.word	32767
	.word	tongueColor
	.word	15855
	.size	frameThree, .-frameThree
	.align	2
	.global	frameFour
	.syntax unified
	.arm
	.fpu softvfp
	.type	frameFour, %function
frameFour:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #24
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L78
	ldrh	r1, [r7]
	sub	sp, sp, #12
	ldr	r4, .L78+4
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #168
	mov	r1, #45
	mov	lr, pc
	bx	r4
	ldrh	r2, [r7]
	mov	r3, #11
	str	r2, [sp]
	mov	r1, #94
	mov	r2, #20
	mov	r0, #105
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldr	r6, .L78+8
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #92
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #97
	mov	r1, #65
	mov	r5, #0
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #100
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #92
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #101
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #103
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #107
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #126
	mov	r1, #60
	mov	lr, pc
	bx	r4
	mov	r3, #10
	ldrh	r1, [r6]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #121
	mov	r1, #65
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r1, #63
	mov	r2, r3
	mov	r0, #123
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #10
	mov	r1, #59
	mov	r0, #126
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #3
	mov	r1, #61
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L78+12
	mov	r3, #2
	mov	r2, #4
	mov	r1, #63
	mov	r0, #121
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #5
	mov	r2, #2
	mov	r1, #65
	mov	r0, #119
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #6
	mov	r2, #40
	mov	r1, #84
	mov	r0, #95
	mov	lr, pc
	bx	r4
	mov	r3, #4
	str	r6, [sp]
	mov	r2, r3
	mov	r1, #80
	mov	r0, #91
	mov	lr, pc
	bx	r4
	mov	r3, #4
	str	r6, [sp]
	mov	r2, r3
	mov	r1, #80
	mov	r0, #135
	mov	lr, pc
	bx	r4
	str	r6, [sp]
	mov	r3, #4
	mov	r2, #28
	mov	r1, #90
	mov	r0, #101
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #104
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L78+16
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #114
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #10
	mov	r2, #2
	mov	r1, #84
	mov	r0, #124
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #24
	mov	r2, #20
	mov	r1, #45
	mov	r0, #170
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #20
	mov	r2, #24
	mov	r1, #47
	mov	r0, #168
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #18
	mov	r1, #48
	mov	r2, r3
	mov	r0, #171
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #12
	ldrh	r1, [r7]
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #174
	mov	r1, #51
	mov	lr, pc
	bx	r4
	mov	r3, #6
	ldr	r1, .L78+20
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #177
	mov	r1, #54
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	bodyColor
	.word	drawRect
	.word	eyeColor
	.word	32767
	.word	15855
	.word	31775
	.size	frameFour, .-frameFour
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
	ldr	r3, .L87
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L80
.L83:
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L82
.L82:
	b	frameFour
.L86:
	b	frameOne
.L85:
	b	frameTwo
.L84:
	b	frameThree
.L80:
	bx	lr
.L88:
	.align	2
.L87:
	.word	currentFrame
	.size	draw, .-draw
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
	push	{r7, lr}
	ldr	r3, .L92
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+4
	mov	lr, pc
	bx	r3
	ldr	r9, .L92+8
	ldr	r4, .L92+12
	ldr	r8, .L92+16
	ldr	r7, .L92+20
	ldr	r6, .L92+24
	ldr	r5, .L92+28
.L90:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L90
.L93:
	.align	2
.L92:
	.word	mgba_open
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.comm	speedCount,4,4
	.comm	loopForward,4,4
	.comm	skipAmount,4,4
	.comm	skipFrameCount,4,4
	.comm	isLooping,4,4
	.comm	currentFrame,4,4
	.comm	bodySize,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	tongueColor,2,2
	.comm	eyeColor,2,2
	.comm	bodyColor,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
