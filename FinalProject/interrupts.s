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
	.file	"interrupts.c"
	.text
	.align	2
	.global	initializeSprayInterrupts
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeSprayInterrupts, %function
initializeSprayInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #3
	mov	r4, #0
	ldr	r1, .L4
	ldr	r3, .L4+4
	ldr	r5, .L4+8
	str	r4, [r1]
	str	r2, [r3]
	mov	lr, pc
	bx	r5
	ldr	r2, .L4+12
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #2
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3
	ldr	r3, .L4+16
	add	r0, r0, #3
	str	r0, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+20
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #3
	ldr	r2, .L4+24
	sub	r3, r0, r3
	add	r3, r3, #24
	str	r3, [r2]
	mov	lr, pc
	bx	r5
	mov	ip, #49152
	mov	r1, #195
	ldr	r2, .L4+28
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #5
	add	r2, r3, r3, lsl #2
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3
	ldr	r2, .L4+32
	ldr	r3, .L4+36
	add	r0, r0, #24
	str	r0, [r2]
	strh	r4, [r3, #10]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r1, [r3, #10]	@ movhi
	bx	lr
.L5:
	.align	2
.L4:
	.word	seconds
	.word	alertDuration
	.word	rand
	.word	-1840700269
	.word	popupTime
	.word	1570730897
	.word	popupX
	.word	-770891565
	.word	popupY
	.word	67109120
	.size	initializeSprayInterrupts, .-initializeSprayInterrupts
	.align	2
	.global	setUpTimers
	.syntax unified
	.arm
	.fpu softvfp
	.type	setUpTimers, %function
setUpTimers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #33
	str	lr, [sp, #-4]!
	mov	r0, #67108864
	mov	lr, #1
	mov	ip, #8
	ldr	r3, .L8
	ldr	r2, .L8+4
	strh	r1, [r3]	@ movhi
	ldr	r1, .L8+8
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2, #4092]
	bx	lr
.L9:
	.align	2
.L8:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setUpTimers, .-setUpTimers
	.align	2
	.global	setupSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L11
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_ui2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSong
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSong, %function
playSong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L15+8
	mov	r3, #910163968
	mov	r1, r6
	mov	r0, #1
	ldr	r2, .L15+12
	ldr	r4, .L15+16
	mov	lr, pc
	bx	r4
	mov	r5, #0
	mvn	ip, #1520
	mov	r2, #1
	mov	r1, #128
	ldr	r0, .L15+20
	ldr	r4, .L15+24
	ldr	r3, .L15+28
	ldr	r0, [r0]
	strh	r5, [r3, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	str	r6, [r4]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	ldr	r3, .L15+32
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r3
	ldr	r6, .L15+36
	adr	r3, .L15
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r6
	mov	r2, #0
	ldr	r6, .L15+40
	ldr	r3, .L15+44
	mov	lr, pc
	bx	r6
	ldr	r3, .L15+48
	mov	lr, pc
	bx	r3
	str	r5, [r4, #20]
	str	r0, [r4, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	.align	3
.L15:
	.word	1443109011
	.word	1078844686
	.word	looping_data
	.word	67109024
	.word	DMANow
	.word	looping_length
	.word	song
	.word	67109120
	.word	__aeabi_ui2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSong, .-playSong
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L33
	ldrh	r1, [r3, #2]
	tst	r1, #32
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L18
	ldr	r0, .L33+4
	ldr	r3, [r0]
	ldr	r1, .L33+8
	add	r3, r3, #1
	smull	r2, r1, r3, r1
	asr	r2, r3, #31
	add	r1, r1, r3
	rsb	r2, r2, r1, asr #5
	rsb	r2, r2, r2, lsl #4
	sub	r3, r3, r2, lsl #2
	str	r3, [r0]
.L18:
	ldr	r3, .L33
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L20
	ldr	r3, .L33+12
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L22
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	bge	.L32
.L22:
	ldr	r3, .L33+16
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L20
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	blt	.L20
	mov	r2, #0
	ldr	r1, .L33+20
	ldr	r0, .L33+24
	ldr	r1, [r1]
	strh	r2, [r0, #6]	@ movhi
	str	r2, [r3, #8]
	str	r2, [r1, #32]
.L20:
	mov	r1, #1
	ldr	r3, .L33
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L32:
	bl	playSong
	b	.L22
.L34:
	.align	2
.L33:
	.word	67109376
	.word	seconds
	.word	-2004318071
	.word	song
	.word	solveEffect
	.word	dma
	.word	67109120
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	playSolveEffect
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSolveEffect, %function
playSolveEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L37+8
	mov	r3, #910163968
	mov	r1, r6
	mov	r0, #2
	ldr	r2, .L37+12
	ldr	r4, .L37+16
	mov	lr, pc
	bx	r4
	mov	r5, #0
	mvn	ip, #1520
	mov	r2, #1
	mov	r1, #128
	ldr	r0, .L37+20
	ldr	r4, .L37+24
	ldr	r3, .L37+28
	ldr	r0, [r0]
	strh	r5, [r3, #6]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	stmib	r4, {r0, r2, r5}
	str	r6, [r4]
	ldr	r3, .L37+32
	mov	lr, pc
	bx	r3
	ldr	r6, .L37+36
	adr	r3, .L37
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r6
	mov	r2, #0
	ldr	r6, .L37+40
	ldr	r3, .L37+44
	mov	lr, pc
	bx	r6
	ldr	r3, .L37+48
	mov	lr, pc
	bx	r3
	str	r5, [r4, #20]
	str	r0, [r4, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	.align	3
.L37:
	.word	1443109011
	.word	1078844686
	.word	solve_data
	.word	67109028
	.word	DMANow
	.word	solve_length
	.word	solveEffect
	.word	67109120
	.word	__aeabi_ui2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSolveEffect, .-playSolveEffect
	.comm	solveEffect,28,4
	.comm	song,28,4
	.comm	popupY,4,4
	.comm	popupX,4,4
	.comm	popupTime,4,4
	.comm	alertDuration,4,4
	.comm	seconds,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
