	.arch armv8-a
	.file	"main.cc"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, %function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1709:
	.cfi_startproc
	mov	w0, w1
	ret
	.cfi_endproc
.LFE1709:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"basic_string::_M_construct null not valid"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0:
.LFB9065:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	cmp	x2, 0
	ccmp	x1, 0, 0, ne
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	beq	.L14
	sub	x19, x2, x1
	str	x19, [sp, 56]
	mov	x21, x1
	mov	x20, x0
	cmp	x19, 15
	bhi	.L15
	ldr	x0, [x0]
	cmp	x19, 1
	bne	.L7
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x20]
	ldr	x19, [sp, 56]
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L7:
	.cfi_restore_state
	cbnz	x19, .L6
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L15:
	.cfi_restore_state
	add	x1, sp, 56
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [x20]
	ldr	x1, [sp, 56]
	str	x1, [x20, 16]
.L6:
	mov	x2, x19
	mov	x1, x21
	bl	memcpy
	ldr	x0, [x20]
	ldr	x19, [sp, 56]
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L14:
	.cfi_restore_state
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE9065:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, %function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB9063:
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
	cbz	x20, .L22
	ldrb	w0, [x20, 56]
	cbz	w0, .L18
	ldrb	w1, [x20, 67]
.L19:
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
.L18:
	.cfi_restore_state
	mov	x0, x20
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	x1, [x20]
	adrp	x0, _ZNKSt5ctypeIcE8do_widenEc
	add	x0, x0, :lo12:_ZNKSt5ctypeIcE8do_widenEc
	ldr	x2, [x1, 48]
	cmp	x2, x0
	bne	.L23
	mov	w1, 10
	b	.L19
.L23:
	mov	w1, 10
	mov	x0, x20
	blr	x2
	and	w1, w0, 255
	b	.L19
.L22:
	bl	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE9063:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.align	2
	.p2align 4,,11
	.global	_Z11copy_matrixRKSt6vectorIfSaIfEE
	.type	_Z11copy_matrixRKSt6vectorIfSaIfEE, %function
_Z11copy_matrixRKSt6vectorIfSaIfEE:
.LFB8332:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x8
	ldr	x0, [x0]
	ldr	x20, [x21, 8]
	stp	xzr, xzr, [x8]
	str	xzr, [x8, 16]
	subs	x20, x20, x0
	beq	.L29
	mov	x0, 9223372036854775804
	cmp	x20, x0
	bhi	.L31
	mov	x0, x20
	bl	_Znwm
	mov	x3, x0
.L25:
	add	x20, x3, x20
	stp	x3, x3, [x19]
	str	x20, [x19, 16]
	ldp	x1, x0, [x21]
	sub	x20, x0, x1
	cmp	x1, x0
	beq	.L28
	mov	x0, x3
	mov	x2, x20
	bl	memmove
	mov	x3, x0
