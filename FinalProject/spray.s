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
	.file	"spray.c"
	.text
	.align	2
	.global	initializeSpray
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeSpray, %function
initializeSpray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L10
	mov	lr, pc
	bx	r3
	ldr	r4, .L10+4
	ldr	r2, .L10+8
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L10+12
	mov	lr, pc
	bx	r4
	mov	r2, #0
.L2:
	lsl	r3, r2, #1
	add	r3, r3, #100663296
	add	r3, r3, #63488
	ldrh	r1, [r3]
	add	r2, r2, #1
	orr	r1, r1, #8192
	cmp	r2, #1024
	strh	r1, [r3]	@ movhi
	bne	.L2
	ldr	r3, .L10+16
	mov	lr, pc
	bx	r3
	mov	r2, r0
	ldr	r0, .L10+20
	smull	r3, r1, r0, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3, lsl #2
	ldr	ip, .L10+24
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	add	r2, ip, r2, lsl #2
	ldr	r2, [r2, #16]
	ldr	lr, .L10+28
	cmp	r2, #1
	str	r3, [lr]
	bne	.L3
.L4:
	add	r2, r3, #1
	smull	r3, r1, r0, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3, lsl #2
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	add	r2, ip, r2, lsl #2
	ldr	r2, [r2, #16]
	cmp	r2, #1
	beq	.L4
	str	r3, [lr]
.L3:
	mov	r2, #10
	mov	r0, #3
	mov	r1, #20
	ldr	r3, .L10+32
	pop	{r4, lr}
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #40]
	str	r1, [r3, #32]
	bx	lr
.L11:
	.align	2
.L10:
	.word	initializeSprayInterrupts
	.word	DMANow
	.word	100726784
	.word	sprayScreenMap
	.word	rand
	.word	715827883
	.word	bugs
	.word	currentBug
	.word	sprayBottle
	.size	initializeSpray, .-initializeSpray
	.align	2
	.global	newPopup
	.syntax unified
	.arm
	.fpu softvfp
	.type	newPopup, %function
newPopup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #4
	ldr	r3, .L17
	ldr	r3, [r3]
	ldr	r0, .L17+4
	ldr	r1, .L17+8
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	ldr	r4, .L17+12
	ldr	r3, [r0]
	add	r2, r1, r2, lsl #2
	ldr	r0, [r2, #24]
	ldr	ip, .L17+16
	ldrb	r1, [r4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r2, .L17+20
	lsr	r3, r3, #23
	orr	r3, r3, ip
	orr	r1, r1, ip
	cmp	r0, #144
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	beq	.L13
	cmp	r0, #196
	ldreq	r3, .L17+24
	strheq	r3, [r2, #4]	@ movhi
.L12:
	pop	{r4, lr}
	bx	lr
.L13:
	ldr	r3, .L17+28
	pop	{r4, lr}
	strh	r3, [r2, #4]	@ movhi
	bx	lr
.L18:
	.align	2
.L17:
	.word	currentBug
	.word	popupX
	.word	bugs
	.word	popupY
	.word	-32768
	.word	shadowOAM
	.word	8196
	.word	4100
	.size	newPopup, .-newPopup
	.global	__aeabi_idivmod
	.align	2
	.global	updateSpray
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpray, %function
updateSpray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L36
	ldr	r5, .L36+4
	ldr	r2, [r4]
	ldr	r3, [r5]
	cmp	r2, r3
	bge	.L20
	ldr	r4, .L36+8
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	ldr	r1, [r4, #36]
	beq	.L33
.L21:
	ldr	r3, [r4, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r2, .L36+12
	lsl	r1, r1, #8
	add	r1, r1, #6
	and	r2, r2, r1
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldr	r1, .L36+16
	orr	r2, r2, #4096
	strh	r2, [r1, #12]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	r3, [r1, #10]	@ movhi
.L19:
	pop	{r4, r5, r6, lr}
	bx	lr
.L20:
	beq	.L34
.L23:
	ldr	r1, .L36+20
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L24
	ldr	r1, .L36+24
	ldrh	r1, [r1]
	ands	r1, r1, #1
	beq	.L35
.L24:
	ldr	r1, .L36+28
	ldr	r1, [r1]
	add	r3, r3, r1
	cmp	r3, r2
	bne	.L19
	mov	r1, #0
	mov	r0, #512
	ldr	r2, .L36+32
	ldr	r3, .L36+16
	strh	r0, [r3]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	ldr	r3, .L36+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+40
	mov	lr, pc
	bx	r3
	mov	r2, r0
	ldr	r0, .L36+44
	smull	r3, r1, r0, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3, lsl #2
	ldr	ip, .L36+48
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	add	r2, ip, r2, lsl #2
	ldr	r2, [r2, #16]
	ldr	lr, .L36+52
	cmp	r2, #1
	str	r3, [lr]
	bne	.L19
.L26:
	add	r2, r3, #1
	smull	r3, r1, r0, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3, lsl #2
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	add	r2, ip, r2, lsl #2
	ldr	r2, [r2, #16]
	cmp	r2, #1
	beq	.L26
	str	r3, [lr]
	b	.L19
.L33:
	ldr	r3, .L36+56
	add	r0, r1, #1
	ldr	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	mov	r3, #20
	str	r1, [r4, #36]
	str	r3, [r4, #32]
	b	.L21
.L34:
	mov	r2, #512
	ldr	r3, .L36+16
	strh	r2, [r3, #8]	@ movhi
	bl	newPopup
	ldr	r3, [r5]
	ldr	r2, [r4]
	cmp	r2, r3
	bge	.L23
	b	.L19
.L35:
	ldr	r2, .L36+32
	ldr	r3, .L36+60
	strh	r1, [r2, #10]	@ movhi
	str	r1, [r4]
	mov	lr, pc
	bx	r3
	b	.L19
.L37:
	.align	2
.L36:
	.word	seconds
	.word	popupTime
	.word	sprayBottle
	.word	1022
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	alertDuration
	.word	67109120
	.word	initializeSprayInterrupts
	.word	rand
	.word	715827883
	.word	bugs
	.word	currentBug
	.word	__aeabi_idivmod
	.word	goToPuzzle
	.size	updateSpray, .-updateSpray
	.comm	sprayBottle,52,4
	.comm	popupY,4,4
	.comm	popupX,4,4
	.comm	popupTime,4,4
	.comm	alertDuration,4,4
	.comm	seconds,4,4
	.comm	currentBug,4,4
	.comm	gameStarted,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
