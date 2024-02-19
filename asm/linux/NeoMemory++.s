	.file	"NeoMemory++.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::memory::Compare(): NULL Source1 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n"
	.align 8
.LC1:
	.string	"neo::memory::Compare(): NULL Source2 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory7CompareEPKvS2_y
	.type	_ZN3neo6memory7CompareEPKvS2_y, @function
_ZN3neo6memory7CompareEPKvS2_y:
.LFB103:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rdx, %rdx
	setne	%cl
	testq	%rdi, %rdi
	jne	.L2
	testb	%cl, %cl
	jne	.L22
.L2:
	testq	%rsi, %rsi
	sete	%al
	andb	%cl, %al
	jne	.L3
	movq	%rdx, %r9
	xorl	%r8d, %r8d
	shrq	$3, %r9
	jne	.L4
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L24:
	addq	$1, %r8
	cmpq	%r9, %r8
	je	.L23
.L4:
	movq	(%rsi,%r8,8), %rcx
	cmpq	%rcx, (%rdi,%r8,8)
	je	.L24
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	movzbl	(%rsi,%r9), %ecx
	cmpb	%cl, (%rdi,%r9)
	jne	.L1
	addq	$1, %r9
.L20:
	cmpq	%rdx, %r9
	jb	.L7
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	salq	$3, %r9
	jmp	.L20
.L3:
	movq	%rdx, %rcx
	movq	%rdi, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdi
	movq	%rsi, %rdx
	xorl	%eax, %eax
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE103:
	.size	_ZN3neo6memory7CompareEPKvS2_y, .-_ZN3neo6memory7CompareEPKvS2_y
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"neo::memory::Swap(): NULL Source1 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n"
	.align 8
.LC3:
	.string	"neo::memory::Swap(): NULL Source2 with non-zero Size\nParams: Source1: %p, Source2: %p, Size: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4SwapEPvS1_y
	.type	_ZN3neo6memory4SwapEPvS1_y, @function
_ZN3neo6memory4SwapEPvS1_y:
.LFB104:
	.cfi_startproc
	testq	%rdx, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %r8
	setne	%al
	testq	%rdi, %rdi
	jne	.L26
	testb	%al, %al
	jne	.L73
.L26:
	testq	%rsi, %rsi
	jne	.L50
	testb	%al, %al
	jne	.L27
.L50:
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L74
	leaq	-1(%rax), %rdx
	cmpq	$1, %rdx
	jbe	.L47
	leaq	15(%rdi), %rcx
	xorl	%edx, %edx
	subq	%rsi, %rcx
	cmpq	$30, %rcx
	ja	.L75
	.p2align 4,,10
	.p2align 3
