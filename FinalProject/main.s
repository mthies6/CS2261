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
	push	{r4, r5, r6, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	ldr	r4, .L8+12
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+28
	ldr	r1, .L8+32
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r3, #5888
	mov	r2, #7936
	ldr	r1, .L8+36
	strh	r3, [r5]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	strh	r1, [r5, #10]	@ movhi
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r4
	ldr	r2, .L8+44
	mov	r3, #8192
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L8+48
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+52
	ldr	r1, .L8+56
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L8+60
	ldr	r1, .L8+64
	mov	lr, pc
	bx	r4
	mov	r3, #0
.L2:
	lsl	r2, r3, #1
	add	r2, r2, #100663296
	add	r2, r2, #55296
	ldrh	r1, [r2]
	add	r3, r3, #1
	orr	r1, r1, #12288
	cmp	r3, #2048
	strh	r1, [r2]	@ movhi
	bne	.L2
	ldr	r2, .L8+68
	mov	r0, #3
	ldr	r1, .L8+72
	mov	lr, pc
	bx	r4
	mov	r2, #0
.L3:
	lsl	r3, r2, #1
	add	r3, r3, #100663296
	add	r3, r3, #59392
	ldrh	r1, [r3]
	add	r2, r2, #1
	orr	r1, r1, #4096
	cmp	r2, #2048
	strh	r1, [r3]	@ movhi
	bne	.L3
	mov	r3, #1024
	ldr	r2, .L8+76
	mov	r0, #3
	ldr	r1, .L8+80
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L8+84
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	setUpTimers
	.word	setupSounds
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	23812
	.word	puzzleOverlayPal
	.word	23300
	.word	puzzleOverlayTiles
	.word	100679680
	.word	roomTilesTiles
	.word	100718592
	.word	cityMap
	.word	100722688
	.word	roomMap
	.word	100726784
	.word	menuScreenMap
	.word	state
	.size	initialize, .-initialize
	.align	2
	.global	goToMenu
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMenu, %function
goToMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r2, .L12
	ldr	r3, .L12+4
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L12+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	mov	r1, #4352
	mov	r3, #1024
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L12+28
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	gameStarted
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	100726784
	.word	menuScreenMap
	.word	state
	.size	goToMenu, .-goToMenu
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
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4352
	mov	r3, #1024
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L16+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	100726784
	.word	pauseScreenMap
	.word	state
	.size	goToPause, .-goToPause
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
	push	{r4, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L20+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4352
	mov	r3, #1024
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L20+16
	ldr	r1, .L20+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L20+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	100726784
	.word	instructionsOneMap
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	mov	r1, #0
	ldr	r2, .L24
	push	{r4, lr}
	ldr	r3, .L24+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L24+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L24+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4352
	mov	r3, #1024
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L24+20
	ldr	r1, .L24+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L24+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	gameStarted
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	100726784
	.word	winScreenMap
	.word	state
	.size	goToWin, .-goToWin
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
	ldr	r3, .L30
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+4
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L29
.L27:
	ldr	r3, .L30+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L30+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L29:
	mov	r1, #1
	ldr	r2, .L30+16
	str	r1, [r3]
	mov	lr, pc
	bx	r2
	b	.L27
.L31:
	.align	2
.L30:
	.word	initializeBugs
	.word	gameStarted
	.word	goToRoom
	.word	state
	.word	playSong
	.size	goToGame, .-goToGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L101
	ldr	r4, .L101+4
	ldr	r7, .L101+8
	ldr	r3, .L101+12
	str	r1, [r2]
	ldr	r9, .L101+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L101+20
	ldrh	r1, [r4]
	ldr	r10, .L101+24
	ldr	fp, .L101+28
	ldr	r8, .L101+32
	sub	r6, r7, #44
.L33:
	ldr	r2, [r9]
.L34:
	strh	r1, [r5]	@ movhi
	ldrh	r3, [r8, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L51
.L36:
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L35
	.word	.L35
.L38:
	tst	r1, #1
	beq	.L46
	tst	r3, #1
	beq	.L98
.L46:
	tst	r1, #2
	beq	.L35
	tst	r3, #2
	bne	.L35
	mov	r3, #1024
	ldr	r1, .L101+36
	mov	r0, #3
	ldr	r2, .L101+40
	ldr	ip, .L101+44
	mov	lr, pc
	bx	ip
	ldrh	r1, [r5]
	ldrh	r3, [r4]
.L35:
	tst	r1, #4
	beq	.L59
	tst	r3, #4
	beq	.L99
.L59:
	mov	r2, r1
	mov	r1, r3
.L50:
	tst	r2, #8
	beq	.L33
	tst	r1, #8
	bne	.L33
	ldr	r3, .L101+48
	mov	lr, pc
	bx	r3
	ldrh	r1, [r4]
	b	.L33
.L39:
	mov	lr, pc
	bx	fp
	ldr	r3, .L101+52
	b	.L45
.L44:
	cmp	r7, r3
	beq	.L43
.L45:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L43
	cmp	r6, r3
	add	r3, r3, #44
	bne	.L44
	ldr	r3, .L101+56
	mov	lr, pc
	bx	r3
.L43:
	ldrh	r3, [r5]
	tst	r3, #4
	ldrh	r1, [r4]
	beq	.L33
	tst	r1, #4
	bne	.L33
	ldr	r3, .L101+60
	mov	lr, pc
	bx	r3
	ldrh	r1, [r4]
	b	.L33
.L40:
	ldr	r2, [r10]
	tst	r1, #8
	add	r2, r2, #1
	str	r2, [r10]
	beq	.L41
	tst	r3, #8
	beq	.L100
.L41:
	tst	r1, #4
	beq	.L53
	tst	r3, #4
	bne	.L53
	ldr	r3, .L101+64
	mov	lr, pc
	bx	r3
	ldr	r0, [r10]
	ldr	r3, .L101+68
	mov	lr, pc
	bx	r3
	ldrh	r1, [r4]
	b	.L33
.L53:
	mov	r1, r3
	b	.L33
.L99:
	ldr	r3, .L101+72
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5]
	ldrh	r1, [r4]
	b	.L50
.L100:
	ldr	r3, .L101+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+68
	ldr	r0, [r10]
	mov	lr, pc
	bx	r3
	ldrh	r1, [r5]
	ldrh	r3, [r4]
	b	.L41
.L98:
	mov	r3, #1024
	ldr	r1, .L101+76
	mov	r0, #3
	ldr	r2, .L101+40
	ldr	ip, .L101+44
	mov	lr, pc
	bx	ip
	ldrh	r1, [r5]
	ldrh	r3, [r4]
	b	.L46
.L51:
	mov	r1, r3
	b	.L34
.L102:
	.align	2
.L101:
	.word	gameStarted
	.word	buttons
	.word	bugs+528
	.word	initialize
	.word	state
	.word	oldButtons
	.word	seed
	.word	gameMain
	.word	67109120
	.word	instructionsOneMap
	.word	100726784
	.word	DMANow
	.word	goToGame
	.word	bugs
	.word	goToWin
	.word	goToPause
	.word	goToInstructions
	.word	srand
	.word	goToMenu
	.word	instructionsTwoMap
	.size	main, .-main
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	seed,4,4
	.comm	state,4,4
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
