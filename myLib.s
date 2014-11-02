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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	rsb	r0, r0, r0, asl #4
	add	r0, r1, r0, asl #4
	ldr	r3, [r3, #0]
	mov	r0, r0, asl #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect3
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r2, r0
	cmp	r0, r2
	stmfd	sp!, {r4, r5, r6}
	add	r4, r3, r1
	bge	.L4
	ldr	r3, .L12
	rsb	r6, r0, r0, asl #4
	add	r6, r1, r6, asl #4
	ldr	r3, [r3, #0]
	sub	r6, r6, #1
	add	r6, r3, r6, asl #1
	mov	r5, r0
.L6:
	cmp	r1, r4
	movlt	r3, r6
	movlt	ip, r1
	bge	.L8
.L7:
	ldrh	r0, [sp, #12]
	add	ip, ip, #1
	cmp	r4, ip
	strh	r0, [r3, #2]!	@ movhi
	bgt	.L7
.L8:
	add	r5, r5, #1
	cmp	r2, r5
	add	r6, r6, #480
	bgt	.L6
.L4:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	waitForVblank
	.type	waitForVblank, %function
waitForVblank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L15:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L15
	mov	r2, #67108864
.L17:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L17
	bx	lr
	.size	waitForVblank, .-waitForVblank
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 31) 4.5.0"