.L35:
	movq	(%rdi,%rdx,8), %rcx
	movq	(%rsi,%rdx,8), %r9
	movq	%r9, (%rdi,%rdx,8)
	movq	%rcx, (%rsi,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L35
	.p2align 4,,10
	.p2align 3
.L36:
	salq	$3, %rax
	cmpq	%r8, %rax
	jnb	.L57
	movq	%r8, %r10
	subq	%rax, %r10
	leaq	-1(%r10), %r11
	cmpq	$6, %r11
	jbe	.L45
	leaq	16(%rax), %rdx
	leaq	(%rdi,%rax), %rcx
	leaq	(%rsi,%rdx), %rbx
	leaq	(%rsi,%rax), %r9
	cmpq	%rbx, %rcx
	jnb	.L51
	addq	%rdi, %rdx
	cmpq	%rdx, %r9
	jnb	.L51
	.p2align 4,,10
	.p2align 3
.L45:
	movzbl	(%rdi,%rax), %edx
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, (%rdi,%rax)
	movb	%dl, (%rsi,%rax)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L45
.L57:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	.cfi_restore_state
	movq	%r8, %rdx
	movq	%r8, %r9
	xorl	%ecx, %ecx
	shrq	$4, %rdx
	andq	$-16, %r9
	.p2align 4,,10
	.p2align 3
.L33:
	movdqu	(%rdi,%rcx), %xmm0
	movdqu	(%rsi,%rcx), %xmm1
	movups	%xmm1, (%rdi,%rcx)
	movups	%xmm0, (%rsi,%rcx)
	addq	$16, %rcx
	cmpq	%r9, %rcx
	jne	.L33
	leaq	(%rdx,%rdx), %rcx
	cmpq	%rcx, %rax
	je	.L36
	salq	$4, %rdx
	leaq	(%rdi,%rdx), %rcx
	addq	%rsi, %rdx
	movq	(%rcx), %r9
	movq	(%rdx), %r10
	movq	%r10, (%rcx)
	movq	%r9, (%rdx)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L51:
	cmpq	$14, %r11
	jbe	.L49
	movq	%r10, %r11
	xorl	%edx, %edx
	andq	$-16, %r11
	.p2align 4,,10
	.p2align 3
.L40:
	movdqu	(%rcx,%rdx), %xmm0
	movdqu	(%r9,%rdx), %xmm2
	movups	%xmm2, (%rcx,%rdx)
	movups	%xmm0, (%r9,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r11
	jne	.L40
	addq	%r11, %rax
	movq	%rax, %rdx
	cmpq	%r11, %r10
	je	.L57
	subq	%r11, %r10
	leaq	-1(%r10), %rcx
	cmpq	$6, %rcx
	jbe	.L43
.L39:
	leaq	(%rdi,%rax), %rcx
	addq	%rsi, %rax
	movq	(%rax), %r11
	movq	(%rcx), %r9
	movq	%r11, (%rcx)
	movq	%r9, (%rax)
	movq	%r10, %rax
	andq	$-8, %rax
	addq	%rax, %rdx
	andl	$7, %r10d
	je	.L57
.L43:
	leaq	(%rsi,%rdx), %rax
	leaq	(%rdi,%rdx), %rcx
	movzbl	(%rax), %r10d
	movzbl	(%rcx), %r9d
	movb	%r10b, (%rcx)
	movb	%r9b, (%rax)
	leaq	1(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%rdi,%rax), %rcx
	addq	%rsi, %rax
	movzbl	(%rax), %r10d
	movzbl	(%rcx), %r9d
	movb	%r10b, (%rcx)
	movb	%r9b, (%rax)
	leaq	2(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%rdi,%rax), %rcx
	addq	%rsi, %rax
	movzbl	(%rax), %r10d
	movzbl	(%rcx), %r9d
	movb	%r10b, (%rcx)
	movb	%r9b, (%rax)
	leaq	3(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%rdi,%rax), %rcx
	addq	%rsi, %rax
	movzbl	(%rax), %r10d
	movzbl	(%rcx), %r9d
	movb	%r10b, (%rcx)
	movb	%r9b, (%rax)
	leaq	4(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%rdi,%rax), %rcx
	addq	%rsi, %rax
	movzbl	(%rax), %r10d
	movzbl	(%rcx), %r9d
	movb	%r10b, (%rcx)
	movb	%r9b, (%rax)
	leaq	5(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%rdi,%rax), %rcx
	addq	%rsi, %rax
	addq	$6, %rdx
	movzbl	(%rcx), %r9d
	movzbl	(%rax), %r10d
	movb	%r10b, (%rcx)
	movb	%r9b, (%rax)
	cmpq	%r8, %rdx
	jnb	.L57
	addq	%rdx, %rdi
	addq	%rdx, %rsi
	movzbl	(%rdi), %eax
	movzbl	(%rsi), %edx
	movb	%dl, (%rdi)
	movb	%al, (%rsi)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L74:
	testq	%r8, %r8
	jne	.L45
	jmp	.L57
.L49:
	movq	%rax, %rdx
	jmp	.L39
.L27:
	movq	%rdi, %rsi
	movq	%r8, %rcx
	leaq	.LC3(%rip), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L73:
	movq	%rdx, %rcx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %rdx
	xorl	%eax, %eax
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE104:
	.size	_ZN3neo6memory4SwapEPvS1_y, .-_ZN3neo6memory4SwapEPvS1_y
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"neo::memory::CopyTo(): NULL Source with non-zero Size\nParams: Source: %p, Destination: %p, Size: %lld\n"
	.align 8
.LC5:
	.string	"neo::memory::CopyTo(): NULL Destination with non-zero Size\nParams: Source: %p, Destination: %p, Size: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory6CopyToEPKvPvy
	.type	_ZN3neo6memory6CopyToEPKvPvy, @function
_ZN3neo6memory6CopyToEPKvPvy:
.LFB106:
	.cfi_startproc
	testq	%rdx, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rcx
	setne	%al
	testq	%rdi, %rdi
	jne	.L77
	testb	%al, %al
	jne	.L123
.L77:
	testq	%rsi, %rsi
	jne	.L100
	testb	%al, %al
	jne	.L78
.L100:
	movq	%rcx, %rax
	shrq	$3, %rax
	je	.L124
	leaq	-1(%rax), %rdx
	cmpq	$2, %rdx
	jbe	.L97
	leaq	8(%rdi), %r8
	xorl	%edx, %edx
	cmpq	%r8, %rsi
	jne	.L125
	.p2align 4,,10
	.p2align 3
.L86:
	movq	(%rdi,%rdx,8), %r8
	movq	%r8, (%rsi,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L86
	.p2align 4,,10
	.p2align 3
.L87:
	salq	$3, %rax
	cmpq	%rcx, %rax
	jnb	.L105
	movq	%rcx, %r8
	leaq	1(%rax), %rdx
	subq	%rax, %r8
	leaq	-1(%r8), %r10
	cmpq	$6, %r10
	jbe	.L95
	leaq	(%rsi,%rax), %r9
	leaq	1(%rax), %rdx
	leaq	(%rdi,%rdx), %rbx
	movq	%r9, %r11
	subq	%rbx, %r11
	cmpq	$14, %r11
	jbe	.L95
	cmpq	$14, %r10
	jbe	.L99
	movq	%r8, %r10
	leaq	(%rdi,%rax), %r11
	xorl	%edx, %edx
	andq	$-16, %r10
	.p2align 4,,10
	.p2align 3
.L90:
	movdqu	(%r11,%rdx), %xmm1
	movups	%xmm1, (%r9,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r10
	jne	.L90
	addq	%r10, %rax
	movq	%rax, %rdx
	cmpq	%r8, %r10
	je	.L105
	subq	%r10, %r8
	leaq	-1(%r8), %r9
	cmpq	$6, %r9
	jbe	.L93
.L89:
	movq	(%rdi,%rax), %r9
	movq	%r9, (%rsi,%rax)
	movq	%r8, %rax
	andq	$-8, %rax
	addq	%rax, %rdx
	andl	$7, %r8d
	je	.L105
.L93:
	movzbl	(%rdi,%rdx), %eax
	movb	%al, (%rsi,%rdx)
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rax
	jnb	.L105
	movzbl	1(%rdi,%rdx), %eax
	movb	%al, 1(%rsi,%rdx)
	leaq	2(%rdx), %rax
	cmpq	%rcx, %rax
	jnb	.L105
	movzbl	2(%rdi,%rdx), %eax
	movb	%al, 2(%rsi,%rdx)
	leaq	3(%rdx), %rax
	cmpq	%rcx, %rax
	jnb	.L105
	movzbl	3(%rdi,%rdx), %eax
	movb	%al, 3(%rsi,%rdx)
	leaq	4(%rdx), %rax
	cmpq	%rcx, %rax
	jnb	.L105
	movzbl	4(%rdi,%rdx), %eax
	movb	%al, 4(%rsi,%rdx)
	leaq	5(%rdx), %rax
	cmpq	%rcx, %rax
	jnb	.L105
	movzbl	5(%rdi,%rdx), %eax
	movb	%al, 5(%rsi,%rdx)
	leaq	6(%rdx), %rax
	cmpq	%rcx, %rax
	jnb	.L105
	movzbl	6(%rdi,%rdx), %eax
	movb	%al, 6(%rsi,%rdx)
.L105:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	.cfi_restore_state
	addq	$1, %rdx
.L95:
	movzbl	(%rdi,%rax), %r8d
	movb	%r8b, (%rsi,%rax)
	movq	%rdx, %rax
	cmpq	%rdx, %rcx
	jne	.L126
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	.cfi_restore_state
	movq	%rcx, %r8
	movq	%rcx, %r9
	shrq	$4, %r8
	andq	$-16, %r9
	.p2align 4,,10
	.p2align 3
.L84:
	movdqu	(%rdi,%rdx), %xmm0
	movups	%xmm0, (%rsi,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r9
	jne	.L84
	leaq	(%r8,%r8), %rdx
	cmpq	%rdx, %rax
	je	.L87
	movq	%r8, %rdx
	salq	$4, %rdx
	movq	(%rdi,%rdx), %r8
	movq	%r8, (%rsi,%rdx)
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L97:
	xorl	%edx, %edx
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L124:
	movl	$1, %edx
	testq	%rcx, %rcx
	jne	.L95
	jmp	.L105
.L99:
	movq	%rax, %rdx
	jmp	.L89
.L78:
	movq	%rdi, %rsi
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L123:
	movq	%rsi, %rdx
	leaq	.LC4(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE106:
	.size	_ZN3neo6memory6CopyToEPKvPvy, .-_ZN3neo6memory6CopyToEPKvPvy
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::memory::Copy(): NULL Source with non-zero Size\nParams: Source: %p, Size: %lld\n"
	.align 8
.LC7:
	.string	"neo::memory::Copy(): Memory allocation failed\nParams: Source: %p, Size: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4CopyEPKvy
	.type	_ZN3neo6memory4CopyEPKvy, @function
_ZN3neo6memory4CopyEPKvy:
.LFB105:
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
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	jne	.L128
	testq	%rsi, %rsi
	jne	.L139
.L131:
	xorl	%ebp, %ebp
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	.cfi_restore_state
	testq	%rsi, %rsi
	je	.L131
	movq	%rdi, %r12
	movq	%rsi, %rdi
	call	malloc@PLT
	movq	%rbx, %rdx
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L140
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rbp, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L139:
	.cfi_restore_state
	movq	%rsi, %rdx
	leaq	.LC6(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L140:
	leaq	.LC7(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE105:
	.size	_ZN3neo6memory4CopyEPKvy, .-_ZN3neo6memory4CopyEPKvy
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"neo::memory::LoadTo(): NULL FilePath with non-zero Size\nParams: FilePath: %p, Destination: %p, Size: %lld\n"
	.align 8
.LC9:
	.string	"neo::memory::LoadTo(): NULL Destination with non-zero Size\nParams: FilePath: %s, Destination: %p, Size: %lld\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"r"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory6LoadToEPKcPvy
	.type	_ZN3neo6memory6LoadToEPKcPvy, @function
_ZN3neo6memory6LoadToEPKcPvy:
.LFB108:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.L159
	testq	%rsi, %rsi
	jne	.L143
	testq	%rdx, %rdx
	jne	.L160
.L143:
	leaq	.LC10(%rip), %rsi
	call	fopen@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L147
	testq	%rbp, %rbp
	je	.L145
	addq	%rbx, %rbp
	.p2align 4,,10
	.p2align 3
.L146:
	movq	%r12, %rdi
	addq	$1, %rbx
	call	fgetc@PLT
	movb	%al, -1(%rbx)
	cmpq	%rbp, %rbx
	jne	.L146
.L145:
	movq	%r12, %rdi
	call	fclose@PLT
	xorl	%eax, %eax
.L141:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L160:
	.cfi_restore_state
	movq	%rdx, %rcx
	movq	%rdi, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	leaq	.LC9(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L159:
	movq	%rdx, %rcx
	leaq	.LC8(%rip), %rdi
	movq	%rsi, %rdx
	xorl	%eax, %eax
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L147:
	movl	$1, %eax
	jmp	.L141
	.cfi_endproc
.LFE108:
	.size	_ZN3neo6memory6LoadToEPKcPvy, .-_ZN3neo6memory6LoadToEPKcPvy
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"neo::memory::Load(): NULL FilePath with non-zero Size\nParams: FilePath: %p, Size: %lld\n"
	.align 8
.LC12:
	.string	"neo::memory::Load(): Memory allocation failed\nParams: FilePath: %s, Size: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4LoadEPKcy
	.type	_ZN3neo6memory4LoadEPKcy, @function
_ZN3neo6memory4LoadEPKcy:
.LFB107:
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
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	je	.L173
	testq	%rsi, %rsi
	je	.L163
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	call	malloc@PLT
	movq	%rbx, %rdx
	movq	%rax, %r12
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L174
	movq	%rax, %rsi
	movq	%rbp, %rdi
	call	_ZN3neo6memory6LoadToEPKcPvy
	testb	%al, %al
	jne	.L175
.L161:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
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
.L175:
	.cfi_restore_state
	movq	%r12, %rdi
	call	free@PLT
	.p2align 4,,10
	.p2align 3
.L163:
	xorl	%r13d, %r13d
	jmp	.L161
.L173:
	movq	%rsi, %rdx
	leaq	.LC11(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L174:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE107:
	.size	_ZN3neo6memory4LoadEPKcy, .-_ZN3neo6memory4LoadEPKcy
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"neo::memory::Save(): NULL Source with non-zero Size\nParams: Source: %p, Size: %lld, FilePath: %s\n"
	.align 8
.LC14:
	.string	"neo::memory::Save(): NULL FilePath with non-zero Size\nParams: Source: %p, Size: %lld, FilePath: %s\n"
	.section	.rodata.str1.1
.LC15:
	.string	"w"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4SaveEPKvyPKc
	.type	_ZN3neo6memory4SaveEPKvyPKc, @function
_ZN3neo6memory4SaveEPKvyPKc:
.LFB109:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rdx, %rdi
	testq	%rbx, %rbx
	jne	.L177
	testq	%rsi, %rsi
	jne	.L194
.L177:
	testq	%rdi, %rdi
	je	.L195
	leaq	.LC15(%rip), %rsi
	call	fopen@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L182
	testq	%rbp, %rbp
	je	.L180
	addq	%rbx, %rbp
	.p2align 4,,10
	.p2align 3
.L181:
	movzbl	(%rbx), %edi
	movq	%r12, %rsi
	addq	$1, %rbx
	call	fputc@PLT
	cmpq	%rbp, %rbx
	jne	.L181
.L180:
	movq	%r12, %rdi
	call	fclose@PLT
	xorl	%eax, %eax
.L176:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L194:
	.cfi_restore_state
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdi
	movq	%rsi, %rdx
	xorl	%eax, %eax
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L182:
	movl	$1, %eax
	jmp	.L176
.L195:
	leaq	.LC14(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE109:
	.size	_ZN3neo6memory4SaveEPKvyPKc, .-_ZN3neo6memory4SaveEPKvyPKc
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
