	.file	"NeoString++.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::string(): Memory allocation failed"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo6stringC2Ev.part.0, @function
_ZN3neo6stringC2Ev.part.0:
.LFB1971:
	.cfi_startproc
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1971:
	.size	_ZN3neo6stringC2Ev.part.0, .-_ZN3neo6stringC2Ev.part.0
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"neo::string+=: Memory allocation failed\nParams: Characters(length): %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.type	_ZN3neo6string8ToStringEy.constprop.0, @function
_ZN3neo6string8ToStringEy.constprop.0:
.LFB1976:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1976
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	movl	$16, %edi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %r12
	call	malloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L21
	movb	$0, (%rax)
	movq	%rax, %rdi
	movl	$1, %ebx
	cmpq	$9, %r14
	jbe	.L7
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r14, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L8
	testq	%rbx, %rbx
	je	.L4
.L7:
	movabsq	$-3689348814741910323, %r13
	movl	$1, %r15d
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L16:
	movq	%rdx, %rbx
.L10:
	movq	%r14, %rax
	xorl	%edx, %edx
	leaq	1(%r15), %rsi
	divq	%rbx
	movq	%rsi, (%r12)
	addl	$48, %eax
	movq	%rdx, %r14
	movb	%al, 7(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L22
	leaq	-1(%rax,%r15), %rsi
	leaq	7(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	%rbx, %rax
	movq	8(%r12), %rdi
	movq	(%r12), %r15
	mulq	%r13
	movb	$0, -1(%rdi,%r15)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L16
.L4:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L21:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
.LEHB1:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE1:
.L20:
	call	__stack_chk_fail@PLT
.L17:
	movq	%rax, %rbx
	jmp	.L12
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
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
	.uleb128 .L17-.LFB1976
	.uleb128 0
.LLSDACSE1976:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1976
	.type	_ZN3neo6string8ToStringEy.constprop.0.cold, @function
_ZN3neo6string8ToStringEy.constprop.0.cold:
.LFSB1976:
.L12:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$16, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L23
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L23:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1976:
	.section	.gcc_except_table
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
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ToStringEy.constprop.0, .-_ZN3neo6string8ToStringEy.constprop.0
	.section	.text.unlikely
	.size	_ZN3neo6string8ToStringEy.constprop.0.cold, .-_ZN3neo6string8ToStringEy.constprop.0.cold
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4
	.type	_ZN3neo6string8ToStringEx.constprop.0, @function
_ZN3neo6string8ToStringEx.constprop.0:
.LFB1979:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1979
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	movl	$16, %edi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LEHB3:
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %r12
	call	malloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L47
	movb	$0, (%rax)
	movq	%rax, %rdi
	movl	$1, %r15d
	testq	%r14, %r14
	js	.L48
.L27:
	movl	$1, %ebx
	cmpq	$9, %r14
	jle	.L29
	.p2align 4,,10
	.p2align 3
.L30:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r14, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L30
	testq	%rbx, %rbx
	je	.L24
.L29:
	movabsq	$-3689348814741910323, %r13
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L39:
	movq	%rdx, %rbx
.L32:
	movq	%r14, %rax
	xorl	%edx, %edx
	leaq	1(%r15), %rsi
	divq	%rbx
	movq	%rsi, (%r12)
	addl	$48, %eax
	movq	%rdx, %r14
	movb	%al, 6(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L31
	leaq	-1(%rax,%r15), %rsi
	leaq	6(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	%rbx, %rax
	movq	8(%r12), %rdi
	movq	(%r12), %r15
	mulq	%r13
	movb	$0, -1(%rdi,%r15)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L39
.L24:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movq	$2, (%r12)
	movl	$2, %esi
	movb	$45, 7(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%r12)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L31
	leaq	7(%rsp), %rdi
	movl	$1, %edx
	negq	%r14
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%r12), %rdi
	movq	(%r12), %r15
	movb	$0, -1(%rdi,%r15)
	jmp	.L27
.L31:
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE3:
	movl	$1, %edi
	call	exit@PLT
.L47:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
.LEHB4:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE4:
.L46:
	call	__stack_chk_fail@PLT
.L40:
	movq	%rax, %rbx
	jmp	.L34
	.section	.gcc_except_table
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
	.uleb128 .L40-.LFB1979
	.uleb128 0
.LLSDACSE1979:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1979
	.type	_ZN3neo6string8ToStringEx.constprop.0.cold, @function
_ZN3neo6string8ToStringEx.constprop.0.cold:
.LFSB1979:
.L34:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$16, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L49
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L49:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1979:
	.section	.gcc_except_table
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
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ToStringEx.constprop.0, .-_ZN3neo6string8ToStringEx.constprop.0
	.section	.text.unlikely
	.size	_ZN3neo6string8ToStringEx.constprop.0.cold, .-_ZN3neo6string8ToStringEx.constprop.0.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.type	_ZN3neo6string8ToStringEd.constprop.0, @function
_ZN3neo6string8ToStringEd.constprop.0:
.LFB1980:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1980
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$16, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movsd	%xmm0, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LEHB6:
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %rbp
	call	malloc@PLT
	movsd	8(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 8(%rbp)
	je	.L110
	pxor	%xmm1, %xmm1
	movb	$0, (%rax)
	movq	%rax, %rdi
	movl	$1, %r14d
	comisd	%xmm0, %xmm1
	ja	.L111
.L53:
	comisd	.LC6(%rip), %xmm0
	jnb	.L56
	cvttsd2siq	%xmm0, %r13
	testq	%r13, %r13
	js	.L58
.L113:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r13, %xmm1
.L59:
	subsd	%xmm1, %xmm0
	movl	$1, %ebx
	movq	%xmm0, %r15
	cmpq	$9, %r13
	jbe	.L60
	.p2align 4,,10
	.p2align 3
.L61:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r13, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L61
	testq	%rbx, %rbx
	je	.L62
.L60:
	movabsq	$-3689348814741910323, %r12
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L84:
	movq	%rdx, %rbx
.L64:
	movq	%r13, %rax
	xorl	%edx, %edx
	leaq	1(%r14), %rsi
	divq	%rbx
	movq	%rsi, 0(%rbp)
	addl	$48, %eax
	movq	%rdx, %r13
	movb	%al, 22(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L63
	leaq	-1(%rax,%r14), %rsi
	leaq	22(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	%rbx, %rax
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	mulq	%r12
	movb	$0, -1(%rdi,%r14)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L84
.L62:
	pxor	%xmm0, %xmm0
	movq	%r15, %xmm5
	comisd	%xmm0, %xmm5
	ja	.L112
.L50:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L109
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	.cfi_restore_state
	movapd	%xmm0, %xmm1
	subsd	.LC6(%rip), %xmm1
	cvttsd2siq	%xmm1, %r13
	btcq	$63, %r13
	testq	%r13, %r13
	jns	.L113
.L58:
	movq	%r13, %rax
	movq	%r13, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L112:
	leaq	1(%r14), %rsi
	movb	$46, 21(%rsp)
	movq	%rsi, 0(%rbp)
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L63
	leaq	-1(%rax,%r14), %rsi
	leaq	21(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	pxor	%xmm3, %xmm3
	movsd	.LC8(%rip), %xmm4
	movsd	.LC10(%rip), %xmm2
	movb	$0, -1(%rdi,%r14)
	movsd	.LC7(%rip), %xmm5
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L69:
	movq	%r15, %xmm7
	mulsd	%xmm5, %xmm7
	movq	%xmm7, %r15
.L67:
	movq	%r15, %xmm0
	movq	%r15, %xmm6
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm4
	jbe	.L68
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	andnpd	%xmm6, %xmm0
	cvtsi2sdq	%rax, %xmm1
	orpd	%xmm1, %xmm0
.L68:
	movq	%r15, %xmm1
	subsd	%xmm0, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L69
	movq	%r15, %xmm0
	movq	%rdi, 8(%rsp)
	call	round@PLT
	comisd	.LC6(%rip), %xmm0
	movq	8(%rsp), %rdi
	jnb	.L70
	cvttsd2siq	%xmm0, %rsi
.L71:
	movl	$1, %ebx
	cmpq	$9, %rsi
	jbe	.L72
	.p2align 4,,10
	.p2align 3
.L73:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%rsi, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L73
	testq	%rbx, %rbx
	je	.L50
.L72:
	movabsq	$-3689348814741910323, %r12
	leaq	20(%rsp), %r13
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L114:
	cvttsd2siq	%xmm0, %rax
.L75:
	xorl	%edx, %edx
	leaq	1(%r14), %rsi
	divq	%rbx
	movq	%rsi, 0(%rbp)
	addl	$48, %eax
	movq	%rdx, %r15
	movb	%al, 20(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L63
	leaq	-1(%rax,%r14), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	movb	$0, -1(%rdi,%r14)
	testq	%r15, %r15
	js	.L76
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
.L77:
	movq	%rbx, %rax
	mulq	%r12
	shrq	$3, %rdx
	cmpq	$9, %rbx
	jbe	.L50
	movq	%rdx, %rbx
.L78:
	comisd	.LC6(%rip), %xmm0
	jb	.L114
	subsd	.LC6(%rip), %xmm0
	movabsq	$-9223372036854775808, %rcx
	cvttsd2siq	%xmm0, %rax
	xorq	%rcx, %rax
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L76:
	movq	%r15, %rax
	andl	$1, %r15d
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%r15, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L111:
	movq	$2, 0(%rbp)
	movl	$2, %esi
	movsd	%xmm0, 8(%rsp)
	movb	$45, 23(%rsp)
	call	realloc@PLT
	movsd	8(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 8(%rbp)
	movq	%rax, %rsi
	je	.L63
	leaq	23(%rsp), %rdi
	movl	$1, %edx
	movsd	%xmm0, 8(%rsp)
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	movsd	8(%rsp), %xmm0
	xorpd	.LC5(%rip), %xmm0
	movb	$0, -1(%rdi,%r14)
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L70:
	movapd	%xmm0, %xmm1
	subsd	.LC6(%rip), %xmm1
	cvttsd2siq	%xmm1, %rsi
	btcq	$63, %rsi
	jmp	.L71
.L63:
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	movl	$1, %edi
	call	exit@PLT
.L109:
	call	__stack_chk_fail@PLT
.L110:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L109
.LEHB7:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE7:
.L87:
	movq	%rax, %rbx
	jmp	.L79
	.section	.gcc_except_table
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
	.uleb128 .L87-.LFB1980
	.uleb128 0
.LLSDACSE1980:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1980
	.type	_ZN3neo6string8ToStringEd.constprop.0.cold, @function
_ZN3neo6string8ToStringEd.constprop.0.cold:
.LFSB1980:
.L79:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L115
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L115:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1980:
	.section	.gcc_except_table
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
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ToStringEd.constprop.0, .-_ZN3neo6string8ToStringEd.constprop.0
	.section	.text.unlikely
	.size	_ZN3neo6string8ToStringEd.constprop.0.cold, .-_ZN3neo6string8ToStringEd.constprop.0.cold
.LCOLDE11:
	.text
.LHOTE11:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2Ev
	.type	_ZN3neo6stringC2Ev, @function
_ZN3neo6stringC2Ev:
.LFB1699:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	$1, (%rdi)
	movl	$1, %edi
	call	malloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L119
	movb	$0, (%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L119:
	.cfi_restore_state
	call	_ZN3neo6stringC2Ev.part.0
	.cfi_endproc
.LFE1699:
	.size	_ZN3neo6stringC2Ev, .-_ZN3neo6stringC2Ev
	.globl	_ZN3neo6stringC1Ev
	.set	_ZN3neo6stringC1Ev,_ZN3neo6stringC2Ev
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"neo::string(): Memory allocation failed\nParams: Characters(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIcE
	.type	_ZN3neo6stringC2ESt16initializer_listIcE, @function
_ZN3neo6stringC2ESt16initializer_listIcE:
.LFB1704:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	leaq	1(%rdx), %rdi
	movq	%rdi, (%rbx)
	call	malloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L123
	movq	%rbp, %rdx
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbx), %rdx
	movq	(%rbx), %rax
	movb	$0, -1(%rdx,%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L123:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1704:
	.size	_ZN3neo6stringC2ESt16initializer_listIcE, .-_ZN3neo6stringC2ESt16initializer_listIcE
	.globl	_ZN3neo6stringC1ESt16initializer_listIcE
	.set	_ZN3neo6stringC1ESt16initializer_listIcE,_ZN3neo6stringC2ESt16initializer_listIcE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"neo::string(): Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n"
	.align 8
.LC14:
	.string	"neo::string(): Literals[%lld] must not be Self\nParams: Literals(length): %ld\n"
	.align 8
.LC15:
	.string	"neo::string(): Memory allocation failed\nParams: Literals(length): %ld\n"
	.align 8
.LC16:
	.string	"neo::string::LiteralLength(): Literal must not be NULL\nParams: Literal: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIPKcE
	.type	_ZN3neo6stringC2ESt16initializer_listIPKcE, @function
_ZN3neo6stringC2ESt16initializer_listIPKcE:
.LFB1709:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	$0, (%rdi)
	testq	%rdx, %rdx
	je	.L125
	movq	%rsi, %r13
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L128:
	movq	0(%r13,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L141
	cmpq	8(%rbp), %rdi
	je	.L142
	call	strlen@PLT
	addq	$1, %rbx
	addq	%rax, %r14
	movq	%r14, 0(%rbp)
	cmpq	%r12, %rbx
	jne	.L128
	leaq	1(%r14), %rdi
	movq	%rdi, 0(%rbp)
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L131
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L129:
	movq	0(%r13,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.L143
	movq	%rdi, 8(%rsp)
	addq	$1, %r15
	call	strlen@PLT
	movq	8(%rbp), %rsi
	movq	8(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rax, %rdx
	addq	%r14, %rsi
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	cmpq	%r12, %r15
	jne	.L129
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdx
	leaq	-1(%rdx,%rax), %rax
.L132:
	movb	$0, (%rax)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L125:
	.cfi_restore_state
	movq	$1, (%rdi)
	movl	$1, %edi
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	jne	.L132
.L131:
	leaq	.LC15(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L143:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L142:
	leaq	.LC14(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L141:
	leaq	.LC13(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1709:
	.size	_ZN3neo6stringC2ESt16initializer_listIPKcE, .-_ZN3neo6stringC2ESt16initializer_listIPKcE
	.globl	_ZN3neo6stringC1ESt16initializer_listIPKcE
	.set	_ZN3neo6stringC1ESt16initializer_listIPKcE,_ZN3neo6stringC2ESt16initializer_listIPKcE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"neo::string(): Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n"
	.align 8
.LC18:
	.string	"neo::string(): Strings[%lld] must not be Self\nParams: Strings(length): %ld\n"
	.align 8
.LC19:
	.string	"neo::string(): Memory allocation failed\nParams: Strings(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIPS0_E
	.type	_ZN3neo6stringC2ESt16initializer_listIPS0_E, @function
_ZN3neo6stringC2ESt16initializer_listIPS0_E:
.LFB1714:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	$0, (%rdi)
	testq	%rdx, %rdx
	je	.L145
	movq	%rsi, %rbp
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L148:
	movq	0(%rbp,%rbx,8), %rax
	testq	%rax, %rax
	je	.L162
	cmpq	%r12, %rax
	je	.L163
	movq	(%rax), %rax
	addq	$1, %rbx
	leaq	-1(%rdi,%rax), %rdi
	movq	%rdi, (%r12)
	cmpq	%r13, %rbx
	jne	.L148
	addq	$1, %rdi
	movq	%rdi, (%r12)
	call	malloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L149
	leaq	-8(%rbp,%rbx,8), %rbx
	xorl	%r13d, %r13d
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L151:
	movq	8(%r12), %rax
	addq	$8, %rbp
.L150:
	movq	0(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	leaq	-1(%rsi), %rdx
	leaq	(%rax,%r13), %rsi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%r13,%rax), %r13
	cmpq	%rbp, %rbx
	jne	.L151
	movq	(%r12), %rax
	movq	8(%r12), %rdx
	leaq	-1(%rdx,%rax), %rax
.L152:
	movb	$0, (%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L145:
	.cfi_restore_state
	movq	$1, (%rdi)
	movl	$1, %edi
	call	malloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	jne	.L152
.L149:
	leaq	.LC19(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L163:
	leaq	.LC18(%rip), %rdi
	movq	%r13, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L162:
	leaq	.LC17(%rip), %rdi
	movq	%r13, %rdx
	movq	%rbx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1714:
	.size	_ZN3neo6stringC2ESt16initializer_listIPS0_E, .-_ZN3neo6stringC2ESt16initializer_listIPS0_E
	.globl	_ZN3neo6stringC1ESt16initializer_listIPS0_E
	.set	_ZN3neo6stringC1ESt16initializer_listIPS0_E,_ZN3neo6stringC2ESt16initializer_listIPS0_E
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.align 8
.LC21:
	.string	"neo::string(): Memory allocation failed\nParams: Numbers(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB22:
	.text
.LHOTB22:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIyE
	.type	_ZN3neo6stringC2ESt16initializer_listIyE, @function
_ZN3neo6stringC2ESt16initializer_listIyE:
.LFB1719:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1719
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L165
	movq	$1, (%rdi)
	movl	$1, %edi
	xorl	%r13d, %r13d
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L167
.L166:
	movq	%r12, %rsi
	leaq	.LC21(%rip), %rdi
	xorl	%eax, %eax
.LEHB9:
	call	printf@PLT
.LEHE9:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L165:
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r14
	call	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L182
	movq	$0, 0(%rbp)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L169:
	movq	(%r14,%rbx,8), %rdi
.LEHB10:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, 0(%r13,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdi
	movq	%rdi, 0(%rbp)
	cmpq	%r12, %rbx
	jne	.L169
	addq	$1, %rdi
	movq	%rdi, 0(%rbp)
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L183
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L171:
	movq	8(%rbp), %rsi
.L170:
	movq	0(%r13,%r14,8), %rbx
	addq	%r15, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-1(%rax), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE10:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r14
	jne	.L171
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdx
	leaq	-1(%rdx,%rax), %rbx
.L167:
	movb	$0, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT
.L182:
	.cfi_restore_state
	leaq	.LC20(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB11:
	call	printf@PLT
.LEHE11:
	movl	$1, %edi
	call	exit@PLT
.L183:
	movq	%r13, %rbx
	jmp	.L166
.L175:
	movq	%rax, %rbp
	jmp	.L173
.L176:
	movq	%rax, %rbp
	jmp	.L172
	.section	.gcc_except_table
.LLSDA1719:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1719-.LLSDACSB1719
.LLSDACSB1719:
	.uleb128 .LEHB9-.LFB1719
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L176-.LFB1719
	.uleb128 0
	.uleb128 .LEHB10-.LFB1719
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L175-.LFB1719
	.uleb128 0
	.uleb128 .LEHB11-.LFB1719
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE1719:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1719
	.type	_ZN3neo6stringC2ESt16initializer_listIyE.cold, @function
_ZN3neo6stringC2ESt16initializer_listIyE.cold:
.LFSB1719:
.L172:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbx, %r13
.L173:
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
	.cfi_endproc
.LFE1719:
	.section	.gcc_except_table
.LLSDAC1719:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1719-.LLSDACSBC1719
.LLSDACSBC1719:
	.uleb128 .LEHB12-.LCOLDB22
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC1719:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringC2ESt16initializer_listIyE, .-_ZN3neo6stringC2ESt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3neo6stringC2ESt16initializer_listIyE.cold, .-_ZN3neo6stringC2ESt16initializer_listIyE.cold
.LCOLDE22:
	.text
.LHOTE22:
	.globl	_ZN3neo6stringC1ESt16initializer_listIyE
	.set	_ZN3neo6stringC1ESt16initializer_listIyE,_ZN3neo6stringC2ESt16initializer_listIyE
	.section	.text.unlikely
	.align 2
.LCOLDB23:
	.text
.LHOTB23:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIxE
	.type	_ZN3neo6stringC2ESt16initializer_listIxE, @function
_ZN3neo6stringC2ESt16initializer_listIxE:
.LFB1724:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1724
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L185
	movq	$1, (%rdi)
	movl	$1, %edi
	xorl	%r13d, %r13d
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L187
.L186:
	movq	%r12, %rsi
	leaq	.LC21(%rip), %rdi
	xorl	%eax, %eax
.LEHB13:
	call	printf@PLT
.LEHE13:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L185:
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r14
	call	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L202
	movq	$0, 0(%rbp)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L189:
	movq	(%r14,%rbx,8), %rdi
.LEHB14:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, 0(%r13,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdi
	movq	%rdi, 0(%rbp)
	cmpq	%r12, %rbx
	jne	.L189
	addq	$1, %rdi
	movq	%rdi, 0(%rbp)
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L203
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L191:
	movq	8(%rbp), %rsi
.L190:
	movq	0(%r13,%r14,8), %rbx
	addq	%r15, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-1(%rax), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE14:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r14
	jne	.L191
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdx
	leaq	-1(%rdx,%rax), %rbx
.L187:
	movb	$0, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT
.L202:
	.cfi_restore_state
	leaq	.LC20(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB15:
	call	printf@PLT
.LEHE15:
	movl	$1, %edi
	call	exit@PLT
.L203:
	movq	%r13, %rbx
	jmp	.L186
.L195:
	movq	%rax, %rbp
	jmp	.L193
.L196:
	movq	%rax, %rbp
	jmp	.L192
	.section	.gcc_except_table
.LLSDA1724:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1724-.LLSDACSB1724
.LLSDACSB1724:
	.uleb128 .LEHB13-.LFB1724
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L196-.LFB1724
	.uleb128 0
	.uleb128 .LEHB14-.LFB1724
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L195-.LFB1724
	.uleb128 0
	.uleb128 .LEHB15-.LFB1724
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE1724:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1724
	.type	_ZN3neo6stringC2ESt16initializer_listIxE.cold, @function
_ZN3neo6stringC2ESt16initializer_listIxE.cold:
.LFSB1724:
.L192:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbx, %r13
.L193:
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
	.cfi_endproc
.LFE1724:
	.section	.gcc_except_table
.LLSDAC1724:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1724-.LLSDACSBC1724
.LLSDACSBC1724:
	.uleb128 .LEHB16-.LCOLDB23
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSEC1724:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringC2ESt16initializer_listIxE, .-_ZN3neo6stringC2ESt16initializer_listIxE
	.section	.text.unlikely
	.size	_ZN3neo6stringC2ESt16initializer_listIxE.cold, .-_ZN3neo6stringC2ESt16initializer_listIxE.cold
.LCOLDE23:
	.text
.LHOTE23:
	.globl	_ZN3neo6stringC1ESt16initializer_listIxE
	.set	_ZN3neo6stringC1ESt16initializer_listIxE,_ZN3neo6stringC2ESt16initializer_listIxE
	.section	.text.unlikely
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringC2ESt16initializer_listIdE
	.type	_ZN3neo6stringC2ESt16initializer_listIdE, @function
_ZN3neo6stringC2ESt16initializer_listIdE:
.LFB1729:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1729
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L205
	movq	$1, (%rdi)
	movl	$1, %edi
	xorl	%r13d, %r13d
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L207
.L206:
	movq	%r12, %rsi
	leaq	.LC21(%rip), %rdi
	xorl	%eax, %eax
.LEHB17:
	call	printf@PLT
.LEHE17:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L205:
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r14
	call	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L222
	movq	$0, 0(%rbp)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L209:
	movsd	(%r14,%rbx,8), %xmm0
.LEHB18:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, 0(%r13,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rdi
	movq	%rdi, 0(%rbp)
	cmpq	%r12, %rbx
	jne	.L209
	addq	$1, %rdi
	movq	%rdi, 0(%rbp)
	call	malloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L223
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L211:
	movq	8(%rbp), %rsi
.L210:
	movq	0(%r13,%r14,8), %rbx
	addq	%r15, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-1(%rax), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE18:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r14
	jne	.L211
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdx
	leaq	-1(%rdx,%rax), %rbx
.L207:
	movb	$0, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT
.L222:
	.cfi_restore_state
	leaq	.LC20(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB19:
	call	printf@PLT
.LEHE19:
	movl	$1, %edi
	call	exit@PLT
.L223:
	movq	%r13, %rbx
	jmp	.L206
.L215:
	movq	%rax, %rbp
	jmp	.L213
.L216:
	movq	%rax, %rbp
	jmp	.L212
	.section	.gcc_except_table
.LLSDA1729:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1729-.LLSDACSB1729
.LLSDACSB1729:
	.uleb128 .LEHB17-.LFB1729
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L216-.LFB1729
	.uleb128 0
	.uleb128 .LEHB18-.LFB1729
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L215-.LFB1729
	.uleb128 0
	.uleb128 .LEHB19-.LFB1729
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE1729:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1729
	.type	_ZN3neo6stringC2ESt16initializer_listIdE.cold, @function
_ZN3neo6stringC2ESt16initializer_listIdE.cold:
.LFSB1729:
.L212:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbx, %r13
.L213:
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB20:
	call	_Unwind_Resume@PLT
.LEHE20:
	.cfi_endproc
.LFE1729:
	.section	.gcc_except_table
.LLSDAC1729:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1729-.LLSDACSBC1729
.LLSDACSBC1729:
	.uleb128 .LEHB20-.LCOLDB24
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSEC1729:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringC2ESt16initializer_listIdE, .-_ZN3neo6stringC2ESt16initializer_listIdE
	.section	.text.unlikely
	.size	_ZN3neo6stringC2ESt16initializer_listIdE.cold, .-_ZN3neo6stringC2ESt16initializer_listIdE.cold
.LCOLDE24:
	.text
.LHOTE24:
	.globl	_ZN3neo6stringC1ESt16initializer_listIdE
	.set	_ZN3neo6stringC1ESt16initializer_listIdE,_ZN3neo6stringC2ESt16initializer_listIdE
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringD2Ev
	.type	_ZN3neo6stringD2Ev, @function
_ZN3neo6stringD2Ev:
.LFB1732:
	.cfi_startproc
	movq	8(%rdi), %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE1732:
	.size	_ZN3neo6stringD2Ev, .-_ZN3neo6stringD2Ev
	.globl	_ZN3neo6stringD1Ev
	.set	_ZN3neo6stringD1Ev,_ZN3neo6stringD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6LengthEv
	.type	_ZN3neo6string6LengthEv, @function
_ZN3neo6string6LengthEv:
.LFB1734:
	.cfi_startproc
	movq	(%rdi), %rax
	ret
	.cfi_endproc
.LFE1734:
	.size	_ZN3neo6string6LengthEv, .-_ZN3neo6string6LengthEv
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringclEv
	.type	_ZN3neo6stringclEv, @function
_ZN3neo6stringclEv:
.LFB1735:
	.cfi_startproc
	movq	8(%rdi), %rax
	ret
	.cfi_endproc
.LFE1735:
	.size	_ZN3neo6stringclEv, .-_ZN3neo6stringclEv
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"neo::string[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC26:
	.string	"neo::string[]: Illegal access to EOF\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringixEy
	.type	_ZN3neo6stringixEy, @function
_ZN3neo6stringixEy:
.LFB1736:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rax
	cmpq	%rax, %rsi
	jnb	.L231
	subq	$1, %rax
	cmpq	%rsi, %rax
	je	.L232
	movq	8(%rdi), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addq	%rsi, %rax
	ret
.L231:
	.cfi_restore_state
	leaq	.LC25(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L232:
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1736:
	.size	_ZN3neo6stringixEy, .-_ZN3neo6stringixEy
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"neo::string=: Memory allocation failed\nParams: Characters(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIcE
	.type	_ZN3neo6stringaSESt16initializer_listIcE, @function
_ZN3neo6stringaSESt16initializer_listIcE:
.LFB1737:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	leaq	1(%rdx), %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	cmpq	%rsi, (%rbx)
	je	.L234
	movq	%rsi, (%rbx)
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L236
.L234:
	movq	%rbp, %rdx
	movq	%rdi, %rsi
	movq	%r12, %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L236:
	.cfi_restore_state
	leaq	.LC27(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1737:
	.size	_ZN3neo6stringaSESt16initializer_listIcE, .-_ZN3neo6stringaSESt16initializer_listIcE
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"neo::string=: Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n"
	.align 8
.LC29:
	.string	"neo::string=: Literals[%lld] must not be Self\nParams: Literals(length): %ld\n"
	.align 8
.LC30:
	.string	"neo::string=: Memory allocation failed\nParams: Literals(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIPKcE
	.type	_ZN3neo6stringaSESt16initializer_listIPKcE, @function
_ZN3neo6stringaSESt16initializer_listIPKcE:
.LFB1738:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	(%rdi), %rax
	movq	$0, (%rdi)
	movq	%rax, 8(%rsp)
	testq	%rdx, %rdx
	je	.L238
	movq	%rsi, %r13
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L241:
	movq	0(%r13,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L258
	movq	8(%rbp), %r14
	cmpq	%r14, %rdi
	je	.L259
	call	strlen@PLT
	addq	$1, %rbx
	addq	%rax, %r15
	movq	%r15, 0(%rbp)
	cmpq	%rbx, %r12
	jne	.L241
	movq	8(%rsp), %rax
	leaq	1(%r15), %rsi
	movq	%rsi, 0(%rbp)
	cmpq	%rax, %rsi
	jne	.L245
.L247:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L246:
	movq	0(%r13,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.L260
	movq	%rdi, 8(%rsp)
	addq	$1, %r15
	call	strlen@PLT
	movq	8(%rbp), %rsi
	movq	8(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rax, %rdx
	addq	%r14, %rsi
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	cmpq	%r15, %r12
	jne	.L246
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdx
	leaq	-1(%rdx,%rax), %rdi
.L244:
	movb	$0, (%rdi)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L245:
	.cfi_restore_state
	movq	%r14, %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	jne	.L247
.L249:
	leaq	.LC30(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L238:
	cmpq	$1, 8(%rsp)
	movq	$1, (%rdi)
	movq	8(%rdi), %rdi
	je	.L244
	movl	$1, %esi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L249
	movq	0(%rbp), %rdx
	leaq	-1(%rax,%rdx), %rdi
	jmp	.L244
.L260:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L259:
	leaq	.LC29(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L258:
	leaq	.LC28(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1738:
	.size	_ZN3neo6stringaSESt16initializer_listIPKcE, .-_ZN3neo6stringaSESt16initializer_listIPKcE
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"neo::string=: Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n"
	.align 8
.LC32:
	.string	"neo::string=: Strings[%lld] must not be Self\nParams: Strings(length): %ld\n"
	.align 8
.LC33:
	.string	"neo::string=: Memory allocation failed\nParams: Strings(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIPS0_E
	.type	_ZN3neo6stringaSESt16initializer_listIPS0_E, @function
_ZN3neo6stringaSESt16initializer_listIPS0_E:
.LFB1739:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rcx
	movq	$0, (%rdi)
	testq	%rdx, %rdx
	je	.L262
	movq	%rsi, %rbx
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L265:
	movq	(%rbx,%rsi,8), %rax
	testq	%rax, %rax
	je	.L283
	cmpq	%rbp, %rax
	je	.L284
	movq	(%rax), %rax
	addq	$1, %rsi
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, 0(%rbp)
	cmpq	%rsi, %r12
	jne	.L265
	leaq	1(%rdx), %rsi
	movq	8(%rbp), %rdi
	movq	%rsi, 0(%rbp)
	cmpq	%rcx, %rsi
	jne	.L285
.L269:
	leaq	-8(%rbx,%r12,8), %r12
	xorl	%r13d, %r13d
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L272:
	movq	8(%rbp), %rdi
	addq	$8, %rbx
.L271:
	movq	(%rbx), %rax
	leaq	(%rdi,%r13), %rsi
	movq	(%rax), %rcx
	movq	8(%rax), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	movq	(%rax), %rax
	leaq	-1(%r13,%rax), %r13
	cmpq	%rbx, %r12
	jne	.L272
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdx
	leaq	-1(%rdx,%rax), %rdi
.L268:
	movb	$0, (%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L285:
	.cfi_restore_state
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L269
.L270:
	leaq	.LC33(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L262:
	movq	$1, (%rdi)
	movq	8(%rdi), %rdi
	cmpq	$1, %rcx
	je	.L268
	movl	$1, %esi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L270
	movq	0(%rbp), %rdx
	leaq	-1(%rax,%rdx), %rdi
	jmp	.L268
.L284:
	leaq	.LC32(%rip), %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L283:
	leaq	.LC31(%rip), %rdi
	movq	%r12, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1739:
	.size	_ZN3neo6stringaSESt16initializer_listIPS0_E, .-_ZN3neo6stringaSESt16initializer_listIPS0_E
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"neo::string=: Memory allocation failed\nParams: Numbers(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB35:
	.text
.LHOTB35:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIyE
	.type	_ZN3neo6stringaSESt16initializer_listIyE, @function
_ZN3neo6stringaSESt16initializer_listIyE:
.LFB1740:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1740
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L287
	movq	(%rdi), %rax
	movq	$1, (%rdi)
	cmpq	$1, %rax
	je	.L310
	movq	8(%rdi), %rdi
	movl	$1, %esi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L311
.L296:
	movq	%r13, %rsi
	leaq	.LC34(%rip), %rdi
	xorl	%eax, %eax
.LEHB21:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L287:
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r14
	call	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L312
	movq	0(%rbp), %r15
	movq	$0, 0(%rbp)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L291:
	movq	(%r14,%rbx,8), %rdi
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%r12,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, 0(%rbp)
	cmpq	%rbx, %r13
	jne	.L291
	addq	$1, %rsi
	movq	8(%rbp), %rdi
	movq	%rsi, 0(%rbp)
	cmpq	%rsi, %r15
	jne	.L292
.L298:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L294:
	movq	8(%rbp), %rdi
.L293:
	movq	(%r12,%r14,8), %rbx
	leaq	(%rdi,%r15), %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-1(%rax), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE21:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r14, %r13
	jne	.L294
	movq	0(%rbp), %rax
	leaq	-1(%rax), %rdx
.L289:
	movq	8(%rbp), %rax
	movq	%r12, %rdi
	movb	$0, (%rax,%rdx)
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L311:
	.cfi_restore_state
	movq	0(%rbp), %rax
	leaq	-1(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L310:
	xorl	%r12d, %r12d
	jmp	.L289
.L312:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB22:
	call	printf@PLT
.LEHE22:
	movl	$1, %edi
	call	exit@PLT
.L292:
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L298
	jmp	.L296
.L299:
	movq	%rax, %rbx
	jmp	.L295
	.section	.gcc_except_table
.LLSDA1740:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1740-.LLSDACSB1740
.LLSDACSB1740:
	.uleb128 .LEHB21-.LFB1740
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L299-.LFB1740
	.uleb128 0
	.uleb128 .LEHB22-.LFB1740
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE1740:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1740
	.type	_ZN3neo6stringaSESt16initializer_listIyE.cold, @function
_ZN3neo6stringaSESt16initializer_listIyE.cold:
.LFSB1740:
.L295:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
	.cfi_endproc
.LFE1740:
	.section	.gcc_except_table
.LLSDAC1740:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1740-.LLSDACSBC1740
.LLSDACSBC1740:
	.uleb128 .LEHB23-.LCOLDB35
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC1740:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringaSESt16initializer_listIyE, .-_ZN3neo6stringaSESt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3neo6stringaSESt16initializer_listIyE.cold, .-_ZN3neo6stringaSESt16initializer_listIyE.cold
.LCOLDE35:
	.text
.LHOTE35:
	.section	.text.unlikely
	.align 2
.LCOLDB36:
	.text
.LHOTB36:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIxE
	.type	_ZN3neo6stringaSESt16initializer_listIxE, @function
_ZN3neo6stringaSESt16initializer_listIxE:
.LFB1741:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1741
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L314
	movq	(%rdi), %rax
	movq	$1, (%rdi)
	cmpq	$1, %rax
	je	.L337
	movq	8(%rdi), %rdi
	movl	$1, %esi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L338
.L323:
	movq	%r13, %rsi
	leaq	.LC34(%rip), %rdi
	xorl	%eax, %eax
.LEHB24:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L314:
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r14
	call	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L339
	movq	0(%rbp), %r15
	movq	$0, 0(%rbp)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L318:
	movq	(%r14,%rbx,8), %rdi
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%r12,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, 0(%rbp)
	cmpq	%rbx, %r13
	jne	.L318
	addq	$1, %rsi
	movq	8(%rbp), %rdi
	movq	%rsi, 0(%rbp)
	cmpq	%rsi, %r15
	jne	.L319
.L325:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L321:
	movq	8(%rbp), %rdi
.L320:
	movq	(%r12,%r14,8), %rbx
	leaq	(%rdi,%r15), %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-1(%rax), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE24:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r14, %r13
	jne	.L321
	movq	0(%rbp), %rax
	leaq	-1(%rax), %rdx
.L316:
	movq	8(%rbp), %rax
	movq	%r12, %rdi
	movb	$0, (%rax,%rdx)
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L338:
	.cfi_restore_state
	movq	0(%rbp), %rax
	leaq	-1(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L337:
	xorl	%r12d, %r12d
	jmp	.L316
.L339:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB25:
	call	printf@PLT
.LEHE25:
	movl	$1, %edi
	call	exit@PLT
.L319:
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L325
	jmp	.L323
.L326:
	movq	%rax, %rbx
	jmp	.L322
	.section	.gcc_except_table
.LLSDA1741:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1741-.LLSDACSB1741
.LLSDACSB1741:
	.uleb128 .LEHB24-.LFB1741
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L326-.LFB1741
	.uleb128 0
	.uleb128 .LEHB25-.LFB1741
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE1741:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1741
	.type	_ZN3neo6stringaSESt16initializer_listIxE.cold, @function
_ZN3neo6stringaSESt16initializer_listIxE.cold:
.LFSB1741:
.L322:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
	.cfi_endproc
.LFE1741:
	.section	.gcc_except_table
.LLSDAC1741:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1741-.LLSDACSBC1741
.LLSDACSBC1741:
	.uleb128 .LEHB26-.LCOLDB36
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSEC1741:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringaSESt16initializer_listIxE, .-_ZN3neo6stringaSESt16initializer_listIxE
	.section	.text.unlikely
	.size	_ZN3neo6stringaSESt16initializer_listIxE.cold, .-_ZN3neo6stringaSESt16initializer_listIxE.cold
.LCOLDE36:
	.text
.LHOTE36:
	.section	.text.unlikely
	.align 2
.LCOLDB37:
	.text
.LHOTB37:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringaSESt16initializer_listIdE
	.type	_ZN3neo6stringaSESt16initializer_listIdE, @function
_ZN3neo6stringaSESt16initializer_listIdE:
.LFB1742:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1742
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L341
	movq	(%rdi), %rax
	movq	$1, (%rdi)
	cmpq	$1, %rax
	je	.L364
	movq	8(%rdi), %rdi
	movl	$1, %esi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L365
.L350:
	movq	%r13, %rsi
	leaq	.LC34(%rip), %rdi
	xorl	%eax, %eax
.LEHB27:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L341:
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r14
	call	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L366
	movq	0(%rbp), %r15
	movq	$0, 0(%rbp)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L345:
	movsd	(%r14,%rbx,8), %xmm0
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%r12,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, 0(%rbp)
	cmpq	%rbx, %r13
	jne	.L345
	addq	$1, %rsi
	movq	8(%rbp), %rdi
	movq	%rsi, 0(%rbp)
	cmpq	%rsi, %r15
	jne	.L346
.L352:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L348:
	movq	8(%rbp), %rdi
.L347:
	movq	(%r12,%r14,8), %rbx
	leaq	(%rdi,%r15), %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-1(%rax), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE27:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r14, %r13
	jne	.L348
	movq	0(%rbp), %rax
	leaq	-1(%rax), %rdx
.L343:
	movq	8(%rbp), %rax
	movq	%r12, %rdi
	movb	$0, (%rax,%rdx)
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L365:
	.cfi_restore_state
	movq	0(%rbp), %rax
	leaq	-1(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L364:
	xorl	%r12d, %r12d
	jmp	.L343
.L366:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB28:
	call	printf@PLT
.LEHE28:
	movl	$1, %edi
	call	exit@PLT
.L346:
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	jne	.L352
	jmp	.L350
.L353:
	movq	%rax, %rbx
	jmp	.L349
	.section	.gcc_except_table
.LLSDA1742:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1742-.LLSDACSB1742
.LLSDACSB1742:
	.uleb128 .LEHB27-.LFB1742
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L353-.LFB1742
	.uleb128 0
	.uleb128 .LEHB28-.LFB1742
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE1742:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1742
	.type	_ZN3neo6stringaSESt16initializer_listIdE.cold, @function
_ZN3neo6stringaSESt16initializer_listIdE.cold:
.LFSB1742:
.L349:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.LEHE29:
	.cfi_endproc
.LFE1742:
	.section	.gcc_except_table
.LLSDAC1742:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1742-.LLSDACSBC1742
.LLSDACSBC1742:
	.uleb128 .LEHB29-.LCOLDB37
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSEC1742:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringaSESt16initializer_listIdE, .-_ZN3neo6stringaSESt16initializer_listIdE
	.section	.text.unlikely
	.size	_ZN3neo6stringaSESt16initializer_listIdE.cold, .-_ZN3neo6stringaSESt16initializer_listIdE.cold
.LCOLDE37:
	.text
.LHOTE37:
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"neo::string-=: Memory allocation failed\nParams: Characters(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIcE
	.type	_ZN3neo6stringmIESt16initializer_listIcE, @function
_ZN3neo6stringmIESt16initializer_listIcE:
.LFB1743:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	jne	.L380
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L380:
	.cfi_restore_state
	movq	%rsi, %r12
	movq	(%rdi), %rsi
	movq	%rdx, %rbp
	addq	%rdx, %rsi
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L381
	movq	(%rbx), %rax
	leaq	-1(%rax), %rdx
	cmpq	%rbp, %rdx
	jb	.L370
	subq	%rbp, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, -1(%rsi,%rax)
	leaq	-2(%rax), %rdx
	subq	%rbp, %rax
	subq	$2, %rax
	cmpq	%rbp, %rdx
	jb	.L373
	.p2align 4,,10
	.p2align 3
.L372:
	movq	8(%rbx), %rdx
	movzbl	(%rdx,%rax), %ecx
	addq	%rbp, %rdx
	movb	%cl, (%rdx,%rax)
	subq	$1, %rax
	jnb	.L372
.L373:
	movq	8(%rbx), %rsi
.L370:
	movq	%rbp, %rdx
	movq	%r12, %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L381:
	.cfi_restore_state
	leaq	.LC38(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1743:
	.size	_ZN3neo6stringmIESt16initializer_listIcE, .-_ZN3neo6stringmIESt16initializer_listIcE
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"neo::string-=: Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n"
	.align 8
.LC40:
	.string	"neo::string-=: Literals[%lld] must not be Self\nParams: Literals(length): %ld\n"
	.align 8
.LC41:
	.string	"neo::string-=: Memory allocation failed\nParams: Literals(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIPKcE
	.type	_ZN3neo6stringmIESt16initializer_listIPKcE, @function
_ZN3neo6stringmIESt16initializer_listIPKcE:
.LFB1744:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testq	%rdx, %rdx
	je	.L398
	movq	(%rdi), %rax
	movq	%rsi, %r13
	movq	%rdx, %r12
	xorl	%ebx, %ebx
	movq	%rax, 8(%rsp)
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L386:
	movq	0(%r13,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L400
	movq	8(%rbp), %r14
	cmpq	%r14, %rdi
	je	.L401
	call	strlen@PLT
	addq	$1, %rbx
	addq	%rax, %r15
	movq	%r15, 0(%rbp)
	cmpq	%rbx, %r12
	jne	.L386
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L402
	movq	0(%rbp), %rax
	movq	8(%rsp), %rbx
	movq	%rax, %rsi
	leaq	-1(%rax), %rcx
	subq	%rbx, %rsi
	cmpq	%rsi, %rcx
	jb	.L388
	addq	%rbx, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	movq	0(%rbp), %rcx
	subq	$2, %rax
	movq	%rcx, %rdx
	subq	%rbx, %rdx
	cmpq	%rdx, %rax
	jb	.L388
	.p2align 4,,10
	.p2align 3
.L389:
	movq	8(%rsp), %rbx
	movq	8(%rbp), %rsi
	leaq	(%rax,%rbx), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	movq	0(%rbp), %rcx
	subq	$1, %rax
	movq	%rcx, %rdx
	subq	%rbx, %rdx
	cmpq	%rdx, %rax
	jnb	.L389
.L388:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L392:
	movq	0(%r13,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.L403
	movq	%rdi, 8(%rsp)
	addq	$1, %r15
	call	strlen@PLT
	movq	8(%rbp), %rsi
	movq	8(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rax, %rdx
	addq	%r14, %rsi
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	cmpq	%r15, %r12
	jne	.L392
.L398:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L402:
	.cfi_restore_state
	leaq	.LC41(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L403:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L401:
	leaq	.LC40(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L400:
	leaq	.LC39(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1744:
	.size	_ZN3neo6stringmIESt16initializer_listIPKcE, .-_ZN3neo6stringmIESt16initializer_listIPKcE
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"neo::string-=: Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n"
	.align 8
.LC43:
	.string	"neo::string-=: Strings[%lld] must not be Self\nParams: Strings(length): %ld\n"
	.align 8
.LC44:
	.string	"neo::string-=: Memory allocation failed\nParams: Strings(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIPS0_E
	.type	_ZN3neo6stringmIESt16initializer_listIPS0_E, @function
_ZN3neo6stringmIESt16initializer_listIPS0_E:
.LFB1745:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdx, %rdx
	je	.L405
	movq	(%rdi), %r13
	movq	%rsi, %rbp
	movq	%rdx, %r12
	xorl	%esi, %esi
	movq	%r13, %rdx
	.p2align 4,,10
	.p2align 3
.L408:
	movq	0(%rbp,%rsi,8), %rax
	testq	%rax, %rax
	je	.L423
	cmpq	%rbx, %rax
	je	.L424
	movq	(%rax), %rax
	addq	$1, %rsi
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%rsi, %r12
	jne	.L408
	movq	8(%rbx), %rdi
	movq	%rdx, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L425
	movq	(%rbx), %rax
	movq	%rax, %rsi
	leaq	-1(%rax), %rcx
	subq	%r13, %rsi
	cmpq	%rsi, %rcx
	jb	.L410
	addq	%r13, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L422
	.p2align 4,,10
	.p2align 3
.L411:
	movq	8(%rbx), %rsi
	leaq	(%rax,%r13), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L422:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%r13, %rdx
	cmpq	%rdx, %rax
	jnb	.L411
	movq	8(%rbx), %rdx
.L410:
	leaq	-8(%rbp,%r12,8), %r13
	xorl	%r12d, %r12d
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L426:
	movq	8(%rbx), %rdx
	addq	$8, %rbp
.L413:
	movq	0(%rbp), %rcx
	leaq	(%rdx,%r12), %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdi
	subq	$1, %rax
	movq	%rax, %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%r12,%rax), %r12
	cmpq	%rbp, %r13
	jne	.L426
.L405:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L424:
	.cfi_restore_state
	leaq	.LC43(%rip), %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L423:
	leaq	.LC42(%rip), %rdi
	movq	%r12, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L425:
	leaq	.LC44(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1745:
	.size	_ZN3neo6stringmIESt16initializer_listIPS0_E, .-_ZN3neo6stringmIESt16initializer_listIPS0_E
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"neo::string-=: Memory allocation failed\nParams: Numbers(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB46:
	.text
.LHOTB46:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIyE
	.type	_ZN3neo6stringmIESt16initializer_listIyE, @function
_ZN3neo6stringmIESt16initializer_listIyE:
.LFB1746:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1746
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L448
.L428:
	movq	%r13, %rdi
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L448:
	.cfi_restore_state
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r15
	movq	%rdx, %r12
	call	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L429
	movq	(%rbx), %rbp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L430:
	movq	(%r15,%r14,8), %rdi
.LEHB30:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, 0(%r13,%r14,8)
	movq	(%rbx), %rdx
	addq	$1, %r14
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, (%rbx)
	cmpq	%r12, %r14
	jne	.L430
	movq	8(%rbx), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L449
	movq	(%rbx), %rdx
	movq	%rdx, %rsi
	leaq	-1(%rdx), %rcx
	subq	%rbp, %rsi
	cmpq	%rsi, %rcx
	jb	.L432
	addq	%rbp, %rcx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L433:
	movq	8(%rbx), %rsi
	leaq	0(%rbp,%rax), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L447:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%rbp, %rdx
	cmpq	%rdx, %rax
	jnb	.L433
	movq	8(%rbx), %rax
.L432:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L450:
	movq	8(%rbx), %rax
.L435:
	movq	0(%r13,%r14,8), %rbp
	leaq	(%rax,%r15), %rsi
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE30:
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r14
	jne	.L450
	jmp	.L428
.L429:
	leaq	.LC20(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB31:
	call	printf@PLT
.LEHE31:
	movl	$1, %edi
	call	exit@PLT
.L449:
	movq	%r14, %rsi
	leaq	.LC45(%rip), %rdi
.LEHB32:
	call	printf@PLT
.LEHE32:
	movl	$1, %edi
	call	exit@PLT
.L438:
	movq	%rax, %rbx
	jmp	.L436
	.section	.gcc_except_table
.LLSDA1746:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1746-.LLSDACSB1746
.LLSDACSB1746:
	.uleb128 .LEHB30-.LFB1746
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L438-.LFB1746
	.uleb128 0
	.uleb128 .LEHB31-.LFB1746
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB1746
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L438-.LFB1746
	.uleb128 0
.LLSDACSE1746:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1746
	.type	_ZN3neo6stringmIESt16initializer_listIyE.cold, @function
_ZN3neo6stringmIESt16initializer_listIyE.cold:
.LFSB1746:
.L436:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB33:
	call	_Unwind_Resume@PLT
.LEHE33:
	.cfi_endproc
.LFE1746:
	.section	.gcc_except_table
.LLSDAC1746:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1746-.LLSDACSBC1746
.LLSDACSBC1746:
	.uleb128 .LEHB33-.LCOLDB46
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSEC1746:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringmIESt16initializer_listIyE, .-_ZN3neo6stringmIESt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3neo6stringmIESt16initializer_listIyE.cold, .-_ZN3neo6stringmIESt16initializer_listIyE.cold
.LCOLDE46:
	.text
.LHOTE46:
	.section	.text.unlikely
	.align 2
.LCOLDB47:
	.text
.LHOTB47:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIxE
	.type	_ZN3neo6stringmIESt16initializer_listIxE, @function
_ZN3neo6stringmIESt16initializer_listIxE:
.LFB1747:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1747
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L472
.L452:
	movq	%r13, %rdi
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L472:
	.cfi_restore_state
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r15
	movq	%rdx, %r12
	call	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L453
	movq	(%rbx), %rbp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L454:
	movq	(%r15,%r14,8), %rdi
.LEHB34:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, 0(%r13,%r14,8)
	movq	(%rbx), %rdx
	addq	$1, %r14
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, (%rbx)
	cmpq	%r12, %r14
	jne	.L454
	movq	8(%rbx), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L473
	movq	(%rbx), %rdx
	movq	%rdx, %rsi
	leaq	-1(%rdx), %rcx
	subq	%rbp, %rsi
	cmpq	%rsi, %rcx
	jb	.L456
	addq	%rbp, %rcx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L457:
	movq	8(%rbx), %rsi
	leaq	0(%rbp,%rax), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L471:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%rbp, %rdx
	cmpq	%rdx, %rax
	jnb	.L457
	movq	8(%rbx), %rax
.L456:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L459
	.p2align 4,,10
	.p2align 3
.L474:
	movq	8(%rbx), %rax
.L459:
	movq	0(%r13,%r14,8), %rbp
	leaq	(%rax,%r15), %rsi
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE34:
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r14
	jne	.L474
	jmp	.L452
.L453:
	leaq	.LC20(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB35:
	call	printf@PLT
.LEHE35:
	movl	$1, %edi
	call	exit@PLT
.L473:
	movq	%r14, %rsi
	leaq	.LC45(%rip), %rdi
.LEHB36:
	call	printf@PLT
.LEHE36:
	movl	$1, %edi
	call	exit@PLT
.L462:
	movq	%rax, %rbx
	jmp	.L460
	.section	.gcc_except_table
.LLSDA1747:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1747-.LLSDACSB1747
.LLSDACSB1747:
	.uleb128 .LEHB34-.LFB1747
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L462-.LFB1747
	.uleb128 0
	.uleb128 .LEHB35-.LFB1747
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB1747
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L462-.LFB1747
	.uleb128 0
.LLSDACSE1747:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1747
	.type	_ZN3neo6stringmIESt16initializer_listIxE.cold, @function
_ZN3neo6stringmIESt16initializer_listIxE.cold:
.LFSB1747:
.L460:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB37:
	call	_Unwind_Resume@PLT
.LEHE37:
	.cfi_endproc
.LFE1747:
	.section	.gcc_except_table
.LLSDAC1747:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1747-.LLSDACSBC1747
.LLSDACSBC1747:
	.uleb128 .LEHB37-.LCOLDB47
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSEC1747:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringmIESt16initializer_listIxE, .-_ZN3neo6stringmIESt16initializer_listIxE
	.section	.text.unlikely
	.size	_ZN3neo6stringmIESt16initializer_listIxE.cold, .-_ZN3neo6stringmIESt16initializer_listIxE.cold
.LCOLDE47:
	.text
.LHOTE47:
	.section	.text.unlikely
	.align 2
.LCOLDB48:
	.text
.LHOTB48:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringmIESt16initializer_listIdE
	.type	_ZN3neo6stringmIESt16initializer_listIdE, @function
_ZN3neo6stringmIESt16initializer_listIdE:
.LFB1748:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1748
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L496
.L476:
	movq	%r13, %rdi
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L496:
	.cfi_restore_state
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r15
	movq	%rdx, %r12
	call	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L477
	movq	(%rbx), %rbp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L478:
	movsd	(%r15,%r14,8), %xmm0
.LEHB38:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, 0(%r13,%r14,8)
	movq	(%rbx), %rdx
	addq	$1, %r14
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, (%rbx)
	cmpq	%r12, %r14
	jne	.L478
	movq	8(%rbx), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L497
	movq	(%rbx), %rdx
	movq	%rdx, %rsi
	leaq	-1(%rdx), %rcx
	subq	%rbp, %rsi
	cmpq	%rsi, %rcx
	jb	.L480
	addq	%rbp, %rcx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L481:
	movq	8(%rbx), %rsi
	leaq	0(%rbp,%rax), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L495:
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	subq	%rbp, %rdx
	cmpq	%rdx, %rax
	jnb	.L481
	movq	8(%rbx), %rax
.L480:
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.L483
	.p2align 4,,10
	.p2align 3
.L498:
	movq	8(%rbx), %rax
.L483:
	movq	0(%r13,%r14,8), %rbp
	leaq	(%rax,%r15), %rsi
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE38:
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdi
	addq	$1, %r14
	leaq	-1(%r15,%rax), %r15
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r14
	jne	.L498
	jmp	.L476
.L477:
	leaq	.LC20(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB39:
	call	printf@PLT
.LEHE39:
	movl	$1, %edi
	call	exit@PLT
.L497:
	movq	%r14, %rsi
	leaq	.LC45(%rip), %rdi
.LEHB40:
	call	printf@PLT
.LEHE40:
	movl	$1, %edi
	call	exit@PLT
.L486:
	movq	%rax, %rbx
	jmp	.L484
	.section	.gcc_except_table
.LLSDA1748:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1748-.LLSDACSB1748
.LLSDACSB1748:
	.uleb128 .LEHB38-.LFB1748
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L486-.LFB1748
	.uleb128 0
	.uleb128 .LEHB39-.LFB1748
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB1748
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L486-.LFB1748
	.uleb128 0
.LLSDACSE1748:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1748
	.type	_ZN3neo6stringmIESt16initializer_listIdE.cold, @function
_ZN3neo6stringmIESt16initializer_listIdE.cold:
.LFSB1748:
.L484:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB41:
	call	_Unwind_Resume@PLT
.LEHE41:
	.cfi_endproc
.LFE1748:
	.section	.gcc_except_table
.LLSDAC1748:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1748-.LLSDACSBC1748
.LLSDACSBC1748:
	.uleb128 .LEHB41-.LCOLDB48
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSEC1748:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringmIESt16initializer_listIdE, .-_ZN3neo6stringmIESt16initializer_listIdE
	.section	.text.unlikely
	.size	_ZN3neo6stringmIESt16initializer_listIdE.cold, .-_ZN3neo6stringmIESt16initializer_listIdE.cold
.LCOLDE48:
	.text
.LHOTE48:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIcE
	.type	_ZN3neo6stringpLESt16initializer_listIcE, @function
_ZN3neo6stringpLESt16initializer_listIcE:
.LFB1749:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	jne	.L506
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L506:
	.cfi_restore_state
	movq	%rsi, %r12
	movq	(%rdi), %rsi
	movq	%rdx, %rbp
	addq	%rdx, %rsi
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L507
	movq	%rbp, %rdx
	movq	%r12, %rdi
	notq	%rdx
	addq	(%rbx), %rdx
	leaq	(%rax,%rdx), %rsi
	movq	%rbp, %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L507:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	movq	%rbp, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1749:
	.size	_ZN3neo6stringpLESt16initializer_listIcE, .-_ZN3neo6stringpLESt16initializer_listIcE
	.section	.rodata.str1.8
	.align 8
.LC49:
	.string	"neo::string+=: Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n"
	.align 8
.LC50:
	.string	"neo::string+=: Literals[%lld] must not be Self\nParams: Literals(length): %ld\n"
	.align 8
.LC51:
	.string	"neo::string+=: Memory allocation failed\nParams: Literals(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIPKcE
	.type	_ZN3neo6stringpLESt16initializer_listIPKcE, @function
_ZN3neo6stringpLESt16initializer_listIPKcE:
.LFB1750:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testq	%rdx, %rdx
	je	.L509
	movq	(%rdi), %rax
	movq	%rsi, %r13
	movq	%rdx, %r12
	xorl	%ebx, %ebx
	movq	%rax, 8(%rsp)
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L512:
	movq	0(%r13,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L522
	movq	8(%rbp), %r14
	cmpq	%r14, %rdi
	je	.L523
	call	strlen@PLT
	addq	$1, %rbx
	addq	%rax, %r15
	movq	%r15, 0(%rbp)
	cmpq	%rbx, %r12
	jne	.L512
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L524
	movq	8(%rsp), %r14
	xorl	%r15d, %r15d
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L515:
	movq	0(%r13,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.L525
	movq	%rdi, 8(%rsp)
	addq	$1, %r15
	call	strlen@PLT
	movq	8(%rbp), %rsi
	movq	8(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rax, %rdx
	addq	%r14, %rsi
	addq	%rbx, %r14
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	cmpq	%r15, %r12
	jne	.L515
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movb	$0, -1(%rdx,%rax)
.L509:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L524:
	.cfi_restore_state
	leaq	.LC51(%rip), %rdi
	movq	%r12, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L525:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L523:
	leaq	.LC50(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L522:
	leaq	.LC49(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1750:
	.size	_ZN3neo6stringpLESt16initializer_listIPKcE, .-_ZN3neo6stringpLESt16initializer_listIPKcE
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"neo::string+=: Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n"
	.align 8
.LC53:
	.string	"neo::string+=: Strings[%lld] must not be Self\nParams: Strings(length): %ld\n"
	.align 8
.LC54:
	.string	"neo::string+=: Memory allocation failed\nParams: Strings(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIPS0_E
	.type	_ZN3neo6stringpLESt16initializer_listIPS0_E, @function
_ZN3neo6stringpLESt16initializer_listIPS0_E:
.LFB1751:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdx, %rdx
	je	.L527
	movq	(%rdi), %r13
	movq	%rsi, %rbx
	movq	%rdx, %r12
	xorl	%esi, %esi
	movq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L530:
	movq	(%rbx,%rsi,8), %rax
	testq	%rax, %rax
	je	.L539
	cmpq	%rbp, %rax
	je	.L540
	movq	(%rax), %rax
	addq	$1, %rsi
	leaq	-1(%rcx,%rax), %rcx
	movq	%rcx, 0(%rbp)
	cmpq	%rsi, %r12
	jne	.L530
	movq	8(%rbp), %rdi
	movq	%rcx, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L541
	subq	$1, %r13
	leaq	-8(%rbx,%r12,8), %r12
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L542:
	movq	8(%rbp), %rax
	addq	$8, %rbx
.L533:
	movq	(%rbx), %rcx
	leaq	(%rax,%r13), %rsi
	movq	(%rcx), %rdx
	movq	8(%rcx), %rdi
	subq	$1, %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	movq	(%rax), %rax
	leaq	-1(%r13,%rax), %r13
	cmpq	%rbx, %r12
	jne	.L542
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movb	$0, -1(%rdx,%rax)
.L527:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L540:
	.cfi_restore_state
	leaq	.LC53(%rip), %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L539:
	leaq	.LC52(%rip), %rdi
	movq	%r12, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L541:
	leaq	.LC54(%rip), %rdi
	movq	%r12, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1751:
	.size	_ZN3neo6stringpLESt16initializer_listIPS0_E, .-_ZN3neo6stringpLESt16initializer_listIPS0_E
	.section	.rodata.str1.8
	.align 8
.LC55:
	.string	"neo::string+=: Memory allocation failed\nParams: Numbers(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB56:
	.text
.LHOTB56:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIyE
	.type	_ZN3neo6stringpLESt16initializer_listIyE, @function
_ZN3neo6stringpLESt16initializer_listIyE:
.LFB1752:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1752
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L558
.L544:
	movq	%r14, %rdi
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L558:
	.cfi_restore_state
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r15
	movq	%rdx, %r13
	call	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L545
	movq	0(%rbp), %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L546:
	movq	(%r15,%rbx,8), %rdi
.LEHB42:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%r14,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, 0(%rbp)
	cmpq	%r13, %rbx
	jne	.L546
	movq	8(%rbp), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L559
	subq	$1, %r12
	xorl	%r15d, %r15d
	jmp	.L549
	.p2align 4,,10
	.p2align 3
.L560:
	movq	8(%rbp), %rax
.L549:
	movq	(%r14,%r15,8), %rbx
	leaq	(%rax,%r12), %rsi
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE42:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r15
	leaq	-1(%r12,%rax), %r12
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r13, %r15
	jne	.L560
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movb	$0, -1(%rdx,%rax)
	jmp	.L544
.L545:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB43:
	call	printf@PLT
.LEHE43:
	movl	$1, %edi
	call	exit@PLT
.L559:
	movq	%rbx, %rsi
	leaq	.LC55(%rip), %rdi
.LEHB44:
	call	printf@PLT
.LEHE44:
	movl	$1, %edi
	call	exit@PLT
.L552:
	movq	%rax, %rbx
	jmp	.L550
	.section	.gcc_except_table
.LLSDA1752:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1752-.LLSDACSB1752
.LLSDACSB1752:
	.uleb128 .LEHB42-.LFB1752
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L552-.LFB1752
	.uleb128 0
	.uleb128 .LEHB43-.LFB1752
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB1752
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L552-.LFB1752
	.uleb128 0
.LLSDACSE1752:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1752
	.type	_ZN3neo6stringpLESt16initializer_listIyE.cold, @function
_ZN3neo6stringpLESt16initializer_listIyE.cold:
.LFSB1752:
.L550:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB45:
	call	_Unwind_Resume@PLT
.LEHE45:
	.cfi_endproc
.LFE1752:
	.section	.gcc_except_table
.LLSDAC1752:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1752-.LLSDACSBC1752
.LLSDACSBC1752:
	.uleb128 .LEHB45-.LCOLDB56
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSEC1752:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringpLESt16initializer_listIyE, .-_ZN3neo6stringpLESt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3neo6stringpLESt16initializer_listIyE.cold, .-_ZN3neo6stringpLESt16initializer_listIyE.cold
.LCOLDE56:
	.text
.LHOTE56:
	.section	.text.unlikely
	.align 2
.LCOLDB57:
	.text
.LHOTB57:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIxE
	.type	_ZN3neo6stringpLESt16initializer_listIxE, @function
_ZN3neo6stringpLESt16initializer_listIxE:
.LFB1753:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1753
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L576
.L562:
	movq	%r14, %rdi
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L576:
	.cfi_restore_state
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r15
	movq	%rdx, %r13
	call	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L563
	movq	0(%rbp), %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L564:
	movq	(%r15,%rbx,8), %rdi
.LEHB46:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%r14,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, 0(%rbp)
	cmpq	%r13, %rbx
	jne	.L564
	movq	8(%rbp), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L577
	subq	$1, %r12
	xorl	%r15d, %r15d
	jmp	.L567
	.p2align 4,,10
	.p2align 3
.L578:
	movq	8(%rbp), %rax
.L567:
	movq	(%r14,%r15,8), %rbx
	leaq	(%rax,%r12), %rsi
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE46:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r15
	leaq	-1(%r12,%rax), %r12
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r13, %r15
	jne	.L578
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movb	$0, -1(%rdx,%rax)
	jmp	.L562
.L563:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB47:
	call	printf@PLT
.LEHE47:
	movl	$1, %edi
	call	exit@PLT
.L577:
	movq	%rbx, %rsi
	leaq	.LC55(%rip), %rdi
.LEHB48:
	call	printf@PLT
.LEHE48:
	movl	$1, %edi
	call	exit@PLT
.L570:
	movq	%rax, %rbx
	jmp	.L568
	.section	.gcc_except_table
.LLSDA1753:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1753-.LLSDACSB1753
.LLSDACSB1753:
	.uleb128 .LEHB46-.LFB1753
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L570-.LFB1753
	.uleb128 0
	.uleb128 .LEHB47-.LFB1753
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB1753
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L570-.LFB1753
	.uleb128 0
.LLSDACSE1753:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1753
	.type	_ZN3neo6stringpLESt16initializer_listIxE.cold, @function
_ZN3neo6stringpLESt16initializer_listIxE.cold:
.LFSB1753:
.L568:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB49:
	call	_Unwind_Resume@PLT
.LEHE49:
	.cfi_endproc
.LFE1753:
	.section	.gcc_except_table
.LLSDAC1753:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1753-.LLSDACSBC1753
.LLSDACSBC1753:
	.uleb128 .LEHB49-.LCOLDB57
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSEC1753:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringpLESt16initializer_listIxE, .-_ZN3neo6stringpLESt16initializer_listIxE
	.section	.text.unlikely
	.size	_ZN3neo6stringpLESt16initializer_listIxE.cold, .-_ZN3neo6stringpLESt16initializer_listIxE.cold
.LCOLDE57:
	.text
.LHOTE57:
	.section	.text.unlikely
	.align 2
.LCOLDB58:
	.text
.LHOTB58:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringpLESt16initializer_listIdE
	.type	_ZN3neo6stringpLESt16initializer_listIdE, @function
_ZN3neo6stringpLESt16initializer_listIdE:
.LFB1754:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1754
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rdx, %rdx
	jne	.L594
.L580:
	movq	%r14, %rdi
	call	free@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L594:
	.cfi_restore_state
	leaq	0(,%rdx,8), %rdi
	movq	%rsi, %r15
	movq	%rdx, %r13
	call	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L581
	movq	0(%rbp), %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L582:
	movsd	(%r15,%rbx,8), %xmm0
.LEHB50:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%r14,%rbx,8)
	movq	0(%rbp), %rdx
	addq	$1, %rbx
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, 0(%rbp)
	cmpq	%r13, %rbx
	jne	.L582
	movq	8(%rbp), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L595
	subq	$1, %r12
	xorl	%r15d, %r15d
	jmp	.L585
	.p2align 4,,10
	.p2align 3
.L596:
	movq	8(%rbp), %rax
.L585:
	movq	(%r14,%r15,8), %rbx
	leaq	(%rax,%r12), %rsi
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
.LEHE50:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	addq	$1, %r15
	leaq	-1(%r12,%rax), %r12
	call	free@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r13, %r15
	jne	.L596
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movb	$0, -1(%rdx,%rax)
	jmp	.L580
.L581:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB51:
	call	printf@PLT
.LEHE51:
	movl	$1, %edi
	call	exit@PLT
.L595:
	movq	%rbx, %rsi
	leaq	.LC55(%rip), %rdi
.LEHB52:
	call	printf@PLT
.LEHE52:
	movl	$1, %edi
	call	exit@PLT
.L588:
	movq	%rax, %rbx
	jmp	.L586
	.section	.gcc_except_table
.LLSDA1754:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1754-.LLSDACSB1754
.LLSDACSB1754:
	.uleb128 .LEHB50-.LFB1754
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L588-.LFB1754
	.uleb128 0
	.uleb128 .LEHB51-.LFB1754
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB1754
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L588-.LFB1754
	.uleb128 0
.LLSDACSE1754:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1754
	.type	_ZN3neo6stringpLESt16initializer_listIdE.cold, @function
_ZN3neo6stringpLESt16initializer_listIdE.cold:
.LFSB1754:
.L586:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB53:
	call	_Unwind_Resume@PLT
.LEHE53:
	.cfi_endproc
.LFE1754:
	.section	.gcc_except_table
.LLSDAC1754:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1754-.LLSDACSBC1754
.LLSDACSBC1754:
	.uleb128 .LEHB53-.LCOLDB58
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSEC1754:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6stringpLESt16initializer_listIdE, .-_ZN3neo6stringpLESt16initializer_listIdE
	.section	.text.unlikely
	.size	_ZN3neo6stringpLESt16initializer_listIdE.cold, .-_ZN3neo6stringpLESt16initializer_listIdE.cold
.LCOLDE58:
	.text
.LHOTE58:
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEc
	.type	_ZN3neo6stringeqEc, @function
_ZN3neo6stringeqEc:
.LFB1755:
	.cfi_startproc
	xorl	%eax, %eax
	cmpq	$2, (%rdi)
	je	.L600
	ret
	.p2align 4,,10
	.p2align 3
.L600:
	movq	8(%rdi), %rax
	cmpb	%sil, (%rax)
	sete	%al
	ret
	.cfi_endproc
.LFE1755:
	.size	_ZN3neo6stringeqEc, .-_ZN3neo6stringeqEc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEPKc
	.type	_ZN3neo6stringeqEPKc, @function
_ZN3neo6stringeqEPKc:
.LFB1756:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L603
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %r12
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	call	strlen@PLT
	addq	$1, %rax
	cmpq	%rax, %r12
	je	.L610
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L610:
	.cfi_restore_state
	movq	8(%rbp), %rdi
	cmpq	%rbx, %rdi
	je	.L605
	movq	%r12, %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6memory7CompareEPKvS2_y@PLT
	.p2align 4,,10
	.p2align 3
.L603:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L605:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	popq	%rbx
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1756:
	.size	_ZN3neo6stringeqEPKc, .-_ZN3neo6stringeqEPKc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEPS0_
	.type	_ZN3neo6stringeqEPS0_, @function
_ZN3neo6stringeqEPS0_:
.LFB1757:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L614
	movq	(%rdi), %rdx
	cmpq	(%rsi), %rdx
	jne	.L614
	cmpq	%rdi, %rsi
	je	.L615
	movq	8(%rsi), %rsi
	movq	8(%rdi), %rdi
	jmp	_ZN3neo6memory7CompareEPKvS2_y@PLT
	.p2align 4,,10
	.p2align 3
.L614:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L615:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE1757:
	.size	_ZN3neo6stringeqEPS0_, .-_ZN3neo6stringeqEPS0_
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEy
	.type	_ZN3neo6stringeqEy, @function
_ZN3neo6stringeqEy:
.LFB1758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	(%rax), %rdx
	je	.L617
	movq	8(%rax), %rdi
	xorl	%ebp, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L617:
	.cfi_restore_state
	movq	8(%rax), %rsi
	movq	8(%rbp), %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	movq	8(%rbx), %rdi
	movl	%eax, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1758:
	.size	_ZN3neo6stringeqEy, .-_ZN3neo6stringeqEy
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEx
	.type	_ZN3neo6stringeqEx, @function
_ZN3neo6stringeqEx:
.LFB1759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	(%rax), %rdx
	je	.L621
	movq	8(%rax), %rdi
	xorl	%ebp, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L621:
	.cfi_restore_state
	movq	8(%rax), %rsi
	movq	8(%rbp), %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	movq	8(%rbx), %rdi
	movl	%eax, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1759:
	.size	_ZN3neo6stringeqEx, .-_ZN3neo6stringeqEx
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringeqEd
	.type	_ZN3neo6stringeqEd, @function
_ZN3neo6stringeqEd:
.LFB1760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	(%rax), %rdx
	je	.L625
	movq	8(%rax), %rdi
	xorl	%ebp, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L625:
	.cfi_restore_state
	movq	8(%rax), %rsi
	movq	8(%rbp), %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	movq	8(%rbx), %rdi
	movl	%eax, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1760:
	.size	_ZN3neo6stringeqEd, .-_ZN3neo6stringeqEd
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEc
	.type	_ZN3neo6stringneEc, @function
_ZN3neo6stringneEc:
.LFB1761:
	.cfi_startproc
	cmpq	$2, (%rdi)
	movl	$1, %eax
	je	.L631
	ret
	.p2align 4,,10
	.p2align 3
.L631:
	movq	8(%rdi), %rax
	cmpb	%sil, (%rax)
	setne	%al
	ret
	.cfi_endproc
.LFE1761:
	.size	_ZN3neo6stringneEc, .-_ZN3neo6stringneEc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEPKc
	.type	_ZN3neo6stringneEPKc, @function
_ZN3neo6stringneEPKc:
.LFB1762:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L634
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %r12
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movl	$1, %eax
	cmpq	%r12, %rdx
	jne	.L632
	movq	8(%rbp), %rdi
	xorl	%eax, %eax
	cmpq	%rdi, %rbx
	je	.L632
	movq	%rbx, %rsi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	xorl	$1, %eax
.L632:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L634:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE1762:
	.size	_ZN3neo6stringneEPKc, .-_ZN3neo6stringneEPKc
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEPS0_
	.type	_ZN3neo6stringneEPS0_, @function
_ZN3neo6stringneEPS0_:
.LFB1763:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L643
	movq	(%rdi), %rdx
	movl	$1, %eax
	cmpq	(%rsi), %rdx
	jne	.L647
	xorl	%eax, %eax
	cmpq	%rsi, %rdi
	je	.L647
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	8(%rsi), %rsi
	movq	8(%rdi), %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	xorl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L647:
	ret
	.p2align 4,,10
	.p2align 3
.L643:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE1763:
	.size	_ZN3neo6stringneEPS0_, .-_ZN3neo6stringneEPS0_
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEy
	.type	_ZN3neo6stringneEy, @function
_ZN3neo6stringneEy:
.LFB1764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	(%rax), %rdx
	je	.L651
	movq	8(%rax), %rdi
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L651:
	.cfi_restore_state
	movq	8(%rax), %rsi
	movq	8(%rbp), %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	movq	8(%rbx), %rdi
	movl	%eax, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	movl	%ebp, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1764:
	.size	_ZN3neo6stringneEy, .-_ZN3neo6stringneEy
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEx
	.type	_ZN3neo6stringneEx, @function
_ZN3neo6stringneEx:
.LFB1765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	(%rax), %rdx
	je	.L655
	movq	8(%rax), %rdi
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L655:
	.cfi_restore_state
	movq	8(%rax), %rsi
	movq	8(%rbp), %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	movq	8(%rbx), %rdi
	movl	%eax, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	movl	%ebp, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1765:
	.size	_ZN3neo6stringneEx, .-_ZN3neo6stringneEx
	.align 2
	.p2align 4
	.globl	_ZN3neo6stringneEd
	.type	_ZN3neo6stringneEd, @function
_ZN3neo6stringneEd:
.LFB1766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	(%rax), %rdx
	je	.L659
	movq	8(%rax), %rdi
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L659:
	.cfi_restore_state
	movq	8(%rax), %rsi
	movq	8(%rbp), %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	movq	8(%rbx), %rdi
	movl	%eax, %ebp
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	movl	%ebp, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1766:
	.size	_ZN3neo6stringneEd, .-_ZN3neo6stringneEd
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"neo::string.Insert(): Index out of range\nParams: Index: %lld, Characters(length): %ld\n"
	.align 8
.LC60:
	.string	"neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Characters(length): %ld\n"
	.align 8
.LC61:
	.string	"neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Characters(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIcE
	.type	_ZN3neo6string6InsertEySt16initializer_listIcE, @function
_ZN3neo6string6InsertEySt16initializer_listIcE:
.LFB1767:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rsi
	cmpq	%r12, %rsi
	jb	.L677
	je	.L678
	movq	%rdi, %rbx
	testq	%rcx, %rcx
	jne	.L679
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L679:
	.cfi_restore_state
	addq	%rcx, %rsi
	movq	%rdx, %r13
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L680
	movq	(%rbx), %rdx
	leaq	(%r12,%rbp), %rdi
	leaq	-1(%rdx), %rcx
	cmpq	%rdi, %rcx
	jb	.L667
	subq	%rbp, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	subq	%rbp, %rdx
	subq	$2, %rdx
	cmpq	%rdi, %rax
	jb	.L670
	.p2align 4,,10
	.p2align 3
.L669:
	movq	8(%rbx), %rcx
	movzbl	(%rcx,%rdx), %esi
	subq	$1, %rdx
	movb	%sil, (%rcx,%rax)
	subq	$1, %rax
	cmpq	%rdi, %rax
	jnb	.L669
.L670:
	movq	8(%rbx), %rax
.L667:
	leaq	(%rax,%r12), %rsi
	movq	%rbp, %rdx
	movq	%r13, %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L678:
	.cfi_restore_state
	leaq	.LC60(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L677:
	leaq	.LC59(%rip), %rdi
	movq	%rcx, %rdx
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L680:
	leaq	.LC61(%rip), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1767:
	.size	_ZN3neo6string6InsertEySt16initializer_listIcE, .-_ZN3neo6string6InsertEySt16initializer_listIcE
	.section	.rodata.str1.8
	.align 8
.LC62:
	.string	"neo::string.Insert(): Index out of range\nParams: Index: %lld, Literals(length): %ld\n"
	.align 8
.LC63:
	.string	"neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Literals(length): %ld\n"
	.align 8
.LC64:
	.string	"neo::string.Insert(): Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n"
	.align 8
.LC65:
	.string	"neo::string.Insert(): Literals[%lld] must not be Self\nParams: Literals(length): %ld\n"
	.align 8
.LC66:
	.string	"neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Literals(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIPKcE
	.type	_ZN3neo6string6InsertEySt16initializer_listIPKcE, @function
_ZN3neo6string6InsertEySt16initializer_listIPKcE:
.LFB1768:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	(%rdi), %rax
	movq	%rcx, (%rsp)
	movq	%rax, 8(%rsp)
	cmpq	%rsi, %rax
	jb	.L701
	je	.L702
	cmpq	$0, (%rsp)
	movq	%rdi, %rbp
	je	.L699
	movq	%rdx, %r14
	movq	%rax, %r13
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L684:
	movq	(%r14,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L703
	movq	8(%rbp), %r15
	cmpq	%r15, %rdi
	je	.L704
	call	strlen@PLT
	addq	$1, %rbx
	addq	%rax, %r13
	movq	%r13, 0(%rbp)
	cmpq	%rbx, (%rsp)
	jne	.L684
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L705
	movq	0(%rbp), %rax
	movq	8(%rsp), %rdi
	leaq	(%rax,%r12), %rsi
	leaq	-1(%rax), %rcx
	subq	%rdi, %rsi
	cmpq	%rsi, %rcx
	jb	.L688
	addq	%rdi, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	movq	0(%rbp), %rcx
	subq	$2, %rax
	leaq	(%rcx,%r12), %rdx
	subq	%rdi, %rdx
	cmpq	%rdx, %rax
	jb	.L688
	.p2align 4,,10
	.p2align 3
.L689:
	movq	8(%rsp), %rbx
	movq	8(%rbp), %rsi
	leaq	(%rbx,%rax), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	movq	0(%rbp), %rcx
	subq	$1, %rax
	leaq	(%rcx,%r12), %rdx
	subq	%rbx, %rdx
	cmpq	%rdx, %rax
	jnb	.L689
.L688:
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L692:
	movq	(%r14,%r15,8), %r13
	testq	%r13, %r13
	je	.L706
	movq	%r13, %rdi
	addq	$1, %r15
	call	strlen@PLT
	movq	8(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rax, %rbx
	movq	%rax, %rdx
	addq	%r12, %rsi
	addq	%rbx, %r12
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	cmpq	%r15, (%rsp)
	jne	.L692
.L699:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L703:
	.cfi_restore_state
	movq	(%rsp), %rdx
	leaq	.LC64(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L704:
	movq	(%rsp), %rdx
	leaq	.LC65(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L705:
	movq	(%rsp), %rdx
	leaq	.LC66(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L706:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L702:
	movq	(%rsp), %rdx
	movq	8(%rsp), %rsi
	leaq	.LC63(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L701:
	leaq	.LC62(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1768:
	.size	_ZN3neo6string6InsertEySt16initializer_listIPKcE, .-_ZN3neo6string6InsertEySt16initializer_listIPKcE
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"neo::string.Insert(): Index out of range\nParams: Index: %lld, Strings(length): %ld\n"
	.align 8
.LC68:
	.string	"neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Strings(length): %ld\n"
	.align 8
.LC69:
	.string	"neo::string.Insert(): Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n"
	.align 8
.LC70:
	.string	"neo::string.Insert(): Strings[%lld] must not be Self\nParams: Strings(length): %ld\n"
	.align 8
.LC71:
	.string	"neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Strings(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIPS0_E
	.type	_ZN3neo6string6InsertEySt16initializer_listIPS0_E, @function
_ZN3neo6string6InsertEySt16initializer_listIPS0_E:
.LFB1769:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rdi), %r14
	cmpq	%rsi, %r14
	jb	.L728
	je	.L729
	movq	%rdi, %rbx
	testq	%rcx, %rcx
	je	.L710
	movq	%rdx, %rbp
	xorl	%esi, %esi
	movq	%r14, %rdx
	.p2align 4,,10
	.p2align 3
.L713:
	movq	0(%rbp,%rsi,8), %rax
	testq	%rax, %rax
	je	.L730
	cmpq	%rbx, %rax
	je	.L731
	movq	(%rax), %rax
	addq	$1, %rsi
	leaq	-1(%rdx,%rax), %rdx
	movq	%rdx, (%rbx)
	cmpq	%rsi, %r13
	jne	.L713
	movq	8(%rbx), %rdi
	movq	%rdx, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L732
	movq	(%rbx), %rax
	leaq	(%rax,%r12), %rsi
	leaq	-1(%rax), %rcx
	subq	%r14, %rsi
	cmpq	%rsi, %rcx
	jb	.L715
	addq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movb	%cl, -1(%rdx,%rax)
	subq	$2, %rax
	jmp	.L727
	.p2align 4,,10
	.p2align 3
.L716:
	movq	8(%rbx), %rsi
	leaq	(%r14,%rax), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L727:
	movq	(%rbx), %rcx
	leaq	(%r12,%rcx), %rdx
	subq	%r14, %rdx
	cmpq	%rdx, %rax
	jnb	.L716
	movq	8(%rbx), %rdx
.L715:
	leaq	-8(%rbp,%r13,8), %r13
	jmp	.L718
	.p2align 4,,10
	.p2align 3
.L733:
	movq	8(%rbx), %rdx
	addq	$8, %rbp
.L718:
	movq	0(%rbp), %rcx
	leaq	(%rdx,%r12), %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdi
	subq	$1, %rax
	movq	%rax, %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%r12,%rax), %r12
	cmpq	%rbp, %r13
	jne	.L733
.L710:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L730:
	.cfi_restore_state
	leaq	.LC69(%rip), %rdi
	movq	%r13, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L731:
	leaq	.LC70(%rip), %rdi
	movq	%r13, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L732:
	leaq	.LC71(%rip), %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L729:
	leaq	.LC68(%rip), %rdi
	movq	%rcx, %rdx
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L728:
	leaq	.LC67(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1769:
	.size	_ZN3neo6string6InsertEySt16initializer_listIPS0_E, .-_ZN3neo6string6InsertEySt16initializer_listIPS0_E
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"neo::string.Insert(): Index out of range\nParams: Index: %lld, Numbers(length): %ld\n"
	.align 8
.LC73:
	.string	"neo::string.Insert(): Illegal insertion after EOF\nParams: Index: %lld, Numbers(length): %ld\n"
	.align 8
.LC74:
	.string	"neo::string.Insert(): Memory allocation failed\nParams: Index: %lld, Numbers(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB75:
	.text
.LHOTB75:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIyE
	.type	_ZN3neo6string6InsertEySt16initializer_listIyE, @function
_ZN3neo6string6InsertEySt16initializer_listIyE:
.LFB1770:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1770
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, 8(%rsp)
	testq	%rcx, %rcx
	jne	.L735
	movq	(%rdi), %rax
	cmpq	%rsi, %rax
	jb	.L762
	xorl	%r14d, %r14d
	cmpq	%rax, %rsi
	je	.L739
.L740:
	movq	%r14, %rdi
	call	free@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L735:
	.cfi_restore_state
	leaq	0(,%rcx,8), %rdi
	call	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L763
	movq	(%rbx), %r15
	cmpq	%r12, %r15
	jb	.L736
	cmpq	%r15, %r12
	je	.L739
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L743:
	movq	8(%rsp), %rax
	movq	(%rax,%rbp,8), %rdi
.LEHB54:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%r14,%rbp,8)
	movq	(%rbx), %rdx
	addq	$1, %rbp
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, (%rbx)
	cmpq	%r13, %rbp
	jne	.L743
	movq	8(%rbx), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L764
	movq	(%rbx), %rdx
	leaq	(%rdx,%r12), %rsi
	leaq	-1(%rdx), %rcx
	subq	%r15, %rsi
	cmpq	%rsi, %rcx
	jb	.L745
	addq	%r15, %rcx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	jmp	.L761
	.p2align 4,,10
	.p2align 3
.L746:
	movq	8(%rbx), %rsi
	leaq	(%rax,%r15), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L761:
	movq	(%rbx), %rcx
	leaq	(%r12,%rcx), %rdx
	subq	%r15, %rdx
	cmpq	%rdx, %rax
	jnb	.L746
	movq	8(%rbx), %rax
.L745:
	xorl	%r15d, %r15d
	jmp	.L748
	.p2align 4,,10
	.p2align 3
.L765:
	movq	8(%rbx), %rax
.L748:
	movq	(%r14,%r15,8), %rbp
	leaq	(%rax,%r12), %rsi
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdi
	addq	$1, %r15
	leaq	-1(%r12,%rax), %r12
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r13, %r15
	jne	.L765
	jmp	.L740
.L762:
	xorl	%r14d, %r14d
.L736:
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	.LC72(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L742:
	movl	$1, %edi
	call	exit@PLT
.L739:
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	.LC73(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE54:
	jmp	.L742
.L763:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB55:
	call	printf@PLT
.LEHE55:
	movl	$1, %edi
	call	exit@PLT
.L764:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	leaq	.LC74(%rip), %rdi
.LEHB56:
	call	printf@PLT
.LEHE56:
	jmp	.L742
.L752:
	movq	%rax, %rbx
	jmp	.L749
	.section	.gcc_except_table
.LLSDA1770:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1770-.LLSDACSB1770
.LLSDACSB1770:
	.uleb128 .LEHB54-.LFB1770
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L752-.LFB1770
	.uleb128 0
	.uleb128 .LEHB55-.LFB1770
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB1770
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L752-.LFB1770
	.uleb128 0
.LLSDACSE1770:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1770
	.type	_ZN3neo6string6InsertEySt16initializer_listIyE.cold, @function
_ZN3neo6string6InsertEySt16initializer_listIyE.cold:
.LFSB1770:
.L749:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB57:
	call	_Unwind_Resume@PLT
.LEHE57:
	.cfi_endproc
.LFE1770:
	.section	.gcc_except_table
.LLSDAC1770:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1770-.LLSDACSBC1770
.LLSDACSBC1770:
	.uleb128 .LEHB57-.LCOLDB75
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSEC1770:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string6InsertEySt16initializer_listIyE, .-_ZN3neo6string6InsertEySt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3neo6string6InsertEySt16initializer_listIyE.cold, .-_ZN3neo6string6InsertEySt16initializer_listIyE.cold
.LCOLDE75:
	.text
.LHOTE75:
	.section	.text.unlikely
	.align 2
.LCOLDB76:
	.text
.LHOTB76:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIxE
	.type	_ZN3neo6string6InsertEySt16initializer_listIxE, @function
_ZN3neo6string6InsertEySt16initializer_listIxE:
.LFB1771:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1771
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, 8(%rsp)
	testq	%rcx, %rcx
	jne	.L767
	movq	(%rdi), %rax
	cmpq	%rsi, %rax
	jb	.L794
	xorl	%r14d, %r14d
	cmpq	%rax, %rsi
	je	.L771
.L772:
	movq	%r14, %rdi
	call	free@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L767:
	.cfi_restore_state
	leaq	0(,%rcx,8), %rdi
	call	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L795
	movq	(%rbx), %r15
	cmpq	%r12, %r15
	jb	.L768
	cmpq	%r15, %r12
	je	.L771
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L775:
	movq	8(%rsp), %rax
	movq	(%rax,%rbp,8), %rdi
.LEHB58:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%r14,%rbp,8)
	movq	(%rbx), %rdx
	addq	$1, %rbp
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, (%rbx)
	cmpq	%r13, %rbp
	jne	.L775
	movq	8(%rbx), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L796
	movq	(%rbx), %rdx
	leaq	(%rdx,%r12), %rsi
	leaq	-1(%rdx), %rcx
	subq	%r15, %rsi
	cmpq	%rsi, %rcx
	jb	.L777
	addq	%r15, %rcx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	jmp	.L793
	.p2align 4,,10
	.p2align 3
.L778:
	movq	8(%rbx), %rsi
	leaq	(%rax,%r15), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L793:
	movq	(%rbx), %rcx
	leaq	(%r12,%rcx), %rdx
	subq	%r15, %rdx
	cmpq	%rdx, %rax
	jnb	.L778
	movq	8(%rbx), %rax
.L777:
	xorl	%r15d, %r15d
	jmp	.L780
	.p2align 4,,10
	.p2align 3
.L797:
	movq	8(%rbx), %rax
.L780:
	movq	(%r14,%r15,8), %rbp
	leaq	(%rax,%r12), %rsi
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdi
	addq	$1, %r15
	leaq	-1(%r12,%rax), %r12
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r13, %r15
	jne	.L797
	jmp	.L772
.L794:
	xorl	%r14d, %r14d
.L768:
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	.LC72(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L774:
	movl	$1, %edi
	call	exit@PLT
.L771:
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	.LC73(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE58:
	jmp	.L774
.L795:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB59:
	call	printf@PLT
.LEHE59:
	movl	$1, %edi
	call	exit@PLT
.L796:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	leaq	.LC74(%rip), %rdi
.LEHB60:
	call	printf@PLT
.LEHE60:
	jmp	.L774
.L784:
	movq	%rax, %rbx
	jmp	.L781
	.section	.gcc_except_table
.LLSDA1771:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1771-.LLSDACSB1771
.LLSDACSB1771:
	.uleb128 .LEHB58-.LFB1771
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L784-.LFB1771
	.uleb128 0
	.uleb128 .LEHB59-.LFB1771
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB1771
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L784-.LFB1771
	.uleb128 0
.LLSDACSE1771:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1771
	.type	_ZN3neo6string6InsertEySt16initializer_listIxE.cold, @function
_ZN3neo6string6InsertEySt16initializer_listIxE.cold:
.LFSB1771:
.L781:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB61:
	call	_Unwind_Resume@PLT
.LEHE61:
	.cfi_endproc
.LFE1771:
	.section	.gcc_except_table
.LLSDAC1771:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1771-.LLSDACSBC1771
.LLSDACSBC1771:
	.uleb128 .LEHB61-.LCOLDB76
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
.LLSDACSEC1771:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string6InsertEySt16initializer_listIxE, .-_ZN3neo6string6InsertEySt16initializer_listIxE
	.section	.text.unlikely
	.size	_ZN3neo6string6InsertEySt16initializer_listIxE.cold, .-_ZN3neo6string6InsertEySt16initializer_listIxE.cold
.LCOLDE76:
	.text
.LHOTE76:
	.section	.text.unlikely
	.align 2
.LCOLDB77:
	.text
.LHOTB77:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6InsertEySt16initializer_listIdE
	.type	_ZN3neo6string6InsertEySt16initializer_listIdE, @function
_ZN3neo6string6InsertEySt16initializer_listIdE:
.LFB1772:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1772
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, 8(%rsp)
	testq	%rcx, %rcx
	jne	.L799
	movq	(%rdi), %rax
	cmpq	%rsi, %rax
	jb	.L826
	xorl	%r14d, %r14d
	cmpq	%rax, %rsi
	je	.L803
.L804:
	movq	%r14, %rdi
	call	free@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L799:
	.cfi_restore_state
	leaq	0(,%rcx,8), %rdi
	call	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L827
	movq	(%rbx), %r15
	cmpq	%r12, %r15
	jb	.L800
	cmpq	%r15, %r12
	je	.L803
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L807:
	movq	8(%rsp), %rax
	movsd	(%rax,%rbp,8), %xmm0
.LEHB62:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%r14,%rbp,8)
	movq	(%rbx), %rdx
	addq	$1, %rbp
	movq	(%rax), %rax
	leaq	-1(%rdx,%rax), %rsi
	movq	%rsi, (%rbx)
	cmpq	%r13, %rbp
	jne	.L807
	movq	8(%rbx), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L828
	movq	(%rbx), %rdx
	leaq	(%rdx,%r12), %rsi
	leaq	-1(%rdx), %rcx
	subq	%r15, %rsi
	cmpq	%rsi, %rcx
	jb	.L809
	addq	%r15, %rcx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %ecx
	movb	%cl, -1(%rax,%rdx)
	leaq	-2(%rdx), %rax
	jmp	.L825
	.p2align 4,,10
	.p2align 3
.L810:
	movq	8(%rbx), %rsi
	leaq	(%rax,%r15), %rdx
	subq	%rcx, %rdx
	movzbl	(%rsi,%rdx), %edx
	movb	%dl, (%rsi,%rax)
	subq	$1, %rax
.L825:
	movq	(%rbx), %rcx
	leaq	(%r12,%rcx), %rdx
	subq	%r15, %rdx
	cmpq	%rdx, %rax
	jnb	.L810
	movq	8(%rbx), %rax
.L809:
	xorl	%r15d, %r15d
	jmp	.L812
	.p2align 4,,10
	.p2align 3
.L829:
	movq	8(%rbx), %rax
.L812:
	movq	(%r14,%r15,8), %rbp
	leaq	(%rax,%r12), %rsi
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rdi
	leaq	-1(%rcx), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %rax
	movq	8(%rbp), %rdi
	addq	$1, %r15
	leaq	-1(%r12,%rax), %r12
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r13, %r15
	jne	.L829
	jmp	.L804
.L826:
	xorl	%r14d, %r14d
.L800:
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	.LC72(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L806:
	movl	$1, %edi
	call	exit@PLT
.L803:
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	.LC73(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE62:
	jmp	.L806
.L827:
	leaq	.LC20(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
.LEHB63:
	call	printf@PLT
.LEHE63:
	movl	$1, %edi
	call	exit@PLT
.L828:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	leaq	.LC74(%rip), %rdi
.LEHB64:
	call	printf@PLT
.LEHE64:
	jmp	.L806
.L816:
	movq	%rax, %rbx
	jmp	.L813
	.section	.gcc_except_table
.LLSDA1772:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1772-.LLSDACSB1772
.LLSDACSB1772:
	.uleb128 .LEHB62-.LFB1772
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L816-.LFB1772
	.uleb128 0
	.uleb128 .LEHB63-.LFB1772
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB1772
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L816-.LFB1772
	.uleb128 0
.LLSDACSE1772:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1772
	.type	_ZN3neo6string6InsertEySt16initializer_listIdE.cold, @function
_ZN3neo6string6InsertEySt16initializer_listIdE.cold:
.LFSB1772:
.L813:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB65:
	call	_Unwind_Resume@PLT
.LEHE65:
	.cfi_endproc
.LFE1772:
	.section	.gcc_except_table
.LLSDAC1772:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1772-.LLSDACSBC1772
.LLSDACSBC1772:
	.uleb128 .LEHB65-.LCOLDB77
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSEC1772:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string6InsertEySt16initializer_listIdE, .-_ZN3neo6string6InsertEySt16initializer_listIdE
	.section	.text.unlikely
	.size	_ZN3neo6string6InsertEySt16initializer_listIdE.cold, .-_ZN3neo6string6InsertEySt16initializer_listIdE.cold
.LCOLDE77:
	.text
.LHOTE77:
	.section	.rodata.str1.8
	.align 8
.LC78:
	.string	"neo::string.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC79:
	.string	"neo::string.Remove(): Illegal removal of EOF\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC80:
	.string	"neo::string.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC81:
	.string	"neo::string.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6RemoveEyy
	.type	_ZN3neo6string6RemoveEyy, @function
_ZN3neo6string6RemoveEyy:
.LFB1773:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %rsi
	cmpq	%rsi, %r12
	jnb	.L843
	leaq	-1(%rsi), %rdx
	cmpq	%r12, %rdx
	je	.L834
	leaq	(%r12,%rbp), %rax
	cmpq	%rax, %rsi
	jb	.L844
	cmpq	%rax, %rdx
	jb	.L834
	movq	%rdi, %rbx
	testq	%rbp, %rbp
	je	.L835
	subq	%rbp, %rsi
	movq	%rsi, (%rdi)
	cmpq	%rsi, %r12
	jnb	.L836
	movq	%r12, %rax
	.p2align 4,,10
	.p2align 3
.L837:
	movq	8(%rbx), %rdx
	leaq	(%rdx,%rax), %rcx
	movzbl	(%rcx,%rbp), %ecx
	movb	%cl, (%rdx,%rax)
	movq	(%rbx), %rsi
	addq	$1, %rax
	cmpq	%rsi, %rax
	jb	.L837
.L836:
	movq	8(%rbx), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L845
.L835:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L834:
	.cfi_restore_state
	leaq	.LC79(%rip), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L844:
	leaq	.LC80(%rip), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L843:
	leaq	.LC78(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L845:
	leaq	.LC81(%rip), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1773:
	.size	_ZN3neo6string6RemoveEyy, .-_ZN3neo6string6RemoveEyy
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIcE
	.type	_ZN3neo6string8ContainsESt16initializer_listIcE, @function
_ZN3neo6string8ContainsESt16initializer_listIcE:
.LFB1774:
	.cfi_startproc
	movq	(%rdi), %rcx
	testq	%rdx, %rdx
	sete	%al
	cmpq	$1, %rcx
	setbe	%r8b
	orb	%r8b, %al
	je	.L854
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L854:
	movq	8(%rdi), %r9
	xorl	%r10d, %r10d
	leaq	-1(%rcx), %rdi
.L848:
	movzbl	(%rsi,%r10), %r8d
	xorl	%ecx, %ecx
	jmp	.L849
	.p2align 4,,10
	.p2align 3
.L856:
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jnb	.L855
.L849:
	cmpb	%r8b, (%r9,%rcx)
	jne	.L856
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L855:
	addq	$1, %r10
	cmpq	%rdx, %r10
	jb	.L848
	ret
	.cfi_endproc
.LFE1774:
	.size	_ZN3neo6string8ContainsESt16initializer_listIcE, .-_ZN3neo6string8ContainsESt16initializer_listIcE
	.section	.rodata.str1.8
	.align 8
.LC82:
	.string	"neo::string.Contains(): Literals[%lld] must not be NULL\nParams: Literals(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIPKcE
	.type	_ZN3neo6string8ContainsESt16initializer_listIPKcE, @function
_ZN3neo6string8ContainsESt16initializer_listIPKcE:
.LFB1775:
	.cfi_startproc
	testq	%rdx, %rdx
	je	.L885
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14
	xorl	%esi, %esi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	jmp	.L862
	.p2align 4,,10
	.p2align 3
.L860:
	addq	$1, %rsi
	cmpq	%rsi, %rbx
	je	.L889
.L862:
	movq	(%r14,%rsi,8), %rax
	testq	%rax, %rax
	je	.L890
	cmpq	8(%rbp), %rax
	jne	.L860
.L869:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L889:
	.cfi_restore_state
	movq	0(%rbp), %rcx
	xorl	%r12d, %r12d
	cmpq	$1, %rcx
	jbe	.L858
.L863:
	movq	(%r14,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L864
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L865:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L866:
	movq	%rax, %rdx
	addq	$1, %rax
	cmpb	$0, -1(%rsi,%rax)
	jne	.L866
	cmpq	%rax, %rcx
	jb	.L867
	movq	%rcx, %rax
	subq	%rdx, %rax
	cmpq	%rax, %r13
	jnb	.L867
	movq	8(%rbp), %rdi
	addq	%r13, %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	testb	%al, %al
	jne	.L869
	movq	(%r14,%r12,8), %rsi
	addq	$1, %r13
	testq	%rsi, %rsi
	je	.L864
	movq	0(%rbp), %rcx
	jmp	.L865
.L867:
	addq	$1, %r12
	cmpq	%r12, %rbx
	jne	.L863
.L858:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L890:
	.cfi_restore_state
	leaq	.LC82(%rip), %rdi
	movq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L885:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	xorl	%eax, %eax
	ret
.L864:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1775:
	.size	_ZN3neo6string8ContainsESt16initializer_listIPKcE, .-_ZN3neo6string8ContainsESt16initializer_listIPKcE
	.section	.rodata.str1.8
	.align 8
.LC83:
	.string	"neo::string.Contains(): Strings[%lld] must not be NULL\nParams: Strings(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIPS0_E
	.type	_ZN3neo6string8ContainsESt16initializer_listIPS0_E, @function
_ZN3neo6string8ContainsESt16initializer_listIPS0_E:
.LFB1776:
	.cfi_startproc
	testq	%rdx, %rdx
	je	.L913
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	xorl	%esi, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	jmp	.L896
	.p2align 4,,10
	.p2align 3
.L894:
	addq	$1, %rsi
	cmpq	%rsi, %rdx
	je	.L917
.L896:
	movq	0(%rbp,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L918
	cmpq	%rbx, %rcx
	jne	.L894
.L902:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L917:
	.cfi_restore_state
	movq	(%rbx), %rcx
	cmpq	$1, %rcx
	jbe	.L892
	leaq	-8(%rbp,%rdx,8), %r13
	movl	$1, %r12d
.L897:
	movq	0(%rbp), %rsi
	xorl	%r14d, %r14d
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	jnb	.L898
	jmp	.L901
	.p2align 4,,10
	.p2align 3
.L900:
	movq	8(%rbx), %rdi
	movq	8(%rsi), %rsi
	subq	$1, %rdx
	addq	%r14, %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
	testb	%al, %al
	jne	.L902
	movq	0(%rbp), %rsi
	movq	(%rbx), %rcx
	addq	$1, %r14
	movq	(%rsi), %rdx
	cmpq	%rdx, %rcx
	jb	.L901
.L898:
	movq	%r12, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %r14
	jb	.L900
.L901:
	cmpq	%rbp, %r13
	je	.L892
	addq	$8, %rbp
	jmp	.L897
	.p2align 4,,10
	.p2align 3
.L892:
	popq	%rbx
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L913:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	xorl	%eax, %eax
	ret
.L918:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	leaq	.LC83(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1776:
	.size	_ZN3neo6string8ContainsESt16initializer_listIPS0_E, .-_ZN3neo6string8ContainsESt16initializer_listIPS0_E
	.section	.text.unlikely
	.align 2
.LCOLDB84:
	.text
.LHOTB84:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIyE
	.type	_ZN3neo6string8ContainsESt16initializer_listIyE, @function
_ZN3neo6string8ContainsESt16initializer_listIyE:
.LFB1777:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1777
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r8d, %r8d
	xorl	%r15d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, (%rsp)
	testq	%rdx, %rdx
	jne	.L940
.L920:
	movq	%r15, %rdi
	movb	%r8b, (%rsp)
	call	free@PLT
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L940:
	.cfi_restore_state
	movq	%rdi, %r13
	leaq	0(,%rdx,8), %rdi
	movb	%r8b, 15(%rsp)
	movq	%rsi, %rbp
	call	malloc@PLT
	movzbl	15(%rsp), %r8d
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L941
	cmpq	$1, 0(%r13)
	jbe	.L920
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L922:
	movq	0(%rbp,%rbx,8), %rdi
.LEHB66:
	call	_ZN3neo6string8ToStringEy.constprop.0
	movq	%rax, (%r15,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, (%rsp)
	jne	.L922
	xorl	%r14d, %r14d
	xorl	%r8d, %r8d
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L923:
	movq	(%r15,%r14,8), %rbp
	movq	0(%r13), %rcx
	movq	0(%rbp), %rdx
	cmpq	%rdx, %rcx
	jb	.L942
	movq	8(%rbp), %rsi
	xorl	%ebx, %ebx
	jmp	.L928
	.p2align 4,,10
	.p2align 3
.L926:
	addq	$1, %rbx
	cmpq	%rdx, %rcx
	jb	.L924
.L928:
	movq	%r12, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rbx
	jnb	.L924
	testb	%r8b, %r8b
	jne	.L926
	movq	8(%r13), %rdi
	subq	$1, %rdx
	addq	%rbx, %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
.LEHE66:
	movq	0(%rbp), %rdx
	movq	0(%r13), %rcx
	movl	%eax, %r8d
	addq	$1, %rbx
	movq	8(%rbp), %rsi
	cmpq	%rdx, %rcx
	jnb	.L928
	.p2align 4,,10
	.p2align 3
.L924:
	movq	%rsi, %rdi
	movb	%r8b, 15(%rsp)
	addq	$1, %r14
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r14, (%rsp)
	movzbl	15(%rsp), %r8d
	jne	.L923
	jmp	.L920
.L942:
	movq	8(%rbp), %rsi
	jmp	.L924
.L941:
	movq	(%rsp), %rsi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
.LEHB67:
	call	printf@PLT
.LEHE67:
	movl	$1, %edi
	call	exit@PLT
.L933:
	movq	%rax, %rbx
	jmp	.L929
	.section	.gcc_except_table
.LLSDA1777:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1777-.LLSDACSB1777
.LLSDACSB1777:
	.uleb128 .LEHB66-.LFB1777
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L933-.LFB1777
	.uleb128 0
	.uleb128 .LEHB67-.LFB1777
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
.LLSDACSE1777:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1777
	.type	_ZN3neo6string8ContainsESt16initializer_listIyE.cold, @function
_ZN3neo6string8ContainsESt16initializer_listIyE.cold:
.LFSB1777:
.L929:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB68:
	call	_Unwind_Resume@PLT
.LEHE68:
	.cfi_endproc
.LFE1777:
	.section	.gcc_except_table
.LLSDAC1777:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1777-.LLSDACSBC1777
.LLSDACSBC1777:
	.uleb128 .LEHB68-.LCOLDB84
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
.LLSDACSEC1777:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ContainsESt16initializer_listIyE, .-_ZN3neo6string8ContainsESt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3neo6string8ContainsESt16initializer_listIyE.cold, .-_ZN3neo6string8ContainsESt16initializer_listIyE.cold
.LCOLDE84:
	.text
.LHOTE84:
	.section	.text.unlikely
	.align 2
.LCOLDB85:
	.text
.LHOTB85:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIxE
	.type	_ZN3neo6string8ContainsESt16initializer_listIxE, @function
_ZN3neo6string8ContainsESt16initializer_listIxE:
.LFB1778:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1778
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r8d, %r8d
	xorl	%r15d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, (%rsp)
	testq	%rdx, %rdx
	jne	.L964
.L944:
	movq	%r15, %rdi
	movb	%r8b, (%rsp)
	call	free@PLT
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L964:
	.cfi_restore_state
	movq	%rdi, %r13
	leaq	0(,%rdx,8), %rdi
	movb	%r8b, 15(%rsp)
	movq	%rsi, %rbp
	call	malloc@PLT
	movzbl	15(%rsp), %r8d
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L965
	cmpq	$1, 0(%r13)
	jbe	.L944
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L946:
	movq	0(%rbp,%rbx,8), %rdi
.LEHB69:
	call	_ZN3neo6string8ToStringEx.constprop.0
	movq	%rax, (%r15,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, (%rsp)
	jne	.L946
	xorl	%r14d, %r14d
	xorl	%r8d, %r8d
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L947:
	movq	(%r15,%r14,8), %rbp
	movq	0(%r13), %rcx
	movq	0(%rbp), %rdx
	cmpq	%rdx, %rcx
	jb	.L966
	movq	8(%rbp), %rsi
	xorl	%ebx, %ebx
	jmp	.L952
	.p2align 4,,10
	.p2align 3
.L950:
	addq	$1, %rbx
	cmpq	%rdx, %rcx
	jb	.L948
.L952:
	movq	%r12, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rbx
	jnb	.L948
	testb	%r8b, %r8b
	jne	.L950
	movq	8(%r13), %rdi
	subq	$1, %rdx
	addq	%rbx, %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
.LEHE69:
	movq	0(%rbp), %rdx
	movq	0(%r13), %rcx
	movl	%eax, %r8d
	addq	$1, %rbx
	movq	8(%rbp), %rsi
	cmpq	%rdx, %rcx
	jnb	.L952
	.p2align 4,,10
	.p2align 3
.L948:
	movq	%rsi, %rdi
	movb	%r8b, 15(%rsp)
	addq	$1, %r14
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r14, (%rsp)
	movzbl	15(%rsp), %r8d
	jne	.L947
	jmp	.L944
.L966:
	movq	8(%rbp), %rsi
	jmp	.L948
.L965:
	movq	(%rsp), %rsi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
.LEHB70:
	call	printf@PLT
.LEHE70:
	movl	$1, %edi
	call	exit@PLT
.L957:
	movq	%rax, %rbx
	jmp	.L953
	.section	.gcc_except_table
.LLSDA1778:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1778-.LLSDACSB1778
.LLSDACSB1778:
	.uleb128 .LEHB69-.LFB1778
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L957-.LFB1778
	.uleb128 0
	.uleb128 .LEHB70-.LFB1778
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE1778:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1778
	.type	_ZN3neo6string8ContainsESt16initializer_listIxE.cold, @function
_ZN3neo6string8ContainsESt16initializer_listIxE.cold:
.LFSB1778:
.L953:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB71:
	call	_Unwind_Resume@PLT
.LEHE71:
	.cfi_endproc
.LFE1778:
	.section	.gcc_except_table
.LLSDAC1778:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1778-.LLSDACSBC1778
.LLSDACSBC1778:
	.uleb128 .LEHB71-.LCOLDB85
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
.LLSDACSEC1778:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ContainsESt16initializer_listIxE, .-_ZN3neo6string8ContainsESt16initializer_listIxE
	.section	.text.unlikely
	.size	_ZN3neo6string8ContainsESt16initializer_listIxE.cold, .-_ZN3neo6string8ContainsESt16initializer_listIxE.cold
.LCOLDE85:
	.text
.LHOTE85:
	.section	.text.unlikely
	.align 2
.LCOLDB86:
	.text
.LHOTB86:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ContainsESt16initializer_listIdE
	.type	_ZN3neo6string8ContainsESt16initializer_listIdE, @function
_ZN3neo6string8ContainsESt16initializer_listIdE:
.LFB1779:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1779
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r8d, %r8d
	xorl	%r15d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, (%rsp)
	testq	%rdx, %rdx
	jne	.L988
.L968:
	movq	%r15, %rdi
	movb	%r8b, (%rsp)
	call	free@PLT
	movzbl	(%rsp), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L988:
	.cfi_restore_state
	movq	%rdi, %r13
	leaq	0(,%rdx,8), %rdi
	movb	%r8b, 15(%rsp)
	movq	%rsi, %rbp
	call	malloc@PLT
	movzbl	15(%rsp), %r8d
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L989
	cmpq	$1, 0(%r13)
	jbe	.L968
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L970:
	movsd	0(%rbp,%rbx,8), %xmm0
.LEHB72:
	call	_ZN3neo6string8ToStringEd.constprop.0
	movq	%rax, (%r15,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, (%rsp)
	jne	.L970
	xorl	%r14d, %r14d
	xorl	%r8d, %r8d
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L971:
	movq	(%r15,%r14,8), %rbp
	movq	0(%r13), %rcx
	movq	0(%rbp), %rdx
	cmpq	%rdx, %rcx
	jb	.L990
	movq	8(%rbp), %rsi
	xorl	%ebx, %ebx
	jmp	.L976
	.p2align 4,,10
	.p2align 3
.L974:
	addq	$1, %rbx
	cmpq	%rdx, %rcx
	jb	.L972
.L976:
	movq	%r12, %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rbx
	jnb	.L972
	testb	%r8b, %r8b
	jne	.L974
	movq	8(%r13), %rdi
	subq	$1, %rdx
	addq	%rbx, %rdi
	call	_ZN3neo6memory7CompareEPKvS2_y@PLT
.LEHE72:
	movq	0(%rbp), %rdx
	movq	0(%r13), %rcx
	movl	%eax, %r8d
	addq	$1, %rbx
	movq	8(%rbp), %rsi
	cmpq	%rdx, %rcx
	jnb	.L976
	.p2align 4,,10
	.p2align 3
.L972:
	movq	%rsi, %rdi
	movb	%r8b, 15(%rsp)
	addq	$1, %r14
	call	free@PLT
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	%r14, (%rsp)
	movzbl	15(%rsp), %r8d
	jne	.L971
	jmp	.L968
.L990:
	movq	8(%rbp), %rsi
	jmp	.L972
.L989:
	movq	(%rsp), %rsi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
.LEHB73:
	call	printf@PLT
.LEHE73:
	movl	$1, %edi
	call	exit@PLT
.L981:
	movq	%rax, %rbx
	jmp	.L977
	.section	.gcc_except_table
.LLSDA1779:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1779-.LLSDACSB1779
.LLSDACSB1779:
	.uleb128 .LEHB72-.LFB1779
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L981-.LFB1779
	.uleb128 0
	.uleb128 .LEHB73-.LFB1779
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
.LLSDACSE1779:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1779
	.type	_ZN3neo6string8ContainsESt16initializer_listIdE.cold, @function
_ZN3neo6string8ContainsESt16initializer_listIdE.cold:
.LFSB1779:
.L977:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB74:
	call	_Unwind_Resume@PLT
.LEHE74:
	.cfi_endproc
.LFE1779:
	.section	.gcc_except_table
.LLSDAC1779:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1779-.LLSDACSBC1779
.LLSDACSBC1779:
	.uleb128 .LEHB74-.LCOLDB86
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
.LLSDACSEC1779:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ContainsESt16initializer_listIdE, .-_ZN3neo6string8ContainsESt16initializer_listIdE
	.section	.text.unlikely
	.size	_ZN3neo6string8ContainsESt16initializer_listIdE.cold, .-_ZN3neo6string8ContainsESt16initializer_listIdE.cold
.LCOLDE86:
	.text
.LHOTE86:
	.section	.rodata.str1.8
	.align 8
.LC87:
	.string	"neo::string.Read(): Memory allocation failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string4ReadEv
	.type	_ZN3neo6string4ReadEv, @function
_ZN3neo6string4ReadEv:
.LFB1780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$1, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	$1, (%rdi)
	movq	8(%rdi), %rdi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L994
	movb	$0, (%rax)
	jmp	.L993
	.p2align 4,,10
	.p2align 3
.L995:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%rbx)
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L994
	movq	(%rbx), %rdx
	movb	%bpl, -2(%rax,%rdx)
	movq	8(%rbx), %rdx
	movq	(%rbx), %rax
	movb	$0, -1(%rdx,%rax)
.L993:
	movq	stdin(%rip), %rdi
	call	getc@PLT
	movl	%eax, %ebp
	cmpb	$10, %al
	jne	.L995
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L994:
	.cfi_restore_state
	leaq	.LC87(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1780:
	.size	_ZN3neo6string4ReadEv, .-_ZN3neo6string4ReadEv
	.section	.rodata.str1.8
	.align 8
.LC88:
	.string	"neo::string.Split(): Result must not be NULL\nParams: Result: %p\n"
	.align 8
.LC89:
	.string	"neo::string.Split(): Result must be empty\nParams: Result: %p\n"
	.align 8
.LC90:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC91:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC92:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string5SplitEcPNS_5arrayIS0_EE
	.type	_ZN3neo6string5SplitEcPNS_5arrayIS0_EE, @function
_ZN3neo6string5SplitEcPNS_5arrayIS0_EE:
.LFB1781:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L1049
	movq	(%rdx), %rbp
	movq	%rdx, %r12
	testq	%rbp, %rbp
	jne	.L1050
	movq	$1, (%rdx)
	movq	%rdi, %r15
	movq	8(%rdx), %rdi
	movl	%esi, %r13d
	movl	$16, %esi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L1051
	movq	(%r12), %r14
	movq	%r14, %r8
	subq	$1, %r8
	je	.L1007
	movq	%r8, %rdx
	leaq	16(%rax), %rdi
	movq	%rax, %rsi
	movq	%r8, 8(%rsp)
	salq	$4, %rdx
	movq	%rax, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %rcx
	movq	8(%rsp), %r8
.L1007:
	movq	$1, (%rcx)
	movl	$1, %edi
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %rcx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 8(%rcx)
	je	.L1005
	movb	$0, (%rax)
	movq	(%r15), %rax
	cmpq	$1, %rax
	jne	.L1021
	jmp	.L1008
	.p2align 4,,10
	.p2align 3
.L1053:
	movb	%dl, 23(%rsp)
	testq	%rsi, %rsi
	je	.L1015
	salq	$4, %rbx
	addq	%rcx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%rbx)
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L1052
	movq	(%rbx), %rdx
	leaq	23(%rsp), %rdi
	leaq	-2(%rax,%rdx), %rsi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	(%r12), %r14
	movq	(%r15), %rax
	movq	8(%r12), %rcx
	leaq	-1(%r14), %r8
.L1014:
	addq	$1, %rbp
	leaq	-1(%rax), %rdx
	cmpq	%rdx, %rbp
	jnb	.L1008
.L1021:
	movq	8(%r15), %rdx
	movq	%r14, %rbx
	xorl	%esi, %esi
	addq	$-1, %rbx
	movzbl	(%rdx,%rbp), %edx
	setc	%sil
	movq	%rbx, %r8
	cmpb	%r13b, %dl
	jne	.L1053
	testq	%r14, %r14
	je	.L1015
	salq	$4, %rbx
	cmpq	$1, (%rcx,%rbx)
	jbe	.L1014
	leaq	1(%r14), %rbx
	movq	%rcx, %rdi
	movq	%rbx, (%r12)
	movq	%rbx, %rsi
	salq	$4, %rsi
	movq	%rsi, (%rsp)
	call	realloc@PLT
	movq	(%rsp), %rsi
	testq	%rax, %rax
	movq	%rax, 8(%r12)
	movq	%rax, %rcx
	je	.L1054
	movq	(%r12), %r14
	movq	%r14, %rax
	leaq	-1(%r14), %r8
	salq	$4, %rax
	movq	%r8, %rdx
	addq	%rcx, %rax
	cmpq	%rbx, %r8
	jb	.L1020
	.p2align 4,,10
	.p2align 3
.L1019:
	movdqu	-32(%rax), %xmm0
	subq	$1, %rdx
	subq	$16, %rax
	movups	%xmm0, (%rax)
	cmpq	%rbx, %rdx
	jnb	.L1019
.L1020:
	leaq	-16(%rcx,%rsi), %rbx
	movl	$1, %edi
	movq	%r8, 8(%rsp)
	movq	$1, (%rbx)
	movq	%rcx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %rcx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 8(%rbx)
	je	.L1005
	movb	$0, (%rax)
	movq	(%r15), %rax
	addq	$1, %rbp
	leaq	-1(%rax), %rdx
	cmpq	%rdx, %rbp
	jb	.L1021
	.p2align 4,,10
	.p2align 3
.L1008:
	cmpq	%r14, %r8
	jnb	.L1015
	movq	%r8, %rbx
	salq	$4, %rbx
	addq	%rbx, %rcx
	cmpq	$1, (%rcx)
	je	.L1055
.L1000:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1056
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1055:
	.cfi_restore_state
	movq	8(%rcx), %rdi
	movq	%r8, (%rsp)
	call	free@PLT
	movq	(%r12), %rax
	leaq	-1(%rax), %rbp
	movq	%rbp, (%r12)
	testq	%rbp, %rbp
	je	.L1023
	movq	(%rsp), %r8
	movq	8(%r12), %r13
	cmpq	%rbp, %r8
	jnb	.L1027
	movq	%rbp, %rdx
	leaq	16(%r13,%rbx), %rsi
	leaq	0(%r13,%rbx), %rdi
	movq	%r8, (%rsp)
	subq	%r8, %rdx
	salq	$4, %rdx
	call	memmove@PLT
	movq	(%rsp), %r8
.L1027:
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r8, (%rsp)
	salq	$4, %rsi
	call	realloc@PLT
	movq	(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 8(%r12)
	je	.L1057
	movq	(%r12), %r14
	jmp	.L1000
.L1023:
	movq	8(%r12), %rdi
	call	free@PLT
	movq	(%r12), %r14
	movq	$0, 8(%r12)
	jmp	.L1000
.L1005:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L1015:
	leaq	.LC91(%rip), %rdi
	movq	$-1, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1052:
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1056:
	call	__stack_chk_fail@PLT
.L1054:
	movl	$1, %edx
	movq	%r14, %rsi
.L1048:
	leaq	.LC90(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1057:
	leaq	.LC92(%rip), %rdi
	movl	$1, %edx
	movq	%r8, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1051:
	movl	$1, %edx
	xorl	%esi, %esi
	jmp	.L1048
.L1050:
	leaq	.LC89(%rip), %rdi
	movq	%rdx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1049:
	leaq	.LC88(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1781:
	.size	_ZN3neo6string5SplitEcPNS_5arrayIS0_EE, .-_ZN3neo6string5SplitEcPNS_5arrayIS0_EE
	.section	.rodata.str1.8
	.align 8
.LC93:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC94:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB95:
	.text
.LHOTB95:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE
	.type	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE, @function
_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE:
.LFB1782:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1782
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L1099
	movq	(%rdx), %rbx
	movq	%rdx, %r14
	testq	%rbx, %rbx
	jne	.L1100
	movq	%rdi, %rbp
	movl	$16, %edi
	movl	%esi, %r12d
.LEHB75:
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %r13
	call	malloc@PLT
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.L1101
	movb	$0, (%rax)
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	movq	%r13, 24(%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, (%r14)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L1096
	movq	(%r14), %rdx
	leaq	-8(%rax,%rdx,8), %rsi
	leaq	24(%rsp), %rax
	movl	$8, %edx
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %r9
	movq	(%r14), %rax
	cmpq	$1, %r9
	je	.L1064
	movq	8(%r14), %r8
	leaq	39(%rsp), %r13
	jmp	.L1075
	.p2align 4,,10
	.p2align 3
.L1103:
	movb	%sil, 39(%rsp)
	testq	%r10, %r10
	je	.L1071
	movq	(%r8,%rdx,8), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r15)
	call	realloc@PLT
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L1102
	movq	(%r15), %rdx
	movq	%r13, %rdi
	leaq	-2(%rax,%rdx), %rsi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%r15), %rax
	movq	8(%r15), %rdx
	movb	$0, -1(%rdx,%rax)
	movq	(%r14), %rax
	movq	0(%rbp), %r9
	movq	8(%r14), %r8
	leaq	-1(%rax), %rdi
.L1070:
	addq	$1, %rbx
	leaq	-1(%r9), %rdx
	cmpq	%rdx, %rbx
	jnb	.L1076
.L1075:
	movq	8(%rbp), %rdx
	xorl	%r10d, %r10d
	movzbl	(%rdx,%rbx), %esi
	movq	%rax, %rdx
	addq	$-1, %rdx
	setc	%r10b
	movq	%rdx, %rdi
	cmpb	%r12b, %sil
	jne	.L1103
	testq	%rax, %rax
	je	.L1071
	movq	(%r8,%rdx,8), %rdx
	cmpq	$1, (%rdx)
	jbe	.L1070
	movl	$16, %edi
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %r15
	call	malloc@PLT
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L1104
	movb	$0, (%rax)
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	movq	%r15, 24(%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, (%r14)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L1096
	movq	(%r14), %rdx
	movq	8(%rsp), %rdi
	addq	$1, %rbx
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	0(%rbp), %r9
	movq	(%r14), %rax
	movq	8(%r14), %r8
	leaq	-1(%r9), %rdx
	leaq	-1(%rax), %rdi
	cmpq	%rdx, %rbx
	jb	.L1075
	.p2align 4,,10
	.p2align 3
.L1076:
	cmpq	%rax, %rdi
	jnb	.L1071
	movq	(%r8,%rdi,8), %rbx
	cmpq	$1, (%rbx)
	je	.L1105
.L1058:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L1097
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1105:
	.cfi_restore_state
	movq	8(%rbx), %rdi
	call	free@PLT
	movq	%rbx, %rdi
	movl	$16, %esi
	call	_ZdlPvm@PLT
	movq	(%r14), %rbx
	addq	$-1, %rbx
	jc	.L1079
	leaq	.LC94(%rip), %rdi
	movl	$1, %edx
	movq	$-1, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L1064:
	movq	8(%r14), %r8
	leaq	-1(%rax), %rdi
	jmp	.L1076
.L1071:
	leaq	.LC91(%rip), %rdi
	movq	$-1, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE75:
	movl	$1, %edi
	call	exit@PLT
.L1104:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1097
.LEHB76:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE76:
.L1102:
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
.LEHB77:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1096:
	leaq	.LC93(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1079:
	movq	%rbx, (%r14)
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	je	.L1106
	leaq	0(,%rbx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L1082
	movq	(%r14), %rax
	jmp	.L1058
.L1106:
	call	free@PLT
	movq	$0, 8(%r14)
	movq	(%r14), %rax
	jmp	.L1058
.L1082:
	leaq	.LC92(%rip), %rdi
	movl	$1, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE77:
	movl	$1, %edi
	call	exit@PLT
.L1101:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1097
.LEHB78:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE78:
.L1100:
	leaq	.LC89(%rip), %rdi
	movq	%rdx, %rsi
	xorl	%eax, %eax
.LEHB79:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L1099:
	leaq	.LC88(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
.LEHE79:
	movl	$1, %edi
	call	exit@PLT
.L1097:
	call	__stack_chk_fail@PLT
.L1089:
	movq	%rax, %rbx
	jmp	.L1085
.L1088:
	movq	%rax, %rbx
	jmp	.L1083
	.section	.gcc_except_table
.LLSDA1782:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1782-.LLSDACSB1782
.LLSDACSB1782:
	.uleb128 .LEHB75-.LFB1782
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB1782
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1089-.LFB1782
	.uleb128 0
	.uleb128 .LEHB77-.LFB1782
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB1782
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1088-.LFB1782
	.uleb128 0
	.uleb128 .LEHB79-.LFB1782
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSE1782:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1782
	.type	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE.cold, @function
_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE.cold:
.LFSB1782:
.L1085:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$16, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1098
.L1086:
	movq	%rbx, %rdi
.LEHB80:
	call	_Unwind_Resume@PLT
.LEHE80:
.L1083:
	movl	$16, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	je	.L1086
.L1098:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1782:
	.section	.gcc_except_table
.LLSDAC1782:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1782-.LLSDACSBC1782
.LLSDACSBC1782:
	.uleb128 .LEHB80-.LCOLDB95
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
.LLSDACSEC1782:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE, .-_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE
	.section	.text.unlikely
	.size	_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE.cold, .-_ZN3neo6string5SplitEcPNS_5arrayIPS0_EE.cold
.LCOLDE95:
	.text
.LHOTE95:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string7ReverseEv
	.type	_ZN3neo6string7ReverseEv, @function
_ZN3neo6string7ReverseEv:
.LFB1783:
	.cfi_startproc
	movq	(%rdi), %rsi
	movq	%rdi, %rcx
	leaq	-1(%rsi), %rax
	shrq	%rax
	je	.L1108
	xorl	%eax, %eax
	movq	$-2, %r10
	.p2align 4,,10
	.p2align 3
.L1109:
	movq	8(%rcx), %rdx
	movq	%r10, %r9
	subq	%rax, %r9
	leaq	(%rdx,%rax), %rdi
	addq	%rsi, %rdx
	movzbl	(%rdx,%r9), %edx
	movzbl	(%rdi), %r8d
	movb	%dl, (%rdi)
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	leaq	-2(%rdi), %rdx
	subq	%rax, %rdx
	addq	$1, %rax
	movb	%r8b, (%rsi,%rdx)
	movq	(%rcx), %rsi
	leaq	-1(%rsi), %rdx
	shrq	%rdx
	cmpq	%rdx, %rax
	jb	.L1109
.L1108:
	movq	%rcx, %rax
	ret
	.cfi_endproc
.LFE1783:
	.size	_ZN3neo6string7ReverseEv, .-_ZN3neo6string7ReverseEv
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToUINTEv
	.type	_ZN3neo6string6ToUINTEv, @function
_ZN3neo6string6ToUINTEv:
.LFB1784:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rbx
	cmpq	$1, %rbx
	je	.L1123
	movq	8(%rdi), %r13
	subq	$2, %rbx
	xorl	%ebp, %ebp
	movabsq	$-9223372036854775808, %r12
	jmp	.L1122
	.p2align 4,,10
	.p2align 3
.L1126:
	cvttsd2siq	%xmm0, %rbp
	addq	$1, %r13
	subq	$1, %rbx
	jb	.L1114
.L1122:
	movsbl	0(%r13), %eax
	pxor	%xmm2, %xmm2
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm2, 8(%rsp)
	testq	%rbx, %rbx
	js	.L1116
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbx, %xmm1
.L1117:
	movq	.LC7(%rip), %rax
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	testq	%rbp, %rbp
	js	.L1118
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbp, %xmm0
.L1119:
	mulsd	8(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	comisd	.LC6(%rip), %xmm0
	jb	.L1126
	subsd	.LC6(%rip), %xmm0
	addq	$1, %r13
	cvttsd2siq	%xmm0, %rbp
	xorq	%r12, %rbp
	subq	$1, %rbx
	jnb	.L1122
.L1114:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1118:
	.cfi_restore_state
	movq	%rbp, %rax
	andl	$1, %ebp
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L1119
	.p2align 4,,10
	.p2align 3
.L1116:
	movq	%rbx, %rax
	movq	%rbx, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1117
	.p2align 4,,10
	.p2align 3
.L1123:
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	xorl	%ebp, %ebp
	popq	%rbx
	.cfi_def_cfa_offset 32
	movq	%rbp, %rax
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1784:
	.size	_ZN3neo6string6ToUINTEv, .-_ZN3neo6string6ToUINTEv
	.section	.rodata.str1.8
	.align 8
.LC96:
	.string	"neo::string.ToUINT(): Success must not be NULL\nParams: Success: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToUINTEPb
	.type	_ZN3neo6string6ToUINTEPb, @function
_ZN3neo6string6ToUINTEPb:
.LFB1785:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testq	%rsi, %rsi
	je	.L1128
	movq	(%rdi), %r13
	movq	%rsi, %r12
	xorl	%r14d, %r14d
	cmpq	$1, %r13
	je	.L1130
	movq	8(%rdi), %r15
	subq	$2, %r13
	xorl	%r14d, %r14d
	movabsq	$-9223372036854775808, %rbp
	jmp	.L1138
	.p2align 4,,10
	.p2align 3
.L1142:
	cvttsd2siq	%xmm0, %r14
	addq	$1, %r15
	subq	$1, %r13
	jb	.L1130
.L1138:
	movsbl	(%r15), %ebx
	leal	-48(%rbx), %eax
	cmpb	$9, %al
	ja	.L1139
	testq	%r13, %r13
	js	.L1132
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r13, %xmm1
.L1133:
	movq	.LC7(%rip), %rax
	subl	$48, %ebx
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	testq	%r14, %r14
	js	.L1134
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r14, %xmm1
.L1135:
	addsd	%xmm1, %xmm0
	comisd	.LC6(%rip), %xmm0
	jb	.L1142
	subsd	.LC6(%rip), %xmm0
	addq	$1, %r15
	cvttsd2siq	%xmm0, %r14
	xorq	%rbp, %r14
	subq	$1, %r13
	jnb	.L1138
.L1130:
	movl	$1, %eax
.L1131:
	movb	%al, (%r12)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1134:
	.cfi_restore_state
	movq	%r14, %rax
	andl	$1, %r14d
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%r14, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1135
	.p2align 4,,10
	.p2align 3
.L1132:
	movq	%r13, %rax
	movq	%r13, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1133
	.p2align 4,,10
	.p2align 3
.L1139:
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	jmp	.L1131
.L1128:
	leaq	.LC96(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1785:
	.size	_ZN3neo6string6ToUINTEPb, .-_ZN3neo6string6ToUINTEPb
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToSINTEv
	.type	_ZN3neo6string6ToSINTEv, @function
_ZN3neo6string6ToSINTEv:
.LFB1786:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rbp
	movq	8(%rdi), %r12
	leaq	-1(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L1152
	leaq	1(%r12), %r13
	leaq	-3(%rbp), %rbx
	xorl	%r14d, %r14d
	jmp	.L1147
	.p2align 4,,10
	.p2align 3
.L1155:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbx, %xmm1
.L1146:
	movq	.LC7(%rip), %rax
	addq	$1, %r13
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	mulsd	8(%rsp), %xmm1
	cvtsi2sdq	%r14, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %r14
	subq	$1, %rbx
	jb	.L1144
.L1147:
	movsbl	0(%r13), %edx
	pxor	%xmm2, %xmm2
	subl	$48, %edx
	cvtsi2sdl	%edx, %xmm2
	movsd	%xmm2, 8(%rsp)
	testq	%rbx, %rbx
	jns	.L1155
	movq	%rbx, %rax
	movq	%rbx, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1146
	.p2align 4,,10
	.p2align 3
.L1152:
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L1144:
	movsbl	(%r12), %ebx
	cmpb	$45, %bl
	jne	.L1148
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	negq	%rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1148:
	.cfi_restore_state
	subq	$2, %rbp
	js	.L1150
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbp, %xmm1
.L1151:
	movsd	.LC7(%rip), %xmm0
	subl	$48, %ebx
	call	pow@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r14, %xmm1
	popq	%r14
	.cfi_def_cfa_offset 8
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1150:
	.cfi_restore_state
	movq	%rbp, %rax
	andl	$1, %ebp
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1151
	.cfi_endproc
.LFE1786:
	.size	_ZN3neo6string6ToSINTEv, .-_ZN3neo6string6ToSINTEv
	.section	.rodata.str1.8
	.align 8
.LC97:
	.string	"neo::string.ToSINT(): Success must not be NULL\nParams: Success: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string6ToSINTEPb
	.type	_ZN3neo6string6ToSINTEPb, @function
_ZN3neo6string6ToSINTEPb:
.LFB1787:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	je	.L1157
	movq	(%rdi), %r12
	movq	8(%rdi), %rax
	movq	%rsi, %rbp
	xorl	%r13d, %r13d
	leaq	-1(%r12), %rdx
	movq	%rax, 8(%rsp)
	leaq	1(%rax), %r15
	leaq	-3(%r12), %r14
	cmpq	$1, %rdx
	ja	.L1164
	jmp	.L1159
	.p2align 4,,10
	.p2align 3
.L1173:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r14, %xmm1
.L1163:
	movsd	.LC7(%rip), %xmm0
	subl	$48, %ebx
	addq	$1, %r15
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r13, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %r13
	subq	$1, %r14
	jb	.L1159
.L1164:
	movsbl	(%r15), %ebx
	leal	-48(%rbx), %edx
	cmpb	$9, %dl
	ja	.L1167
	testq	%r14, %r14
	jns	.L1173
	movq	%r14, %rdx
	movq	%r14, %rcx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %ecx
	orq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1163
	.p2align 4,,10
	.p2align 3
.L1159:
	movq	8(%rsp), %rax
	movsbl	(%rax), %ebx
	movq	%r13, %rax
	negq	%rax
	cmpb	$45, %bl
	je	.L1166
	leal	-48(%rbx), %edx
	cmpb	$9, %dl
	jbe	.L1174
.L1167:
	xorl	%edx, %edx
	xorl	%eax, %eax
.L1161:
	movb	%dl, 0(%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1174:
	.cfi_restore_state
	subq	$2, %r12
	js	.L1168
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r12, %xmm1
.L1169:
	movsd	.LC7(%rip), %xmm0
	subl	$48, %ebx
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r13, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
.L1166:
	movl	$1, %edx
	jmp	.L1161
.L1168:
	movq	%r12, %rdx
	andl	$1, %r12d
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%r12, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1169
.L1157:
	leaq	.LC97(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1787:
	.size	_ZN3neo6string6ToSINTEPb, .-_ZN3neo6string6ToSINTEPb
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToDOUBLEEv
	.type	_ZN3neo6string8ToDOUBLEEv, @function
_ZN3neo6string8ToDOUBLEEv:
.LFB1788:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rdi), %rdx
	movq	8(%rdi), %r13
	movq	%rdx, %rbp
	subq	$1, %rbp
	je	.L1190
	xorl	%ebx, %ebx
	jmp	.L1178
	.p2align 4,,10
	.p2align 3
.L1200:
	cmpq	%rbx, %rbp
	je	.L1199
.L1178:
	movzbl	0(%r13,%rbx), %eax
	movq	%rbx, %r12
	addq	$1, %rbx
	cmpb	$46, %al
	jne	.L1200
.L1177:
	cmpq	$1, %r12
	jbe	.L1191
	movsd	.LC7(%rip), %xmm7
	leaq	1(%r13), %r15
	leaq	-2(%r12), %r14
	movq	$0x000000000, 8(%rsp)
	movsd	%xmm7, 16(%rsp)
	jmp	.L1182
	.p2align 4,,10
	.p2align 3
.L1201:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r14, %xmm1
.L1181:
	movsd	16(%rsp), %xmm0
	addq	$1, %r15
	call	pow@PLT
	mulsd	24(%rsp), %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	subq	$1, %r14
	jb	.L1179
.L1182:
	movsbl	(%r15), %eax
	pxor	%xmm3, %xmm3
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm3, 24(%rsp)
	testq	%r14, %r14
	jns	.L1201
	movq	%r14, %rax
	movq	%r14, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1181
.L1191:
	movq	$0x000000000, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L1179:
	cmpq	%rbp, %rbx
	jnb	.L1176
	movsd	.LC7(%rip), %xmm7
	subq	%r12, %rbx
	subq	%r12, %rbp
	leaq	0(%r13,%r12), %r14
	movsd	%xmm7, 16(%rsp)
	jmp	.L1185
	.p2align 4,,10
	.p2align 3
.L1202:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbx, %xmm1
.L1184:
	movsd	16(%rsp), %xmm0
	movsd	%xmm2, 24(%rsp)
	addq	$1, %rbx
	call	pow@PLT
	movsd	24(%rsp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	8(%rsp), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)
	cmpq	%rbx, %rbp
	je	.L1176
.L1185:
	movsbl	(%r14,%rbx), %eax
	pxor	%xmm2, %xmm2
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm2
	testq	%rbx, %rbx
	jns	.L1202
	movq	%rbx, %rax
	movq	%rbx, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1184
.L1190:
	movq	$0x000000000, 8(%rsp)
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L1176:
	movsbl	0(%r13), %ebx
	cmpb	$45, %bl
	jne	.L1186
	movsd	8(%rsp), %xmm0
	xorpd	.LC5(%rip), %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1186:
	.cfi_restore_state
	subq	$1, %r12
	js	.L1188
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r12, %xmm1
.L1189:
	movsd	.LC7(%rip), %xmm0
	subl	$48, %ebx
	call	pow@PLT
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	8(%rsp), %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1199:
	.cfi_restore_state
	movq	%rbp, %r12
	movq	%rdx, %rbx
	jmp	.L1177
	.p2align 4,,10
	.p2align 3
.L1188:
	movq	%r12, %rax
	andl	$1, %r12d
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%r12, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1189
	.cfi_endproc
.LFE1788:
	.size	_ZN3neo6string8ToDOUBLEEv, .-_ZN3neo6string8ToDOUBLEEv
	.section	.rodata.str1.8
	.align 8
.LC98:
	.string	"neo::string.ToDOUBLE(): Success must not be NULL\nParams: Success: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToDOUBLEEPb
	.type	_ZN3neo6string8ToDOUBLEEPb, @function
_ZN3neo6string8ToDOUBLEEPb:
.LFB1789:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, 8(%rsp)
	testq	%rsi, %rsi
	je	.L1232
	movq	(%rdi), %r13
	movq	8(%rdi), %r12
	xorl	%ebx, %ebx
	subq	$1, %r13
	jne	.L1207
	jmp	.L1224
	.p2align 4,,10
	.p2align 3
.L1234:
	addq	$1, %rbx
	cmpq	%rbx, %r13
	je	.L1233
.L1207:
	cmpb	$46, (%r12,%rbx)
	jne	.L1234
	cmpq	$1, %rbx
	jbe	.L1225
.L1223:
	movq	$0x000000000, (%rsp)
	movl	$2, %r15d
	jmp	.L1214
	.p2align 4,,10
	.p2align 3
.L1235:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L1213:
	movq	.LC7(%rip), %rax
	subl	$48, %ebp
	movq	%rax, %xmm0
	call	pow@PLT
	leaq	1(%r15), %rax
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	cmpq	%r15, %rbx
	je	.L1209
	movq	%rax, %r15
.L1214:
	movsbl	-1(%r12,%r15), %ebp
	leal	-48(%rbp), %eax
	cmpb	$9, %al
	ja	.L1215
	movq	%rbx, %rax
	subq	%r15, %rax
	jns	.L1235
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1213
	.p2align 4,,10
	.p2align 3
.L1215:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
.L1211:
	movq	8(%rsp), %rsi
	movb	%al, (%rsi)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1225:
	.cfi_restore_state
	movq	$0x000000000, (%rsp)
	.p2align 4,,10
	.p2align 3
.L1209:
	leaq	1(%rbx), %rax
	cmpq	%r13, %rax
	jnb	.L1205
	movl	$1, %r14d
	leaq	(%r12,%rbx), %r15
	jmp	.L1218
	.p2align 4,,10
	.p2align 3
.L1236:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r14, %xmm1
.L1217:
	movq	.LC7(%rip), %rax
	subl	$48, %ebp
	addq	$1, %r14
	movq	%rax, %xmm0
	call	pow@PLT
	leaq	(%rbx,%r14), %rdx
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	divsd	%xmm1, %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	cmpq	%r13, %rdx
	jnb	.L1205
.L1218:
	movsbl	(%r15,%r14), %ebp
	leal	-48(%rbp), %edx
	cmpb	$9, %dl
	ja	.L1215
	testq	%r14, %r14
	jns	.L1236
	movq	%r14, %rdx
	movq	%r14, %rcx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %ecx
	orq	%rcx, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1217
	.p2align 4,,10
	.p2align 3
.L1233:
	cmpq	$1, %rbx
	jne	.L1223
.L1224:
	movq	$0x000000000, (%rsp)
	.p2align 4,,10
	.p2align 3
.L1205:
	movzbl	(%r12), %ebp
	cmpb	$45, %bpl
	je	.L1237
	leal	-48(%rbp), %eax
	cmpb	$9, %al
	ja	.L1215
	subq	$1, %rbx
	js	.L1221
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbx, %xmm1
.L1222:
	movsd	.LC7(%rip), %xmm0
	call	pow@PLT
	movsbl	%bpl, %eax
	movapd	%xmm0, %xmm1
	subl	$48, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	(%rsp), %xmm0
.L1220:
	movl	$1, %eax
	jmp	.L1211
.L1237:
	movsd	(%rsp), %xmm0
	xorpd	.LC5(%rip), %xmm0
	jmp	.L1220
.L1221:
	movq	%rbx, %rax
	andl	$1, %ebx
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1222
.L1232:
	movq	%rsi, %rax
	leaq	.LC98(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1789:
	.size	_ZN3neo6string8ToDOUBLEEPb, .-_ZN3neo6string8ToDOUBLEEPb
	.section	.text.unlikely
	.align 2
.LCOLDB99:
	.text
.LHOTB99:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToStringEy
	.type	_ZN3neo6string8ToStringEy, @function
_ZN3neo6string8ToStringEy:
.LFB1790:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1790
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$16, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LEHB81:
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %r12
	call	malloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L1255
	movb	$0, (%rax)
	movq	%rax, %rdi
	movl	$1, %ebx
	cmpq	$9, %r14
	jbe	.L1241
	.p2align 4,,10
	.p2align 3
.L1242:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r14, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1242
	testq	%rbx, %rbx
	je	.L1238
.L1241:
	movabsq	$-3689348814741910323, %r13
	movl	$1, %r15d
	jmp	.L1244
	.p2align 4,,10
	.p2align 3
.L1250:
	movq	%rdx, %rbx
.L1244:
	movq	%r14, %rax
	xorl	%edx, %edx
	leaq	1(%r15), %rsi
	divq	%rbx
	movq	%rsi, (%r12)
	addl	$48, %eax
	movq	%rdx, %r14
	movb	%al, 7(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L1256
	leaq	-1(%rax,%r15), %rsi
	leaq	7(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	%rbx, %rax
	movq	8(%r12), %rdi
	movq	(%r12), %r15
	mulq	%r13
	movb	$0, -1(%rdi,%r15)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L1250
.L1238:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1254
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1256:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
	call	printf@PLT
.LEHE81:
	movl	$1, %edi
	call	exit@PLT
.L1255:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1254
.LEHB82:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE82:
.L1254:
	call	__stack_chk_fail@PLT
.L1251:
	movq	%rax, %rbx
	jmp	.L1246
	.section	.gcc_except_table
.LLSDA1790:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1790-.LLSDACSB1790
.LLSDACSB1790:
	.uleb128 .LEHB81-.LFB1790
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB1790
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1251-.LFB1790
	.uleb128 0
.LLSDACSE1790:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1790
	.type	_ZN3neo6string8ToStringEy.cold, @function
_ZN3neo6string8ToStringEy.cold:
.LFSB1790:
.L1246:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$16, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1257
	movq	%rbx, %rdi
.LEHB83:
	call	_Unwind_Resume@PLT
.LEHE83:
.L1257:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1790:
	.section	.gcc_except_table
.LLSDAC1790:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1790-.LLSDACSBC1790
.LLSDACSBC1790:
	.uleb128 .LEHB83-.LCOLDB99
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
.LLSDACSEC1790:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ToStringEy, .-_ZN3neo6string8ToStringEy
	.section	.text.unlikely
	.size	_ZN3neo6string8ToStringEy.cold, .-_ZN3neo6string8ToStringEy.cold
.LCOLDE99:
	.text
.LHOTE99:
	.section	.text.unlikely
	.align 2
.LCOLDB100:
	.text
.LHOTB100:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToStringEx
	.type	_ZN3neo6string8ToStringEx, @function
_ZN3neo6string8ToStringEx:
.LFB1791:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1791
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$16, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LEHB84:
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %r12
	call	malloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L1281
	movb	$0, (%rax)
	movq	%rax, %rdi
	movl	$1, %r15d
	testq	%r14, %r14
	js	.L1282
.L1261:
	movl	$1, %ebx
	cmpq	$9, %r14
	jle	.L1263
	.p2align 4,,10
	.p2align 3
.L1264:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r14, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1264
	testq	%rbx, %rbx
	je	.L1258
.L1263:
	movabsq	$-3689348814741910323, %r13
	jmp	.L1266
	.p2align 4,,10
	.p2align 3
.L1273:
	movq	%rdx, %rbx
.L1266:
	movq	%r14, %rax
	xorl	%edx, %edx
	leaq	1(%r15), %rsi
	divq	%rbx
	movq	%rsi, (%r12)
	addl	$48, %eax
	movq	%rdx, %r14
	movb	%al, 7(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L1265
	leaq	-1(%rax,%r15), %rsi
	leaq	7(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	%rbx, %rax
	movq	8(%r12), %rdi
	movq	(%r12), %r15
	mulq	%r13
	movb	$0, -1(%rdi,%r15)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L1273
.L1258:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1280
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1282:
	.cfi_restore_state
	movq	$2, (%r12)
	movl	$2, %esi
	movb	$45, 6(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%r12)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L1265
	leaq	6(%rsp), %rdi
	movl	$1, %edx
	negq	%r14
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%r12), %rdi
	movq	(%r12), %r15
	movb	$0, -1(%rdi,%r15)
	jmp	.L1261
.L1265:
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE84:
	movl	$1, %edi
	call	exit@PLT
.L1281:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1280
.LEHB85:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE85:
.L1280:
	call	__stack_chk_fail@PLT
.L1274:
	movq	%rax, %rbx
	jmp	.L1268
	.section	.gcc_except_table
.LLSDA1791:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1791-.LLSDACSB1791
.LLSDACSB1791:
	.uleb128 .LEHB84-.LFB1791
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB85-.LFB1791
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1274-.LFB1791
	.uleb128 0
.LLSDACSE1791:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1791
	.type	_ZN3neo6string8ToStringEx.cold, @function
_ZN3neo6string8ToStringEx.cold:
.LFSB1791:
.L1268:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$16, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1283
	movq	%rbx, %rdi
.LEHB86:
	call	_Unwind_Resume@PLT
.LEHE86:
.L1283:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1791:
	.section	.gcc_except_table
.LLSDAC1791:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1791-.LLSDACSBC1791
.LLSDACSBC1791:
	.uleb128 .LEHB86-.LCOLDB100
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
.LLSDACSEC1791:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ToStringEx, .-_ZN3neo6string8ToStringEx
	.section	.text.unlikely
	.size	_ZN3neo6string8ToStringEx.cold, .-_ZN3neo6string8ToStringEx.cold
.LCOLDE100:
	.text
.LHOTE100:
	.section	.text.unlikely
	.align 2
.LCOLDB101:
	.text
.LHOTB101:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string8ToStringEd
	.type	_ZN3neo6string8ToStringEd, @function
_ZN3neo6string8ToStringEd:
.LFB1792:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1792
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$16, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movsd	%xmm0, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LEHB87:
	call	_Znwm@PLT
	movl	$1, %edi
	movq	$1, (%rax)
	movq	%rax, %rbp
	call	malloc@PLT
	movsd	8(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 8(%rbp)
	je	.L1344
	pxor	%xmm1, %xmm1
	movb	$0, (%rax)
	movq	%rax, %rdi
	movl	$1, %r14d
	comisd	%xmm0, %xmm1
	ja	.L1345
.L1287:
	comisd	.LC6(%rip), %xmm0
	jnb	.L1290
	cvttsd2siq	%xmm0, %r13
	testq	%r13, %r13
	js	.L1292
.L1347:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r13, %xmm1
.L1293:
	subsd	%xmm1, %xmm0
	movl	$1, %ebx
	movq	%xmm0, %r15
	cmpq	$9, %r13
	jbe	.L1294
	.p2align 4,,10
	.p2align 3
.L1295:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%r13, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1295
	testq	%rbx, %rbx
	je	.L1296
.L1294:
	movabsq	$-3689348814741910323, %r12
	jmp	.L1298
	.p2align 4,,10
	.p2align 3
.L1318:
	movq	%rdx, %rbx
.L1298:
	movq	%r13, %rax
	xorl	%edx, %edx
	leaq	1(%r14), %rsi
	divq	%rbx
	movq	%rsi, 0(%rbp)
	addl	$48, %eax
	movq	%rdx, %r13
	movb	%al, 21(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L1297
	leaq	-1(%rax,%r14), %rsi
	leaq	21(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	%rbx, %rax
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	mulq	%r12
	movb	$0, -1(%rdi,%r14)
	shrq	$3, %rdx
	cmpq	$9, %rbx
	ja	.L1318
.L1296:
	pxor	%xmm0, %xmm0
	movq	%r15, %xmm5
	comisd	%xmm0, %xmm5
	ja	.L1346
.L1284:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1343
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1290:
	.cfi_restore_state
	movapd	%xmm0, %xmm1
	subsd	.LC6(%rip), %xmm1
	cvttsd2siq	%xmm1, %r13
	btcq	$63, %r13
	testq	%r13, %r13
	jns	.L1347
.L1292:
	movq	%r13, %rax
	movq	%r13, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L1293
	.p2align 4,,10
	.p2align 3
.L1346:
	leaq	1(%r14), %rsi
	movb	$46, 22(%rsp)
	movq	%rsi, 0(%rbp)
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L1297
	leaq	-1(%rax,%r14), %rsi
	leaq	22(%rsp), %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	pxor	%xmm3, %xmm3
	movsd	.LC8(%rip), %xmm4
	movsd	.LC10(%rip), %xmm2
	movb	$0, -1(%rdi,%r14)
	movsd	.LC7(%rip), %xmm5
	jmp	.L1301
	.p2align 4,,10
	.p2align 3
.L1303:
	movq	%r15, %xmm7
	mulsd	%xmm5, %xmm7
	movq	%xmm7, %r15
.L1301:
	movq	%r15, %xmm0
	movq	%r15, %xmm6
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm4
	jbe	.L1302
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	andnpd	%xmm6, %xmm0
	cvtsi2sdq	%rax, %xmm1
	orpd	%xmm1, %xmm0
.L1302:
	movq	%r15, %xmm1
	subsd	%xmm0, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L1303
	movq	%r15, %xmm0
	movq	%rdi, 8(%rsp)
	call	round@PLT
	comisd	.LC6(%rip), %xmm0
	movq	8(%rsp), %rdi
	jnb	.L1304
	cvttsd2siq	%xmm0, %rsi
.L1305:
	movl	$1, %ebx
	cmpq	$9, %rsi
	jbe	.L1306
	.p2align 4,,10
	.p2align 3
.L1307:
	leaq	(%rbx,%rbx,4), %rbx
	movq	%rsi, %rax
	xorl	%edx, %edx
	addq	%rbx, %rbx
	divq	%rbx
	cmpq	$9, %rax
	ja	.L1307
	testq	%rbx, %rbx
	je	.L1284
.L1306:
	movabsq	$-3689348814741910323, %r12
	leaq	23(%rsp), %r13
	jmp	.L1312
	.p2align 4,,10
	.p2align 3
.L1348:
	cvttsd2siq	%xmm0, %rax
.L1309:
	xorl	%edx, %edx
	leaq	1(%r14), %rsi
	divq	%rbx
	movq	%rsi, 0(%rbp)
	addl	$48, %eax
	movq	%rdx, %r15
	movb	%al, 23(%rsp)
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L1297
	leaq	-1(%rax,%r14), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	movb	$0, -1(%rdi,%r14)
	testq	%r15, %r15
	js	.L1310
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
.L1311:
	movq	%rbx, %rax
	mulq	%r12
	shrq	$3, %rdx
	cmpq	$9, %rbx
	jbe	.L1284
	movq	%rdx, %rbx
.L1312:
	comisd	.LC6(%rip), %xmm0
	jb	.L1348
	subsd	.LC6(%rip), %xmm0
	movabsq	$-9223372036854775808, %rcx
	cvttsd2siq	%xmm0, %rax
	xorq	%rcx, %rax
	jmp	.L1309
	.p2align 4,,10
	.p2align 3
.L1310:
	movq	%r15, %rax
	andl	$1, %r15d
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%r15, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L1311
	.p2align 4,,10
	.p2align 3
.L1345:
	movq	$2, 0(%rbp)
	movl	$2, %esi
	movsd	%xmm0, 8(%rsp)
	movb	$45, 20(%rsp)
	call	realloc@PLT
	movsd	8(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 8(%rbp)
	movq	%rax, %rsi
	je	.L1297
	leaq	20(%rsp), %rdi
	movl	$1, %edx
	movsd	%xmm0, 8(%rsp)
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbp), %rdi
	movq	0(%rbp), %r14
	movsd	8(%rsp), %xmm0
	xorpd	.LC5(%rip), %xmm0
	movb	$0, -1(%rdi,%r14)
	jmp	.L1287
	.p2align 4,,10
	.p2align 3
.L1304:
	movapd	%xmm0, %xmm1
	subsd	.LC6(%rip), %xmm1
	cvttsd2siq	%xmm1, %rsi
	btcq	$63, %rsi
	jmp	.L1305
.L1297:
	leaq	.LC1(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE87:
	movl	$1, %edi
	call	exit@PLT
.L1343:
	call	__stack_chk_fail@PLT
.L1344:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1343
.LEHB88:
	call	_ZN3neo6stringC2Ev.part.0
.LEHE88:
.L1321:
	movq	%rax, %rbx
	jmp	.L1313
	.section	.gcc_except_table
.LLSDA1792:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1792-.LLSDACSB1792
.LLSDACSB1792:
	.uleb128 .LEHB87-.LFB1792
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB1792
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1321-.LFB1792
	.uleb128 0
.LLSDACSE1792:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1792
	.type	_ZN3neo6string8ToStringEd.cold, @function
_ZN3neo6string8ToStringEd.cold:
.LFSB1792:
.L1313:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$16, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1349
	movq	%rbx, %rdi
.LEHB89:
	call	_Unwind_Resume@PLT
.LEHE89:
.L1349:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1792:
	.section	.gcc_except_table
.LLSDAC1792:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1792-.LLSDACSBC1792
.LLSDACSBC1792:
	.uleb128 .LEHB89-.LCOLDB101
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
.LLSDACSEC1792:
	.section	.text.unlikely
	.text
	.size	_ZN3neo6string8ToStringEd, .-_ZN3neo6string8ToStringEd
	.section	.text.unlikely
	.size	_ZN3neo6string8ToStringEd.cold, .-_ZN3neo6string8ToStringEd.cold
.LCOLDE101:
	.text
.LHOTE101:
	.align 2
	.p2align 4
	.globl	_ZN3neo6string13LiteralLengthEPKc
	.type	_ZN3neo6string13LiteralLengthEPKc, @function
_ZN3neo6string13LiteralLengthEPKc:
.LFB1793:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.L1353
	call	strlen@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addq	$1, %rax
	ret
.L1353:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1793:
	.size	_ZN3neo6string13LiteralLengthEPKc, .-_ZN3neo6string13LiteralLengthEPKc
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
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
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
