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
	.file	"game2.c"
	.text
	.align	2
	.global	initializeGame2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame2, %function
initializeGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L4
	push	{r4, r5, r6, lr}
	ldr	r3, .L4+4
	ldr	r0, [r2]
	ldr	r5, .L4+8
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	ldr	r2, .L4+12
	ldr	r3, .L4+16
	ldr	r4, .L4+20
	str	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+24
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	mov	lr, pc
	bx	r4
	mov	r2, #248
	mov	r3, #464
	mov	r0, #100
	ldr	r4, .L4+56
	ldr	r1, .L4+60
	stm	r4, {r2, r3}
	str	r0, [r1]
	mov	lr, pc
	bx	r5
	mov	lr, #0
	mov	ip, #3
	mov	r1, #2
	mov	r5, #20
	mov	r2, #1
	subs	r3, lr, r0
	and	r3, r3, ip
	and	r0, r0, ip
	rsbpl	r0, r3, #0
	str	r0, [r4, #28]
	ldr	r3, .L4+64
	ldr	r0, [r4]
	str	r0, [r3]
	ldr	r0, [r4, #4]
	ldr	r3, .L4+68
	str	r1, [r4, #8]
	str	r1, [r4, #12]
	str	r0, [r3]
	ldr	r1, .L4+72
	ldr	r3, .L4+76
	str	r5, [r4, #24]
	str	r2, [r4, #36]
	str	r2, [r4, #32]
	str	lr, [r1]
	str	ip, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	seed
	.word	srand
	.word	rand
	.word	randomIndex
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	initializeEnemies
	.word	initializeRocks
	.word	initializeFlags
	.word	100720640
	.word	level2MapMap
	.word	100718592
	.word	overlayMap
	.word	player
	.word	fuel
	.word	playerSpawnX
	.word	playerSpawnY
	.word	flagsCollected
	.word	lives
	.size	initializeGame2, .-initializeGame2
	.global	yFlagSpawn2
	.global	xFlagSpawn2
	.global	yRockSpawn2
	.global	xRockSpawn2
	.global	yEnemySpawn2
	.global	xEnemySpawn2
	.comm	randomIndex,4,4
	.comm	smoke,56,4
	.comm	smokeFrame,4,4
	.comm	moved,4,4
	.comm	playerSpawnY,4,4
	.comm	playerSpawnX,4,4
	.comm	player,56,4
	.comm	flagPool,560,4
	.comm	rockPool,168,4
	.comm	enemyPool,168,4
	.comm	score,4,4
	.comm	level,4,4
	.comm	flagsCollected,4,4
	.comm	fuel,4,4
	.comm	lives,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.type	yFlagSpawn2, %object
	.size	yFlagSpawn2, 80
yFlagSpawn2:
	.word	4
	.word	6
	.word	5
	.word	13
	.word	14
	.word	18
	.word	17
	.word	23
	.word	23
	.word	31
	.word	33
	.word	36
	.word	36
	.word	38
	.word	43
	.word	38
	.word	47
	.word	54
	.word	49
	.word	53
	.type	xFlagSpawn2, %object
	.size	xFlagSpawn2, 80
xFlagSpawn2:
	.word	53
	.word	43
	.word	14
	.word	21
	.word	57
	.word	34
	.word	4
	.word	27
	.word	53
	.word	11
	.word	40
	.word	59
	.word	25
	.word	4
	.word	36
	.word	46
	.word	11
	.word	17
	.word	45
	.word	59
	.type	yRockSpawn2, %object
	.size	yRockSpawn2, 60
yRockSpawn2:
	.word	11
	.word	11
	.word	10
	.word	26
	.word	34
	.word	33
	.word	36
	.word	40
	.word	39
	.word	49
	.word	46
	.word	17
	.word	18
	.word	23
	.word	22
	.type	xRockSpawn2, %object
	.size	xRockSpawn2, 60
xRockSpawn2:
	.word	6
	.word	35
	.word	52
	.word	20
	.word	10
	.word	30
	.word	48
	.word	19
	.word	39
	.word	10
	.word	50
	.word	17
	.word	45
	.word	9
	.word	36
	.type	yEnemySpawn2, %object
	.size	yEnemySpawn2, 60
yEnemySpawn2:
	.word	8
	.word	9
	.word	12
	.word	17
	.word	23
	.word	22
	.word	31
	.word	31
	.word	30
	.word	31
	.word	40
	.word	46
	.word	43
	.word	44
	.word	46
	.type	xEnemySpawn2, %object
	.size	xEnemySpawn2, 60
xEnemySpawn2:
	.word	21
	.word	42
	.word	13
	.word	21
	.word	4
	.word	45
	.word	24
	.word	48
	.word	53
	.word	35
	.word	11
	.word	19
	.word	45
	.word	58
	.word	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
