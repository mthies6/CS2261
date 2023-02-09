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
	.global	game
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L4
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #100
	mov	r2, #40
	mov	r1, #4
	mov	r0, #60
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	31775
	.word	drawRect
	.size	game, .-game
	.comm	ptr,4,4
	.comm	player,28,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
