	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	draw
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L2
	sub	sp, sp, #8
	ldr	r2, [r4, #0]
	ldr	r5, .L2+4
	mov	r6, #0
	ldmib	r4, {r0, r1}	@ phole ldm
	mov	r3, r2
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #0]
	ldrh	r3, [r4, #20]
	add	r0, r4, #12
	ldmia	r0, {r0, r1}	@ phole ldm
	str	r3, [sp, #0]
	mov	r3, r2
	mov	lr, pc
	bx	r5
	add	r0, r4, #24
	ldmia	r0, {r0, r1, r2, r3}	@ phole ldm
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldrh	ip, [r4, #48]
	add	r0, r4, #40
	ldmia	r0, {r0, r1}	@ phole ldm
	add	r2, r4, #32
	ldmia	r2, {r2, r3}	@ phole ldm
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	add	r0, r4, #52
	ldmia	r0, {r0, r1}	@ phole ldm
	add	r2, r4, #32
	ldmia	r2, {r2, r3}	@ phole ldm
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldrh	ip, [r4, #48]
	add	r0, r4, #60
	ldmia	r0, {r0, r1}	@ phole ldm
	add	r2, r4, #32
	ldmia	r2, {r2, r3}	@ phole ldm
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.word	drawRect3
	.size	draw, .-draw
	.align	2
	.global	drawScore1
	.type	drawScore1, %function
drawScore1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L5
	sub	sp, sp, #128
	ldr	r1, .L5+4
	ldr	r2, [r3, #0]
	mov	r0, sp
	ldr	r3, .L5+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L5+12
	mov	r0, #5
	mov	r1, #2
	mov	r2, sp
	ldrh	r3, [r3, #20]
	ldr	ip, .L5+16
	mov	r4, sp
	mov	lr, pc
	bx	ip
	add	sp, sp, #128
	ldmfd	sp!, {r4, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR1
	.word	.LC0
	.word	sprintf
	.word	.LANCHOR0
	.word	drawString
	.size	drawScore1, .-drawScore1
	.align	2
	.global	drawScore2
	.type	drawScore2, %function
drawScore2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L8
	sub	sp, sp, #128
	ldr	r1, .L8+4
	ldr	r2, [r3, #4]
	mov	r0, sp
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	mov	r0, #5
	mov	r1, #200
	mov	r2, sp
	ldrh	r3, [r3, #20]
	ldr	ip, .L8+16
	mov	r4, sp
	mov	lr, pc
	bx	ip
	add	sp, sp, #128
	ldmfd	sp!, {r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR1
	.word	.LC1
	.word	sprintf
	.word	.LANCHOR0
	.word	drawString
	.size	drawScore2, .-drawScore2
	.align	2
	.global	winScreen
	.type	winScreen, %function
winScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L11
	mov	r0, #65
	mov	r1, #90
	ldr	r2, .L11+4
	ldrh	r3, [r3, #20]
	ldr	ip, .L11+8
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r3, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.word	.LC2
	.word	drawString
	.size	winScreen, .-winScreen
	.align	2
	.global	loseScreen
	.type	loseScreen, %function
loseScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L14
	mov	r0, #65
	mov	r1, #90
	ldr	r2, .L14+4
	ldrh	r3, [r3, #20]
	ldr	ip, .L14+8
	mov	lr, pc
	bx	ip
	ldmfd	sp!, {r3, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	.LC3
	.word	drawString
	.size	loseScreen, .-loseScreen
	.align	2
	.global	reset
	.type	reset, %function
reset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r3, #67108864
	sub	sp, sp, #8
	ldr	r3, [r3, #304]
	tst	r3, #4
	bne	.L16
	ldr	r4, .L19
	ldr	r2, [r4, #0]
	mov	r5, #0
	ldr	r6, .L19+4
	mov	r3, r2
	ldmib	r4, {r0, r1}	@ phole ldm
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	ldr	r2, [r4, #0]
	ldr	r0, [r4, #12]
	mov	r3, r2
	ldr	r1, [r4, #16]
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	add	r0, r4, #24
	ldmia	r0, {r0, r1, r2, r3}	@ phole ldm
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	add	r0, r4, #40
	ldmia	r0, {r0, r1}	@ phole ldm
	add	r2, r4, #32
	ldmia	r2, {r2, r3}	@ phole ldm
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	add	r0, r4, #52
	ldmia	r0, {r0, r1}	@ phole ldm
	add	r2, r4, #32
	ldmia	r2, {r2, r3}	@ phole ldm
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	add	r0, r4, #60
	ldmia	r0, {r0, r1}	@ phole ldm
	add	r2, r4, #32
	ldmia	r2, {r2, r3}	@ phole ldm
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #60
	mov	r1, #90
	mov	r2, #15
	mov	r3, #50
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, #8
	mov	r3, r2
	mov	r0, #4
	mov	r1, #230
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r2, #8
	mov	r3, r2
	mov	r0, #4
	mov	r1, #32
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	ldr	r1, .L19+8
	mov	r2, #50
	mov	r3, #75
	str	r2, [r4, #16]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
	str	r2, [r4, #4]
	mov	r2, #25
	mov	r6, #1
	mov	ip, #20
	mov	r0, #220
	str	r5, [r1, #8]
	str	r5, [r1, #12]
	str	r5, [r1, #0]
	str	r5, [r1, #4]
	str	r2, [r4, #32]
	mvn	r1, #32768
	mov	r2, #3
	str	r3, [r4, #40]
	str	r3, [r4, #24]
	str	r3, [r4, #60]
	str	r3, [r4, #52]
	mov	r3, #992	@ movhi
	strh	r1, [r4, #20]	@ movhi
	str	r6, [r4, #68]
	str	r6, [r4, #72]
	str	r2, [r4, #36]
	str	ip, [r4, #44]
	str	ip, [r4, #28]
	str	r0, [r4, #64]
	str	r0, [r4, #56]
	strh	r3, [r4, #48]	@ movhi
.L16:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	drawRect3
	.word	.LANCHOR1
	.size	reset, .-reset
	.align	2
	.global	update
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L40
	ldr	r3, [r5, #0]
	cmp	r3, #99
	beq	.L22
	ldr	r3, [r5, #4]
	cmp	r3, #99
	ldrne	r4, .L40+4
	beq	.L22
.L23:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	ldr	r6, .L40+4
	ble	.L24
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #60]
	cmp	r2, r1
	blt	.L25
	ldr	r0, [r6, #32]
	add	r1, r1, r0
	cmp	r2, r1
	bgt	.L25
	ldr	r0, [r6, #0]
	ldr	r2, [r6, #16]
	ldr	r1, [r6, #64]
	add	r2, r0, r2
	cmp	r2, r1
	blt	.L26
	ldr	r0, [r6, #36]
	add	r1, r1, r0
	cmp	r2, r1
	ble	.L38
.L26:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bne	.L28
	ldr	r3, .L40
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L39
.L28:
	ldr	r1, [r4, #0]
	ldr	r2, [r4, #12]
	rsb	r3, r1, #160
	cmp	r3, r2
	ldr	r0, .L40+4
	bge	.L32
	ldr	ip, [r0, #72]
	rsb	ip, ip, #0
	str	r3, [r0, #12]
	str	ip, [r0, #72]
	str	r2, [r0, #4]
	mov	r2, r3
.L32:
	ldr	r3, [r4, #16]
	rsb	r1, r1, #240
	cmp	r1, r3
	ldr	r0, .L40+4
	bge	.L33
	ldr	ip, [r0, #68]
	rsb	ip, ip, #0
	str	r1, [r0, #16]
	str	ip, [r0, #68]
	str	r3, [r0, #8]
	mov	r3, r1
.L33:
	cmp	r2, #0
	ldrlt	r2, [r4, #72]
	movlt	r1, #0
	rsblt	r2, r2, #0
	strlt	r1, [r4, #12]
	strlt	r2, [r4, #72]
	cmp	r3, #0
	ldrlt	r1, [r4, #68]
	ldr	r2, [r4, #12]
	ldrge	r1, [r4, #68]
	ldr	r0, [r4, #72]
	rsblt	r1, r1, #0
	movlt	r3, #0
	strlt	r1, [r4, #68]
	add	r0, r0, r2
	add	r1, r1, r3
	stmib	r4, {r2, r3}	@ phole stm
	str	r1, [r4, #16]
	str	r0, [r4, #12]
	ldmfd	sp!, {r4, r5, r6, lr}
	b	reset
.L25:
	ldr	r1, [r4, #0]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #64]
	add	r3, r1, r3
	cmp	r3, r2
	ldr	r6, .L40+4
	blt	.L26
	ldr	r1, [r6, #36]
	add	r2, r2, r1
	cmp	r3, r2
	bgt	.L26
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #72]
	str	r3, [r6, #68]
	mov	r3, #31	@ movhi
	strh	r3, [r6, #20]	@ movhi
	strh	r3, [r6, #48]	@ movhi
	str	r2, [r5, #8]
	bl	loseScreen
	ldr	r3, [r6, #68]
.L24:
	cmp	r3, #0
	bge	.L26
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #40]
	cmp	r2, r1
	ldr	r0, .L40+4
	blt	.L27
	ldr	ip, [r0, #32]
	add	r1, r1, ip
	cmp	r2, r1
	bgt	.L27
	ldr	r1, [r0, #44]
	ldr	ip, [r0, #36]
	ldr	r2, [r0, #16]
	add	ip, r1, ip
	cmp	ip, r2
	blt	.L26
	cmp	r1, r2
	bgt	.L26
	ldr	r2, [r5, #0]
	rsb	r3, r3, #0
	add	r2, r2, #1
	str	r3, [r0, #68]
	str	r2, [r5, #0]
	bl	drawScore1
	b	.L26
.L39:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #1
	bne	.L29
	ldr	r3, [r4, #40]
	ldr	r2, .L40+4
	cmp	r3, #0
	subge	r1, r3, #1
	strge	r3, [r2, #24]
	strge	r1, [r2, #40]
.L29:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #2
	bne	.L30
	ldr	r3, [r4, #40]
	ldr	r2, [r4, #32]
	add	r2, r3, r2
	cmp	r2, #160
	ldr	r2, .L40+4
	addle	r1, r3, #1
	strle	r3, [r2, #24]
	strle	r1, [r2, #40]
.L30:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #64
	bne	.L31
	ldr	r3, [r4, #60]
	ldr	r2, .L40+4
	cmp	r3, #0
	subge	r1, r3, #1
	strge	r3, [r2, #52]
	strge	r1, [r2, #60]
.L31:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #128
	bne	.L28
	ldr	r3, [r4, #60]
	ldr	r2, [r4, #32]
	add	r2, r3, r2
	cmp	r2, #160
	ldr	r2, .L40+4
	addle	r1, r3, #1
	strle	r3, [r2, #52]
	strle	r1, [r2, #60]
	b	.L28
.L22:
	ldr	r4, .L40+4
	mov	r3, #0
	mov	r2, #1
	str	r3, [r4, #72]
	str	r3, [r4, #68]
	mov	r3, #992	@ movhi
	str	r2, [r5, #12]
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #48]	@ movhi
	bl	winScreen
	b	.L23
.L27:
	ldr	r2, [r4, #44]
	ldr	r1, [r4, #36]
	ldr	r3, [r4, #16]
	add	r1, r2, r1
	cmp	r1, r3
	ldr	r1, .L40+4
	blt	.L26
	cmp	r2, r3
	bgt	.L26
	mov	r3, #0
	str	r3, [r1, #72]
	str	r3, [r1, #68]
	mov	r3, #31	@ movhi
	mov	r2, #1
	strh	r3, [r1, #20]	@ movhi
	strh	r3, [r1, #48]	@ movhi
	str	r2, [r5, #8]
	bl	loseScreen
	b	.L26
.L38:
	ldr	r2, [r5, #4]
	rsb	r3, r3, #0
	add	r2, r2, #1
	str	r3, [r6, #68]
	str	r2, [r5, #4]
	bl	drawScore2
	ldr	r3, [r6, #68]
	b	.L24
.L41:
	.align	2
.L40:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	update, .-update
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1024
	add	r3, r3, #3
	mov	r2, #67108864
	stmfd	sp!, {r4, lr}
	strh	r3, [r2, #0]	@ movhi
	ldr	r4, .L44
.L43:
	bl	update
	bl	drawScore1
	mov	lr, pc
	bx	r4
	bl	drawScore2
	bl	draw
	b	.L43
.L45:
	.align	2
.L44:
	.word	waitForVblank
	.size	main, .-main
	.global	score1
	.global	score2
	.global	lost
	.global	won
	.global	ballSize
	.global	ballColor
	.global	ballCol
	.global	ballRow
	.global	ballColPrev
	.global	ballRowPrev
	.global	hRate
	.global	vRate
	.global	padColor
	.global	padHeight
	.global	padWidth
	.global	padCol
	.global	padRow
	.global	padColPrev
	.global	padRowPrev
	.global	pad_2Col
	.global	pad_2Row
	.global	pad_2ColPrev
	.global	pad_2RowPrev
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ballSize, %object
	.size	ballSize, 4
ballSize:
	.word	3
	.type	ballRowPrev, %object
	.size	ballRowPrev, 4
ballRowPrev:
	.word	50
	.type	ballColPrev, %object
	.size	ballColPrev, 4
ballColPrev:
	.word	50
	.type	ballRow, %object
	.size	ballRow, 4
ballRow:
	.word	75
	.type	ballCol, %object
	.size	ballCol, 4
ballCol:
	.word	100
	.type	ballColor, %object
	.size	ballColor, 2
ballColor:
	.short	32767
	.space	2
	.type	padRowPrev, %object
	.size	padRowPrev, 4
padRowPrev:
	.word	75
	.type	padColPrev, %object
	.size	padColPrev, 4
padColPrev:
	.word	20
	.type	padHeight, %object
	.size	padHeight, 4
padHeight:
	.word	25
	.type	padWidth, %object
	.size	padWidth, 4
padWidth:
	.word	3
	.type	padRow, %object
	.size	padRow, 4
padRow:
	.word	75
	.type	padCol, %object
	.size	padCol, 4
padCol:
	.word	20
	.type	padColor, %object
	.size	padColor, 2
padColor:
	.short	992
	.space	2
	.type	pad_2RowPrev, %object
	.size	pad_2RowPrev, 4
pad_2RowPrev:
	.word	75
	.type	pad_2ColPrev, %object
	.size	pad_2ColPrev, 4
pad_2ColPrev:
	.word	220
	.type	pad_2Row, %object
	.size	pad_2Row, 4
pad_2Row:
	.word	75
	.type	pad_2Col, %object
	.size	pad_2Col, 4
pad_2Col:
	.word	220
	.type	hRate, %object
	.size	hRate, 4
hRate:
	.word	1
	.type	vRate, %object
	.size	vRate, 4
vRate:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"P1: %i\000"
	.space	1
.LC1:
	.ascii	"P2: %i\000"
	.space	1
.LC2:
	.ascii	"YOU WIN\000"
.LC3:
	.ascii	"YOU LOSE\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	score1, %object
	.size	score1, 4
score1:
	.space	4
	.type	score2, %object
	.size	score2, 4
score2:
	.space	4
	.type	lost, %object
	.size	lost, 4
lost:
	.space	4
	.type	won, %object
	.size	won, 4
won:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