.L28:
	add	x3, x3, x20
	mov	x0, x19
	ldr	x21, [sp, 32]
	str	x3, [x19, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L29:
	.cfi_restore_state
	mov	x3, 0
	b	.L25
.L31:
	bl	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE8332:
	.size	_Z11copy_matrixRKSt6vectorIfSaIfEE, .-_Z11copy_matrixRKSt6vectorIfSaIfEE
	.align	2
	.p2align 4,,11
	.global	_Z13verify_resultRKSt6vectorIfSaIfEES3_if
	.type	_Z13verify_resultRKSt6vectorIfSaIfEES3_if, %function
_Z13verify_resultRKSt6vectorIfSaIfEES3_if:
.LFB8333:
	.cfi_startproc
	mul	w2, w2, w2
	cbz	w2, .L35
	ldr	x1, [x1]
	ldr	x3, [x0]
	mov	x0, 0
	.p2align 3,,7
.L34:
	ldr	s1, [x3, x0, lsl 2]
	ldr	s2, [x1, x0, lsl 2]
	add	x0, x0, 1
	fabd	s1, s1, s2
	fcmpe	s1, s0
	bgt	.L36
	cmp	w2, w0
	bgt	.L34
.L35:
	mov	w0, 1
	ret
	.p2align 2,,3
.L36:
	mov	w0, 0
	ret
	.cfi_endproc
.LFE8333:
	.size	_Z13verify_resultRKSt6vectorIfSaIfEES3_if, .-_Z13verify_resultRKSt6vectorIfSaIfEES3_if
	.align	2
	.p2align 4,,11
	.global	_Z12gauss_serialRSt6vectorIfSaIfEEi
	.type	_Z12gauss_serialRSt6vectorIfSaIfEEi, %function
_Z12gauss_serialRSt6vectorIfSaIfEEi:
.LFB8334:
	.cfi_startproc
	mov	w2, w1
	cmp	w1, 0
	ble	.L38
	ldr	x12, [x0]
	sxtw	x10, w1
	add	x10, x10, 1
	sub	w11, w1, #1
	mov	x9, x12
	mov	x7, 1
	lsl	x10, x10, 2
	mov	x5, x12
	sub	x8, x10, #4
	mov	w4, w7
	mov	x6, 0
	fmov	s3, 1.0e+0
	ldr	s1, [x9]
	cmp	x6, x11
	beq	.L40
	.p2align 3,,7
.L48:
	mov	x0, x7
	mov	x3, x5
	.p2align 3,,7
.L42:
	ldr	s0, [x5, x0, lsl 2]
	fdiv	s0, s0, s1
	str	s0, [x5, x0, lsl 2]
	add	x0, x0, 1
	cmp	w2, w0
	bgt	.L42
	add	x5, x5, x8
	str	s3, [x9]
	mov	x1, x5
	.p2align 3,,7
.L44:
	mov	x0, x7
	ldr	s2, [x1, x6, lsl 2]
	.p2align 3,,7
.L43:
	ldr	s1, [x3, x0, lsl 2]
	ldr	s0, [x1, x0, lsl 2]
	fmsub	s0, s1, s2, s0
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	w2, w0
	bgt	.L43
	add	w4, w4, 1
	str	wzr, [x1, x6, lsl 2]
	add	x1, x1, x8
	cmp	w2, w4
	bne	.L44
	add	x9, x9, x10
	add	x7, x7, 1
	add	x6, x6, 1
	mov	w4, w7
	ldr	s1, [x9]
	cmp	x6, x11
	bne	.L48
.L40:
	mul	x10, x10, x6
	fmov	s0, 1.0e+0
	str	s0, [x12, x10]
.L38:
	ret
	.cfi_endproc
.LFE8334:
	.size	_Z12gauss_serialRSt6vectorIfSaIfEEi, .-_Z12gauss_serialRSt6vectorIfSaIfEEi
	.align	2
	.p2align 4,,11
	.global	_Z10gauss_simdRSt6vectorIfSaIfEEi
	.type	_Z10gauss_simdRSt6vectorIfSaIfEEi, %function
_Z10gauss_simdRSt6vectorIfSaIfEEi:
.LFB8335:
	.cfi_startproc
	cmp	w1, 0
	ble	.L72
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	sbfiz	x8, x1, 2, 32
	sxtw	x30, w1
	mov	x29, sp
	mov	w6, w1
	sub	w16, w1, #5
	ldr	x1, [x0]
	mov	x10, 4
	sub	x5, x10, #4
	mov	w9, w10
	stp	x19, x20, [sp, 16]
	mov	w13, 0
	mov	x4, x0
	ldr	s2, [x1, x5]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	add	x20, x30, 1
	stp	x21, x22, [sp, 32]
	mov	x17, x30
	add	x19, x8, 4
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	add	w13, w13, 1
	add	x3, x1, x5
	dup	v1.4s, v2.s[0]
	mov	x15, 0
	mov	x18, 0
	mov	x11, 0
	mov	x12, 0
	mov	w14, 5
	fmov	s4, 1.0e+0
	cmp	w6, w9
	ble	.L65
	.p2align 3,,7
.L76:
	lsr	w3, w16, 2
	add	x2, x15, 5
	mov	x0, x10
	add	x2, x2, x3, uxtw 2
	lsl	x2, x2, 2
	.p2align 3,,7
.L52:
	ldr	q0, [x1, x0]
	fdiv	v0.4s, v0.4s, v1.4s
	str	q0, [x1, x0]
	add	x0, x0, 16
	ldr	x1, [x4]
	cmp	x0, x2
	bne	.L52
	add	w2, w14, w3, lsl 2
	add	x3, x1, x5
.L51:
	sxtw	x0, w2
	add	x7, x1, x12
	cmp	w6, w2
	ble	.L56
.L57:
	ldr	s0, [x7, x0, lsl 2]
	fdiv	s0, s0, s2
	str	s0, [x7, x0, lsl 2]
	add	x0, x0, 1
	cmp	w6, w0
	bgt	.L57
.L56:
	str	s4, [x3]
	cmp	w6, w13
	beq	.L75
	lsr	w23, w16, 2
	add	x5, x15, 5
	sub	x3, x17, x18
	lsl	x21, x17, 2
	add	x5, x5, x23, uxtw 2
	mov	w22, w13
	add	w23, w14, w23, lsl 2
	lsl	x3, x3, 2
	lsl	x5, x5, 2
	.p2align 3,,7
.L63:
	add	x7, x21, x11
	add	x24, x1, x7
	ldr	s3, [x1, x7]
	dup	v2.4s, v3.s[0]
	cmp	w6, w9
	ble	.L66
	mov	x0, x10
	.p2align 3,,7
.L59:
	add	x2, x3, x0
	ldr	q1, [x1, x0]
	add	x0, x0, 16
	ldr	q0, [x1, x2]
	fmls	v0.4s, v1.4s, v2.4s
	str	q0, [x1, x2]
	ldr	x1, [x4]
	cmp	x5, x0
	bne	.L59
	add	x24, x1, x7
	sxtw	x0, w23
	cmp	w6, w23
	ble	.L60
.L58:
	add	x7, x1, x12
	add	x2, x1, x21
.L62:
	ldr	s1, [x7, x0, lsl 2]
	ldr	s0, [x2, x0, lsl 2]
	fmsub	s0, s1, s3, s0
	str	s0, [x2, x0, lsl 2]
	add	x0, x0, 1
	cmp	w6, w0
	bgt	.L62
.L60:
	add	w22, w22, 1
	str	wzr, [x24]
	add	x21, x21, x8
	add	x3, x3, x8
	cmp	w6, w22
	bne	.L63
	add	x10, x10, x19
	add	w9, w9, 1
	sub	x5, x10, #4
	sub	w16, w16, #1
	add	w14, w14, 1
	add	x12, x12, x8
	add	x11, x11, 4
	add	x17, x17, x30
	ldr	s2, [x1, x5]
	add	x18, x18, x30
	add	x15, x15, x20
	add	w13, w13, 1
	add	x3, x1, x5
	dup	v1.4s, v2.s[0]
	cmp	w6, w9
	bgt	.L76
.L65:
	mov	w2, w13
	b	.L51
	.p2align 2,,3
.L66:
	sxtw	x0, w13
	b	.L58
.L75:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L72:
	ret
	.cfi_endproc
.LFE8335:
	.size	_Z10gauss_simdRSt6vectorIfSaIfEEi, .-_Z10gauss_simdRSt6vectorIfSaIfEEi
	.align	2
	.p2align 4,,11
	.global	_Z18gauss_simd_alignedRSt6vectorIfSaIfEEi
	.type	_Z18gauss_simd_alignedRSt6vectorIfSaIfEEi, %function
_Z18gauss_simd_alignedRSt6vectorIfSaIfEEi:
.LFB8336:
	.cfi_startproc
	cmp	w1, 0
	ble	.L114
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	sxtw	x14, w1
	mov	w4, w1
	mov	x29, sp
	ldr	x2, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, 0
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	add	x24, x14, 1
	ldr	s1, [x2, x21]
	lsl	x24, x24, 2
	stp	x19, x20, [sp, 16]
	mov	x8, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x20, 1
	add	w25, w1, 1
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x22, x14
	sub	x12, x24, #4
	dup	v2.4s, v1.s[0]
	sub	w30, w1, #4
	add	x7, x2, x21
	mov	w15, w20
	mov	w6, w20
	mov	w23, 1
	mov	x13, 0
	mov	x17, 4
	mov	x16, 0
	mov	x19, 0
	fmov	s4, 1.0e+0
	cmp	w4, w20
	ble	.L79
	.p2align 3,,7
.L117:
	add	x3, x2, x23, sxtw 2
	tst	x3, 15
	beq	.L100
	add	x1, x21, 8
	mov	w0, w20
	add	x1, x2, x1
	b	.L81
	.p2align 2,,3
.L82:
	add	x1, x1, 4
	cbz	x5, .L80
.L81:
	ldr	s0, [x3]
	add	w0, w0, 1
	and	x5, x1, 15
	fdiv	s0, s0, s1
	str	s0, [x3]
	mov	x3, x1
	cmp	w4, w0
	bne	.L82
.L83:
	str	s4, [x7]
	cmp	w4, w6
	ble	.L77
.L120:
	sub	x6, x22, x13
	lsl	x9, x22, 2
	sub	x7, x13, x22
	mov	w11, w15
	lsl	x6, x6, 2
	add	x18, x17, 4
	.p2align 3,,7
.L96:
	add	x10, x9, x16
	add	x26, x9, x17
	add	x26, x2, x26
	add	x28, x2, x10
	ldr	s2, [x2, x10]
	dup	v3.4s, v2.s[0]
	tst	x26, 15
	beq	.L101
	add	x1, x18, x9
	mov	w0, w15
	add	x1, x2, x1
	b	.L89
	.p2align 2,,3
.L90:
	cbz	x27, .L88
.L89:
	sub	x3, x1, #4
	mov	x5, x26
	add	w0, w0, 1
	mov	x26, x1
	and	x27, x1, 15
	add	x1, x1, 4
	ldr	s1, [x3, x7, lsl 2]
	ldr	s0, [x5]
	fmsub	s0, s1, s2, s0
	str	s0, [x5]
	cmp	w4, w0
	bne	.L90
.L91:
	add	w11, w11, 1
	str	wzr, [x28]
	add	x9, x9, x12
	sub	x7, x7, x14
	add	x6, x6, x12
	cmp	w4, w11
	bne	.L96
.L119:
	add	x21, x21, x24
	add	x20, x20, 1
	add	x19, x19, x12
	add	x16, x16, 4
	mov	x17, x18
	add	x13, x13, x14
	ldr	s1, [x2, x21]
	add	x22, x22, x14
	add	w23, w23, w25
	add	x7, x2, x21
	mov	w15, w20
	mov	w6, w20
	dup	v2.4s, v1.s[0]
	cmp	w4, w20
	bgt	.L117
.L79:
	add	w0, w20, 3
	cmp	w4, w0
	ble	.L118
	mov	w0, w20
	add	w5, w15, 3
	b	.L99
.L101:
	mov	w0, w15
	.p2align 3,,7
.L88:
	add	w5, w0, 3
	cmp	w5, w4
	bge	.L93
	add	x1, x13, x0, sxtw
	add	w26, w0, 7
	lsl	x1, x1, 2
	b	.L94
	.p2align 2,,3
.L92:
	ldr	x2, [x8]
	add	w26, w26, 4
.L94:
	add	x3, x6, x1
	ldr	q1, [x2, x1]
	add	x1, x1, 16
	ldr	q0, [x2, x3]
	fmls	v0.4s, v1.4s, v3.4s
	str	q0, [x2, x3]
	cmp	w4, w26
	bgt	.L92
	sub	w1, w30, w0
	cmp	w4, w5
	and	w1, w1, -4
	add	w0, w0, 4
	ldr	x2, [x8]
	csel	w1, w1, wzr, gt
	add	w0, w1, w0
	add	x28, x2, x10
	cmp	w4, w0
	ble	.L91
.L93:
	sxtw	x0, w0
	add	x1, x2, x9
	add	x3, x2, x19
.L95:
	ldr	s1, [x3, x0, lsl 2]
	ldr	s0, [x1, x0, lsl 2]
	fmsub	s0, s1, s2, s0
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	w4, w0
	bgt	.L95
	add	w11, w11, 1
	str	wzr, [x28]
	add	x9, x9, x12
	sub	x7, x7, x14
	add	x6, x6, x12
	cmp	w4, w11
	bne	.L96
	b	.L119
.L100:
	mov	w0, w20
.L80:
	add	w5, w0, 3
	cmp	w5, w4
	bge	.L85
.L99:
	add	x1, x13, x0, sxtw
	add	w3, w0, 7
	lsl	x1, x1, 2
	b	.L86
	.p2align 2,,3
.L84:
	ldr	x2, [x8]
	add	w3, w3, 4
.L86:
	ldr	q0, [x2, x1]
	fdiv	v0.4s, v0.4s, v2.4s
	str	q0, [x2, x1]
	add	x1, x1, 16
	cmp	w4, w3
	bgt	.L84
	sub	w1, w30, w0
	cmp	w4, w5
	and	w1, w1, -4
	add	w0, w0, 4
	ldr	x2, [x8]
	csel	w1, w1, wzr, gt
	add	w0, w1, w0
	add	x7, x2, x21
	cmp	w4, w0
	ble	.L83
.L85:
	sxtw	x0, w0
	add	x1, x2, x13, lsl 2
.L87:
	ldr	s0, [x1, x0, lsl 2]
	fdiv	s0, s0, s1
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	w4, w0
	bgt	.L87
	str	s4, [x7]
	cmp	w4, w6
	bgt	.L120
.L77:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L114:
	ret
.L118:
	.cfi_def_cfa_offset 96
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	fmov	s0, 1.0e+0
	str	s0, [x7]
	b	.L77
	.cfi_endproc
.LFE8336:
	.size	_Z18gauss_simd_alignedRSt6vectorIfSaIfEEi, .-_Z18gauss_simd_alignedRSt6vectorIfSaIfEEi
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt12_Vector_baseIfSaIfEED2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEED2Ev, %function
_ZNSt12_Vector_baseIfSaIfEED2Ev:
.LFB8670:
	.cfi_startproc
	mov	x2, x0
	ldr	x0, [x0]
	cbz	x0, .L121
	ldr	x1, [x2, 16]
	sub	x1, x1, x0
	b	_ZdlPvm
	.p2align 2,,3
.L121:
	ret
	.cfi_endproc
.LFE8670:
	.size	_ZNSt12_Vector_baseIfSaIfEED2Ev, .-_ZNSt12_Vector_baseIfSaIfEED2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEED1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEED1Ev,_ZNSt12_Vector_baseIfSaIfEED2Ev
	.section	.text._ZNSt6vectorIfSaIfEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5ERKS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIfSaIfEEC2ERKS1_
	.type	_ZNSt6vectorIfSaIfEEC2ERKS1_, %function
_ZNSt6vectorIfSaIfEEC2ERKS1_:
.LFB8673:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x0
	ldp	x0, x20, [x1]
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	stp	xzr, xzr, [x19]
	mov	x21, x1
	str	xzr, [x19, 16]
	subs	x20, x20, x0
	beq	.L128
	mov	x0, 9223372036854775804
	cmp	x20, x0
	bhi	.L130
	mov	x0, x20
	bl	_Znwm
	mov	x3, x0
.L124:
	add	x20, x3, x20
	stp	x3, x3, [x19]
	str	x20, [x19, 16]
	ldp	x1, x0, [x21]
	subs	x20, x0, x1
	beq	.L127
	mov	x0, x3
	mov	x2, x20
	bl	memmove
	mov	x3, x0
.L127:
	add	x3, x3, x20
	ldr	x21, [sp, 32]
	str	x3, [x19, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L128:
	.cfi_restore_state
	mov	x3, 0
	b	.L124
.L130:
	bl	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE8673:
	.size	_ZNSt6vectorIfSaIfEEC2ERKS1_, .-_ZNSt6vectorIfSaIfEEC2ERKS1_
	.weak	_ZNSt6vectorIfSaIfEEC1ERKS1_
	.set	_ZNSt6vectorIfSaIfEEC1ERKS1_,_ZNSt6vectorIfSaIfEEC2ERKS1_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, %function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB9030:
	.cfi_startproc
	mov	x7, 45279
	mov	x1, x0
	add	x6, x0, 1816
	mov	x3, x0
	movk	x7, 0x9908, lsl 16
	.p2align 3,,7
.L133:
	ldp	x4, x5, [x3]
	ldr	x2, [x3, 3176]
	bfi	x4, x5, 0, 31
	eor	x2, x2, x4, lsr 1
	tst	x4, 1
	eor	x4, x2, x7
	csel	x2, x4, x2, ne
	str	x2, [x3], 8
	cmp	x6, x3
	bne	.L133
	mov	x5, 45279
	add	x6, x0, 3168
	movk	x5, 0x9908, lsl 16
	.p2align 3,,7
.L135:
	ldr	x3, [x1, 1816]
	add	x1, x1, 8
	ldr	x4, [x1, 1816]
	ldr	x2, [x1, -8]
	bfi	x3, x4, 0, 31
	eor	x2, x2, x3, lsr 1
	tst	x3, 1
	eor	x3, x2, x5
	csel	x2, x3, x2, ne
	str	x2, [x1, 1808]
	cmp	x6, x1
	bne	.L135
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
.LFE9030:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata.str1.8
	.align	3
.LC1:
	.string	"default"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z15generate_matrixi
	.type	_Z15generate_matrixi, %function
_Z15generate_matrixi:
.LFB8322:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8322
	mov	x12, 10144
	sub	sp, sp, x12
	.cfi_def_cfa_offset 10144
	stp	x29, x30, [sp]
	.cfi_offset 29, -10144
	.cfi_offset 30, -10136
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -10112
	.cfi_offset 22, -10104
	mul	w21, w0, w0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -10128
	.cfi_offset 20, -10120
	mov	x20, x8
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -10096
	.cfi_offset 24, -10088
	mov	w23, w0
	stp	xzr, xzr, [x8]
	str	xzr, [x8, 16]
	cbz	w21, .L146
	sbfiz	x21, x21, 2, 32
	mov	x0, x21
.LEHB0:
	bl	_Znwm
.LEHE0:
	add	x19, x0, x21
	str	x0, [x20]
	str	x19, [x20, 16]
	mov	x2, x21
	mov	w1, 0
	bl	memset
.L160:
	mov	x0, 5144
	str	x19, [x20, 8]
	add	x19, sp, x0
	adrp	x1, .LC1
	add	x3, x19, 16
	adrp	x2, .LC1+7
	add	x1, x1, :lo12:.LC1
	add	x2, x2, :lo12:.LC1+7
	mov	x0, x19
	str	x3, [sp, 5144]
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE1:
	mov	x1, x19
	add	x0, sp, 144
.LEHB2:
	bl	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE2:
	ldr	x0, [sp, 5144]
	add	x1, x19, 16
	cmp	x0, x1
	beq	.L147
	ldr	x1, [sp, 5160]
	add	x1, x1, 1
	bl	_ZdlPvm
.L147:
	mov	x3, 35173
	mov	x4, 42
	add	x2, x19, 8
	mov	x1, x4
	mov	x0, 1
	movk	x3, 0x6c07, lsl 16
	str	x4, [sp, 5144]
	b	.L148
	.p2align 2,,3
.L151:
	add	x2, x2, 8
.L148:
	eor	x1, x1, x1, lsr 30
	madd	w1, w1, w3, w0
	add	x0, x0, 1
	str	x1, [x2]
	cmp	x0, 624
	bne	.L151
	str	x0, [sp, 10136]
	cmp	w23, 0
	ble	.L158
	sxtw	x24, w23
	uxtw	x1, w23
	add	x24, x24, 1
	str	x1, [sp, 136]
	ldr	x4, [x20]
	lsl	x24, x24, 2
	sub	x1, x24, #4
	mov	w2, 65534
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -10072
	.cfi_offset 25, -10080
	ubfiz	x25, x23, 2, 32
	movk	w2, 0x42c7, lsl 16
	str	x1, [sp, 128]
	mov	w1, 1128792064
	mov	x21, 0
	mov	w22, 0
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -10056
	.cfi_offset 27, -10064
	stp	d8, d9, [sp, 96]
	.cfi_offset 73, -10040
	.cfi_offset 72, -10048
	fmov	s9, w2
	stp	d10, d11, [sp, 112]
	.cfi_offset 75, -10024
	.cfi_offset 74, -10032
	fmov	s11, w1
	mov	w1, -1027080192
	fmov	s10, w1
	.p2align 3,,7
.L159:
	ldr	x1, [sp, 136]
	mov	x26, 22144
	movk	x26, 0x9d2c, lsl 16
	sub	x27, x25, x1, lsl 2
	mov	w1, 796917760
	fmov	s8, w1
	b	.L155
	.p2align 2,,3
.L153:
	ldr	x1, [x19, x0, lsl 3]
	mov	x2, 4022730752
	movi	v2.2s, #0
	fmov	s1, 1.0e+0
	add	x0, x0, 1
	str	x0, [sp, 10136]
	ubfx	x3, x1, 11, 32
	eor	x1, x1, x3
	and	x3, x26, x1, lsl 7
	eor	x1, x1, x3
	and	x2, x2, x1, lsl 15
	eor	x1, x1, x2
	eor	x1, x1, x1, lsr 18
	ucvtf	s0, x1
	fadd	s0, s0, s2
	fmul	s0, s0, s8
	fcmpe	s0, s1
	bge	.L162
	fmadd	s0, s0, s11, s10
.L154:
	add	x27, x27, 4
	str	s0, [x28]
	cmp	x25, x27
	beq	.L169
.L155:
	add	x28, x4, x27
	cmp	x0, 623
	bls	.L153
	mov	x0, x19
	bl	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	ldr	x4, [x20]
	ldr	x0, [sp, 10136]
	b	.L153
	.p2align 2,,3
.L169:
	ldr	s1, [x4, x21]
	mov	w1, 4719
	movk	w1, 0x3a83, lsl 16
	fmov	s0, w1
	fabs	s1, s1
	fcmpe	s1, s0
	bmi	.L165
.L156:
	ldr	x1, [sp, 128]
	add	w22, w22, 1
	add	x21, x21, x24
	add	x25, x25, x1
	cmp	w23, w22
	bne	.L159
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
.L158:
	add	x0, sp, 144
	bl	_ZNSt13random_device7_M_finiEv
	mov	x0, x20
	mov	x12, 10144
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
.L162:
	.cfi_def_cfa_offset 10144
	.cfi_offset 19, -10128
	.cfi_offset 20, -10120
	.cfi_offset 21, -10112
	.cfi_offset 22, -10104
	.cfi_offset 23, -10096
	.cfi_offset 24, -10088
	.cfi_offset 25, -10080
	.cfi_offset 26, -10072
	.cfi_offset 27, -10064
	.cfi_offset 28, -10056
	.cfi_offset 29, -10144
	.cfi_offset 30, -10136
	.cfi_offset 72, -10048
	.cfi_offset 73, -10040
	.cfi_offset 74, -10032
	.cfi_offset 75, -10024
	fmov	s0, s9
	b	.L154
	.p2align 2,,3
.L165:
	fmov	s0, 1.0e+0
	str	s0, [x4, x21]
	b	.L156
.L146:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	mov	x19, 0
	str	xzr, [x8]
	str	xzr, [x8, 16]
	b	.L160
.L164:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L150:
	mov	x0, x20
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -10072
	.cfi_offset 25, -10080
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -10056
	.cfi_offset 27, -10064
	stp	d8, d9, [sp, 96]
	.cfi_offset 73, -10040
	.cfi_offset 72, -10048
	stp	d10, d11, [sp, 112]
	.cfi_offset 75, -10024
	.cfi_offset 74, -10032
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
	mov	x0, x19
.LEHB3:
	bl	_Unwind_Resume
.LEHE3:
.L163:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	.cfi_restore 73
	.cfi_restore 74
	.cfi_restore 75
	mov	x19, x0
	b	.L150
	.cfi_endproc
.LFE8322:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8322:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8322-.LLSDACSB8322
.LLSDACSB8322:
	.uleb128 .LEHB0-.LFB8322
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8322
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L163-.LFB8322
	.uleb128 0
	.uleb128 .LEHB2-.LFB8322
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L164-.LFB8322
	.uleb128 0
	.uleb128 .LEHB3-.LFB8322
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE8322:
	.text
	.size	_Z15generate_matrixi, .-_Z15generate_matrixi
	.section	.rodata.str1.8
	.align	3
.LC2:
	.string	"YES"
	.align	3
.LC3:
	.string	"NO"
	.align	3
.LC4:
	.string	"stoi"
	.align	3
.LC5:
	.string	"Testing matrix size: "
	.align	3
.LC6:
	.string	"x"
	.align	3
.LC7:
	.string	"Serial:  "
	.align	3
.LC8:
	.string	" ms\n"
	.align	3
.LC9:
	.string	"SIMD:    "
	.align	3
.LC10:
	.string	" ms (speedup: "
	.align	3
.LC11:
	.string	"x, correct: "
	.align	3
.LC12:
	.string	")\n"
	.align	3
.LC13:
	.string	"Aligned: "
	.align	3
.LC14:
	.string	"Total time: "
	.align	3
.LC15:
	.string	" ms"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB8337:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8337
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	w19, w0
	mov	x20, x1
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	str	d10, [sp, 72]
	stp	d8, d9, [sp, 80]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	.cfi_offset 25, -144
	.cfi_offset 74, -136
	.cfi_offset 72, -128
	.cfi_offset 73, -120
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x22, x0
	cmp	w19, 1
	ble	.L185
	ldr	x19, [x20, 8]
	add	x24, sp, 176
	add	x0, x24, 16
	str	x0, [sp, 176]
	cbz	x19, .L186
	mov	x0, x19
	bl	strlen
	add	x2, x19, x0
.L172:
	mov	x1, x19
	mov	x0, x24
.LEHB4:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	bl	__errno_location
	mov	x19, x0
	ldr	x21, [sp, 176]
	add	x1, sp, 152
	ldr	w23, [x0]
	mov	w2, 10
	str	wzr, [x19]
	mov	x0, x21
	bl	strtol
	mov	x20, x0
	ldr	x1, [sp, 152]
	cmp	x21, x1
	beq	.L200
	ldr	w1, [x19]
	cmp	w1, 34
	beq	.L174
	mov	x0, 2147483648
	add	x0, x20, x0
	mov	x2, 4294967295
	cmp	x0, x2
	bhi	.L174
	cbnz	w1, .L176
	str	w23, [x19]
.L176:
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.L171:
	adrp	x23, _ZSt4cout
	add	x21, x23, :lo12:_ZSt4cout
	mov	x0, x21
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	w1, w20
	bl	_ZNSolsEi
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	w1, w20
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	add	x8, sp, 104
	mov	w0, w20
	bl	_Z15generate_matrixi
.LEHE4:
	add	x1, sp, 104
	add	x0, sp, 128
.LEHB5:
	bl	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE5:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x19, x0
	mov	w1, w20
	add	x0, sp, 128
	bl	_Z12gauss_serialRSt6vectorIfSaIfEEi
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x2, x0, x19
	mov	x0, 145685290680320
	add	x1, sp, 104
	scvtf	d8, x2
	movk	x0, 0x412e, lsl 48
	fmov	d0, x0
	add	x0, sp, 152
	fdiv	d8, d8, d0
.LEHB6:
	bl	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE6:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x19, x0
	mov	w1, w20
	add	x0, sp, 152
	bl	_Z10gauss_simdRSt6vectorIfSaIfEEi
	add	x24, sp, 176
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x2, x0, x19
	mov	x0, 145685290680320
	add	x1, sp, 104
	scvtf	d10, x2
	movk	x0, 0x412e, lsl 48
	fmov	d0, x0
	mov	x0, x24
	fdiv	d10, d10, d0
.LEHB7:
	bl	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE7:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x19, x0
	mov	w1, w20
	mov	x0, x24
	bl	_Z18gauss_simd_alignedRSt6vectorIfSaIfEEi
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x0, x0, x19
	mov	x1, 145685290680320
	mov	w2, 50604
	scvtf	d9, x0
	movk	x1, 0x412e, lsl 48
	fmov	d1, x1
	movk	w2, 0x3727, lsl 16
	fmov	s0, w2
	add	x1, sp, 152
	mov	w2, w20
	add	x0, sp, 128
	fdiv	d9, d9, d1
	bl	_Z13verify_resultRKSt6vectorIfSaIfEES3_if
	mov	w2, w20
	mov	x1, x24
	and	w19, w0, 255
	add	x0, sp, 128
	bl	_Z13verify_resultRKSt6vectorIfSaIfEES3_if
	mov	w4, -261
	ldr	x2, [x23, #:lo12:_ZSt4cout]
	mov	x5, 3
	and	w20, w0, 255
	adrp	x1, .LC7
	mov	x0, x21
	add	x1, x1, :lo12:.LC7
	ldr	x2, [x2, -24]
	add	x2, x21, x2
	ldr	w3, [x2, 24]
	str	x5, [x2, 8]
	and	w3, w3, w4
	orr	w3, w3, 4
	str	w3, [x2, 24]
.LEHB8:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fmov	d0, d8
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, .LC9
	mov	x0, x21
	add	x1, x1, :lo12:.LC9
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fmov	d0, d10
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x25, .LC10
	add	x25, x25, :lo12:.LC10
	mov	x1, x25
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fdiv	d0, d8, d10
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x23, .LC11
	add	x23, x23, :lo12:.LC11
	mov	x1, x23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmp	w19, 0
	adrp	x2, .LC3
	add	x2, x2, :lo12:.LC3
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	csel	x1, x1, x2, ne
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x19, .LC12
	add	x19, x19, :lo12:.LC12
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, .LC13
	mov	x0, x21
	add	x1, x1, :lo12:.LC13
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fmov	d0, d9
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x1, x25
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fdiv	d0, d8, d9
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x1, x23
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	cmp	w20, 0
	adrp	x2, .LC3
	add	x2, x2, :lo12:.LC3
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	csel	x1, x1, x2, ne
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x2, x0, x22
	mov	x0, 145685290680320
	adrp	x1, .LC14
	scvtf	d8, x2
	movk	x0, 0x412e, lsl 48
	fmov	d0, x0
	add	x1, x1, :lo12:.LC14
	mov	x0, x21
	fdiv	d8, d8, d0
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	fmov	d0, d8
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC15
	add	x1, x1, :lo12:.LC15
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE8:
	mov	x0, x24
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
	add	x0, sp, 152
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
	add	x0, sp, 128
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
	add	x0, sp, 104
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
	mov	w0, 0
	ldr	d10, [sp, 72]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	d8, d9, [sp, 80]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 74
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L185:
	.cfi_restore_state
	mov	w20, 100
	b	.L171
.L186:
	mov	x2, -1
	b	.L172
.L174:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
.LEHB9:
	bl	_ZSt20__throw_out_of_rangePKc
.L200:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE9:
.L189:
	mov	x19, x0
	b	.L184
.L190:
	mov	x19, x0
	b	.L183
.L192:
	mov	x19, x0
	mov	x0, x24
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
.L182:
	add	x0, sp, 152
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
.L183:
	add	x0, sp, 128
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
.L184:
	add	x0, sp, 104
	bl	_ZNSt12_Vector_baseIfSaIfEED2Ev
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.L191:
	mov	x19, x0
	b	.L182
.L193:
	ldr	w1, [x19]
	mov	x20, x0
	cbnz	w1, .L178
	str	w23, [x19]
.L178:
	mov	x0, x24
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x20
	bl	_Unwind_Resume
.LEHE10:
	.cfi_endproc
.LFE8337:
	.section	.gcc_except_table
.LLSDA8337:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8337-.LLSDACSB8337
.LLSDACSB8337:
	.uleb128 .LEHB4-.LFB8337
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8337
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L189-.LFB8337
	.uleb128 0
	.uleb128 .LEHB6-.LFB8337
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L190-.LFB8337
	.uleb128 0
	.uleb128 .LEHB7-.LFB8337
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L191-.LFB8337
	.uleb128 0
	.uleb128 .LEHB8-.LFB8337
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L192-.LFB8337
	.uleb128 0
	.uleb128 .LEHB9-.LFB8337
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L193-.LFB8337
	.uleb128 0
	.uleb128 .LEHB10-.LFB8337
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE8337:
	.section	.text.startup
	.size	main, .-main
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z15generate_matrixi, %function
_GLOBAL__sub_I__Z15generate_matrixi:
.LFB9056:
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
.LFE9056:
	.size	_GLOBAL__sub_I__Z15generate_matrixi, .-_GLOBAL__sub_I__Z15generate_matrixi
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z15generate_matrixi
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
