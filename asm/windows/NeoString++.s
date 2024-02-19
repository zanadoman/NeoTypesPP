	.file	"NeoString++.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "neo::string(): Memory allocation failed\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo6stringC2Ev.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2Ev.part.0
_ZN3neo6stringC2Ev.part.0:
.LFB1971:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC0(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "neo::string+=: Memory allocation failed\12Params: Characters(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.def	_ZN3neo6string8ToStringEy.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEy.constprop.0
_ZN3neo6string8ToStringEy.constprop.0:
.LFB1976:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %r13
	movl	$16, %ecx
.LEHB0:
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rdi
	call	malloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L16
	movb	$0, (%rax)
	movl	$1, %ebx
	cmpq	$9, %r13
	jbe	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r13, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L7
	testq	%rbx, %rbx
	je	.L4
.L6:
	movl	$1, %r14d
	leaq	47(%rsp), %r12
	movabsq	$-3689348814741910323, %rbp
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%rdx, %rbx
.L9:
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r13
	leaq	1(%r14), %rdx
	addl	$48, %eax
	movq	%rdx, (%rdi)
	movb	%al, 47(%rsp)
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L17
	leaq	-1(%rax,%r14), %rdx
	movq	%r12, %rcx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	movq	8(%rdi), %rcx
	movq	(%rdi), %r14
	mulq	%rbp
	movb	$0, -1(%rcx,%r14)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L13
.L4:
	movq	%rdi, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L17:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
.LEHE0:
	movl	$1, %ecx
	call	exit
.L16:
.LEHB1:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE1:
.L14:
	movq	%rax, %rbx
	jmp	.L11
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1976:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1976-.LLSDACSB1976
.LLSDACSB1976:
	.uleb128 .LEHB0-.LFB1976
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1976
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L14-.LFB1976
	.uleb128 0
.LLSDACSE1976:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ToStringEy.constprop.0.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEy.constprop.0.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 56
	.seh_savereg	%rdi, 64
	.seh_savereg	%rbp, 72
	.seh_savereg	%r12, 80
	.seh_savereg	%r13, 88
	.seh_savereg	%r14, 96
	.seh_endprologue
_ZN3neo6string8ToStringEy.constprop.0.cold:
.L11:
	movq	%rdi, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1976:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1976-.LLSDACSBC1976
.LLSDACSBC1976:
	.uleb128 .LEHB2-.LCOLDB2
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC1976:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4
	.def	_ZN3neo6string8ToStringEx.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEx.constprop.0
_ZN3neo6string8ToStringEx.constprop.0:
.LFB1979:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %r13
	movl	$16, %ecx
.LEHB3:
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rdi
	call	malloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L36
	movb	$0, (%rax)
	movl	$1, %r14d
	testq	%r13, %r13
	js	.L37
.L20:
	movl	$1, %ebx
	cmpq	$9, %r13
	jle	.L22
	.p2align 4,,10
	.p2align 3
.L23:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r13, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L23
	testq	%rbx, %rbx
	je	.L18
.L22:
	movabsq	$-3689348814741910323, %rbp
	leaq	46(%rsp), %r12
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L30:
	movq	%rdx, %rbx
.L25:
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r13
	leaq	1(%r14), %rdx
	addl	$48, %eax
	movq	%rdx, (%rdi)
	movb	%al, 46(%rsp)
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L24
	leaq	-1(%rax,%r14), %rdx
	movq	%r12, %rcx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	movq	8(%rdi), %rcx
	movq	(%rdi), %r14
	mulq	%rbp
	movb	$0, -1(%rcx,%r14)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L30
.L18:
	movq	%rdi, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	movq	$2, (%rdi)
	movl	$2, %edx
	movb	$45, 47(%rsp)
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L24
	leaq	47(%rsp), %rcx
	movl	$1, %r8d
	negq	%r13
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rdi), %rcx
	movq	(%rdi), %r14
	movb	$0, -1(%rcx,%r14)
	jmp	.L20
.L24:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
.LEHE3:
	movl	$1, %ecx
	call	exit
.L36:
.LEHB4:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE4:
.L31:
	movq	%rax, %rbx
	jmp	.L27
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1979-.LLSDACSB1979
.LLSDACSB1979:
	.uleb128 .LEHB3-.LFB1979
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1979
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L31-.LFB1979
	.uleb128 0
.LLSDACSE1979:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ToStringEx.constprop.0.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEx.constprop.0.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 56
	.seh_savereg	%rdi, 64
	.seh_savereg	%rbp, 72
	.seh_savereg	%r12, 80
	.seh_savereg	%r13, 88
	.seh_savereg	%r14, 96
	.seh_endprologue
_ZN3neo6string8ToStringEx.constprop.0.cold:
.L27:
	movq	%rdi, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1979-.LLSDACSBC1979
.LLSDACSBC1979:
	.uleb128 .LEHB5-.LCOLDB3
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC1979:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.def	_ZN3neo6string8ToStringEd.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEd.constprop.0
_ZN3neo6string8ToStringEd.constprop.0:
.LFB1980:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movl	$16, %ecx
	movapd	%xmm0, %xmm6
.LEHB6:
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rsi
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %r8
	testq	%rax, %rax
	je	.L93
	pxor	%xmm0, %xmm0
	movb	$0, (%rax)
	movl	$1, %r13d
	comisd	%xmm6, %xmm0
	ja	.L94
.L40:
	movsd	.LC6(%rip), %xmm7
	comisd	%xmm7, %xmm6
	jnb	.L43
	cvttsd2siq	%xmm6, %r12
	testq	%r12, %r12
	js	.L45
.L96:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
.L46:
	subsd	%xmm0, %xmm6
	movl	$1, %ebx
	cmpq	$9, %r12
	jbe	.L47
	.p2align 4,,10
	.p2align 3
.L48:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r12, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L48
	testq	%rbx, %rbx
	je	.L49
.L47:
	movabsq	$-3689348814741910323, %rdi
	leaq	62(%rsp), %rbp
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L69:
	movq	%rdx, %rbx
.L51:
	movq	%r12, %rax
	xorl	%edx, %edx
	movq	%r8, %rcx
	divq	%rbx
	movq	%rdx, %r12
	leaq	1(%r13), %rdx
	addl	$48, %eax
	movq	%rdx, (%rsi)
	movb	%al, 62(%rsp)
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L50
	leaq	-1(%rax,%r13), %rdx
	movl	$1, %r8d
	movq	%rbp, %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	movq	8(%rsi), %r8
	movq	(%rsi), %r13
	mulq	%rdi
	movb	$0, -1(%r8,%r13)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L69
.L49:
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	ja	.L95
.L38:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movq	%rsi, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	movapd	%xmm6, %xmm0
	subsd	%xmm7, %xmm0
	cvttsd2siq	%xmm0, %r12
	btcq	$63, %r12
	testq	%r12, %r12
	jns	.L96
.L45:
	movq	%r12, %rax
	movq	%r12, %rdx
	pxor	%xmm0, %xmm0
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L95:
	leaq	1(%r13), %rdx
	movq	%r8, %rcx
	movb	$46, 61(%rsp)
	movq	%rdx, (%rsi)
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L50
	leaq	61(%rsp), %rcx
	leaq	-1(%rax,%r13), %rdx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rsi), %rcx
	movq	(%rsi), %r14
	pxor	%xmm3, %xmm3
	movsd	.LC8(%rip), %xmm4
	movsd	.LC10(%rip), %xmm2
	movb	$0, -1(%rcx,%r14)
	movsd	.LC7(%rip), %xmm5
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L56:
	mulsd	%xmm5, %xmm6
.L54:
	movapd	%xmm6, %xmm1
	movapd	%xmm6, %xmm0
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm4
	jbe	.L55
	cvttsd2siq	%xmm6, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	andnpd	%xmm6, %xmm0
	cvtsi2sdq	%rax, %xmm1
	orpd	%xmm1, %xmm0
.L55:
	movapd	%xmm6, %xmm1
	subsd	%xmm0, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L56
	movapd	%xmm6, %xmm0
	movq	%rcx, 40(%rsp)
	call	round
	movq	40(%rsp), %rcx
	comisd	%xmm7, %xmm0
	jnb	.L57
	cvttsd2siq	%xmm0, %r8
.L58:
	movl	$1, %ebx
	cmpq	$9, %r8
	jbe	.L59
	.p2align 4,,10
	.p2align 3
.L60:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r8, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L60
	testq	%rbx, %rbx
	je	.L38
.L59:
	movabsq	$-9223372036854775808, %r12
	leaq	60(%rsp), %rbp
	movabsq	$-3689348814741910323, %rdi
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L97:
	cvttsd2siq	%xmm0, %rax
.L62:
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r13
	leaq	1(%r14), %rdx
	addl	$48, %eax
	movq	%rdx, (%rsi)
	movb	%al, 60(%rsp)
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L50
	leaq	-1(%rax,%r14), %rdx
	movq	%rbp, %rcx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rsi), %rcx
	movq	(%rsi), %r14
	movb	$0, -1(%rcx,%r14)
	testq	%r13, %r13
	js	.L63
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r13, %xmm0
.L64:
	movq	%rbx, %rax
	mulq	%rdi
	shrq	$3, %rdx
	cmpq	$9, %rbx
	jbe	.L38
	movq	%rdx, %rbx
.L65:
	comisd	%xmm7, %xmm0
	jb	.L97
	subsd	%xmm7, %xmm0
	cvttsd2siq	%xmm0, %rax
	xorq	%r12, %rax
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L63:
	movq	%r13, %rax
	andl	$1, %r13d
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%r13, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L94:
	movq	$2, (%rsi)
	movl	$2, %edx
	movq	%rax, %rcx
	movb	$45, 63(%rsp)
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L50
	movl	$1, %r8d
	leaq	63(%rsp), %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rsi), %r8
	movq	(%rsi), %r13
	xorpd	.LC5(%rip), %xmm6
	movb	$0, -1(%r8,%r13)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L57:
	movapd	%xmm0, %xmm1
	subsd	%xmm7, %xmm1
	cvttsd2siq	%xmm1, %r8
	btcq	$63, %r8
	jmp	.L58
.L50:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
.L93:
.LEHB7:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE7:
.L72:
	movq	%rax, %rbx
	jmp	.L66
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1980:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1980-.LLSDACSB1980
.LLSDACSB1980:
	.uleb128 .LEHB6-.LFB1980
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1980
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L72-.LFB1980
	.uleb128 0
.LLSDACSE1980:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ToStringEd.constprop.0.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEd.constprop.0.cold
	.seh_stackalloc	152
	.seh_savereg	%rbx, 96
	.seh_savereg	%rsi, 104
	.seh_savereg	%rdi, 112
	.seh_savereg	%rbp, 120
	.seh_savexmm	%xmm6, 64
	.seh_savexmm	%xmm7, 80
	.seh_savereg	%r12, 128
	.seh_savereg	%r13, 136
	.seh_savereg	%r14, 144
	.seh_endprologue
_ZN3neo6string8ToStringEd.constprop.0.cold:
.L66:
	movq	%rsi, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1980:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1980-.LLSDACSBC1980
.LLSDACSBC1980:
	.uleb128 .LEHB8-.LCOLDB11
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC1980:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE11:
	.text
.LHOTE11:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2Ev
	.def	_ZN3neo6stringC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2Ev
_ZN3neo6stringC2Ev:
.LFB1701:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	$1, (%rcx)
	movq	%rcx, %rbx
	movl	$1, %ecx
	call	malloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L100
	movb	$0, (%rax)
	addq	$32, %rsp
	popq	%rbx
	ret
.L100:
	call	_ZN3neo6stringC2Ev.part.0
	nop
	.seh_endproc
	.globl	_ZN3neo6stringC1Ev
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringC1Ev,_ZN3neo6stringC2Ev
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "neo::string(): Memory allocation failed\12Params: Characters(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIcE
	.def	_ZN3neo6stringC2ESt16initializer_listIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIcE
_ZN3neo6stringC2ESt16initializer_listIcE:
.LFB1706:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %rbx
	leaq	1(%rsi), %rcx
	movq	%rcx, (%rbx)
	call	malloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L103
	movq	%rsi, %r8
	movq	%rdi, %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rbx), %rdx
	movq	(%rbx), %rax
	movb	$0, -1(%rdx,%rax)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L103:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3neo6stringC1ESt16initializer_listIcE
	.def	_ZN3neo6stringC1ESt16initializer_listIcE;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringC1ESt16initializer_listIcE,_ZN3neo6stringC2ESt16initializer_listIcE
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "neo::string(): Literals[%lld] must not be NULL\12Params: Literals(length): %ld\12\0"
	.align 8
.LC14:
	.ascii "neo::string(): Literals[%lld] must not be Self\12Params: Literals(length): %ld\12\0"
	.align 8
.LC15:
	.ascii "neo::string(): Memory allocation failed\12Params: Literals(length): %ld\12\0"
	.align 8
.LC16:
	.ascii "neo::string::LiteralLength(): Literal must not be NULL\12Params: Literal: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIPKcE
	.def	_ZN3neo6stringC2ESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIPKcE
_ZN3neo6stringC2ESt16initializer_listIPKcE:
.LFB1711:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r12
	movq	$0, (%rcx)
	movq	%rcx, %rdi
	testq	%rbp, %rbp
	je	.L105
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L108:
	movq	(%r12,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L120
	cmpq	8(%rdi), %rcx
	je	.L121
	call	strlen
	addq	$1, %rbx
	addq	%rax, %rsi
	movq	%rsi, (%rdi)
	cmpq	%rbp, %rbx
	jne	.L108
	leaq	1(%rsi), %rcx
	movq	%rcx, (%rdi)
	call	malloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L111
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L109:
	movq	(%r12,%rsi,8), %r13
	testq	%r13, %r13
	je	.L122
	movq	%r13, %rcx
	addq	$1, %rsi
	call	strlen
	movq	8(%rdi), %rdx
	movq	%r13, %rcx
	movq	%rax, %rbx
	movq	%rax, %r8
	addq	%r14, %rdx
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy
	cmpq	%rbp, %rsi
	jne	.L109
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	leaq	-1(%rdx,%rax), %rax
.L112:
	movb	$0, (%rax)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L105:
	movq	$1, (%rcx)
	movl	$1, %ecx
	call	malloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	jne	.L112
.L111:
	leaq	.LC15(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L122:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L121:
	leaq	.LC14(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L120:
	leaq	.LC13(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3neo6stringC1ESt16initializer_listIPKcE
	.def	_ZN3neo6stringC1ESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringC1ESt16initializer_listIPKcE,_ZN3neo6stringC2ESt16initializer_listIPKcE
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "neo::string(): Strings[%lld] must not be NULL\12Params: Strings(length): %ld\12\0"
	.align 8
.LC18:
	.ascii "neo::string(): Strings[%lld] must not be Self\12Params: Strings(length): %ld\12\0"
	.align 8
.LC19:
	.ascii "neo::string(): Memory allocation failed\12Params: Strings(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIPS0_E
	.def	_ZN3neo6stringC2ESt16initializer_listIPS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIPS0_E
_ZN3neo6stringC2ESt16initializer_listIPS0_E:
.LFB1716:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %rsi
	movq	$0, (%rcx)
	movq	%rcx, %rdi
	testq	%rbp, %rbp
	je	.L124
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L127:
	movq	(%rsi,%rbx,8), %rax
	testq	%rax, %rax
	je	.L140
	cmpq	%rdi, %rax
	je	.L141
	movq	(%rax), %rax
	addq	$1, %rbx
	leaq	-1(%rcx,%rax), %rcx
	movq	%rcx, (%rdi)
	cmpq	%rbp, %rbx
	jne	.L127
	addq	$1, %rcx
	movq	%rcx, (%rdi)
	call	malloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L128
	leaq	-8(%rsi,%rbx,8), %rbp
	xorl	%ebx, %ebx
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L130:
	movq	8(%rdi), %rax
	addq	$8, %rsi
.L129:
	movq	(%rsi), %rcx
	leaq	(%rax,%rbx), %rdx
	movq	(%rcx), %r8
	movq	8(%rcx), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	(%rax), %rax
	leaq	-1(%rbx,%rax), %rbx
	cmpq	%rsi, %rbp
	jne	.L130
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	leaq	-1(%rdx,%rax), %rax
.L131:
	movb	$0, (%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L124:
	movq	$1, (%rcx)
	movl	$1, %ecx
	call	malloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	jne	.L131
.L128:
	leaq	.LC19(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L141:
	leaq	.LC18(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L140:
	leaq	.LC17(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3neo6stringC1ESt16initializer_listIPS0_E
	.def	_ZN3neo6stringC1ESt16initializer_listIPS0_E;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringC1ESt16initializer_listIPS0_E,_ZN3neo6stringC2ESt16initializer_listIPS0_E
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "neo::array(): Memory allocation failed\12Params: Length: %lld\12\0"
	.align 8
.LC21:
	.ascii "neo::string(): Memory allocation failed\12Params: Numbers(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB22:
	.text
.LHOTB22:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIyE
	.def	_ZN3neo6stringC2ESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIyE
_ZN3neo6stringC2ESt16initializer_listIyE:
.LFB1721:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r12
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	jne	.L143
	movq	$1, (%rcx)
	movl	$1, %ecx
	xorl	%edi, %edi
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L145
.L144:
	movq	%rbp, %rdx
	leaq	.LC21(%rip), %rcx
.LEHB9:
	call	_Z6printfPKcz
.LEHE9:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L143:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L159
	movq	$0, (%rsi)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L147:
	movq	(%r12,%rbx,8), %rcx
.LEHB10:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%rdi,%rbx,8)
	movq	(%rsi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rcx
	movq	%rcx, (%rsi)
	cmpq	%rbp, %rbx
	jne	.L147
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L160
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L149:
	movq	8(%rsi), %rdx
.L148:
	movq	(%rdi,%r12,8), %rbx
	addq	%r13, %rdx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE10:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %r12
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r12
	jne	.L149
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	leaq	-1(%rdx,%rax), %rbx
.L145:
	movq	%rdi, %rcx
	movb	$0, (%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	free
.L159:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB11:
	call	_Z6printfPKcz
.LEHE11:
	movl	$1, %ecx
	call	exit
.L160:
	movq	%rdi, %rbx
	jmp	.L144
.L153:
	movq	%rax, %rsi
	jmp	.L151
.L154:
	movq	%rax, %rsi
	jmp	.L150
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1721:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1721-.LLSDACSB1721
.LLSDACSB1721:
	.uleb128 .LEHB9-.LFB1721
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L154-.LFB1721
	.uleb128 0
	.uleb128 .LEHB10-.LFB1721
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L153-.LFB1721
	.uleb128 0
	.uleb128 .LEHB11-.LFB1721
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE1721:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringC2ESt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIyE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringC2ESt16initializer_listIyE.cold:
.L150:
	movq	%rbx, %rdi
.L151:
	movq	%rdi, %rcx
	call	free
	movq	%rsi, %rcx
.LEHB12:
	call	_Unwind_Resume
	nop
.LEHE12:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1721:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1721-.LLSDACSBC1721
.LLSDACSBC1721:
	.uleb128 .LEHB12-.LCOLDB22
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC1721:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE22:
	.text
.LHOTE22:
	.globl	_ZN3neo6stringC1ESt16initializer_listIyE
	.def	_ZN3neo6stringC1ESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringC1ESt16initializer_listIyE,_ZN3neo6stringC2ESt16initializer_listIyE
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB23:
	.text
.LHOTB23:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIxE
	.def	_ZN3neo6stringC2ESt16initializer_listIxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIxE
_ZN3neo6stringC2ESt16initializer_listIxE:
.LFB1726:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r12
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	jne	.L162
	movq	$1, (%rcx)
	movl	$1, %ecx
	xorl	%edi, %edi
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L164
.L163:
	movq	%rbp, %rdx
	leaq	.LC21(%rip), %rcx
.LEHB13:
	call	_Z6printfPKcz
.LEHE13:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L162:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L178
	movq	$0, (%rsi)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L166:
	movq	(%r12,%rbx,8), %rcx
.LEHB14:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%rdi,%rbx,8)
	movq	(%rsi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rcx
	movq	%rcx, (%rsi)
	cmpq	%rbp, %rbx
	jne	.L166
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L179
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L168:
	movq	8(%rsi), %rdx
.L167:
	movq	(%rdi,%r12,8), %rbx
	addq	%r13, %rdx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE14:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %r12
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r12
	jne	.L168
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	leaq	-1(%rdx,%rax), %rbx
.L164:
	movq	%rdi, %rcx
	movb	$0, (%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	free
.L178:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB15:
	call	_Z6printfPKcz
.LEHE15:
	movl	$1, %ecx
	call	exit
.L179:
	movq	%rdi, %rbx
	jmp	.L163
.L172:
	movq	%rax, %rsi
	jmp	.L170
.L173:
	movq	%rax, %rsi
	jmp	.L169
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1726:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1726-.LLSDACSB1726
.LLSDACSB1726:
	.uleb128 .LEHB13-.LFB1726
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L173-.LFB1726
	.uleb128 0
	.uleb128 .LEHB14-.LFB1726
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L172-.LFB1726
	.uleb128 0
	.uleb128 .LEHB15-.LFB1726
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE1726:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringC2ESt16initializer_listIxE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIxE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringC2ESt16initializer_listIxE.cold:
.L169:
	movq	%rbx, %rdi
.L170:
	movq	%rdi, %rcx
	call	free
	movq	%rsi, %rcx
.LEHB16:
	call	_Unwind_Resume
	nop
.LEHE16:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1726:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1726-.LLSDACSBC1726
.LLSDACSBC1726:
	.uleb128 .LEHB16-.LCOLDB23
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSEC1726:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE23:
	.text
.LHOTE23:
	.globl	_ZN3neo6stringC1ESt16initializer_listIxE
	.def	_ZN3neo6stringC1ESt16initializer_listIxE;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringC1ESt16initializer_listIxE,_ZN3neo6stringC2ESt16initializer_listIxE
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIdE
	.def	_ZN3neo6stringC2ESt16initializer_listIdE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIdE
_ZN3neo6stringC2ESt16initializer_listIdE:
.LFB1731:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r12
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	jne	.L181
	movq	$1, (%rcx)
	movl	$1, %ecx
	xorl	%edi, %edi
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L183
.L182:
	movq	%rbp, %rdx
	leaq	.LC21(%rip), %rcx
.LEHB17:
	call	_Z6printfPKcz
.LEHE17:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L181:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L197
	movq	$0, (%rsi)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L185:
	movsd	(%r12,%rbx,8), %xmm0
.LEHB18:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%rdi,%rbx,8)
	movq	(%rsi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rcx
	movq	%rcx, (%rsi)
	cmpq	%rbp, %rbx
	jne	.L185
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L198
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L187:
	movq	8(%rsi), %rdx
.L186:
	movq	(%rdi,%r12,8), %rbx
	addq	%r13, %rdx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE18:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %r12
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r12
	jne	.L187
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	leaq	-1(%rdx,%rax), %rbx
.L183:
	movq	%rdi, %rcx
	movb	$0, (%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	free
.L197:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB19:
	call	_Z6printfPKcz
.LEHE19:
	movl	$1, %ecx
	call	exit
.L198:
	movq	%rdi, %rbx
	jmp	.L182
.L191:
	movq	%rax, %rsi
	jmp	.L189
.L192:
	movq	%rax, %rsi
	jmp	.L188
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1731:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1731-.LLSDACSB1731
.LLSDACSB1731:
	.uleb128 .LEHB17-.LFB1731
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L192-.LFB1731
	.uleb128 0
	.uleb128 .LEHB18-.LFB1731
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L191-.LFB1731
	.uleb128 0
	.uleb128 .LEHB19-.LFB1731
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE1731:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringC2ESt16initializer_listIdE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringC2ESt16initializer_listIdE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringC2ESt16initializer_listIdE.cold:
.L188:
	movq	%rbx, %rdi
.L189:
	movq	%rdi, %rcx
	call	free
	movq	%rsi, %rcx
.LEHB20:
	call	_Unwind_Resume
	nop
.LEHE20:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1731:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1731-.LLSDACSBC1731
.LLSDACSBC1731:
	.uleb128 .LEHB20-.LCOLDB24
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSEC1731:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE24:
	.text
.LHOTE24:
	.globl	_ZN3neo6stringC1ESt16initializer_listIdE
	.def	_ZN3neo6stringC1ESt16initializer_listIdE;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringC1ESt16initializer_listIdE,_ZN3neo6stringC2ESt16initializer_listIdE
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringD2Ev
	.def	_ZN3neo6stringD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringD2Ev
_ZN3neo6stringD2Ev:
.LFB1734:
	.seh_endprologue
	movq	8(%rcx), %rcx
	jmp	free
	.seh_endproc
	.globl	_ZN3neo6stringD1Ev
	.def	_ZN3neo6stringD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3neo6stringD1Ev,_ZN3neo6stringD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6LengthEv
	.def	_ZN3neo6string6LengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6LengthEv
_ZN3neo6string6LengthEv:
.LFB1736:
	.seh_endprologue
	movq	(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringclEv
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringclEv
_ZN3neo6stringclEv:
.LFB1737:
	.seh_endprologue
	movq	8(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "neo::string[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC26:
	.ascii "neo::string[]: Illegal access to EOF\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringixEy
	.def	_ZN3neo6stringixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringixEy
_ZN3neo6stringixEy:
.LFB1738:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	cmpq	%rax, %rdx
	jnb	.L205
	subq	$1, %rax
	cmpq	%rdx, %rax
	je	.L206
	movq	8(%rcx), %rax
	addq	%rdx, %rax
	addq	$40, %rsp
	ret
.L205:
	leaq	.LC25(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L206:
	leaq	.LC26(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "neo::string=: Memory allocation failed\12Params: Characters(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIcE
	.def	_ZN3neo6stringaSESt16initializer_listIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIcE
_ZN3neo6stringaSESt16initializer_listIcE:
.LFB1739:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	leaq	1(%rsi), %rdx
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	cmpq	%rdx, (%rbx)
	je	.L208
	movq	%rdx, (%rbx)
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L209
.L208:
	movq	%rcx, %rdx
	movq	%rsi, %r8
	movq	%rdi, %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L209:
	leaq	.LC27(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC28:
	.ascii "neo::string=: Literals[%lld] must not be NULL\12Params: Literals(length): %ld\12\0"
	.align 8
.LC29:
	.ascii "neo::string=: Literals[%lld] must not be Self\12Params: Literals(length): %ld\12\0"
	.align 8
.LC30:
	.ascii "neo::string=: Memory allocation failed\12Params: Literals(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIPKcE
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIPKcE
_ZN3neo6stringaSESt16initializer_listIPKcE:
.LFB1740:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rcx), %r13
	movq	(%rdx), %r12
	movq	$0, (%rcx)
	movq	%rcx, %rdi
	testq	%rbp, %rbp
	je	.L211
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L214:
	movq	(%r12,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L230
	movq	8(%rdi), %r14
	cmpq	%r14, %rcx
	je	.L231
	call	strlen
	addq	$1, %rbx
	addq	%rax, %rsi
	movq	%rsi, (%rdi)
	cmpq	%rbx, %rbp
	jne	.L214
	leaq	1(%rsi), %rdx
	movq	%rdx, (%rdi)
	cmpq	%r13, %rdx
	jne	.L218
.L220:
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L219:
	movq	(%r12,%rsi,8), %r13
	testq	%r13, %r13
	je	.L232
	movq	%r13, %rcx
	addq	$1, %rsi
	call	strlen
	movq	8(%rdi), %rdx
	movq	%r13, %rcx
	movq	%rax, %rbx
	movq	%rax, %r8
	addq	%r14, %rdx
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy
	cmpq	%rsi, %rbp
	jne	.L219
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	leaq	-1(%rdx,%rax), %rcx
.L217:
	movq	%rdi, %rax
	movb	$0, (%rcx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L218:
	movq	%r14, %rcx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	jne	.L220
.L222:
	leaq	.LC30(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L211:
	movq	$1, (%rcx)
	movq	8(%rcx), %rcx
	cmpq	$1, %r13
	je	.L217
	movl	$1, %edx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L222
	movq	(%rdi), %rdx
	leaq	-1(%rax,%rdx), %rcx
	jmp	.L217
.L232:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L231:
	leaq	.LC29(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L230:
	leaq	.LC28(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "neo::string=: Strings[%lld] must not be NULL\12Params: Strings(length): %ld\12\0"
	.align 8
.LC32:
	.ascii "neo::string=: Strings[%lld] must not be Self\12Params: Strings(length): %ld\12\0"
	.align 8
.LC33:
	.ascii "neo::string=: Memory allocation failed\12Params: Strings(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIPS0_E
	.def	_ZN3neo6stringaSESt16initializer_listIPS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIPS0_E
_ZN3neo6stringaSESt16initializer_listIPS0_E:
.LFB1741:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rdi
	movq	(%rcx), %r8
	movq	(%rdx), %rsi
	movq	$0, (%rcx)
	movq	%rcx, %rbx
	testq	%rdi, %rdi
	je	.L234
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L237:
	movq	(%rsi,%rdx,8), %rax
	testq	%rax, %rax
	je	.L254
	cmpq	%rbx, %rax
	je	.L255
	movq	(%rax), %rax
	addq	$1, %rdx
	leaq	-1(%rcx,%rax), %rcx
	movq	%rcx, (%rbx)
	cmpq	%rdx, %rdi
	jne	.L237
	leaq	1(%rcx), %rdx
	movq	8(%rbx), %rcx
	movq	%rdx, (%rbx)
	cmpq	%r8, %rdx
	jne	.L256
.L241:
	leaq	-8(%rsi,%rdi,8), %rbp
	xorl	%edi, %edi
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L244:
	movq	8(%rbx), %rcx
	addq	$8, %rsi
.L243:
	movq	(%rsi), %rax
	leaq	(%rcx,%rdi), %rdx
	movq	(%rax), %r8
	movq	8(%rax), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	(%rax), %rax
	leaq	-1(%rdi,%rax), %rdi
	cmpq	%rsi, %rbp
	jne	.L244
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	-1(%rdx,%rax), %rcx
.L240:
	movq	%rbx, %rax
	movb	$0, (%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L256:
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L241
.L242:
	leaq	.LC33(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L234:
	movq	$1, (%rcx)
	movq	8(%rcx), %rcx
	cmpq	$1, %r8
	je	.L240
	movl	$1, %edx
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L242
	movq	(%rbx), %rdx
	leaq	-1(%rax,%rdx), %rcx
	jmp	.L240
.L255:
	leaq	.LC32(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L254:
	leaq	.LC31(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC34:
	.ascii "neo::string=: Memory allocation failed\12Params: Numbers(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB35:
	.text
.LHOTB35:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIyE
	.def	_ZN3neo6stringaSESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIyE
_ZN3neo6stringaSESt16initializer_listIyE:
.LFB1742:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rdi
	testq	%rbp, %rbp
	jne	.L258
	movq	(%rcx), %rax
	movq	$1, (%rcx)
	cmpq	$1, %rax
	je	.L280
	movq	8(%rcx), %rcx
	movl	$1, %edx
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L281
.L267:
	movq	%rbp, %rdx
	leaq	.LC34(%rip), %rcx
.LEHB21:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L258:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L282
	movq	(%rdi), %rsi
	movq	$0, (%rdi)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L262:
	movq	0(%r13,%rbx,8), %rcx
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%r12,%rbx,8)
	movq	(%rdi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rdi)
	cmpq	%rbx, %rbp
	jne	.L262
	addq	$1, %rdx
	movq	8(%rdi), %rcx
	movq	%rdx, (%rdi)
	cmpq	%rdx, %rsi
	jne	.L263
.L269:
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L265:
	movq	8(%rdi), %rcx
.L264:
	movq	(%r12,%rsi,8), %rbx
	leaq	(%rcx,%r13), %rdx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE21:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %rsi
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rsi, %rbp
	jne	.L265
	movq	(%rdi), %rax
	leaq	-1(%rax), %rbp
.L260:
	movq	8(%rdi), %rax
	movq	%r12, %rcx
	movb	$0, (%rax,%rbp)
	call	free
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L281:
	movq	(%rdi), %rax
	leaq	-1(%rax), %rbp
	.p2align 4,,10
	.p2align 3
.L280:
	xorl	%r12d, %r12d
	jmp	.L260
.L282:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB22:
	call	_Z6printfPKcz
.LEHE22:
	movl	$1, %ecx
	call	exit
.L263:
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L269
	jmp	.L267
.L270:
	movq	%rax, %rbx
	jmp	.L266
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1742:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1742-.LLSDACSB1742
.LLSDACSB1742:
	.uleb128 .LEHB21-.LFB1742
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L270-.LFB1742
	.uleb128 0
	.uleb128 .LEHB22-.LFB1742
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE1742:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringaSESt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIyE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringaSESt16initializer_listIyE.cold:
.L266:
	movq	%r12, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB23:
	call	_Unwind_Resume
	nop
.LEHE23:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1742:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1742-.LLSDACSBC1742
.LLSDACSBC1742:
	.uleb128 .LEHB23-.LCOLDB35
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC1742:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE35:
	.text
.LHOTE35:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB36:
	.text
.LHOTB36:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIxE
	.def	_ZN3neo6stringaSESt16initializer_listIxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIxE
_ZN3neo6stringaSESt16initializer_listIxE:
.LFB1743:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rdi
	testq	%rbp, %rbp
	jne	.L284
	movq	(%rcx), %rax
	movq	$1, (%rcx)
	cmpq	$1, %rax
	je	.L306
	movq	8(%rcx), %rcx
	movl	$1, %edx
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L307
.L293:
	movq	%rbp, %rdx
	leaq	.LC34(%rip), %rcx
.LEHB24:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L284:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L308
	movq	(%rdi), %rsi
	movq	$0, (%rdi)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L288:
	movq	0(%r13,%rbx,8), %rcx
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%r12,%rbx,8)
	movq	(%rdi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rdi)
	cmpq	%rbx, %rbp
	jne	.L288
	addq	$1, %rdx
	movq	8(%rdi), %rcx
	movq	%rdx, (%rdi)
	cmpq	%rdx, %rsi
	jne	.L289
.L295:
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L291:
	movq	8(%rdi), %rcx
.L290:
	movq	(%r12,%rsi,8), %rbx
	leaq	(%rcx,%r13), %rdx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE24:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %rsi
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rsi, %rbp
	jne	.L291
	movq	(%rdi), %rax
	leaq	-1(%rax), %rbp
.L286:
	movq	8(%rdi), %rax
	movq	%r12, %rcx
	movb	$0, (%rax,%rbp)
	call	free
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L307:
	movq	(%rdi), %rax
	leaq	-1(%rax), %rbp
	.p2align 4,,10
	.p2align 3
.L306:
	xorl	%r12d, %r12d
	jmp	.L286
.L308:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB25:
	call	_Z6printfPKcz
.LEHE25:
	movl	$1, %ecx
	call	exit
.L289:
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L295
	jmp	.L293
.L296:
	movq	%rax, %rbx
	jmp	.L292
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1743:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1743-.LLSDACSB1743
.LLSDACSB1743:
	.uleb128 .LEHB24-.LFB1743
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L296-.LFB1743
	.uleb128 0
	.uleb128 .LEHB25-.LFB1743
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE1743:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringaSESt16initializer_listIxE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIxE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringaSESt16initializer_listIxE.cold:
.L292:
	movq	%r12, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB26:
	call	_Unwind_Resume
	nop
.LEHE26:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1743:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1743-.LLSDACSBC1743
.LLSDACSBC1743:
	.uleb128 .LEHB26-.LCOLDB36
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSEC1743:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE36:
	.text
.LHOTE36:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB37:
	.text
.LHOTB37:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIdE
	.def	_ZN3neo6stringaSESt16initializer_listIdE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIdE
_ZN3neo6stringaSESt16initializer_listIdE:
.LFB1744:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rdi
	testq	%rbp, %rbp
	jne	.L310
	movq	(%rcx), %rax
	movq	$1, (%rcx)
	cmpq	$1, %rax
	je	.L332
	movq	8(%rcx), %rcx
	movl	$1, %edx
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L333
.L319:
	movq	%rbp, %rdx
	leaq	.LC34(%rip), %rcx
.LEHB27:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L310:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L334
	movq	(%rdi), %rsi
	movq	$0, (%rdi)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L314:
	movsd	0(%r13,%rbx,8), %xmm0
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%r12,%rbx,8)
	movq	(%rdi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rdi)
	cmpq	%rbx, %rbp
	jne	.L314
	addq	$1, %rdx
	movq	8(%rdi), %rcx
	movq	%rdx, (%rdi)
	cmpq	%rdx, %rsi
	jne	.L315
.L321:
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	.L316
	.p2align 4,,10
	.p2align 3
.L317:
	movq	8(%rdi), %rcx
.L316:
	movq	(%r12,%rsi,8), %rbx
	leaq	(%rcx,%r13), %rdx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE27:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %rsi
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rsi, %rbp
	jne	.L317
	movq	(%rdi), %rax
	leaq	-1(%rax), %rbp
.L312:
	movq	8(%rdi), %rax
	movq	%r12, %rcx
	movb	$0, (%rax,%rbp)
	call	free
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L333:
	movq	(%rdi), %rax
	leaq	-1(%rax), %rbp
	.p2align 4,,10
	.p2align 3
.L332:
	xorl	%r12d, %r12d
	jmp	.L312
.L334:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB28:
	call	_Z6printfPKcz
.LEHE28:
	movl	$1, %ecx
	call	exit
.L315:
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L321
	jmp	.L319
.L322:
	movq	%rax, %rbx
	jmp	.L318
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1744:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1744-.LLSDACSB1744
.LLSDACSB1744:
	.uleb128 .LEHB27-.LFB1744
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L322-.LFB1744
	.uleb128 0
	.uleb128 .LEHB28-.LFB1744
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE1744:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringaSESt16initializer_listIdE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringaSESt16initializer_listIdE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringaSESt16initializer_listIdE.cold:
.L318:
	movq	%r12, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB29:
	call	_Unwind_Resume
	nop
.LEHE29:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1744:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1744-.LLSDACSBC1744
.LLSDACSBC1744:
	.uleb128 .LEHB29-.LCOLDB37
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSEC1744:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE37:
	.text
.LHOTE37:
	.section .rdata,"dr"
	.align 8
.LC38:
	.ascii "neo::string-=: Memory allocation failed\12Params: Characters(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIcE
	.def	_ZN3neo6stringmIESt16initializer_listIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIcE
_ZN3neo6stringmIESt16initializer_listIcE:
.LFB1745:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %rbx
	testq	%rsi, %rsi
	jne	.L347
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L347:
	movq	(%rcx), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L348
	movq	(%rbx), %rax
	leaq	-1(%rax), %rcx
	cmpq	%rsi, %rcx
	jb	.L338
	subq	%rsi, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	leaq	-2(%rax), %rdx
	subq	%rsi, %rax
	subq	$2, %rax
	cmpq	%rsi, %rdx
	jb	.L341
	.p2align 4,,10
	.p2align 3
.L340:
	movq	8(%rbx), %rdx
	movzbl	(%rdx,%rax), %ecx
	addq	%rsi, %rdx
	movb	%cl, (%rdx,%rax)
	subq	$1, %rax
	jnb	.L340
.L341:
	movq	8(%rbx), %rdx
.L338:
	movq	%rsi, %r8
	movq	%rdi, %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L348:
	leaq	.LC38(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC39:
	.ascii "neo::string-=: Literals[%lld] must not be NULL\12Params: Literals(length): %ld\12\0"
	.align 8
.LC40:
	.ascii "neo::string-=: Literals[%lld] must not be Self\12Params: Literals(length): %ld\12\0"
	.align 8
.LC41:
	.ascii "neo::string-=: Memory allocation failed\12Params: Literals(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIPKcE
	.def	_ZN3neo6stringmIESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIPKcE
_ZN3neo6stringmIESt16initializer_listIPKcE:
.LFB1746:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r12
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	je	.L365
	movq	(%rcx), %r14
	xorl	%ebx, %ebx
	movq	%r14, %rdi
	.p2align 4,,10
	.p2align 3
.L353:
	movq	(%r12,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L367
	movq	8(%rsi), %r13
	cmpq	%r13, %rcx
	je	.L368
	call	strlen
	addq	$1, %rbx
	addq	%rax, %rdi
	movq	%rdi, (%rsi)
	cmpq	%rbx, %rbp
	jne	.L353
	movq	%rdi, %rdx
	movq	%r13, %rcx
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L369
	movq	(%rsi), %rax
	movq	%rax, %r8
	leaq	-1(%rax), %rcx
	subq	%r14, %r8
	cmpq	%r8, %rcx
	jb	.L355
	addq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L370:
	movq	8(%rsi), %r8
	leaq	(%rax,%r14), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L366:
	movq	(%rsi), %rcx
	movq	%rcx, %rdx
	subq	%r14, %rdx
	cmpq	%rdx, %rax
	jnb	.L370
.L355:
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L359:
	movq	(%r12,%rdi,8), %r13
	testq	%r13, %r13
	je	.L371
	movq	%r13, %rcx
	addq	$1, %rdi
	call	strlen
	movq	8(%rsi), %rdx
	movq	%r13, %rcx
	movq	%rax, %rbx
	movq	%rax, %r8
	addq	%r14, %rdx
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy
	cmpq	%rdi, %rbp
	jne	.L359
.L365:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L369:
	leaq	.LC41(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L371:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L368:
	leaq	.LC40(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L367:
	leaq	.LC39(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC42:
	.ascii "neo::string-=: Strings[%lld] must not be NULL\12Params: Strings(length): %ld\12\0"
	.align 8
.LC43:
	.ascii "neo::string-=: Strings[%lld] must not be Self\12Params: Strings(length): %ld\12\0"
	.align 8
.LC44:
	.ascii "neo::string-=: Memory allocation failed\12Params: Strings(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIPS0_E
	.def	_ZN3neo6stringmIESt16initializer_listIPS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIPS0_E
_ZN3neo6stringmIESt16initializer_listIPS0_E:
.LFB1747:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rdi
	movq	(%rdx), %rsi
	movq	%rcx, %rbx
	testq	%rdi, %rdi
	je	.L373
	movq	(%rcx), %rbp
	xorl	%edx, %edx
	movq	%rbp, %r9
	.p2align 4,,10
	.p2align 3
.L376:
	movq	(%rsi,%rdx,8), %rax
	testq	%rax, %rax
	je	.L390
	cmpq	%rbx, %rax
	je	.L391
	movq	(%rax), %rax
	addq	$1, %rdx
	leaq	-1(%r9,%rax), %r9
	movq	%r9, (%rbx)
	cmpq	%rdx, %rdi
	jne	.L376
	movq	8(%rbx), %rcx
	movq	%r9, %rdx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L392
	movq	(%rbx), %rax
	movq	%rax, %r8
	leaq	-1(%rax), %rcx
	subq	%rbp, %r8
	cmpq	%r8, %rcx
	jb	.L378
	addq	%rbp, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L389
	.p2align 4,,10
	.p2align 3
.L379:
	movq	8(%rbx), %r8
	leaq	(%rax,%rbp), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L389:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%rbp, %rdx
	cmpq	%rdx, %rax
	jnb	.L379
	movq	8(%rbx), %rdx
.L378:
	leaq	-8(%rsi,%rdi,8), %rbp
	xorl	%edi, %edi
	jmp	.L381
	.p2align 4,,10
	.p2align 3
.L393:
	movq	8(%rbx), %rdx
	addq	$8, %rsi
.L381:
	movq	(%rsi), %rax
	addq	%rdi, %rdx
	movq	(%rax), %r8
	movq	8(%rax), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	(%rax), %rax
	leaq	-1(%rdi,%rax), %rdi
	cmpq	%rsi, %rbp
	jne	.L393
.L373:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L391:
	leaq	.LC43(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L390:
	leaq	.LC42(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L392:
	leaq	.LC44(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC45:
	.ascii "neo::string-=: Memory allocation failed\12Params: Numbers(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB46:
	.text
.LHOTB46:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIyE
	.def	_ZN3neo6stringmIESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIyE
_ZN3neo6stringmIESt16initializer_listIyE:
.LFB1748:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%edi, %edi
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rbx
	testq	%rbp, %rbp
	jne	.L413
.L395:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L413:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L396
	movq	(%rbx), %r12
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L397:
	movq	0(%r13,%rsi,8), %rcx
.LEHB30:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%rdi,%rsi,8)
	movq	(%rbx), %rdx
	addq	$1, %rsi
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%rbp, %rsi
	jne	.L397
	movq	8(%rbx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L414
	movq	(%rbx), %rax
	movq	%rax, %r8
	leaq	-1(%rax), %rcx
	subq	%r12, %r8
	cmpq	%r8, %rcx
	jb	.L399
	addq	%r12, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L400:
	movq	8(%rbx), %r8
	leaq	(%rax,%r12), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L412:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%r12, %rdx
	cmpq	%rdx, %rax
	jnb	.L400
	movq	8(%rbx), %rdx
.L399:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L402
	.p2align 4,,10
	.p2align 3
.L415:
	movq	8(%rbx), %rdx
.L402:
	movq	(%rdi,%r12,8), %rsi
	addq	%r13, %rdx
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE30:
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	addq	$1, %r12
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r12
	jne	.L415
	jmp	.L395
.L396:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB31:
	call	_Z6printfPKcz
.LEHE31:
	movl	$1, %ecx
	call	exit
.L414:
	movq	%rsi, %rdx
	leaq	.LC45(%rip), %rcx
.LEHB32:
	call	_Z6printfPKcz
.LEHE32:
	movl	$1, %ecx
	call	exit
.L405:
	movq	%rax, %rbx
	jmp	.L403
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1748:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1748-.LLSDACSB1748
.LLSDACSB1748:
	.uleb128 .LEHB30-.LFB1748
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L405-.LFB1748
	.uleb128 0
	.uleb128 .LEHB31-.LFB1748
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB1748
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L405-.LFB1748
	.uleb128 0
.LLSDACSE1748:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringmIESt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIyE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringmIESt16initializer_listIyE.cold:
.L403:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB33:
	call	_Unwind_Resume
	nop
.LEHE33:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1748:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1748-.LLSDACSBC1748
.LLSDACSBC1748:
	.uleb128 .LEHB33-.LCOLDB46
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSEC1748:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE46:
	.text
.LHOTE46:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB47:
	.text
.LHOTB47:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIxE
	.def	_ZN3neo6stringmIESt16initializer_listIxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIxE
_ZN3neo6stringmIESt16initializer_listIxE:
.LFB1749:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%edi, %edi
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rbx
	testq	%rbp, %rbp
	jne	.L435
.L417:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L435:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L418
	movq	(%rbx), %r12
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L419:
	movq	0(%r13,%rsi,8), %rcx
.LEHB34:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%rdi,%rsi,8)
	movq	(%rbx), %rdx
	addq	$1, %rsi
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%rbp, %rsi
	jne	.L419
	movq	8(%rbx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L436
	movq	(%rbx), %rax
	movq	%rax, %r8
	leaq	-1(%rax), %rcx
	subq	%r12, %r8
	cmpq	%r8, %rcx
	jb	.L421
	addq	%r12, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L434
	.p2align 4,,10
	.p2align 3
.L422:
	movq	8(%rbx), %r8
	leaq	(%rax,%r12), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L434:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%r12, %rdx
	cmpq	%rdx, %rax
	jnb	.L422
	movq	8(%rbx), %rdx
.L421:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L424
	.p2align 4,,10
	.p2align 3
.L437:
	movq	8(%rbx), %rdx
.L424:
	movq	(%rdi,%r12,8), %rsi
	addq	%r13, %rdx
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE34:
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	addq	$1, %r12
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r12
	jne	.L437
	jmp	.L417
.L418:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB35:
	call	_Z6printfPKcz
.LEHE35:
	movl	$1, %ecx
	call	exit
.L436:
	movq	%rsi, %rdx
	leaq	.LC45(%rip), %rcx
.LEHB36:
	call	_Z6printfPKcz
.LEHE36:
	movl	$1, %ecx
	call	exit
.L427:
	movq	%rax, %rbx
	jmp	.L425
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1749:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1749-.LLSDACSB1749
.LLSDACSB1749:
	.uleb128 .LEHB34-.LFB1749
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L427-.LFB1749
	.uleb128 0
	.uleb128 .LEHB35-.LFB1749
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB1749
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L427-.LFB1749
	.uleb128 0
.LLSDACSE1749:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringmIESt16initializer_listIxE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIxE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringmIESt16initializer_listIxE.cold:
.L425:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB37:
	call	_Unwind_Resume
	nop
.LEHE37:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1749:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1749-.LLSDACSBC1749
.LLSDACSBC1749:
	.uleb128 .LEHB37-.LCOLDB47
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSEC1749:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE47:
	.text
.LHOTE47:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB48:
	.text
.LHOTB48:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIdE
	.def	_ZN3neo6stringmIESt16initializer_listIdE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIdE
_ZN3neo6stringmIESt16initializer_listIdE:
.LFB1750:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%edi, %edi
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rbx
	testq	%rbp, %rbp
	jne	.L457
.L439:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L457:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L440
	movq	(%rbx), %r12
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L441:
	movsd	0(%r13,%rsi,8), %xmm0
.LEHB38:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%rdi,%rsi,8)
	movq	(%rbx), %rdx
	addq	$1, %rsi
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%rbp, %rsi
	jne	.L441
	movq	8(%rbx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L458
	movq	(%rbx), %rax
	movq	%rax, %r8
	leaq	-1(%rax), %rcx
	subq	%r12, %r8
	cmpq	%r8, %rcx
	jb	.L443
	addq	%r12, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L456
	.p2align 4,,10
	.p2align 3
.L444:
	movq	8(%rbx), %r8
	leaq	(%rax,%r12), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L456:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%r12, %rdx
	cmpq	%rdx, %rax
	jnb	.L444
	movq	8(%rbx), %rdx
.L443:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L446
	.p2align 4,,10
	.p2align 3
.L459:
	movq	8(%rbx), %rdx
.L446:
	movq	(%rdi,%r12,8), %rsi
	addq	%r13, %rdx
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE38:
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	addq	$1, %r12
	leaq	-1(%r13,%rax), %r13
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r12
	jne	.L459
	jmp	.L439
.L440:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB39:
	call	_Z6printfPKcz
.LEHE39:
	movl	$1, %ecx
	call	exit
.L458:
	movq	%rsi, %rdx
	leaq	.LC45(%rip), %rcx
.LEHB40:
	call	_Z6printfPKcz
.LEHE40:
	movl	$1, %ecx
	call	exit
.L449:
	movq	%rax, %rbx
	jmp	.L447
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1750:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1750-.LLSDACSB1750
.LLSDACSB1750:
	.uleb128 .LEHB38-.LFB1750
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L449-.LFB1750
	.uleb128 0
	.uleb128 .LEHB39-.LFB1750
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB1750
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L449-.LFB1750
	.uleb128 0
.LLSDACSE1750:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringmIESt16initializer_listIdE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringmIESt16initializer_listIdE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringmIESt16initializer_listIdE.cold:
.L447:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB41:
	call	_Unwind_Resume
	nop
.LEHE41:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1750:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1750-.LLSDACSBC1750
.LLSDACSBC1750:
	.uleb128 .LEHB41-.LCOLDB48
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSEC1750:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE48:
	.text
.LHOTE48:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIcE
	.def	_ZN3neo6stringpLESt16initializer_listIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIcE
_ZN3neo6stringpLESt16initializer_listIcE:
.LFB1751:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %rbx
	testq	%rsi, %rsi
	jne	.L466
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L466:
	movq	(%rcx), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	call	realloc
	movq	%rsi, %rdx
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L467
	notq	%rdx
	addq	(%rbx), %rdx
	movq	%rsi, %r8
	movq	%rdi, %rcx
	addq	%rax, %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L467:
	leaq	.LC1(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC49:
	.ascii "neo::string+=: Literals[%lld] must not be NULL\12Params: Literals(length): %ld\12\0"
	.align 8
.LC50:
	.ascii "neo::string+=: Literals[%lld] must not be Self\12Params: Literals(length): %ld\12\0"
	.align 8
.LC51:
	.ascii "neo::string+=: Memory allocation failed\12Params: Literals(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIPKcE
	.def	_ZN3neo6stringpLESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIPKcE
_ZN3neo6stringpLESt16initializer_listIPKcE:
.LFB1752:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rbp
	movq	(%rdx), %r12
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	je	.L469
	movq	(%rcx), %r13
	xorl	%ebx, %ebx
	movq	%r13, %rdi
	.p2align 4,,10
	.p2align 3
.L472:
	movq	(%r12,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L481
	movq	8(%rsi), %r14
	cmpq	%r14, %rcx
	je	.L482
	call	strlen
	addq	$1, %rbx
	addq	%rax, %rdi
	movq	%rdi, (%rsi)
	cmpq	%rbx, %rbp
	jne	.L472
	movq	%rdi, %rdx
	movq	%r14, %rcx
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L483
	leaq	-1(%r13), %r14
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L475:
	movq	(%r12,%rdi,8), %r13
	testq	%r13, %r13
	je	.L484
	movq	%r13, %rcx
	addq	$1, %rdi
	call	strlen
	movq	8(%rsi), %rdx
	movq	%r13, %rcx
	movq	%rax, %rbx
	movq	%rax, %r8
	addq	%r14, %rdx
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy
	cmpq	%rdi, %rbp
	jne	.L475
	movq	8(%rsi), %rdx
	movq	(%rsi), %rax
	movb	$0, -1(%rdx,%rax)
.L469:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L483:
	leaq	.LC51(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L484:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L482:
	leaq	.LC50(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L481:
	leaq	.LC49(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC52:
	.ascii "neo::string+=: Strings[%lld] must not be NULL\12Params: Strings(length): %ld\12\0"
	.align 8
.LC53:
	.ascii "neo::string+=: Strings[%lld] must not be Self\12Params: Strings(length): %ld\12\0"
	.align 8
.LC54:
	.ascii "neo::string+=: Memory allocation failed\12Params: Strings(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIPS0_E
	.def	_ZN3neo6stringpLESt16initializer_listIPS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIPS0_E
_ZN3neo6stringpLESt16initializer_listIPS0_E:
.LFB1753:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rdi
	movq	(%rdx), %rsi
	movq	%rcx, %rbx
	testq	%rdi, %rdi
	je	.L486
	movq	(%rcx), %rbp
	xorl	%edx, %edx
	movq	%rbp, %r9
	.p2align 4,,10
	.p2align 3
.L489:
	movq	(%rsi,%rdx,8), %rax
	testq	%rax, %rax
	je	.L497
	cmpq	%rbx, %rax
	je	.L498
	movq	(%rax), %rax
	addq	$1, %rdx
	leaq	-1(%r9,%rax), %r9
	movq	%r9, (%rbx)
	cmpq	%rdx, %rdi
	jne	.L489
	movq	8(%rbx), %rcx
	movq	%r9, %rdx
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L499
	subq	$1, %rbp
	leaq	-8(%rsi,%rdi,8), %rdi
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L500:
	movq	8(%rbx), %rax
	addq	$8, %rsi
.L492:
	movq	(%rsi), %rcx
	leaq	(%rax,%rbp), %rdx
	movq	(%rcx), %r8
	movq	8(%rcx), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	(%rax), %rax
	leaq	-1(%rbp,%rax), %rbp
	cmpq	%rsi, %rdi
	jne	.L500
	movq	8(%rbx), %rdx
	movq	(%rbx), %rax
	movb	$0, -1(%rdx,%rax)
.L486:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L498:
	leaq	.LC53(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L497:
	leaq	.LC52(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L499:
	leaq	.LC54(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC55:
	.ascii "neo::string+=: Memory allocation failed\12Params: Numbers(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB56:
	.text
.LHOTB56:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIyE
	.def	_ZN3neo6stringpLESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIyE
_ZN3neo6stringpLESt16initializer_listIyE:
.LFB1754:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%edi, %edi
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	jne	.L514
.L502:
	movq	%rdi, %rcx
	call	free
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L514:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L503
	movq	(%rsi), %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L504:
	movq	0(%r13,%rbx,8), %rcx
.LEHB42:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%rdi,%rbx,8)
	movq	(%rsi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rsi)
	cmpq	%rbp, %rbx
	jne	.L504
	movq	8(%rsi), %rcx
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L515
	subq	$1, %r12
	xorl	%r13d, %r13d
	jmp	.L507
	.p2align 4,,10
	.p2align 3
.L516:
	movq	8(%rsi), %rax
.L507:
	movq	(%rdi,%r13,8), %rbx
	leaq	(%rax,%r12), %rdx
	movq	(%rbx), %r8
	movq	8(%rbx), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE42:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %r13
	leaq	-1(%r12,%rax), %r12
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r13
	jne	.L516
	movq	8(%rsi), %rdx
	movq	(%rsi), %rax
	movb	$0, -1(%rdx,%rax)
	jmp	.L502
.L503:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB43:
	call	_Z6printfPKcz
.LEHE43:
	movl	$1, %ecx
	call	exit
.L515:
	movq	%rbx, %rdx
	leaq	.LC55(%rip), %rcx
.LEHB44:
	call	_Z6printfPKcz
.LEHE44:
	movl	$1, %ecx
	call	exit
.L510:
	movq	%rax, %rbx
	jmp	.L508
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1754:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1754-.LLSDACSB1754
.LLSDACSB1754:
	.uleb128 .LEHB42-.LFB1754
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L510-.LFB1754
	.uleb128 0
	.uleb128 .LEHB43-.LFB1754
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB1754
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L510-.LFB1754
	.uleb128 0
.LLSDACSE1754:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringpLESt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIyE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringpLESt16initializer_listIyE.cold:
.L508:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB45:
	call	_Unwind_Resume
	nop
.LEHE45:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1754:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1754-.LLSDACSBC1754
.LLSDACSBC1754:
	.uleb128 .LEHB45-.LCOLDB56
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSEC1754:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE56:
	.text
.LHOTE56:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB57:
	.text
.LHOTB57:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIxE
	.def	_ZN3neo6stringpLESt16initializer_listIxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIxE
_ZN3neo6stringpLESt16initializer_listIxE:
.LFB1755:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%edi, %edi
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	jne	.L530
.L518:
	movq	%rdi, %rcx
	call	free
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L530:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L519
	movq	(%rsi), %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L520:
	movq	0(%r13,%rbx,8), %rcx
.LEHB46:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%rdi,%rbx,8)
	movq	(%rsi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rsi)
	cmpq	%rbp, %rbx
	jne	.L520
	movq	8(%rsi), %rcx
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L531
	subq	$1, %r12
	xorl	%r13d, %r13d
	jmp	.L523
	.p2align 4,,10
	.p2align 3
.L532:
	movq	8(%rsi), %rax
.L523:
	movq	(%rdi,%r13,8), %rbx
	leaq	(%rax,%r12), %rdx
	movq	(%rbx), %r8
	movq	8(%rbx), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE46:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %r13
	leaq	-1(%r12,%rax), %r12
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r13
	jne	.L532
	movq	8(%rsi), %rdx
	movq	(%rsi), %rax
	movb	$0, -1(%rdx,%rax)
	jmp	.L518
.L519:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB47:
	call	_Z6printfPKcz
.LEHE47:
	movl	$1, %ecx
	call	exit
.L531:
	movq	%rbx, %rdx
	leaq	.LC55(%rip), %rcx
.LEHB48:
	call	_Z6printfPKcz
.LEHE48:
	movl	$1, %ecx
	call	exit
.L526:
	movq	%rax, %rbx
	jmp	.L524
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1755:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1755-.LLSDACSB1755
.LLSDACSB1755:
	.uleb128 .LEHB46-.LFB1755
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L526-.LFB1755
	.uleb128 0
	.uleb128 .LEHB47-.LFB1755
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB1755
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L526-.LFB1755
	.uleb128 0
.LLSDACSE1755:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringpLESt16initializer_listIxE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIxE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringpLESt16initializer_listIxE.cold:
.L524:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB49:
	call	_Unwind_Resume
	nop
.LEHE49:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1755:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1755-.LLSDACSBC1755
.LLSDACSBC1755:
	.uleb128 .LEHB49-.LCOLDB57
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSEC1755:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE57:
	.text
.LHOTE57:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB58:
	.text
.LHOTB58:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIdE
	.def	_ZN3neo6stringpLESt16initializer_listIdE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIdE
_ZN3neo6stringpLESt16initializer_listIdE:
.LFB1756:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%edi, %edi
	movq	8(%rdx), %rbp
	movq	(%rdx), %r13
	movq	%rcx, %rsi
	testq	%rbp, %rbp
	jne	.L546
.L534:
	movq	%rdi, %rcx
	call	free
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L546:
	leaq	0(,%rbp,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L535
	movq	(%rsi), %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L536:
	movsd	0(%r13,%rbx,8), %xmm0
.LEHB50:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%rdi,%rbx,8)
	movq	(%rsi), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rsi)
	cmpq	%rbp, %rbx
	jne	.L536
	movq	8(%rsi), %rcx
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L547
	subq	$1, %r12
	xorl	%r13d, %r13d
	jmp	.L539
	.p2align 4,,10
	.p2align 3
.L548:
	movq	8(%rsi), %rax
.L539:
	movq	(%rdi,%r13,8), %rbx
	leaq	(%rax,%r12), %rdx
	movq	(%rbx), %r8
	movq	8(%rbx), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE50:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	addq	$1, %r13
	leaq	-1(%r12,%rax), %r12
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	cmpq	%rbp, %r13
	jne	.L548
	movq	8(%rsi), %rdx
	movq	(%rsi), %rax
	movb	$0, -1(%rdx,%rax)
	jmp	.L534
.L535:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %rdx
.LEHB51:
	call	_Z6printfPKcz
.LEHE51:
	movl	$1, %ecx
	call	exit
.L547:
	movq	%rbx, %rdx
	leaq	.LC55(%rip), %rcx
.LEHB52:
	call	_Z6printfPKcz
.LEHE52:
	movl	$1, %ecx
	call	exit
.L542:
	movq	%rax, %rbx
	jmp	.L540
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1756:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1756-.LLSDACSB1756
.LLSDACSB1756:
	.uleb128 .LEHB50-.LFB1756
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L542-.LFB1756
	.uleb128 0
	.uleb128 .LEHB51-.LFB1756
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB1756
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L542-.LFB1756
	.uleb128 0
.LLSDACSE1756:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6stringpLESt16initializer_listIdE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringpLESt16initializer_listIdE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN3neo6stringpLESt16initializer_listIdE.cold:
.L540:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB53:
	call	_Unwind_Resume
	nop
.LEHE53:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1756:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1756-.LLSDACSBC1756
.LLSDACSBC1756:
	.uleb128 .LEHB53-.LCOLDB58
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSEC1756:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE58:
	.text
.LHOTE58:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEc
	.def	_ZN3neo6stringeqEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringeqEc
_ZN3neo6stringeqEc:
.LFB1757:
	.seh_endprologue
	xorl	%eax, %eax
	cmpq	$2, (%rcx)
	je	.L552
	ret
	.p2align 4,,10
	.p2align 3
.L552:
	movq	8(%rcx), %rax
	cmpb	%dl, (%rax)
	sete	%al
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEPKc
	.def	_ZN3neo6stringeqEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringeqEPKc
_ZN3neo6stringeqEPKc:
.LFB1758:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L556
	movq	(%rcx), %rdi
	movq	%rdx, %rcx
	call	strlen
	addq	$1, %rax
	cmpq	%rax, %rdi
	je	.L558
.L556:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L558:
	movq	8(%rsi), %rcx
	cmpq	%rbx, %rcx
	je	.L557
	movq	%rdi, %r8
	movq	%rbx, %rdx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN3neo6memory7CompareEPKvS2_y
	.p2align 4,,10
	.p2align 3
.L557:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEPS0_
	.def	_ZN3neo6stringeqEPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringeqEPS0_
_ZN3neo6stringeqEPS0_:
.LFB1759:
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L562
	movq	(%rcx), %r8
	cmpq	(%rdx), %r8
	jne	.L562
	cmpq	%rcx, %rdx
	je	.L563
	movq	8(%rdx), %rdx
	movq	8(%rcx), %rcx
	jmp	_ZN3neo6memory7CompareEPKvS2_y
	.p2align 4,,10
	.p2align 3
.L562:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L563:
	movl	$1, %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEy
	.def	_ZN3neo6stringeqEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringeqEy
_ZN3neo6stringeqEy:
.LFB1760:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	(%rsi), %r8
	movq	%rax, %rbx
	cmpq	(%rax), %r8
	je	.L565
	movq	8(%rax), %rcx
	xorl	%esi, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L565:
	movq	8(%rax), %rdx
	movq	8(%rsi), %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	movq	8(%rbx), %rcx
	movl	%eax, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEx
	.def	_ZN3neo6stringeqEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringeqEx
_ZN3neo6stringeqEx:
.LFB1761:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	(%rsi), %r8
	movq	%rax, %rbx
	cmpq	(%rax), %r8
	je	.L568
	movq	8(%rax), %rcx
	xorl	%esi, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L568:
	movq	8(%rax), %rdx
	movq	8(%rsi), %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	movq	8(%rbx), %rcx
	movl	%eax, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEd
	.def	_ZN3neo6stringeqEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringeqEd
_ZN3neo6stringeqEd:
.LFB1762:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movapd	%xmm1, %xmm0
	movq	%rcx, %rsi
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	(%rsi), %r8
	movq	%rax, %rbx
	cmpq	(%rax), %r8
	je	.L571
	movq	8(%rax), %rcx
	xorl	%esi, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L571:
	movq	8(%rax), %rdx
	movq	8(%rsi), %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	movq	8(%rbx), %rcx
	movl	%eax, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEc
	.def	_ZN3neo6stringneEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringneEc
_ZN3neo6stringneEc:
.LFB1763:
	.seh_endprologue
	movl	$1, %eax
	cmpq	$2, (%rcx)
	je	.L576
	ret
	.p2align 4,,10
	.p2align 3
.L576:
	movq	8(%rcx), %rax
	cmpb	%dl, (%rax)
	setne	%al
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEPKc
	.def	_ZN3neo6stringneEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringneEPKc
_ZN3neo6stringneEPKc:
.LFB1764:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L579
	movq	(%rcx), %rdi
	movq	%rdx, %rcx
	call	strlen
	leaq	1(%rax), %r8
	movl	$1, %eax
	cmpq	%rdi, %r8
	jne	.L577
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rbx
	je	.L577
	movq	%rbx, %rdx
	call	_ZN3neo6memory7CompareEPKvS2_y
	xorl	$1, %eax
.L577:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L579:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEPS0_
	.def	_ZN3neo6stringneEPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringneEPS0_
_ZN3neo6stringneEPS0_:
.LFB1765:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L584
	movq	(%rcx), %r8
	movl	$1, %eax
	cmpq	(%rdx), %r8
	jne	.L582
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	je	.L582
	movq	8(%rdx), %rdx
	movq	8(%rcx), %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	xorl	$1, %eax
.L582:
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L584:
	movl	$1, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEy
	.def	_ZN3neo6stringneEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringneEy
_ZN3neo6stringneEy:
.LFB1766:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	(%rsi), %r8
	movq	%rax, %rbx
	cmpq	(%rax), %r8
	je	.L588
	movq	8(%rax), %rcx
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L588:
	movq	8(%rax), %rdx
	movq	8(%rsi), %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	movq	8(%rbx), %rcx
	movl	%eax, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	xorl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEx
	.def	_ZN3neo6stringneEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringneEx
_ZN3neo6stringneEx:
.LFB1767:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	(%rsi), %r8
	movq	%rax, %rbx
	cmpq	(%rax), %r8
	je	.L591
	movq	8(%rax), %rcx
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L591:
	movq	8(%rax), %rdx
	movq	8(%rsi), %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	movq	8(%rbx), %rcx
	movl	%eax, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	xorl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEd
	.def	_ZN3neo6stringneEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6stringneEd
_ZN3neo6stringneEd:
.LFB1768:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movapd	%xmm1, %xmm0
	movq	%rcx, %rsi
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	(%rsi), %r8
	movq	%rax, %rbx
	cmpq	(%rax), %r8
	je	.L594
	movq	8(%rax), %rcx
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L594:
	movq	8(%rax), %rdx
	movq	8(%rsi), %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	movq	8(%rbx), %rcx
	movl	%eax, %esi
	call	free
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	xorl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC59:
	.ascii "neo::string.Insert(): Index out of range\12Params: Index: %lld, Characters(length): %ld\12\0"
	.align 8
.LC60:
	.ascii "neo::string.Insert(): Illegal insertion after EOF\12Params: Index: %lld, Characters(length): %ld\12\0"
	.align 8
.LC61:
	.ascii "neo::string.Insert(): Memory allocation failed\12Params: Index: %lld, Characters(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIcE
	.def	_ZN3neo6string6InsertEySt16initializer_listIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIcE
_ZN3neo6string6InsertEySt16initializer_listIcE:
.LFB1769:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%r8), %rbp
	movq	8(%r8), %rdi
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rbx
	cmpq	%rsi, %rdx
	jb	.L610
	je	.L611
	testq	%rdi, %rdi
	jne	.L612
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L612:
	addq	%rdi, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L613
	movq	(%rbx), %rdx
	leaq	(%rsi,%rdi), %r8
	leaq	-1(%rdx), %rcx
	cmpq	%r8, %rcx
	jb	.L601
	subq	%rdi, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	subq	%rdi, %rdx
	subq	$2, %rdx
	cmpq	%r8, %rax
	jb	.L604
	.p2align 4,,10
	.p2align 3
.L603:
	movq	8(%rbx), %rcx
	movzbl	(%rcx,%rdx), %r9d
	subq	$1, %rdx
	movb	%r9b, (%rcx,%rax)
	subq	$1, %rax
	cmpq	%r8, %rax
	jnb	.L603
.L604:
	movq	8(%rbx), %rax
.L601:
	leaq	(%rax,%rsi), %rdx
	movq	%rdi, %r8
	movq	%rbp, %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L611:
	leaq	.LC60(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L610:
	leaq	.LC59(%rip), %rcx
	movq	%rdi, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L613:
	leaq	.LC61(%rip), %rcx
	movq	%rdi, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC62:
	.ascii "neo::string.Insert(): Index out of range\12Params: Index: %lld, Literals(length): %ld\12\0"
	.align 8
.LC63:
	.ascii "neo::string.Insert(): Illegal insertion after EOF\12Params: Index: %lld, Literals(length): %ld\12\0"
	.align 8
.LC64:
	.ascii "neo::string.Insert(): Literals[%lld] must not be NULL\12Params: Literals(length): %ld\12\0"
	.align 8
.LC65:
	.ascii "neo::string.Insert(): Literals[%lld] must not be Self\12Params: Literals(length): %ld\12\0"
	.align 8
.LC66:
	.ascii "neo::string.Insert(): Memory allocation failed\12Params: Index: %lld, Literals(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIPKcE
	.def	_ZN3neo6string6InsertEySt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIPKcE
_ZN3neo6string6InsertEySt16initializer_listIPKcE:
.LFB1770:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %r14
	movq	(%r8), %r12
	movq	8(%r8), %rbp
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	cmpq	%rdx, %r14
	jb	.L634
	je	.L635
	testq	%rbp, %rbp
	je	.L632
	movq	%r14, %r13
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L617:
	movq	(%r12,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L636
	movq	8(%rsi), %r15
	cmpq	%r15, %rcx
	je	.L637
	call	strlen
	addq	$1, %rbx
	addq	%rax, %r13
	movq	%r13, (%rsi)
	cmpq	%rbx, %rbp
	jne	.L617
	movq	%r13, %rdx
	movq	%r15, %rcx
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L638
	movq	(%rsi), %rax
	leaq	(%rax,%rdi), %r8
	leaq	-1(%rax), %rcx
	subq	%r14, %r8
	cmpq	%r8, %rcx
	jb	.L621
	addq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L633
	.p2align 4,,10
	.p2align 3
.L639:
	movq	8(%rsi), %r8
	leaq	(%r14,%rax), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L633:
	movq	(%rsi), %rcx
	leaq	(%rcx,%rdi), %rdx
	subq	%r14, %rdx
	cmpq	%rdx, %rax
	jnb	.L639
.L621:
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L625:
	movq	(%r12,%r13,8), %r14
	testq	%r14, %r14
	je	.L640
	movq	%r14, %rcx
	addq	$1, %r13
	call	strlen
	movq	8(%rsi), %rdx
	movq	%r14, %rcx
	movq	%rax, %rbx
	movq	%rax, %r8
	addq	%rdi, %rdx
	addq	%rbx, %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy
	cmpq	%r13, %rbp
	jne	.L625
.L632:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L636:
	leaq	.LC64(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L637:
	leaq	.LC65(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L638:
	leaq	.LC66(%rip), %rcx
	movq	%rbp, %r8
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L640:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L635:
	leaq	.LC63(%rip), %rcx
	movq	%rbp, %r8
	movq	%r14, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L634:
	leaq	.LC62(%rip), %rcx
	movq	%rbp, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC67:
	.ascii "neo::string.Insert(): Index out of range\12Params: Index: %lld, Strings(length): %ld\12\0"
	.align 8
.LC68:
	.ascii "neo::string.Insert(): Illegal insertion after EOF\12Params: Index: %lld, Strings(length): %ld\12\0"
	.align 8
.LC69:
	.ascii "neo::string.Insert(): Strings[%lld] must not be NULL\12Params: Strings(length): %ld\12\0"
	.align 8
.LC70:
	.ascii "neo::string.Insert(): Strings[%lld] must not be Self\12Params: Strings(length): %ld\12\0"
	.align 8
.LC71:
	.ascii "neo::string.Insert(): Memory allocation failed\12Params: Index: %lld, Strings(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIPS0_E
	.def	_ZN3neo6string6InsertEySt16initializer_listIPS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIPS0_E
_ZN3neo6string6InsertEySt16initializer_listIPS0_E:
.LFB1771:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %r12
	movq	(%r8), %rsi
	movq	8(%r8), %rbp
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	cmpq	%rdx, %r12
	jb	.L661
	je	.L662
	testq	%rbp, %rbp
	je	.L644
	movq	%r12, %r9
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L647:
	movq	(%rsi,%rdx,8), %rax
	testq	%rax, %rax
	je	.L663
	cmpq	%rbx, %rax
	je	.L664
	movq	(%rax), %rax
	addq	$1, %rdx
	leaq	-1(%r9,%rax), %r9
	movq	%r9, (%rbx)
	cmpq	%rdx, %rbp
	jne	.L647
	movq	8(%rbx), %rcx
	movq	%r9, %rdx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L665
	movq	(%rbx), %rax
	leaq	(%rax,%rdi), %r8
	leaq	-1(%rax), %rcx
	subq	%r12, %r8
	cmpq	%r8, %rcx
	jb	.L649
	addq	%r12, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L660
	.p2align 4,,10
	.p2align 3
.L650:
	movq	8(%rbx), %r8
	leaq	(%r12,%rax), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L660:
	movq	(%rbx), %rcx
	leaq	(%rdi,%rcx), %rdx
	subq	%r12, %rdx
	cmpq	%rdx, %rax
	jnb	.L650
	movq	8(%rbx), %rdx
.L649:
	leaq	-8(%rsi,%rbp,8), %rbp
	jmp	.L652
	.p2align 4,,10
	.p2align 3
.L666:
	movq	8(%rbx), %rdx
	addq	$8, %rsi
.L652:
	movq	(%rsi), %rax
	addq	%rdi, %rdx
	movq	(%rax), %r8
	movq	8(%rax), %rcx
	subq	$1, %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	(%rax), %rax
	leaq	-1(%rdi,%rax), %rdi
	cmpq	%rsi, %rbp
	jne	.L666
.L644:
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L663:
	leaq	.LC69(%rip), %rcx
	movq	%rbp, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L664:
	leaq	.LC70(%rip), %rcx
	movq	%rbp, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L665:
	leaq	.LC71(%rip), %rcx
	movq	%rbp, %r8
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L662:
	leaq	.LC68(%rip), %rcx
	movq	%rbp, %r8
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L661:
	leaq	.LC67(%rip), %rcx
	movq	%rbp, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC72:
	.ascii "neo::string.Insert(): Index out of range\12Params: Index: %lld, Numbers(length): %ld\12\0"
	.align 8
.LC73:
	.ascii "neo::string.Insert(): Illegal insertion after EOF\12Params: Index: %lld, Numbers(length): %ld\12\0"
	.align 8
.LC74:
	.ascii "neo::string.Insert(): Memory allocation failed\12Params: Index: %lld, Numbers(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB75:
	.text
.LHOTB75:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIyE
	.def	_ZN3neo6string6InsertEySt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIyE
_ZN3neo6string6InsertEySt16initializer_listIyE:
.LFB1772:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%r8), %r12
	movq	(%r8), %r14
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	testq	%r12, %r12
	jne	.L668
	movq	(%rcx), %rax
	cmpq	%rdx, %rax
	jb	.L694
	xorl	%ebp, %ebp
	cmpq	%rax, %rdx
	je	.L672
.L673:
	movq	%rbp, %rcx
	call	free
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L668:
	leaq	0(,%r12,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L695
	movq	(%rbx), %r13
	cmpq	%rdi, %r13
	jb	.L669
	cmpq	%r13, %rdi
	je	.L672
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L676:
	movq	(%r14,%rsi,8), %rcx
.LEHB54:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, 0(%rbp,%rsi,8)
	movq	(%rbx), %rdx
	addq	$1, %rsi
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%r12, %rsi
	jne	.L676
	movq	8(%rbx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L696
	movq	(%rbx), %rax
	leaq	(%rax,%rdi), %r8
	leaq	-1(%rax), %rcx
	subq	%r13, %r8
	cmpq	%r8, %rcx
	jb	.L678
	addq	%r13, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L693
	.p2align 4,,10
	.p2align 3
.L679:
	movq	8(%rbx), %r8
	leaq	(%rax,%r13), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L693:
	movq	(%rbx), %rcx
	leaq	(%rcx,%rdi), %rdx
	subq	%r13, %rdx
	cmpq	%rdx, %rax
	jnb	.L679
	movq	8(%rbx), %rdx
.L678:
	xorl	%r13d, %r13d
	jmp	.L681
	.p2align 4,,10
	.p2align 3
.L697:
	movq	8(%rbx), %rdx
.L681:
	movq	0(%rbp,%r13,8), %rsi
	addq	%rdi, %rdx
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	addq	$1, %r13
	leaq	-1(%rdi,%rax), %rdi
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%r12, %r13
	jne	.L697
	jmp	.L673
.L694:
	xorl	%ebp, %ebp
.L669:
	movq	%r12, %r8
	movq	%rdi, %rdx
	leaq	.LC72(%rip), %rcx
	call	_Z6printfPKcz
.L675:
	movl	$1, %ecx
	call	exit
.L672:
	movq	%r12, %r8
	movq	%rdi, %rdx
	leaq	.LC73(%rip), %rcx
	call	_Z6printfPKcz
.LEHE54:
	jmp	.L675
.L695:
	leaq	.LC20(%rip), %rcx
	movq	%r12, %rdx
.LEHB55:
	call	_Z6printfPKcz
.LEHE55:
	movl	$1, %ecx
	call	exit
.L696:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	leaq	.LC74(%rip), %rcx
.LEHB56:
	call	_Z6printfPKcz
.LEHE56:
	jmp	.L675
.L685:
	movq	%rax, %rbx
	jmp	.L682
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1772:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1772-.LLSDACSB1772
.LLSDACSB1772:
	.uleb128 .LEHB54-.LFB1772
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L685-.LFB1772
	.uleb128 0
	.uleb128 .LEHB55-.LFB1772
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB1772
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L685-.LFB1772
	.uleb128 0
.LLSDACSE1772:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string6InsertEySt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIyE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 32
	.seh_savereg	%rsi, 40
	.seh_savereg	%rdi, 48
	.seh_savereg	%rbp, 56
	.seh_savereg	%r12, 64
	.seh_savereg	%r13, 72
	.seh_savereg	%r14, 80
	.seh_endprologue
_ZN3neo6string6InsertEySt16initializer_listIyE.cold:
.L682:
	movq	%rbp, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB57:
	call	_Unwind_Resume
	nop
.LEHE57:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1772:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1772-.LLSDACSBC1772
.LLSDACSBC1772:
	.uleb128 .LEHB57-.LCOLDB75
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSEC1772:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE75:
	.text
.LHOTE75:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB76:
	.text
.LHOTB76:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIxE
	.def	_ZN3neo6string6InsertEySt16initializer_listIxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIxE
_ZN3neo6string6InsertEySt16initializer_listIxE:
.LFB1773:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%r8), %r12
	movq	(%r8), %r14
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	testq	%r12, %r12
	jne	.L699
	movq	(%rcx), %rax
	cmpq	%rdx, %rax
	jb	.L725
	xorl	%ebp, %ebp
	cmpq	%rax, %rdx
	je	.L703
.L704:
	movq	%rbp, %rcx
	call	free
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L699:
	leaq	0(,%r12,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L726
	movq	(%rbx), %r13
	cmpq	%rdi, %r13
	jb	.L700
	cmpq	%r13, %rdi
	je	.L703
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L707:
	movq	(%r14,%rsi,8), %rcx
.LEHB58:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, 0(%rbp,%rsi,8)
	movq	(%rbx), %rdx
	addq	$1, %rsi
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%r12, %rsi
	jne	.L707
	movq	8(%rbx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L727
	movq	(%rbx), %rax
	leaq	(%rax,%rdi), %r8
	leaq	-1(%rax), %rcx
	subq	%r13, %r8
	cmpq	%r8, %rcx
	jb	.L709
	addq	%r13, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L724
	.p2align 4,,10
	.p2align 3
.L710:
	movq	8(%rbx), %r8
	leaq	(%rax,%r13), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L724:
	movq	(%rbx), %rcx
	leaq	(%rcx,%rdi), %rdx
	subq	%r13, %rdx
	cmpq	%rdx, %rax
	jnb	.L710
	movq	8(%rbx), %rdx
.L709:
	xorl	%r13d, %r13d
	jmp	.L712
	.p2align 4,,10
	.p2align 3
.L728:
	movq	8(%rbx), %rdx
.L712:
	movq	0(%rbp,%r13,8), %rsi
	addq	%rdi, %rdx
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	addq	$1, %r13
	leaq	-1(%rdi,%rax), %rdi
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%r12, %r13
	jne	.L728
	jmp	.L704
.L725:
	xorl	%ebp, %ebp
.L700:
	movq	%r12, %r8
	movq	%rdi, %rdx
	leaq	.LC72(%rip), %rcx
	call	_Z6printfPKcz
.L706:
	movl	$1, %ecx
	call	exit
.L703:
	movq	%r12, %r8
	movq	%rdi, %rdx
	leaq	.LC73(%rip), %rcx
	call	_Z6printfPKcz
.LEHE58:
	jmp	.L706
.L726:
	leaq	.LC20(%rip), %rcx
	movq	%r12, %rdx
.LEHB59:
	call	_Z6printfPKcz
.LEHE59:
	movl	$1, %ecx
	call	exit
.L727:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	leaq	.LC74(%rip), %rcx
.LEHB60:
	call	_Z6printfPKcz
.LEHE60:
	jmp	.L706
.L716:
	movq	%rax, %rbx
	jmp	.L713
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1773:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1773-.LLSDACSB1773
.LLSDACSB1773:
	.uleb128 .LEHB58-.LFB1773
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L716-.LFB1773
	.uleb128 0
	.uleb128 .LEHB59-.LFB1773
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB1773
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L716-.LFB1773
	.uleb128 0
.LLSDACSE1773:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string6InsertEySt16initializer_listIxE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIxE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 32
	.seh_savereg	%rsi, 40
	.seh_savereg	%rdi, 48
	.seh_savereg	%rbp, 56
	.seh_savereg	%r12, 64
	.seh_savereg	%r13, 72
	.seh_savereg	%r14, 80
	.seh_endprologue
_ZN3neo6string6InsertEySt16initializer_listIxE.cold:
.L713:
	movq	%rbp, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB61:
	call	_Unwind_Resume
	nop
.LEHE61:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1773:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1773-.LLSDACSBC1773
.LLSDACSBC1773:
	.uleb128 .LEHB61-.LCOLDB76
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
.LLSDACSEC1773:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE76:
	.text
.LHOTE76:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB77:
	.text
.LHOTB77:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIdE
	.def	_ZN3neo6string6InsertEySt16initializer_listIdE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIdE
_ZN3neo6string6InsertEySt16initializer_listIdE:
.LFB1774:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%r8), %r12
	movq	(%r8), %r14
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	testq	%r12, %r12
	jne	.L730
	movq	(%rcx), %rax
	cmpq	%rdx, %rax
	jb	.L756
	xorl	%ebp, %ebp
	cmpq	%rax, %rdx
	je	.L734
.L735:
	movq	%rbp, %rcx
	call	free
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L730:
	leaq	0(,%r12,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L757
	movq	(%rbx), %r13
	cmpq	%rdi, %r13
	jb	.L731
	cmpq	%r13, %rdi
	je	.L734
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L738:
	movsd	(%r14,%rsi,8), %xmm0
.LEHB62:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, 0(%rbp,%rsi,8)
	movq	(%rbx), %rdx
	addq	$1, %rsi
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%r12, %rsi
	jne	.L738
	movq	8(%rbx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L758
	movq	(%rbx), %rax
	leaq	(%rax,%rdi), %r8
	leaq	-1(%rax), %rcx
	subq	%r13, %r8
	cmpq	%r8, %rcx
	jb	.L740
	addq	%r13, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L755
	.p2align 4,,10
	.p2align 3
.L741:
	movq	8(%rbx), %r8
	leaq	(%rax,%r13), %rdx
	subq	%rcx, %rdx
	movzbl	(%r8,%rdx), %edx
	movb	%dl, (%r8,%rax)
	subq	$1, %rax
.L755:
	movq	(%rbx), %rcx
	leaq	(%rcx,%rdi), %rdx
	subq	%r13, %rdx
	cmpq	%rdx, %rax
	jnb	.L741
	movq	8(%rbx), %rdx
.L740:
	xorl	%r13d, %r13d
	jmp	.L743
	.p2align 4,,10
	.p2align 3
.L759:
	movq	8(%rbx), %rdx
.L743:
	movq	0(%rbp,%r13,8), %rsi
	addq	%rdi, %rdx
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	leaq	-1(%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	addq	$1, %r13
	leaq	-1(%rdi,%rax), %rdi
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%r12, %r13
	jne	.L759
	jmp	.L735
.L756:
	xorl	%ebp, %ebp
.L731:
	movq	%r12, %r8
	movq	%rdi, %rdx
	leaq	.LC72(%rip), %rcx
	call	_Z6printfPKcz
.L737:
	movl	$1, %ecx
	call	exit
.L734:
	movq	%r12, %r8
	movq	%rdi, %rdx
	leaq	.LC73(%rip), %rcx
	call	_Z6printfPKcz
.LEHE62:
	jmp	.L737
.L757:
	leaq	.LC20(%rip), %rcx
	movq	%r12, %rdx
.LEHB63:
	call	_Z6printfPKcz
.LEHE63:
	movl	$1, %ecx
	call	exit
.L758:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	leaq	.LC74(%rip), %rcx
.LEHB64:
	call	_Z6printfPKcz
.LEHE64:
	jmp	.L737
.L747:
	movq	%rax, %rbx
	jmp	.L744
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1774:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1774-.LLSDACSB1774
.LLSDACSB1774:
	.uleb128 .LEHB62-.LFB1774
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L747-.LFB1774
	.uleb128 0
	.uleb128 .LEHB63-.LFB1774
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB1774
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L747-.LFB1774
	.uleb128 0
.LLSDACSE1774:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string6InsertEySt16initializer_listIdE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6InsertEySt16initializer_listIdE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 32
	.seh_savereg	%rsi, 40
	.seh_savereg	%rdi, 48
	.seh_savereg	%rbp, 56
	.seh_savereg	%r12, 64
	.seh_savereg	%r13, 72
	.seh_savereg	%r14, 80
	.seh_endprologue
_ZN3neo6string6InsertEySt16initializer_listIdE.cold:
.L744:
	movq	%rbp, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB65:
	call	_Unwind_Resume
	nop
.LEHE65:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1774:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1774-.LLSDACSBC1774
.LLSDACSBC1774:
	.uleb128 .LEHB65-.LCOLDB77
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSEC1774:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE77:
	.text
.LHOTE77:
	.section .rdata,"dr"
	.align 8
.LC78:
	.ascii "neo::string.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC79:
	.ascii "neo::string.Remove(): Illegal removal of EOF\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC80:
	.ascii "neo::string.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC81:
	.ascii "neo::string.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6RemoveEyy
	.def	_ZN3neo6string6RemoveEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6RemoveEyy
_ZN3neo6string6RemoveEyy:
.LFB1775:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rdi
	movq	(%rcx), %rdx
	movq	%rcx, %rbx
	movq	%r8, %rsi
	cmpq	%rdx, %rdi
	jnb	.L772
	leaq	-1(%rdx), %rcx
	cmpq	%rdi, %rcx
	je	.L764
	leaq	(%rdi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L773
	cmpq	%rax, %rcx
	jb	.L764
	testq	%r8, %r8
	je	.L765
	subq	%r8, %rdx
	movq	%rdx, (%rbx)
	cmpq	%rdx, %rdi
	jnb	.L766
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L767:
	movq	8(%rbx), %rdx
	leaq	(%rdx,%rax), %rcx
	movzbl	(%rcx,%rsi), %ecx
	movb	%cl, (%rdx,%rax)
	movq	(%rbx), %rdx
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.L767
.L766:
	movq	8(%rbx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L774
.L765:
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L764:
	leaq	.LC79(%rip), %rcx
	movq	%rsi, %r8
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L773:
	leaq	.LC80(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L772:
	leaq	.LC78(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L774:
	leaq	.LC81(%rip), %rcx
	movq	%rsi, %r8
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIcE
	.def	_ZN3neo6string8ContainsESt16initializer_listIcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIcE
_ZN3neo6string8ContainsESt16initializer_listIcE:
.LFB1776:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movq	8(%rdx), %r11
	movq	(%rdx), %rbx
	movq	(%rcx), %rdx
	testq	%r11, %r11
	sete	%al
	cmpq	$1, %rdx
	setbe	%r8b
	orb	%r8b, %al
	je	.L783
	xorl	%eax, %eax
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L783:
	movq	8(%rcx), %r9
	xorl	%r10d, %r10d
	leaq	-1(%rdx), %rcx
.L777:
	movzbl	(%rbx,%r10), %r8d
	xorl	%edx, %edx
	jmp	.L778
	.p2align 4,,10
	.p2align 3
.L785:
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jnb	.L784
.L778:
	cmpb	%r8b, (%r9,%rdx)
	jne	.L785
	movl	$1, %eax
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L784:
	addq	$1, %r10
	cmpq	%r11, %r10
	jb	.L777
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC82:
	.ascii "neo::string.Contains(): Literals[%lld] must not be NULL\12Params: Literals(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIPKcE
	.def	_ZN3neo6string8ContainsESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIPKcE
_ZN3neo6string8ContainsESt16initializer_listIPKcE:
.LFB1777:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rdi
	movq	(%rdx), %r12
	movq	%rcx, %rbx
	testq	%rdi, %rdi
	je	.L787
	xorl	%edx, %edx
	jmp	.L791
	.p2align 4,,10
	.p2align 3
.L789:
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	je	.L813
.L791:
	movq	(%r12,%rdx,8), %rax
	testq	%rax, %rax
	je	.L814
	cmpq	8(%rbx), %rax
	jne	.L789
.L798:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L813:
	movq	(%rbx), %rcx
	xorl	%ebp, %ebp
	cmpq	$1, %rcx
	jbe	.L787
.L792:
	movq	(%r12,%rbp,8), %rdx
	testq	%rdx, %rdx
	je	.L793
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L794:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L795:
	movq	%rax, %r8
	addq	$1, %rax
	cmpb	$0, -1(%rdx,%rax)
	jne	.L795
	cmpq	%rax, %rcx
	jb	.L796
	movq	%rcx, %rax
	subq	%r8, %rax
	cmpq	%rax, %rsi
	jnb	.L796
	movq	8(%rbx), %rcx
	addq	%rsi, %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	testb	%al, %al
	jne	.L798
	movq	(%r12,%rbp,8), %rdx
	addq	$1, %rsi
	testq	%rdx, %rdx
	je	.L793
	movq	(%rbx), %rcx
	jmp	.L794
.L796:
	addq	$1, %rbp
	cmpq	%rbp, %rdi
	jne	.L792
.L787:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L814:
	leaq	.LC82(%rip), %rcx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L793:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC83:
	.ascii "neo::string.Contains(): Strings[%lld] must not be NULL\12Params: Strings(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIPS0_E
	.def	_ZN3neo6string8ContainsESt16initializer_listIPS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIPS0_E
_ZN3neo6string8ContainsESt16initializer_listIPS0_E:
.LFB1778:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %r8
	movq	(%rdx), %rdi
	movq	%rcx, %rbx
	testq	%r8, %r8
	je	.L816
	xorl	%edx, %edx
	jmp	.L820
	.p2align 4,,10
	.p2align 3
.L818:
	addq	$1, %rdx
	cmpq	%rdx, %r8
	je	.L836
.L820:
	movq	(%rdi,%rdx,8), %rax
	testq	%rax, %rax
	je	.L837
	cmpq	%rbx, %rax
	jne	.L818
.L826:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L836:
	movq	(%rbx), %rcx
	cmpq	$1, %rcx
	jbe	.L816
	leaq	-8(%rdi,%r8,8), %r12
	movl	$1, %ebp
.L821:
	movq	(%rdi), %r8
	xorl	%esi, %esi
	movq	(%r8), %rax
	cmpq	%rax, %rcx
	jnb	.L822
	jmp	.L825
	.p2align 4,,10
	.p2align 3
.L824:
	movq	8(%rbx), %rcx
	movq	8(%r8), %rdx
	leaq	-1(%rax), %r8
	addq	%rsi, %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
	testb	%al, %al
	jne	.L826
	movq	(%rdi), %r8
	movq	(%rbx), %rcx
	addq	$1, %rsi
	movq	(%r8), %rax
	cmpq	%rax, %rcx
	jb	.L825
.L822:
	movq	%rbp, %rdx
	subq	%rax, %rdx
	addq	%rcx, %rdx
	cmpq	%rdx, %rsi
	jb	.L824
.L825:
	cmpq	%rdi, %r12
	je	.L816
	addq	$8, %rdi
	jmp	.L821
	.p2align 4,,10
	.p2align 3
.L816:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L837:
	leaq	.LC83(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB84:
	.text
.LHOTB84:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIyE
	.def	_ZN3neo6string8ContainsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIyE
_ZN3neo6string8ContainsESt16initializer_listIyE:
.LFB1779:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	movq	8(%rdx), %r14
	movq	(%rdx), %rsi
	movq	%rcx, %rbp
	testq	%r14, %r14
	jne	.L858
.L839:
	movq	%r13, %rcx
	call	free
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L858:
	leaq	0(,%r14,8), %rcx
	call	malloc
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L859
	cmpq	$1, 0(%rbp)
	jbe	.L839
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L841:
	movq	(%rsi,%rbx,8), %rcx
.LEHB66:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, 0(%r13,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.L841
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L842:
	movq	0(%r13,%r12,8), %rsi
	movq	0(%rbp), %rcx
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	jb	.L860
	movq	8(%rsi), %r9
	xorl	%ebx, %ebx
	jmp	.L847
	.p2align 4,,10
	.p2align 3
.L845:
	addq	$1, %rbx
	cmpq	%rdx, %rcx
	jb	.L843
.L847:
	movq	%rdi, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rbx
	jnb	.L843
	testb	%r15b, %r15b
	jne	.L845
	movq	8(%rbp), %rcx
	leaq	-1(%rdx), %r8
	movq	%r9, %rdx
	addq	%rbx, %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
.LEHE66:
	movq	(%rsi), %rdx
	movq	0(%rbp), %rcx
	movl	%eax, %r15d
	addq	$1, %rbx
	movq	8(%rsi), %r9
	cmpq	%rdx, %rcx
	jnb	.L847
	.p2align 4,,10
	.p2align 3
.L843:
	movq	%r9, %rcx
	addq	$1, %r12
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%r12, %r14
	jne	.L842
	jmp	.L839
.L860:
	movq	8(%rsi), %r9
	jmp	.L843
.L859:
	leaq	.LC20(%rip), %rcx
	movq	%r14, %rdx
.LEHB67:
	call	_Z6printfPKcz
.LEHE67:
	movl	$1, %ecx
	call	exit
.L852:
	movq	%rax, %rbx
	jmp	.L848
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1779:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1779-.LLSDACSB1779
.LLSDACSB1779:
	.uleb128 .LEHB66-.LFB1779
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L852-.LFB1779
	.uleb128 0
	.uleb128 .LEHB67-.LFB1779
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
.LLSDACSE1779:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ContainsESt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIyE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_savereg	%r14, 88
	.seh_savereg	%r15, 96
	.seh_endprologue
_ZN3neo6string8ContainsESt16initializer_listIyE.cold:
.L848:
	movq	%r13, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB68:
	call	_Unwind_Resume
	nop
.LEHE68:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1779:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1779-.LLSDACSBC1779
.LLSDACSBC1779:
	.uleb128 .LEHB68-.LCOLDB84
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
.LLSDACSEC1779:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE84:
	.text
.LHOTE84:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB85:
	.text
.LHOTB85:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIxE
	.def	_ZN3neo6string8ContainsESt16initializer_listIxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIxE
_ZN3neo6string8ContainsESt16initializer_listIxE:
.LFB1780:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	movq	8(%rdx), %r14
	movq	(%rdx), %rsi
	movq	%rcx, %rbp
	testq	%r14, %r14
	jne	.L881
.L862:
	movq	%r13, %rcx
	call	free
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L881:
	leaq	0(,%r14,8), %rcx
	call	malloc
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L882
	cmpq	$1, 0(%rbp)
	jbe	.L862
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L864:
	movq	(%rsi,%rbx,8), %rcx
.LEHB69:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, 0(%r13,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.L864
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L865:
	movq	0(%r13,%r12,8), %rsi
	movq	0(%rbp), %rcx
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	jb	.L883
	movq	8(%rsi), %r9
	xorl	%ebx, %ebx
	jmp	.L870
	.p2align 4,,10
	.p2align 3
.L868:
	addq	$1, %rbx
	cmpq	%rdx, %rcx
	jb	.L866
.L870:
	movq	%rdi, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rbx
	jnb	.L866
	testb	%r15b, %r15b
	jne	.L868
	movq	8(%rbp), %rcx
	leaq	-1(%rdx), %r8
	movq	%r9, %rdx
	addq	%rbx, %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
.LEHE69:
	movq	(%rsi), %rdx
	movq	0(%rbp), %rcx
	movl	%eax, %r15d
	addq	$1, %rbx
	movq	8(%rsi), %r9
	cmpq	%rdx, %rcx
	jnb	.L870
	.p2align 4,,10
	.p2align 3
.L866:
	movq	%r9, %rcx
	addq	$1, %r12
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%r12, %r14
	jne	.L865
	jmp	.L862
.L883:
	movq	8(%rsi), %r9
	jmp	.L866
.L882:
	leaq	.LC20(%rip), %rcx
	movq	%r14, %rdx
.LEHB70:
	call	_Z6printfPKcz
.LEHE70:
	movl	$1, %ecx
	call	exit
.L875:
	movq	%rax, %rbx
	jmp	.L871
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1780:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1780-.LLSDACSB1780
.LLSDACSB1780:
	.uleb128 .LEHB69-.LFB1780
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L875-.LFB1780
	.uleb128 0
	.uleb128 .LEHB70-.LFB1780
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE1780:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ContainsESt16initializer_listIxE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIxE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_savereg	%r14, 88
	.seh_savereg	%r15, 96
	.seh_endprologue
_ZN3neo6string8ContainsESt16initializer_listIxE.cold:
.L871:
	movq	%r13, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB71:
	call	_Unwind_Resume
	nop
.LEHE71:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1780:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1780-.LLSDACSBC1780
.LLSDACSBC1780:
	.uleb128 .LEHB71-.LCOLDB85
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
.LLSDACSEC1780:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE85:
	.text
.LHOTE85:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB86:
	.text
.LHOTB86:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIdE
	.def	_ZN3neo6string8ContainsESt16initializer_listIdE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIdE
_ZN3neo6string8ContainsESt16initializer_listIdE:
.LFB1781:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	movq	8(%rdx), %r14
	movq	(%rdx), %rsi
	movq	%rcx, %rbp
	testq	%r14, %r14
	jne	.L904
.L885:
	movq	%r13, %rcx
	call	free
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L904:
	leaq	0(,%r14,8), %rcx
	call	malloc
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L905
	cmpq	$1, 0(%rbp)
	jbe	.L885
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L887:
	movsd	(%rsi,%rbx,8), %xmm0
.LEHB72:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, 0(%r13,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.L887
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L888:
	movq	0(%r13,%r12,8), %rsi
	movq	0(%rbp), %rcx
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	jb	.L906
	movq	8(%rsi), %r9
	xorl	%ebx, %ebx
	jmp	.L893
	.p2align 4,,10
	.p2align 3
.L891:
	addq	$1, %rbx
	cmpq	%rdx, %rcx
	jb	.L889
.L893:
	movq	%rdi, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rbx
	jnb	.L889
	testb	%r15b, %r15b
	jne	.L891
	movq	8(%rbp), %rcx
	leaq	-1(%rdx), %r8
	movq	%r9, %rdx
	addq	%rbx, %rcx
	call	_ZN3neo6memory7CompareEPKvS2_y
.LEHE72:
	movq	(%rsi), %rdx
	movq	0(%rbp), %rcx
	movl	%eax, %r15d
	addq	$1, %rbx
	movq	8(%rsi), %r9
	cmpq	%rdx, %rcx
	jnb	.L893
	.p2align 4,,10
	.p2align 3
.L889:
	movq	%r9, %rcx
	addq	$1, %r12
	call	free
	movl	$16, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	cmpq	%r12, %r14
	jne	.L888
	jmp	.L885
.L906:
	movq	8(%rsi), %r9
	jmp	.L889
.L905:
	leaq	.LC20(%rip), %rcx
	movq	%r14, %rdx
.LEHB73:
	call	_Z6printfPKcz
.LEHE73:
	movl	$1, %ecx
	call	exit
.L898:
	movq	%rax, %rbx
	jmp	.L894
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1781:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1781-.LLSDACSB1781
.LLSDACSB1781:
	.uleb128 .LEHB72-.LFB1781
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L898-.LFB1781
	.uleb128 0
	.uleb128 .LEHB73-.LFB1781
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
.LLSDACSE1781:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ContainsESt16initializer_listIdE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ContainsESt16initializer_listIdE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_savereg	%r14, 88
	.seh_savereg	%r15, 96
	.seh_endprologue
_ZN3neo6string8ContainsESt16initializer_listIdE.cold:
.L894:
	movq	%r13, %rcx
	call	free
	movq	%rbx, %rcx
.LEHB74:
	call	_Unwind_Resume
	nop
.LEHE74:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1781:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1781-.LLSDACSBC1781
.LLSDACSBC1781:
	.uleb128 .LEHB74-.LCOLDB86
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
.LLSDACSEC1781:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE86:
	.text
.LHOTE86:
	.section .rdata,"dr"
	.align 8
.LC87:
	.ascii "neo::string.Read(): Memory allocation failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string4ReadEv
	.def	_ZN3neo6string4ReadEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string4ReadEv
_ZN3neo6string4ReadEv:
.LFB1782:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$1, %edx
	movq	$1, (%rcx)
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L910
	movb	$0, (%rax)
	jmp	.L909
	.p2align 4,,10
	.p2align 3
.L911:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L910
	movq	(%rbx), %rdx
	movb	%sil, -2(%rax,%rdx)
	movq	8(%rbx), %rdx
	movq	(%rbx), %rax
	movb	$0, -1(%rdx,%rax)
.L909:
	call	getchar
	movl	%eax, %esi
	cmpb	$10, %al
	jne	.L911
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L910:
	leaq	.LC87(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC88:
	.ascii "neo::string.Split(): Result must not be NULL\12Params: Result: %p\12\0"
	.align 8
.LC89:
	.ascii "neo::string.Split(): Result must be empty\12Params: Result: %p\12\0"
	.align 8
.LC90:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC91:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC92:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string5SplitEcPNS_5arrayIS0_EE
	.def	_ZN3neo6string5SplitEcPNS_5arrayIS0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string5SplitEcPNS_5arrayIS0_EE
_ZN3neo6string5SplitEcPNS_5arrayIS0_EE:
.LFB1783:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rcx, %r13
	movq	%r8, %rbp
	movl	%edx, %r12d
	testq	%r8, %r8
	je	.L961
	movq	(%r8), %rdi
	testq	%rdi, %rdi
	jne	.L962
	movq	$1, (%r8)
	movq	8(%r8), %rcx
	movl	$16, %edx
	call	realloc
	movq	%rax, 8(%rbp)
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L963
	movq	0(%rbp), %rsi
	movq	%rsi, %r15
	subq	$1, %r15
	je	.L922
	movq	%r15, %r8
	leaq	16(%rax), %rcx
	movq	%rax, %rdx
	salq	$4, %r8
	call	memmove
.L922:
	movq	$1, (%r14)
	movl	$1, %ecx
	call	malloc
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L920
	movb	$0, (%rax)
	movq	0(%r13), %rax
	cmpq	$1, %rax
	jne	.L936
	jmp	.L923
	.p2align 4,,10
	.p2align 3
.L965:
	movb	%dl, 63(%rsp)
	testq	%rcx, %rcx
	je	.L930
	salq	$4, %rbx
	addq	%r14, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L964
	movq	(%rbx), %rdx
	leaq	63(%rsp), %rcx
	movl	$1, %r8d
	leaq	-2(%rax,%rdx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	0(%rbp), %rsi
	movq	0(%r13), %rax
	movq	8(%rbp), %r14
	leaq	-1(%rsi), %r15
.L929:
	addq	$1, %rdi
	leaq	-1(%rax), %rdx
	cmpq	%rdx, %rdi
	jnb	.L923
.L936:
	movq	8(%r13), %rdx
	movq	%rsi, %rbx
	xorl	%ecx, %ecx
	addq	$-1, %rbx
	movzbl	(%rdx,%rdi), %edx
	setc	%cl
	movq	%rbx, %r15
	cmpb	%r12b, %dl
	jne	.L965
	testq	%rsi, %rsi
	je	.L930
	salq	$4, %rbx
	cmpq	$1, (%r14,%rbx)
	jbe	.L929
	leaq	1(%rsi), %rbx
	movq	%r14, %rcx
	movq	%rbx, 0(%rbp)
	movq	%rbx, %r8
	salq	$4, %r8
	movq	%r8, %rdx
	movq	%r8, 40(%rsp)
	call	realloc
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 8(%rbp)
	movq	%rax, %r14
	je	.L966
	movq	0(%rbp), %rsi
	movq	%rsi, %rax
	leaq	-1(%rsi), %r15
	salq	$4, %rax
	movq	%r15, %rdx
	addq	%r14, %rax
	cmpq	%rbx, %r15
	jb	.L935
	.p2align 4,,10
	.p2align 3
.L934:
	movdqu	-32(%rax), %xmm0
	subq	$1, %rdx
	subq	$16, %rax
	movups	%xmm0, (%rax)
	cmpq	%rbx, %rdx
	jnb	.L934
.L935:
	leaq	-16(%r14,%r8), %rbx
	movl	$1, %ecx
	movq	$1, (%rbx)
	call	malloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L920
	movb	$0, (%rax)
	movq	0(%r13), %rax
	addq	$1, %rdi
	leaq	-1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L936
	.p2align 4,,10
	.p2align 3
.L923:
	cmpq	%rsi, %r15
	jnb	.L930
	movq	%r15, %rbx
	salq	$4, %rbx
	addq	%rbx, %r14
	cmpq	$1, (%r14)
	je	.L967
.L915:
	movq	%rsi, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L967:
	movq	8(%r14), %rcx
	call	free
	movq	0(%rbp), %rax
	leaq	-1(%rax), %rsi
	movq	%rsi, 0(%rbp)
	testq	%rsi, %rsi
	je	.L938
	movq	8(%rbp), %rdi
	cmpq	%rsi, %r15
	jnb	.L942
	movq	%rsi, %r8
	leaq	16(%rdi,%rbx), %rdx
	leaq	(%rdi,%rbx), %rcx
	subq	%r15, %r8
	salq	$4, %r8
	call	memmove
.L942:
	salq	$4, %rsi
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	call	realloc
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L968
	movq	0(%rbp), %rsi
	jmp	.L915
.L938:
	movq	8(%rbp), %rcx
	call	free
	movq	$0, 8(%rbp)
	movq	0(%rbp), %rsi
	jmp	.L915
.L920:
	leaq	.LC0(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L930:
	leaq	.LC91(%rip), %rcx
	movq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L964:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L968:
	leaq	.LC92(%rip), %rcx
	movl	$1, %r8d
	movq	%r15, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L963:
	leaq	.LC90(%rip), %rcx
	movl	$1, %r8d
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L962:
	leaq	.LC89(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L966:
	leaq	.LC90(%rip), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L961:
	leaq	.LC88(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC93:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC94:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB95:
	.text
.LHOTB95:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE
	.def	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE
_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE:
.LFB1784:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%r8, %rdi
	movl	%edx, %r12d
	testq	%r8, %r8
	je	.L1001
	movq	(%r8), %rsi
	testq	%rsi, %rsi
	jne	.L1002
	movl	$16, %ecx
.LEHB75:
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rbx
	call	malloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L1003
	movb	$0, (%rax)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rbx, 40(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, (%rdi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L1000
	movq	(%rdi), %rdx
	leaq	40(%rsp), %r13
	movl	$8, %r8d
	movq	%r13, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	0(%rbp), %r10
	movq	(%rdi), %rax
	cmpq	$1, %r10
	je	.L974
	movq	8(%rdi), %r9
	jmp	.L984
	.p2align 4,,10
	.p2align 3
.L1005:
	movb	%cl, 40(%rsp)
	testq	%r11, %r11
	je	.L981
	movq	(%r9,%rdx,8), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L1004
	movq	(%rbx), %rdx
	movl	$1, %r8d
	movq	%r13, %rcx
	leaq	-2(%rax,%rdx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	(%rdi), %rax
	movq	0(%rbp), %r10
	movq	8(%rdi), %r9
	leaq	-1(%rax), %r8
.L980:
	addq	$1, %rsi
	leaq	-1(%r10), %rdx
	cmpq	%rdx, %rsi
	jnb	.L985
.L984:
	movq	8(%rbp), %rdx
	xorl	%r11d, %r11d
	movzbl	(%rdx,%rsi), %ecx
	movq	%rax, %rdx
	addq	$-1, %rdx
	setc	%r11b
	movq	%rdx, %r8
	cmpb	%r12b, %cl
	jne	.L1005
	testq	%rax, %rax
	je	.L981
	movq	(%r9,%rdx,8), %rdx
	cmpq	$1, (%rdx)
	jbe	.L980
	movl	$16, %ecx
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rbx
	call	malloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L1006
	movb	$0, (%rax)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rbx, 40(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, (%rdi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L1000
	movq	(%rdi), %rdx
	movl	$8, %r8d
	movq	%r13, %rcx
	addq	$1, %rsi
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	0(%rbp), %r10
	movq	(%rdi), %rax
	movq	8(%rdi), %r9
	leaq	-1(%r10), %rdx
	leaq	-1(%rax), %r8
	cmpq	%rdx, %rsi
	jb	.L984
	.p2align 4,,10
	.p2align 3
.L985:
	cmpq	%rax, %r8
	jnb	.L981
	movq	(%r9,%r8,8), %rbx
	cmpq	$1, (%rbx)
	je	.L1007
.L969:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L1007:
	movq	8(%rbx), %rcx
	call	free
	movq	%rbx, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	(%rdi), %rbx
	addq	$-1, %rbx
	jc	.L988
	leaq	.LC94(%rip), %rcx
	movl	$1, %r8d
	movq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L974:
	movq	8(%rdi), %r9
	leaq	-1(%rax), %r8
	jmp	.L985
.L981:
	leaq	.LC91(%rip), %rcx
	movq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L1004:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
.LEHE75:
	movl	$1, %ecx
	call	exit
.L1006:
.LEHB76:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE76:
.L1003:
.LEHB77:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE77:
.L1002:
	leaq	.LC89(%rip), %rcx
	movq	%r8, %rdx
.LEHB78:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L988:
	movq	%rbx, (%rdi)
	movq	8(%rdi), %rcx
	testq	%rbx, %rbx
	je	.L1008
	leaq	0(,%rbx,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L991
	movq	(%rdi), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L1008:
	call	free
	movq	$0, 8(%rdi)
	movq	(%rdi), %rax
	jmp	.L969
.L991:
	leaq	.LC92(%rip), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L1000:
	leaq	.LC93(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L1001:
	leaq	.LC88(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
.LEHE78:
	movl	$1, %ecx
	call	exit
.L995:
	movq	%rax, %rsi
	jmp	.L993
.L994:
	movq	%rax, %rsi
	jmp	.L993
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1784:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1784-.LLSDACSB1784
.LLSDACSB1784:
	.uleb128 .LEHB75-.LFB1784
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB1784
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L995-.LFB1784
	.uleb128 0
	.uleb128 .LEHB77-.LFB1784
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L994-.LFB1784
	.uleb128 0
	.uleb128 .LEHB78-.LFB1784
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
.LLSDACSE1784:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_savereg	%rdi, 72
	.seh_savereg	%rbp, 80
	.seh_savereg	%r12, 88
	.seh_savereg	%r13, 96
	.seh_endprologue
_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE.cold:
.L993:
	movq	%rbx, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB79:
	call	_Unwind_Resume
	nop
.LEHE79:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1784:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1784-.LLSDACSBC1784
.LLSDACSBC1784:
	.uleb128 .LEHB79-.LCOLDB95
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSEC1784:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE95:
	.text
.LHOTE95:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string7ReverseEv
	.def	_ZN3neo6string7ReverseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string7ReverseEv
_ZN3neo6string7ReverseEv:
.LFB1785:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movq	(%rcx), %r8
	leaq	-1(%r8), %rax
	shrq	%rax
	je	.L1010
	xorl	%eax, %eax
	movq	$-2, %rbx
	.p2align 4,,10
	.p2align 3
.L1011:
	movq	8(%rcx), %rdx
	movq	%rbx, %r11
	subq	%rax, %r11
	leaq	(%rdx,%rax), %r9
	addq	%r8, %rdx
	movzbl	(%rdx,%r11), %edx
	movzbl	(%r9), %r10d
	movb	%dl, (%r9)
	movq	(%rcx), %rdx
	movq	8(%rcx), %r8
	subq	$2, %rdx
	subq	%rax, %rdx
	addq	$1, %rax
	movb	%r10b, (%r8,%rdx)
	movq	(%rcx), %r8
	leaq	-1(%r8), %rdx
	shrq	%rdx
	cmpq	%rdx, %rax
	jb	.L1011
.L1010:
	movq	%rcx, %rax
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToUINTEv
	.def	_ZN3neo6string6ToUINTEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6ToUINTEv
_ZN3neo6string6ToUINTEv:
.LFB1786:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movq	(%rcx), %rax
	leaq	-1(%rax), %rbp
	cmpq	$1, %rax
	je	.L1025
	movq	8(%rcx), %rbx
	movsd	.LC6(%rip), %xmm7
	xorl	%esi, %esi
	movabsq	$-9223372036854775808, %r12
	movsd	.LC7(%rip), %xmm8
	addq	%rbx, %rbp
	leaq	-2(%rbx,%rax), %rdi
	jmp	.L1024
	.p2align 4,,10
	.p2align 3
.L1027:
	addq	$1, %rbx
	cvttsd2siq	%xmm0, %rsi
	cmpq	%rbx, %rbp
	je	.L1016
.L1024:
	movsbl	(%rbx), %eax
	pxor	%xmm6, %xmm6
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm6
	movq	%rdi, %rax
	subq	%rbx, %rax
	js	.L1018
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L1019:
	movapd	%xmm8, %xmm0
	call	pow
	movapd	%xmm0, %xmm1
	testq	%rsi, %rsi
	js	.L1020
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rsi, %xmm0
.L1021:
	mulsd	%xmm1, %xmm6
	addsd	%xmm6, %xmm0
	comisd	%xmm7, %xmm0
	jb	.L1027
	subsd	%xmm7, %xmm0
	addq	$1, %rbx
	cvttsd2siq	%xmm0, %rsi
	xorq	%r12, %rsi
	cmpq	%rbx, %rbp
	jne	.L1024
.L1016:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movq	%rsi, %rax
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L1020:
	movq	%rsi, %rax
	andl	$1, %esi
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L1021
	.p2align 4,,10
	.p2align 3
.L1018:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1019
	.p2align 4,,10
	.p2align 3
.L1025:
	xorl	%esi, %esi
	jmp	.L1016
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC96:
	.ascii "neo::string.ToUINT(): Success must not be NULL\12Params: Success: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToUINTEPb
	.def	_ZN3neo6string6ToUINTEPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6ToUINTEPb
_ZN3neo6string6ToUINTEPb:
.LFB1787:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	%rdx, %rbp
	testq	%rdx, %rdx
	je	.L1029
	movq	(%rcx), %rsi
	xorl	%r12d, %r12d
	cmpq	$1, %rsi
	je	.L1031
	movq	8(%rcx), %r13
	movsd	.LC7(%rip), %xmm7
	subq	$2, %rsi
	xorl	%r12d, %r12d
	movsd	.LC6(%rip), %xmm6
	movabsq	$-9223372036854775808, %rdi
	jmp	.L1039
	.p2align 4,,10
	.p2align 3
.L1042:
	cvttsd2siq	%xmm0, %r12
	addq	$1, %r13
	subq	$1, %rsi
	jb	.L1031
.L1039:
	movsbl	0(%r13), %ebx
	leal	-48(%rbx), %eax
	cmpb	$9, %al
	ja	.L1040
	testq	%rsi, %rsi
	js	.L1033
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rsi, %xmm1
.L1034:
	movapd	%xmm7, %xmm0
	subl	$48, %ebx
	call	pow
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	testq	%r12, %r12
	js	.L1035
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r12, %xmm1
.L1036:
	addsd	%xmm1, %xmm0
	comisd	%xmm6, %xmm0
	jb	.L1042
	subsd	%xmm6, %xmm0
	addq	$1, %r13
	cvttsd2siq	%xmm0, %r12
	xorq	%rdi, %r12
	subq	$1, %rsi
	jnb	.L1039
.L1031:
	movl	$1, %eax
.L1032:
	movb	%al, 0(%rbp)
	movaps	32(%rsp), %xmm6
	movq	%r12, %rax
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L1035:
	movq	%r12, %rax
	andl	$1, %r12d
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%r12, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1036
	.p2align 4,,10
	.p2align 3
.L1033:
	movq	%rsi, %rax
	movq	%rsi, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1034
	.p2align 4,,10
	.p2align 3
.L1040:
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.L1032
.L1029:
	leaq	.LC96(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToSINTEv
	.def	_ZN3neo6string6ToSINTEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6ToSINTEv
_ZN3neo6string6ToSINTEv:
.LFB1788:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	(%rcx), %rbp
	movq	8(%rcx), %r12
	leaq	-1(%rbp), %rdi
	cmpq	$1, %rdi
	jbe	.L1052
	leaq	1(%r12), %rbx
	addq	%r12, %rdi
	leaq	-2(%r12,%rbp), %rsi
	xorl	%r13d, %r13d
	movsd	.LC7(%rip), %xmm7
	jmp	.L1047
	.p2align 4,,10
	.p2align 3
.L1054:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
.L1046:
	movapd	%xmm7, %xmm0
	addq	$1, %rbx
	call	pow
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	mulsd	%xmm1, %xmm6
	cvtsi2sdq	%r13, %xmm0
	addsd	%xmm6, %xmm0
	cvttsd2siq	%xmm0, %r13
	cmpq	%rbx, %rdi
	je	.L1044
.L1047:
	movsbl	(%rbx), %edx
	pxor	%xmm6, %xmm6
	subl	$48, %edx
	cvtsi2sdl	%edx, %xmm6
	movq	%rsi, %rdx
	subq	%rbx, %rdx
	jns	.L1054
	movq	%rdx, %rax
	andl	$1, %edx
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1046
	.p2align 4,,10
	.p2align 3
.L1052:
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L1044:
	movsbl	(%r12), %ebx
	cmpb	$45, %bl
	jne	.L1048
	movq	%r13, %rax
	negq	%rax
.L1043:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L1048:
	subq	$2, %rbp
	js	.L1050
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbp, %xmm1
.L1051:
	movsd	.LC7(%rip), %xmm0
	subl	$48, %ebx
	call	pow
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r13, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	jmp	.L1043
	.p2align 4,,10
	.p2align 3
.L1050:
	movq	%rbp, %rax
	andl	$1, %ebp
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1051
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC97:
	.ascii "neo::string.ToSINT(): Success must not be NULL\12Params: Success: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToSINTEPb
	.def	_ZN3neo6string6ToSINTEPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string6ToSINTEPb
_ZN3neo6string6ToSINTEPb:
.LFB1789:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rdx, %rdi
	testq	%rdx, %rdx
	je	.L1056
	movq	(%rcx), %rbp
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movsd	.LC7(%rip), %xmm6
	leaq	-1(%rbp), %rax
	leaq	1(%r12), %r13
	leaq	-3(%rbp), %rsi
	cmpq	$1, %rax
	ja	.L1063
	jmp	.L1058
	.p2align 4,,10
	.p2align 3
.L1071:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rsi, %xmm1
.L1062:
	movapd	%xmm6, %xmm0
	subl	$48, %ebx
	addq	$1, %r13
	call	pow
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r14, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %r14
	subq	$1, %rsi
	jb	.L1058
.L1063:
	movsbl	0(%r13), %ebx
	leal	-48(%rbx), %eax
	cmpb	$9, %al
	ja	.L1066
	testq	%rsi, %rsi
	jns	.L1071
	movq	%rsi, %rax
	movq	%rsi, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1058:
	movsbl	(%r12), %ebx
	movq	%r14, %rax
	negq	%rax
	cmpb	$45, %bl
	je	.L1065
	leal	-48(%rbx), %eax
	cmpb	$9, %al
	jbe	.L1072
.L1066:
	xorl	%edx, %edx
	xorl	%eax, %eax
.L1060:
	movb	%dl, (%rdi)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L1072:
	subq	$2, %rbp
	js	.L1067
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbp, %xmm1
.L1068:
	movsd	.LC7(%rip), %xmm0
	subl	$48, %ebx
	call	pow
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r14, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
.L1065:
	movl	$1, %edx
	jmp	.L1060
.L1067:
	movq	%rbp, %rax
	andl	$1, %ebp
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1068
.L1056:
	leaq	.LC97(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToDOUBLEEv
	.def	_ZN3neo6string8ToDOUBLEEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToDOUBLEEv
_ZN3neo6string8ToDOUBLEEv:
.LFB1790:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movq	(%rcx), %rdx
	movq	8(%rcx), %r12
	movq	%rdx, %r13
	subq	$1, %r13
	je	.L1088
	xorl	%ebx, %ebx
	jmp	.L1076
	.p2align 4,,10
	.p2align 3
.L1097:
	cmpq	%rbx, %r13
	je	.L1096
.L1076:
	movzbl	(%r12,%rbx), %eax
	movq	%rbx, %rbp
	addq	$1, %rbx
	cmpb	$46, %al
	jne	.L1097
.L1075:
	cmpq	$1, %rbp
	jbe	.L1089
	leaq	1(%r12), %rsi
	leaq	0(%rbp,%r12), %rdi
	pxor	%xmm6, %xmm6
	movsd	.LC7(%rip), %xmm8
	leaq	-1(%r12,%rbp), %r14
	jmp	.L1080
	.p2align 4,,10
	.p2align 3
.L1098:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L1079:
	movapd	%xmm8, %xmm0
	addq	$1, %rsi
	call	pow
	mulsd	%xmm0, %xmm7
	addsd	%xmm7, %xmm6
	cmpq	%rsi, %rdi
	je	.L1077
.L1080:
	movsbl	(%rsi), %eax
	pxor	%xmm7, %xmm7
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm7
	movq	%r14, %rax
	subq	%rsi, %rax
	jns	.L1098
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1079
.L1089:
	pxor	%xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L1077:
	cmpq	%r13, %rbx
	jnb	.L1074
	movsd	.LC7(%rip), %xmm8
	subq	%rbp, %rbx
	subq	%rbp, %r13
	leaq	0(%rbp,%r12), %rdi
	jmp	.L1083
	.p2align 4,,10
	.p2align 3
.L1099:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbx, %xmm1
.L1082:
	movapd	%xmm8, %xmm0
	addq	$1, %rbx
	call	pow
	divsd	%xmm0, %xmm7
	addsd	%xmm7, %xmm6
	cmpq	%rbx, %r13
	je	.L1074
.L1083:
	movsbl	(%rdi,%rbx), %eax
	pxor	%xmm7, %xmm7
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm7
	testq	%rbx, %rbx
	jns	.L1099
	movq	%rbx, %rax
	movq	%rbx, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1082
.L1088:
	xorl	%ebp, %ebp
	pxor	%xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L1074:
	movsbl	(%r12), %ebx
	cmpb	$45, %bl
	jne	.L1084
	xorpd	.LC5(%rip), %xmm6
	movapd	%xmm6, %xmm0
.L1073:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L1084:
	subq	$1, %rbp
	js	.L1086
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbp, %xmm1
.L1087:
	movsd	.LC7(%rip), %xmm0
	subl	$48, %ebx
	call	pow
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm6, %xmm0
	jmp	.L1073
	.p2align 4,,10
	.p2align 3
.L1096:
	movq	%r13, %rbp
	movq	%rdx, %rbx
	jmp	.L1075
	.p2align 4,,10
	.p2align 3
.L1086:
	movq	%rbp, %rax
	andl	$1, %ebp
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1087
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC98:
	.ascii "neo::string.ToDOUBLE(): Success must not be NULL\12Params: Success: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToDOUBLEEPb
	.def	_ZN3neo6string8ToDOUBLEEPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToDOUBLEEPb
_ZN3neo6string8ToDOUBLEEPb:
.LFB1791:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	%rdx, %r13
	testq	%rdx, %rdx
	je	.L1128
	movq	(%rcx), %rdi
	movq	8(%rcx), %r12
	xorl	%r15d, %r15d
	subq	$1, %rdi
	jne	.L1104
	jmp	.L1121
	.p2align 4,,10
	.p2align 3
.L1130:
	addq	$1, %r15
	cmpq	%r15, %rdi
	je	.L1129
.L1104:
	cmpb	$46, (%r12,%r15)
	jne	.L1130
	cmpq	$1, %r15
	jbe	.L1122
.L1120:
	movsd	.LC7(%rip), %xmm7
	leaq	1(%r12), %r14
	leaq	(%r12,%r15), %rbp
	pxor	%xmm6, %xmm6
	leaq	-1(%r12,%r15), %rsi
	jmp	.L1111
	.p2align 4,,10
	.p2align 3
.L1131:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L1110:
	movapd	%xmm7, %xmm0
	subl	$48, %ebx
	addq	$1, %r14
	call	pow
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm6
	cmpq	%r14, %rbp
	je	.L1106
.L1111:
	movsbl	(%r14), %ebx
	leal	-48(%rbx), %eax
	cmpb	$9, %al
	ja	.L1112
	movq	%rsi, %rax
	subq	%r14, %rax
	jns	.L1131
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1110
	.p2align 4,,10
	.p2align 3
.L1112:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
.L1108:
	movb	%al, 0(%r13)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1122:
	pxor	%xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L1106:
	leaq	1(%r15), %rax
	cmpq	%rdi, %rax
	jnb	.L1102
	movsd	.LC7(%rip), %xmm7
	movl	$1, %esi
	leaq	(%r12,%r15), %rbp
	jmp	.L1115
	.p2align 4,,10
	.p2align 3
.L1132:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rsi, %xmm1
.L1114:
	movapd	%xmm7, %xmm0
	subl	$48, %ebx
	addq	$1, %rsi
	call	pow
	leaq	(%r15,%rsi), %rax
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	divsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm6
	cmpq	%rdi, %rax
	jnb	.L1102
.L1115:
	movsbl	0(%rbp,%rsi), %ebx
	leal	-48(%rbx), %eax
	cmpb	$9, %al
	ja	.L1112
	testq	%rsi, %rsi
	jns	.L1132
	movq	%rsi, %rax
	movq	%rsi, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1114
	.p2align 4,,10
	.p2align 3
.L1129:
	cmpq	$1, %r15
	jne	.L1120
.L1121:
	pxor	%xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L1102:
	movzbl	(%r12), %ebx
	cmpb	$45, %bl
	je	.L1133
	leal	-48(%rbx), %eax
	cmpb	$9, %al
	ja	.L1112
	subq	$1, %r15
	js	.L1118
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r15, %xmm1
.L1119:
	movsd	.LC7(%rip), %xmm0
	call	pow
	movsbl	%bl, %eax
	movapd	%xmm0, %xmm1
	subl	$48, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm6, %xmm0
.L1117:
	movl	$1, %eax
	jmp	.L1108
.L1133:
	xorpd	.LC5(%rip), %xmm6
	movapd	%xmm6, %xmm0
	jmp	.L1117
.L1118:
	movq	%r15, %rax
	andl	$1, %r15d
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%r15, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1119
.L1128:
	leaq	.LC98(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB99:
	.text
.LHOTB99:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToStringEy
	.def	_ZN3neo6string8ToStringEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEy
_ZN3neo6string8ToStringEy:
.LFB1792:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	$16, %ecx
	movq	%rdx, %r13
.LEHB80:
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rdi
	call	malloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L1146
	movb	$0, (%rax)
	movl	$1, %ebx
	cmpq	$9, %r13
	jbe	.L1136
	.p2align 4,,10
	.p2align 3
.L1137:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r13, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1137
	testq	%rbx, %rbx
	je	.L1134
.L1136:
	movl	$1, %r14d
	leaq	47(%rsp), %r12
	movabsq	$-3689348814741910323, %rbp
	jmp	.L1139
	.p2align 4,,10
	.p2align 3
.L1143:
	movq	%rdx, %rbx
.L1139:
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r13
	leaq	1(%r14), %rdx
	addl	$48, %eax
	movq	%rdx, (%rdi)
	movb	%al, 47(%rsp)
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L1147
	leaq	-1(%rax,%r14), %rdx
	movq	%r12, %rcx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	movq	8(%rdi), %rcx
	movq	(%rdi), %r14
	mulq	%rbp
	movb	$0, -1(%rcx,%r14)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L1143
.L1134:
	movq	%rdi, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L1147:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
.LEHE80:
	movl	$1, %ecx
	call	exit
.L1146:
.LEHB81:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE81:
.L1144:
	movq	%rax, %rbx
	jmp	.L1141
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1792:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1792-.LLSDACSB1792
.LLSDACSB1792:
	.uleb128 .LEHB80-.LFB1792
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB1792
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L1144-.LFB1792
	.uleb128 0
.LLSDACSE1792:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ToStringEy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEy.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 56
	.seh_savereg	%rdi, 64
	.seh_savereg	%rbp, 72
	.seh_savereg	%r12, 80
	.seh_savereg	%r13, 88
	.seh_savereg	%r14, 96
	.seh_endprologue
_ZN3neo6string8ToStringEy.cold:
.L1141:
	movq	%rdi, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB82:
	call	_Unwind_Resume
	nop
.LEHE82:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1792:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1792-.LLSDACSBC1792
.LLSDACSBC1792:
	.uleb128 .LEHB82-.LCOLDB99
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
.LLSDACSEC1792:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE99:
	.text
.LHOTE99:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB100:
	.text
.LHOTB100:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToStringEx
	.def	_ZN3neo6string8ToStringEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEx
_ZN3neo6string8ToStringEx:
.LFB1793:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	$16, %ecx
	movq	%rdx, %r13
.LEHB83:
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rdi
	call	malloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L1166
	movb	$0, (%rax)
	movl	$1, %r14d
	testq	%r13, %r13
	js	.L1167
.L1150:
	movl	$1, %ebx
	cmpq	$9, %r13
	jle	.L1152
	.p2align 4,,10
	.p2align 3
.L1153:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r13, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1153
	testq	%rbx, %rbx
	je	.L1148
.L1152:
	movabsq	$-3689348814741910323, %rbp
	leaq	47(%rsp), %r12
	jmp	.L1155
	.p2align 4,,10
	.p2align 3
.L1160:
	movq	%rdx, %rbx
.L1155:
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r13
	leaq	1(%r14), %rdx
	addl	$48, %eax
	movq	%rdx, (%rdi)
	movb	%al, 47(%rsp)
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L1154
	leaq	-1(%rax,%r14), %rdx
	movq	%r12, %rcx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	movq	8(%rdi), %rcx
	movq	(%rdi), %r14
	mulq	%rbp
	movb	$0, -1(%rcx,%r14)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L1160
.L1148:
	movq	%rdi, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L1167:
	movq	$2, (%rdi)
	movl	$2, %edx
	movb	$45, 46(%rsp)
	call	realloc
	movq	%rax, 8(%rdi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L1154
	leaq	46(%rsp), %rcx
	movl	$1, %r8d
	negq	%r13
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rdi), %rcx
	movq	(%rdi), %r14
	movb	$0, -1(%rcx,%r14)
	jmp	.L1150
.L1154:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
.LEHE83:
	movl	$1, %ecx
	call	exit
.L1166:
.LEHB84:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE84:
.L1161:
	movq	%rax, %rbx
	jmp	.L1157
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1793:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1793-.LLSDACSB1793
.LLSDACSB1793:
	.uleb128 .LEHB83-.LFB1793
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB84-.LFB1793
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1161-.LFB1793
	.uleb128 0
.LLSDACSE1793:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ToStringEx.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEx.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 56
	.seh_savereg	%rdi, 64
	.seh_savereg	%rbp, 72
	.seh_savereg	%r12, 80
	.seh_savereg	%r13, 88
	.seh_savereg	%r14, 96
	.seh_endprologue
_ZN3neo6string8ToStringEx.cold:
.L1157:
	movq	%rdi, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB85:
	call	_Unwind_Resume
	nop
.LEHE85:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1793:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1793-.LLSDACSBC1793
.LLSDACSBC1793:
	.uleb128 .LEHB85-.LCOLDB100
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
.LLSDACSEC1793:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE100:
	.text
.LHOTE100:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB101:
	.text
.LHOTB101:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToStringEd
	.def	_ZN3neo6string8ToStringEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEd
_ZN3neo6string8ToStringEd:
.LFB1794:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movl	$16, %ecx
	movapd	%xmm1, %xmm6
.LEHB86:
	call	_Znwy
	movl	$1, %ecx
	movq	$1, (%rax)
	movq	%rax, %rsi
	call	malloc
	movq	%rax, 8(%rsi)
	movq	%rax, %r8
	testq	%rax, %rax
	je	.L1223
	pxor	%xmm0, %xmm0
	movb	$0, (%rax)
	movl	$1, %r13d
	comisd	%xmm6, %xmm0
	ja	.L1224
.L1170:
	movsd	.LC6(%rip), %xmm7
	comisd	%xmm7, %xmm6
	jnb	.L1173
	cvttsd2siq	%xmm6, %r12
	testq	%r12, %r12
	js	.L1175
.L1226:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
.L1176:
	subsd	%xmm0, %xmm6
	movl	$1, %ebx
	cmpq	$9, %r12
	jbe	.L1177
	.p2align 4,,10
	.p2align 3
.L1178:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r12, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1178
	testq	%rbx, %rbx
	je	.L1179
.L1177:
	movabsq	$-3689348814741910323, %rdi
	leaq	61(%rsp), %rbp
	jmp	.L1181
	.p2align 4,,10
	.p2align 3
.L1199:
	movq	%rdx, %rbx
.L1181:
	movq	%r12, %rax
	xorl	%edx, %edx
	movq	%r8, %rcx
	divq	%rbx
	movq	%rdx, %r12
	leaq	1(%r13), %rdx
	addl	$48, %eax
	movq	%rdx, (%rsi)
	movb	%al, 61(%rsp)
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L1180
	leaq	-1(%rax,%r13), %rdx
	movl	$1, %r8d
	movq	%rbp, %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbx, %rax
	movq	8(%rsi), %r8
	movq	(%rsi), %r13
	mulq	%rdi
	movb	$0, -1(%r8,%r13)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L1199
.L1179:
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	ja	.L1225
.L1168:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movq	%rsi, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L1173:
	movapd	%xmm6, %xmm0
	subsd	%xmm7, %xmm0
	cvttsd2siq	%xmm0, %r12
	btcq	$63, %r12
	testq	%r12, %r12
	jns	.L1226
.L1175:
	movq	%r12, %rax
	movq	%r12, %rdx
	pxor	%xmm0, %xmm0
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L1176
	.p2align 4,,10
	.p2align 3
.L1225:
	leaq	1(%r13), %rdx
	movq	%r8, %rcx
	movb	$46, 62(%rsp)
	movq	%rdx, (%rsi)
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L1180
	leaq	62(%rsp), %rcx
	leaq	-1(%rax,%r13), %rdx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rsi), %rcx
	movq	(%rsi), %r14
	pxor	%xmm3, %xmm3
	movsd	.LC8(%rip), %xmm4
	movsd	.LC10(%rip), %xmm2
	movb	$0, -1(%rcx,%r14)
	movsd	.LC7(%rip), %xmm5
	jmp	.L1184
	.p2align 4,,10
	.p2align 3
.L1186:
	mulsd	%xmm5, %xmm6
.L1184:
	movapd	%xmm6, %xmm1
	movapd	%xmm6, %xmm0
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm4
	jbe	.L1185
	cvttsd2siq	%xmm6, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	andnpd	%xmm6, %xmm0
	cvtsi2sdq	%rax, %xmm1
	orpd	%xmm1, %xmm0
.L1185:
	movapd	%xmm6, %xmm1
	subsd	%xmm0, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L1186
	movapd	%xmm6, %xmm0
	movq	%rcx, 40(%rsp)
	call	round
	movq	40(%rsp), %rcx
	comisd	%xmm7, %xmm0
	jnb	.L1187
	cvttsd2siq	%xmm0, %r8
.L1188:
	movl	$1, %ebx
	cmpq	$9, %r8
	jbe	.L1189
	.p2align 4,,10
	.p2align 3
.L1190:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r8, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1190
	testq	%rbx, %rbx
	je	.L1168
.L1189:
	movabsq	$-9223372036854775808, %r12
	leaq	63(%rsp), %rbp
	movabsq	$-3689348814741910323, %rdi
	jmp	.L1195
	.p2align 4,,10
	.p2align 3
.L1227:
	cvttsd2siq	%xmm0, %rax
.L1192:
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r13
	leaq	1(%r14), %rdx
	addl	$48, %eax
	movq	%rdx, (%rsi)
	movb	%al, 63(%rsp)
	call	realloc
	movq	%rax, 8(%rsi)
	testq	%rax, %rax
	je	.L1180
	leaq	-1(%rax,%r14), %rdx
	movq	%rbp, %rcx
	movl	$1, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rsi), %rcx
	movq	(%rsi), %r14
	movb	$0, -1(%rcx,%r14)
	testq	%r13, %r13
	js	.L1193
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r13, %xmm0
.L1194:
	movq	%rbx, %rax
	mulq	%rdi
	shrq	$3, %rdx
	cmpq	$9, %rbx
	jbe	.L1168
	movq	%rdx, %rbx
.L1195:
	comisd	%xmm7, %xmm0
	jb	.L1227
	subsd	%xmm7, %xmm0
	cvttsd2siq	%xmm0, %rax
	xorq	%r12, %rax
	jmp	.L1192
	.p2align 4,,10
	.p2align 3
.L1193:
	movq	%r13, %rax
	andl	$1, %r13d
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%r13, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L1194
	.p2align 4,,10
	.p2align 3
.L1224:
	movq	$2, (%rsi)
	movl	$2, %edx
	movq	%rax, %rcx
	movb	$45, 60(%rsp)
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L1180
	movl	$1, %r8d
	leaq	60(%rsp), %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rsi), %r8
	movq	(%rsi), %r13
	xorpd	.LC5(%rip), %xmm6
	movb	$0, -1(%r8,%r13)
	jmp	.L1170
	.p2align 4,,10
	.p2align 3
.L1187:
	movapd	%xmm0, %xmm1
	subsd	%xmm7, %xmm1
	cvttsd2siq	%xmm1, %r8
	btcq	$63, %r8
	jmp	.L1188
.L1180:
	leaq	.LC1(%rip), %rcx
	movl	$1, %edx
	call	_Z6printfPKcz
.LEHE86:
	movl	$1, %ecx
	call	exit
.L1223:
.LEHB87:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE87:
.L1202:
	movq	%rax, %rbx
	jmp	.L1196
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1794:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1794-.LLSDACSB1794
.LLSDACSB1794:
	.uleb128 .LEHB86-.LFB1794
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB87-.LFB1794
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1202-.LFB1794
	.uleb128 0
.LLSDACSE1794:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3neo6string8ToStringEd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo6string8ToStringEd.cold
	.seh_stackalloc	152
	.seh_savereg	%rbx, 96
	.seh_savereg	%rsi, 104
	.seh_savereg	%rdi, 112
	.seh_savereg	%rbp, 120
	.seh_savexmm	%xmm6, 64
	.seh_savexmm	%xmm7, 80
	.seh_savereg	%r12, 128
	.seh_savereg	%r13, 136
	.seh_savereg	%r14, 144
	.seh_endprologue
_ZN3neo6string8ToStringEd.cold:
.L1196:
	movq	%rsi, %rcx
	movl	$16, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB88:
	call	_Unwind_Resume
	nop
.LEHE88:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC1794:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1794-.LLSDACSBC1794
.LLSDACSBC1794:
	.uleb128 .LEHB88-.LCOLDB101
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
.LLSDACSEC1794:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE101:
	.text
.LHOTE101:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string13LiteralLengthEPKc
	.def	_ZN3neo6string13LiteralLengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6string13LiteralLengthEPKc
_ZN3neo6string13LiteralLengthEPKc:
.LFB1795:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L1230
	call	strlen
	addq	$1, %rax
	addq	$40, %rsp
	ret
.L1230:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC6:
	.long	0
	.long	1138753536
	.align 8
.LC7:
	.long	0
	.long	1076101120
	.align 8
.LC8:
	.long	0
	.long	1127219200
	.align 8
.LC10:
	.long	-1
	.long	2147483647
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory7CompareEPKvS2_y;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
