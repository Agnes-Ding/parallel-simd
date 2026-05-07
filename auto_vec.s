	.arch armv8-a
	.file	"main_serial_only.cc"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, %function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9026:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0, -24]
	add	x0, x19, x0
	ldr	x20, [x0, 240]
	cbz	x20, .L7
	ldrb	w0, [x20, 56]
	cbz	w0, .L3
	ldrb	w1, [x20, 67]
.L4:
	mov	x0, x19
	bl	_ZNSo3putEc
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZNSo5flushEv
.L3:
	.cfi_restore_state
	mov	x0, x20
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x2, [x20]
	mov	w1, 10
	mov	x0, x20
	ldr	x2, [x2, 48]
	blr	x2
	and	w1, w0, 255
	b	.L4
.L7:
	bl	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE9026:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.align	2
	.p2align 4,,11
	.global	_Z12gauss_serialRSt6vectorIfSaIfEEi
	.type	_Z12gauss_serialRSt6vectorIfSaIfEEi, %function
_Z12gauss_serialRSt6vectorIfSaIfEEi:
.LFB8332:
	.cfi_startproc
	cmp	w1, 0
	ble	.L30
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	w3, w1
	mov	x29, sp
	ldr	x6, [x0]
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	mov	x28, 1
	ldr	s1, [x6]
	cmp	w1, 1
	beq	.L10
	sxtw	x28, w1
	sbfiz	x16, x1, 2, 32
	add	x0, x16, 4
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -88
	.cfi_offset 19, -96
	sub	w14, w1, #2
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -72
	.cfi_offset 21, -80
	mov	x21, 1
	subs	w12, w3, w21
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -56
	.cfi_offset 23, -64
	csinc	w12, w12, wzr, gt
	mov	x10, x6
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	add	x4, x6, 4
	neg	x25, x6
	str	x0, [sp, 96]
	neg	x0, x28, lsl 2
	str	x0, [sp, 104]
	mov	w15, w21
	mov	x0, x6
	ccmp	w14, 2, 0, gt
	mov	w8, w21
	mov	w22, w21
	mov	x20, 4
	mov	w2, 0
	mov	x9, 0
	fmov	s4, 1.0e+0
	bls	.L22
	.p2align 3,,7
.L34:
	lsr	w5, w12, 2
	mov	x1, x4
	dup	v2.4s, v1.s[0]
	add	x7, x4, x5, uxtw 4
	.p2align 3,,7
.L13:
	ldr	q0, [x1]
	fdiv	v0.4s, v0.4s, v2.4s
	str	q0, [x1], 16
	cmp	x1, x7
	bne	.L13
	and	w18, w12, -4
	add	w1, w18, w8
	cmp	w12, w18
	beq	.L14
.L12:
	add	w11, w2, w1
	add	w7, w1, 1
	sxtw	x11, w11
	ldr	s0, [x6, x11, lsl 2]
	fdiv	s0, s0, s1
	str	s0, [x6, x11, lsl 2]
	cmp	w3, w7
	ble	.L14
	add	w7, w2, w7
	add	w1, w1, 2
	sxtw	x7, w7
	ldr	s0, [x6, x7, lsl 2]
	fdiv	s0, s0, s1
	str	s0, [x6, x7, lsl 2]
	cmp	w3, w1
	ble	.L14
	add	w1, w2, w1
	sxtw	x1, w1
	ldr	s0, [x6, x1, lsl 2]
	fdiv	s1, s0, s1
	str	s1, [x6, x1, lsl 2]
.L14:
	add	w15, w18, w15
	add	w30, w2, w3
	add	w13, w15, 1
	add	w17, w15, 2
	add	w23, w13, w2
	add	w24, w17, w2
	add	w2, w15, w2
	add	x27, x10, x16
	ubfiz	x5, x5, 4, 30
	add	x23, x6, x23, sxtw 2
	add	x11, x6, x2, sxtw 2
	add	x24, x6, x24, sxtw 2
	mov	w7, w30
	mov	x2, x27
	add	x26, x9, 1
	sub	x19, x25, #4
	str	s4, [x0]
	.p2align 3,,7
