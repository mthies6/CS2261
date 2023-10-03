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
	.file	"puzzle.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"cursor x: %d\000"
	.text
	.align	2
	.global	initializePuzzle
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePuzzle, %function
initializePuzzle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #4352
	push	{r4, r5, r6, lr}
	ldr	r4, .L18
	strh	r2, [r3]	@ movhi
	ldr	r3, [r4]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L2
.L4:
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L11
	.word	.L10
	.word	.L9
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L5
	.word	.L3
.L3:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+8
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
.L2:
	add	r2, r3, r3, lsl #2
	ldr	r4, .L18+16
	add	r3, r3, r2, lsl #1
	add	r4, r4, r3, lsl #2
	mov	r1, #4
	ldr	r0, [r4, #24]
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	mov	r5, #8
	ldr	r3, .L18+24
	ldr	r2, [r4, #32]
	ldr	ip, .L18+28
	ldr	r1, [r4, #28]
	str	r2, [r3, #4]
	str	r0, [ip]
	ldr	r2, .L18+32
	ldr	r0, .L18+36
	str	r1, [r3]
	str	r5, [r3, #20]
	str	r5, [r3, #16]
	mov	lr, pc
	bx	r2
	mov	r1, #192
	mov	r2, #56
	ldr	r3, .L18+40
	str	r5, [r3, #20]
	str	r5, [r3, #16]
	stm	r3, {r1, r2}
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+44
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L14:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+48
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L13:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+52
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L12:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+56
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L11:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+60
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L10:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+64
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L9:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+68
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L8:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+72
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L7:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+76
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L6:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+80
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L5:
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L18+4
	ldr	r1, .L18+84
	ldr	r5, .L18+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L2
.L19:
	.align	2
.L18:
	.word	currentBug
	.word	100726784
	.word	rosyMapleMothMap
	.word	DMANow
	.word	bugs
	.word	calloc
	.word	cursor
	.word	playerPuzzle
	.word	mgba_printf
	.word	.LC0
	.word	brush
	.word	blueMorphoMap
	.word	wormMap
	.word	bumbleBeeMap
	.word	prayingMantisMap
	.word	violinBeetleMap
	.word	leafBugMap
	.word	grasshopperMap
	.word	stagBeetleMap
	.word	shieldBugMap
	.word	dragonHeadedCatepillarMap
	.word	acornWeevilMap
	.size	initializePuzzle, .-initializePuzzle
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"cheated\000"
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	updatePuzzle
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePuzzle, %function
updatePuzzle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L80
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L21
	tst	r3, #256
	bne	.L22
.L21:
	ldr	fp, .L80+4
.L69:
	ldr	r4, [fp]
	ldr	r7, .L80+8
	lsl	r6, r4, #2
.L23:
	ldr	ip, .L80+12
	tst	r3, #32
	ldr	r1, [ip]
	beq	.L28
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L73
.L28:
	tst	r3, #16
	beq	.L29
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L74
.L29:
	tst	r3, #64
	ldr	r0, [ip, #4]
	beq	.L30
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L75
.L30:
	tst	r3, #128
	beq	.L31
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L76
.L31:
	ldr	r8, .L80+20
	tst	r3, #2
	ldr	lr, [r8]
	beq	.L32
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L77
.L32:
	tst	r3, #1
	beq	.L34
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L78
.L34:
	mov	r5, #0
	add	r2, r6, r4
	add	r2, r4, r2, lsl #1
	add	r2, r7, r2, lsl #2
	ldr	ip, [r2, #24]
	ldr	r2, .L80+24
	and	r0, r0, #255
	strh	r0, [r2]	@ movhi
	ldr	r0, .L80+28
	ldrb	r8, [r8, #4]	@ zero_extendqisi2
	and	r1, r1, r0
	and	lr, lr, r0
	cmp	ip, r5
	strh	r8, [r2, #8]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	lr, [r2, #10]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r2, #12]	@ movhi
	ble	.L37
	ldr	r9, .L80+32
	ldr	r10, .L80+36
	ldr	r8, .L80+40
	b	.L40
.L39:
	ldr	r4, [fp]
	add	r3, r4, r4, lsl #2
	add	r3, r4, r3, lsl #1
	add	r3, r7, r3, lsl #2
	ldr	ip, [r3, #24]
	cmp	ip, r5
	lsl	r6, r4, #2
	ble	.L72
.L40:
	add	r3, r6, r4
	add	r3, r4, r3, lsl #1
	add	r3, r7, r3, lsl #2
	ldr	r2, [r3, #20]
	ldr	r0, [r9]
	ldr	r2, [r2, r5, lsl #2]
	ldr	r1, [r0, r5, lsl #2]
	cmp	r1, r2
	sub	ip, ip, #1
	bne	.L72
	cmp	ip, r5
	add	r5, r5, #1
	bne	.L39
	mov	r2, #1
	str	r2, [r3, #16]
	mov	lr, pc
	bx	r10
	mov	r3, #83886080
	mvn	r2, #32768
	mov	ip, #111
	mov	r0, #114
	ldr	lr, .L80+44
	ldr	r1, .L80+48
	str	lr, [r8, #3304]
	strh	r2, [r3, #12]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, .L80+52
	strh	ip, [r1]	@ movhi
	ldr	r2, .L80+56
	strh	r0, [r3]	@ movhi
	ldr	r1, .L80+60
	ldr	r3, .L80+64
	str	r1, [r8, #3308]
	str	r3, [r8, #3320]
	str	r2, [r8, #3316]
	ldr	r3, .L80+68
	mov	lr, pc
	bx	r3
	b	.L39
.L72:
	ldr	r3, .L80
	ldrh	r3, [r3]
.L37:
	tst	r3, #8
	beq	.L20
	ldr	r3, .L80+16
	ldrh	r3, [r3]
	ands	r5, r3, #8
	bne	.L20
	add	r6, r6, r4
	add	r4, r4, r6, lsl #1
	add	r4, r7, r4, lsl #2
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L79
.L20:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L78:
	add	r2, r6, r4
	add	r2, r4, r2, lsl #1
	add	r2, r7, r2, lsl #2
	ldr	r5, [r2, #16]
	cmp	r5, #0
	bne	.L34
	cmp	lr, #200
	beq	.L35
	cmp	lr, #208
	beq	.L36
	cmp	lr, #192
	bne	.L34
	ldr	r4, [r2, #32]
	ldr	lr, [r2, #28]
	ldr	r6, [r2, #36]
	sub	r2, r0, r4
	sub	lr, r1, lr
	add	r4, r2, #7
	cmp	r2, #0
	movlt	r2, r4
	add	r4, lr, #7
	cmp	lr, #0
	movlt	lr, r4
	add	r4, r6, #7
	cmp	r6, #0
	movlt	r6, r4
	add	r4, r0, #7
	cmp	r0, #0
	movlt	r0, r4
	add	r4, r1, #7
	cmp	r1, #0
	movlt	r1, r4
	mov	r4, #1
	ldr	r9, .L80+32
	asr	r0, r0, #3
	asr	r2, r2, #3
	asr	r6, r6, #3
	lsl	r0, r0, #5
	asr	lr, lr, #3
	mla	lr, r6, r2, lr
	add	r1, r0, r1, asr #3
	ldr	r6, .L80+72
	ldr	r0, [r9]
	lsl	r2, r1, r4
.L71:
	strh	r4, [r6, r2]	@ movhi
	str	r5, [r0, lr, lsl #2]
	ldr	r4, [fp]
	ldr	r0, [ip, #4]
	ldr	r1, [ip]
	ldr	lr, [r8]
	lsl	r6, r4, #2
	b	.L34
.L77:
	cmp	lr, #208
	moveq	lr, #192
	ldrne	r2, [r8, #16]
	addne	lr, lr, r2
	str	lr, [r8]
	b	.L32
.L76:
	add	r2, r6, r4
	add	r2, r4, r2, lsl #1
	add	r2, r7, r2, lsl #2
	add	lr, r2, #36
	ldmda	lr, {r2, lr}
	add	r2, lr, r2
	sub	r2, r2, #8
	cmp	r2, r0
	ldrgt	r2, [ip, #20]
	addgt	r0, r0, r2
	strgt	r0, [ip, #4]
	b	.L31
.L75:
	add	r2, r6, r4
	add	r2, r4, r2, lsl #1
	add	r2, r7, r2, lsl #2
	ldr	r2, [r2, #32]
	cmp	r2, r0
	ldrlt	r2, [ip, #20]
	sublt	r0, r0, r2
	strlt	r0, [ip, #4]
	b	.L30
.L74:
	add	r2, r6, r4
	add	r2, r4, r2, lsl #1
	add	r2, r7, r2, lsl #2
	ldr	r0, [r2, #36]
	ldr	r2, [r2, #28]
	add	r2, r0, r2
	sub	r2, r2, #8
	cmp	r2, r1
	ldrgt	r2, [ip, #16]
	addgt	r1, r1, r2
	strgt	r1, [ip]
	b	.L29
.L73:
	add	r2, r6, r4
	add	r2, r4, r2, lsl #1
	add	r2, r7, r2, lsl #2
	ldr	r2, [r2, #28]
	cmp	r2, r1
	ldrlt	r2, [ip, #16]
	sublt	r1, r1, r2
	strlt	r1, [ip]
	b	.L28
.L22:
	ldr	r2, .L80+16
	ldrh	r2, [r2]
	ands	r5, r2, #768
	ldr	fp, .L80+4
	bne	.L69
	ldr	r3, .L80+76
	ldr	r0, .L80+80
	mov	lr, pc
	bx	r3
	ldr	r4, [fp]
	ldr	r7, .L80+8
	add	r3, r4, r4, lsl #2
	add	r3, r4, r3, lsl #1
	add	r3, r7, r3, lsl #2
	ldr	r10, [r3, #24]
	cmp	r10, #0
	lsl	r6, r4, #2
	ble	.L70
	mov	r9, r3
	ldr	r8, [r3, #20]
	sub	r8, r8, #4
	add	r10, r8, r10, lsl #2
.L27:
	ldr	r3, [r8, #4]!
	cmp	r3, #0
	bne	.L26
	ldr	r1, [r9, #36]
	cmp	r1, #0
	add	r3, r1, #7
	movlt	r1, r3
	mov	r0, r5
	ldr	r3, .L80+84
	asr	r1, r1, #3
	mov	lr, pc
	bx	r3
	ldr	r2, [r9, #32]
	ldr	r3, [r9, #28]
	add	ip, r2, #7
	cmp	r2, #0
	movlt	r2, ip
	add	ip, r3, #7
	cmp	r3, #0
	movlt	r3, ip
	add	r3, r1, r3, asr #3
	mov	r1, #3	@ movhi
	add	r2, r0, r2, asr #3
	add	r3, r3, r2, lsl #5
	ldr	r2, .L80+72
	lsl	r3, r3, #1
	strh	r1, [r2, r3]	@ movhi
.L26:
	cmp	r10, r8
	add	r5, r5, #1
	bne	.L27
.L70:
	ldr	r3, .L80
	ldrh	r3, [r3]
	b	.L23
.L79:
	ldr	r3, .L80+88
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mvn	r2, #49664
	strh	r5, [r3, #12]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	b	.L20
.L36:
	ldr	r4, [r2, #32]
	ldr	lr, [r2, #28]
	ldr	r6, [r2, #36]
	sub	r2, r0, r4
	sub	lr, r1, lr
	add	r4, r2, #7
	cmp	r2, #0
	movlt	r2, r4
	add	r4, lr, #7
	cmp	lr, #0
	movlt	lr, r4
	add	r4, r6, #7
	cmp	r6, #0
	movlt	r6, r4
	add	r4, r0, #7
	cmp	r0, #0
	movlt	r0, r4
	add	r4, r1, #7
	cmp	r1, #0
	movlt	r1, r4
	mov	r4, #1
	mov	r5, #2
	asr	r2, r2, #3
	asr	r6, r6, #3
	asr	lr, lr, #3
	mla	lr, r6, r2, lr
	ldr	r9, .L80+32
	asr	r0, r0, #3
	lsl	r0, r0, #5
	add	r1, r0, r1, asr #3
	ldr	r6, .L80+72
	ldr	r0, [r9]
	lsl	r2, r1, r4
	strh	r5, [r6, r2]	@ movhi
	str	r4, [r0, lr, lsl #2]
	ldr	r4, [fp]
	ldr	r0, [ip, #4]
	ldr	r1, [ip]
	ldr	lr, [r8]
	lsl	r6, r4, r5
	b	.L34
.L35:
	ldr	r4, [r2, #32]
	ldr	lr, [r2, #28]
	ldr	r6, [r2, #36]
	sub	r2, r0, r4
	sub	lr, r1, lr
	add	r4, r2, #7
	cmp	r2, #0
	movlt	r2, r4
	add	r4, lr, #7
	cmp	lr, #0
	movlt	lr, r4
	add	r4, r6, #7
	cmp	r6, #0
	movlt	r6, r4
	add	r4, r0, #7
	cmp	r0, #0
	movlt	r0, r4
	add	r4, r1, #7
	cmp	r1, #0
	movlt	r1, r4
	mov	r4, #3
	asr	r0, r0, r4
	lsl	r0, r0, #5
	ldr	r9, .L80+32
	asr	r2, r2, r4
	asr	r6, r6, r4
	add	r1, r0, r1, asr r4
	asr	lr, lr, r4
	mla	lr, r6, r2, lr
	ldr	r0, [r9]
	ldr	r6, .L80+72
	lsl	r2, r1, #1
	b	.L71
.L81:
	.align	2
.L80:
	.word	oldButtons
	.word	currentBug
	.word	bugs
	.word	cursor
	.word	buttons
	.word	brush
	.word	shadowOAM
	.word	511
	.word	playerPuzzle
	.word	free
	.word	100724736
	.word	6553713
	.word	100728038
	.word	100728050
	.word	6291571
	.word	7471218
	.word	7536753
	.word	playSolveEffect
	.word	100726784
	.word	mgba_printf
	.word	.LC1
	.word	__aeabi_idivmod
	.word	goToRoom
	.size	updatePuzzle, .-updatePuzzle
	.comm	playerPuzzle,4,4
	.comm	brush,52,4
	.comm	cursor,52,4
	.comm	popupY,4,4
	.comm	popupX,4,4
	.comm	popupTime,4,4
	.comm	alertDuration,4,4
	.comm	seconds,4,4
	.comm	solveEffect,28,4
	.comm	song,28,4
	.comm	currentBug,4,4
	.comm	gameStarted,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