.L21:
	cmp	w14, 3
	add	x0, x19, x2
	ccmp	w3, w22, 4, hi
	ldr	s3, [x2, x9, lsl 2]
	ccmp	x0, 8, 0, gt
	bls	.L15
	dup	v2.4s, v3.s[0]
	add	x1, x2, x20
	mov	x0, 0
	.p2align 3,,7
.L16:
	ldr	q1, [x4, x0]
	ldr	q0, [x1, x0]
	fmls	v0.4s, v1.4s, v2.4s
	str	q0, [x1, x0]
	add	x0, x0, 16
	cmp	x5, x0
	bne	.L16
	cmp	w18, w12
	beq	.L18
	add	w0, w7, w15
	ldr	s1, [x11]
	sxtw	x0, w0
	ldr	s0, [x6, x0, lsl 2]
	fmsub	s0, s1, s3, s0
	str	s0, [x6, x0, lsl 2]
	cmp	w13, w3
	bge	.L18
	add	w0, w7, w13
	ldr	s1, [x23]
	sxtw	x0, w0
	ldr	s0, [x6, x0, lsl 2]
	fmsub	s0, s1, s3, s0
	str	s0, [x6, x0, lsl 2]
	cmp	w3, w17
	ble	.L18
	add	w0, w7, w17
	ldr	s1, [x24]
	sxtw	x0, w0
	ldr	s0, [x6, x0, lsl 2]
	fmsub	s0, s3, s1, s0
	str	s0, [x6, x0, lsl 2]
.L18:
	add	w8, w8, 1
	str	wzr, [x2, x9, lsl 2]
	add	w7, w7, w3
	add	x2, x2, x16
	cmp	w3, w8
	bgt	.L21
	ldp	x1, x0, [sp, 96]
	add	x21, x21, 1
	mov	x9, x26
	sub	w14, w14, #1
	add	x20, x20, 4
	ldr	s1, [x4, x28, lsl 2]
	add	x25, x25, x0
	add	x0, x16, x4
	add	x4, x4, x1
	cmp	w3, w21
	ble	.L33
	subs	w12, w3, w21
	mov	x10, x27
	csinc	w12, w12, wzr, gt
	mov	w2, w30
	mov	w15, w21
	ccmp	w14, 2, 0, gt
	mov	w8, w21
	mov	w22, w21
	bhi	.L34
.L22:
	mov	w1, w21
	lsr	w5, w12, 2
	and	w18, w12, -4
	b	.L12
	.p2align 2,,3
.L15:
	mov	x0, x26
	.p2align 3,,7
.L19:
	ldr	s1, [x10, x0, lsl 2]
	ldr	s0, [x2, x0, lsl 2]
	fmsub	s0, s3, s1, s0
	str	s0, [x2, x0, lsl 2]
	add	x0, x0, 1
	cmp	w3, w0
	bgt	.L19
	b	.L18
.L33:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L10:
	sub	w3, w3, #1
	fmov	s0, 1.0e+0
	madd	x3, x28, x3, x3
	ldp	x27, x28, [sp, 80]
	str	s0, [x6, x3, lsl 2]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	ret
.L30:
	ret
	.cfi_endproc
.LFE8332:
	.size	_Z12gauss_serialRSt6vectorIfSaIfEEi, .-_Z12gauss_serialRSt6vectorIfSaIfEEi
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB9006:
	.cfi_startproc
	adrp	x2, .LC1
	adrp	x1, .LC0
	add	x6, x0, 1816
	ldr	q5, [x2, #:lo12:.LC1]
	adrp	x2, .LC2
	ldr	q6, [x1, #:lo12:.LC0]
	add	x1, x0, 8
	ldr	q4, [x2, #:lo12:.LC2]
	adrp	x2, .LC3
	ldr	q3, [x2, #:lo12:.LC3]
	.p2align 3,,7
.L36:
	add	x1, x1, 16
	ldr	q0, [x1, -24]
	ldr	q2, [x1, -16]
	and	v0.16b, v0.16b, v6.16b
	ldr	q1, [x1, 3152]
	and	v2.16b, v2.16b, v5.16b
	orr	v0.16b, v0.16b, v2.16b
	ushr	v2.2d, v0.2d, 1
	and	v0.16b, v0.16b, v4.16b
	eor	v1.16b, v1.16b, v2.16b
	cmeq	v0.2d, v0.2d, #0
	eor	v2.16b, v1.16b, v3.16b
	bsl	v0.16b, v1.16b, v2.16b
	str	q0, [x1, -24]
	cmp	x6, x1
	bne	.L36
	ldr	x2, [x0, 1808]
	mov	x4, 45279
	ldr	x5, [x0, 1816]
	movk	x4, 0x9908, lsl 16
	ldr	x1, [x0, 4984]
	add	x7, x0, 1824
	bfi	x2, x5, 0, 31
	adrp	x5, .LC0
	mov	x3, 0
	eor	x1, x1, x2, lsr 1
	tst	x2, 1
	adrp	x2, .LC2
	ldr	q6, [x5, #:lo12:.LC0]
	adrp	x5, .LC1
	ldr	q4, [x2, #:lo12:.LC2]
	eor	x2, x1, x4
	adrp	x4, .LC3
	csel	x1, x2, x1, ne
	ldr	q5, [x5, #:lo12:.LC1]
	str	x1, [x0, 1808]
	ldr	q3, [x4, #:lo12:.LC3]
.L38:
	ldr	q0, [x6, x3]
	ldr	q2, [x7, x3]
	and	v0.16b, v0.16b, v6.16b
	ldr	q1, [x0, x3]
	and	v2.16b, v2.16b, v5.16b
	orr	v0.16b, v0.16b, v2.16b
	ushr	v2.2d, v0.2d, 1
	and	v0.16b, v0.16b, v4.16b
	eor	v1.16b, v1.16b, v2.16b
	cmeq	v0.2d, v0.2d, #0
	eor	v2.16b, v1.16b, v3.16b
	bsl	v0.16b, v1.16b, v2.16b
	str	q0, [x6, x3]
	add	x3, x3, 16
	cmp	x3, 3168
	bne	.L38
	ldr	x4, [x0]
	mov	x3, 45279
	ldr	x2, [x0, 4984]
	movk	x3, 0x9908, lsl 16
	ldr	x1, [x0, 3168]
	str	xzr, [x0, 4992]
	bfi	x2, x4, 0, 31
	eor	x1, x1, x2, lsr 1
	tst	x2, 1
	eor	x2, x1, x3
	csel	x1, x2, x1, ne
	str	x1, [x0, 4984]
	ret
	.cfi_endproc
.LFE9006:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.align	2
	.p2align 4,,11
	.global	_Z15generate_matrixi
	.type	_Z15generate_matrixi, %function
_Z15generate_matrixi:
.LFB8322:
	.cfi_startproc
	mov	x12, 5168
	sub	sp, sp, x12
	.cfi_def_cfa_offset 5168
	stp	x29, x30, [sp]
	.cfi_offset 29, -5168
	.cfi_offset 30, -5160
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -5136
	.cfi_offset 22, -5128
	mul	w21, w0, w0
	mov	w22, w0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -5152
	.cfi_offset 20, -5144
	mov	x19, x8
	stp	x23, x24, [sp, 48]
	stp	xzr, xzr, [x8]
	str	xzr, [x8, 16]
	.cfi_offset 23, -5120
	.cfi_offset 24, -5112
	cbz	w21, .L46
	sbfiz	x21, x21, 2, 32
	mov	x0, x21
	bl	_Znwm
	add	x20, x0, x21
	str	x0, [x19]
	str	x20, [x19, 16]
	mov	x2, x21
	mov	w1, 0
	bl	memset
.L58:
	add	x24, sp, 168
	mov	x5, 42
	mov	x4, 35173
	add	x3, x24, 8
	mov	x1, x5
	mov	x2, 1
	movk	x4, 0x6c07, lsl 16
	str	x20, [x19, 8]
	str	x5, [sp, 168]
	.p2align 3,,7
.L47:
	eor	x1, x1, x1, lsr 30
	madd	w1, w1, w4, w2
	add	x2, x2, 1
	str	x1, [x3], 8
	cmp	x2, 624
	bne	.L47
	str	x2, [sp, 5160]
	cmp	w22, 0
	ble	.L45
	sxtw	x23, w22
	mov	w1, 1128792064
	add	x23, x23, 1
	uxtw	x0, w22
	mov	w3, 65534
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -5080
	.cfi_offset 27, -5088
	lsl	x23, x23, 2
	ubfiz	x28, x22, 2, 32
	movk	w3, 0x42c7, lsl 16
	ldr	x6, [x19]
	str	d12, [sp, 128]
	.cfi_offset 76, -5040
	fmov	s12, w1
	mov	w1, 4719
	movk	w1, 0x3a83, lsl 16
	mov	x20, 0
	mov	w21, 0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -5096
	.cfi_offset 25, -5104
	stp	d8, d9, [sp, 96]
	.cfi_offset 73, -5064
	.cfi_offset 72, -5072
	fmov	s9, w3
	fmov	s8, w1
	str	x0, [sp, 152]
	sub	x0, x23, #4
	str	x0, [sp, 144]
	stp	d10, d11, [sp, 112]
	.cfi_offset 75, -5048
	.cfi_offset 74, -5056
	.p2align 3,,7
.L57:
	mov	x25, 22144
	ldr	x0, [sp, 152]
	mov	w1, 796917760
	mov	w3, -1027080192
	mov	x4, x2
	fmov	s10, w1
	fmov	s11, w3
	sub	x26, x28, x0, lsl 2
	movk	x25, 0x9d2c, lsl 16
	b	.L53
	.p2align 2,,3
.L49:
	ldr	x1, [x24, x4, lsl 3]
	mov	x3, 4022730752
	movi	v2.2s, #0
	fmov	s1, 1.0e+0
	add	x2, x4, 1
	str	x2, [sp, 5160]
	ubfx	x5, x1, 11, 32
	mov	x4, x2
	eor	x1, x1, x5
	and	x5, x25, x1, lsl 7
	eor	x1, x1, x5
	and	x3, x3, x1, lsl 15
	eor	x1, x1, x3
	eor	x1, x1, x1, lsr 18
	ucvtf	s0, x1
	fadd	s0, s0, s2
	fmul	s0, s0, s10
	fcmpe	s0, s1
	bge	.L50
	fmadd	s0, s0, s12, s11
	add	x26, x26, 4
	str	s0, [x27]
	cmp	x28, x26
	beq	.L51
.L53:
	add	x27, x6, x26
	cmp	x2, 623
	bls	.L49
	mov	x0, x24
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x6, [x19]
	ldr	x4, [sp, 5160]
	b	.L49
	.p2align 2,,3
.L50:
	add	x26, x26, 4
	str	s9, [x27]
	cmp	x28, x26
	bne	.L53
	.p2align 3,,7
.L51:
	ldr	s0, [x6, x20]
	fabs	s0, s0
	fcmpe	s0, s8
	bmi	.L59
.L54:
	ldr	x0, [sp, 144]
	add	w21, w21, 1
	add	x20, x20, x23
	add	x28, x28, x0
	cmp	w22, w21
	bne	.L57
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldp	d8, d9, [sp, 96]
	.cfi_restore 73
	.cfi_restore 72
	ldp	d10, d11, [sp, 112]
	.cfi_restore 75
	.cfi_restore 74
	ldr	d12, [sp, 128]
	.cfi_restore 76
.L45:
	mov	x0, x19
	mov	x12, 5168
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L59:
	.cfi_def_cfa_offset 5168
	.cfi_offset 19, -5152
	.cfi_offset 20, -5144
	.cfi_offset 21, -5136
	.cfi_offset 22, -5128
	.cfi_offset 23, -5120
	.cfi_offset 24, -5112
	.cfi_offset 25, -5104
	.cfi_offset 26, -5096
	.cfi_offset 27, -5088
	.cfi_offset 28, -5080
	.cfi_offset 29, -5168
	.cfi_offset 30, -5160
	.cfi_offset 72, -5072
	.cfi_offset 73, -5064
	.cfi_offset 74, -5056
	.cfi_offset 75, -5048
	.cfi_offset 76, -5040
	fmov	s0, 1.0e+0
	str	s0, [x6, x20]
	b	.L54
.L46:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	.cfi_restore 76
	mov	x20, 0
	str	xzr, [x8]
	str	xzr, [x8, 16]
	b	.L58
	.cfi_endproc
.LFE8322:
	.size	_Z15generate_matrixi, .-_Z15generate_matrixi
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC4:
	.string	"stoi"
	.align	3
.LC5:
	.string	"[Auto-Vec Test] Matrix size: "
	.align	3
.LC6:
	.string	"x"
	.align	3
.LC7:
	.string	"Time: "
	.align	3
.LC8:
	.string	" ms"
	.align	3
.LC9:
	.string	"basic_string::_M_construct null not valid"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB8333:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8333
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x23, [sp, 48]
	str	d8, [sp, 56]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 72, -56
	cmp	w0, 1
	ble	.L82
	ldr	x20, [x1, 8]
	add	x21, sp, 80
	add	x22, x21, 16
	str	x22, [sp, 80]
	cbz	x20, .L64
	mov	x0, x20
	bl	strlen
	str	x0, [sp, 72]
	mov	x19, x0
	cmp	x0, 15
	bhi	.L99
	cmp	x0, 1
	bne	.L67
	ldrb	w0, [x20]
	add	x22, sp, 72
	strb	w0, [sp, 96]
.L68:
	ldp	x0, x1, [sp, 72]
	str	x0, [sp, 88]
	strb	wzr, [x1, x0]
	bl	__errno_location
	mov	x20, x0
	mov	x1, x22
	ldr	w23, [x0]
	ldr	x22, [sp, 80]
	str	wzr, [x20]
	mov	w2, 10
	mov	x0, x22
	bl	strtol
	ldr	x1, [sp, 72]
	mov	x19, x0
	cmp	x22, x1
	beq	.L100
	ldr	w1, [x20]
	cmp	w1, 34
	beq	.L70
	mov	x0, 2147483648
	add	x0, x19, x0
	mov	x2, 4294967295
	cmp	x0, x2
	bhi	.L70
	cbnz	w1, .L72
	str	w23, [x20]
.L72:
	ldr	x0, [sp, 80]
	add	x1, x21, 16
	cmp	x0, x1
	beq	.L63
	ldr	x1, [sp, 96]
	add	x1, x1, 1
	bl	_ZdlPvm
.L63:
	mov	x2, 29
	adrp	x22, _ZSt4cout
	add	x22, x22, :lo12:_ZSt4cout
	adrp	x1, .LC5
	mov	x0, x22
	add	x1, x1, :lo12:.LC5
.LEHB0:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, w19
	mov	x0, x22
	bl	_ZNSolsEi
	mov	x20, x0
	mov	x2, 1
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	w1, w19
	mov	x0, x20
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	mov	x8, x21
	mov	w0, w19
	bl	_Z15generate_matrixi
.LEHE0:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x2, x0
	mov	w1, w19
	mov	x0, x21
	mov	x19, x2
	bl	_Z12gauss_serialRSt6vectorIfSaIfEEi
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x3, x0, x19
	mov	x1, 145685290680320
	mov	x0, x22
	scvtf	d8, x3
	movk	x1, 0x412e, lsl 48
	fmov	d0, x1
	mov	x2, 6
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	fdiv	d8, d8, d0
.LEHB1:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	mov	x0, x22
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC8
	mov	x19, x0
	add	x1, x1, :lo12:.LC8
	mov	x2, 3
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE1:
	ldr	x0, [sp, 80]
	cbz	x0, .L89
	ldr	x1, [sp, 96]
	sub	x1, x1, x0
	bl	_ZdlPvm
.L89:
	mov	w0, 0
	ldr	d8, [sp, 56]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
.L82:
	.cfi_restore_state
	add	x21, sp, 80
	mov	w19, 1000
	b	.L63
.L99:
	add	x22, sp, 72
	mov	x0, x21
	mov	x1, x22
	mov	x2, 0
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [sp, 80]
	ldr	x1, [sp, 72]
	str	x1, [sp, 96]
.L66:
	mov	x2, x19
	mov	x1, x20
	bl	memcpy
	b	.L68
.L64:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	_ZSt19__throw_logic_errorPKc
.LEHE2:
.L67:
	cbnz	x0, .L97
	add	x22, sp, 72
	b	.L68
.L70:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
.LEHB3:
	bl	_ZSt20__throw_out_of_rangePKc
.L100:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE3:
.L97:
	mov	x0, x22
	add	x22, sp, 72
	b	.L66
.L83:
	ldr	x2, [sp, 80]
	mov	x19, x0
	ldr	x1, [sp, 96]
	sub	x1, x1, x2
	cbz	x2, .L81
	mov	x0, x2
	bl	_ZdlPvm
.L81:
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.LEHE4:
.L84:
	ldr	w1, [x20]
	mov	x19, x0
	cbnz	w1, .L76
	str	w23, [x20]
.L76:
	ldr	x0, [sp, 80]
	add	x21, x21, 16
	cmp	x0, x21
	beq	.L81
	ldr	x1, [sp, 96]
	add	x1, x1, 1
	bl	_ZdlPvm
	b	.L81
	.cfi_endproc
.LFE8333:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8333:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8333-.LLSDACSB8333
.LLSDACSB8333:
	.uleb128 .LEHB0-.LFB8333
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8333
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L83-.LFB8333
	.uleb128 0
	.uleb128 .LEHB2-.LFB8333
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8333
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L84-.LFB8333
	.uleb128 0
	.uleb128 .LEHB4-.LFB8333
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8333:
	.section	.text.startup
	.size	main, .-main
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z15generate_matrixi, %function
_GLOBAL__sub_I__Z15generate_matrixi:
.LFB9021:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, .LANCHOR0
	add	x19, x19, :lo12:.LANCHOR0
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	mov	x1, x19
	adrp	x2, __dso_handle
	ldr	x19, [sp, 16]
	add	x2, x2, :lo12:__dso_handle
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	adrp	x0, _ZNSt8ios_base4InitD1Ev
	add	x0, x0, :lo12:_ZNSt8ios_base4InitD1Ev
	b	__cxa_atexit
	.cfi_endproc
.LFE9021:
	.size	_GLOBAL__sub_I__Z15generate_matrixi, .-_GLOBAL__sub_I__Z15generate_matrixi
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z15generate_matrixi
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.xword	-2147483648
	.xword	-2147483648
	.align	4
.LC1:
	.xword	2147483647
	.xword	2147483647
	.align	4
.LC2:
	.xword	1
	.xword	1
	.align	4
.LC3:
	.xword	2567483615
	.xword	2567483615
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 10.3.1"
	.section	.note.GNU-stack,"",@progbits
