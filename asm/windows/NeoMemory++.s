	.file	"NeoMemory++.cpp"
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
	.ascii "neo::memory::Compare(): NULL Source1 with non-zero Size\12Params: Source1: %p, Source2: %p, Size: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::memory::Compare(): NULL Source2 with non-zero Size\12Params: Source1: %p, Source2: %p, Size: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory7CompareEPKvS2_y
	.def	_ZN3neo6memory7CompareEPKvS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6memory7CompareEPKvS2_y
_ZN3neo6memory7CompareEPKvS2_y:
.LFB158:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%r8, %r8
	setne	%r9b
	testq	%rcx, %rcx
	jne	.L4
	testb	%r9b, %r9b
	jne	.L22
.L4:
	testq	%rdx, %rdx
	sete	%al
	andb	%r9b, %al
	jne	.L5
	movq	%r8, %r11
	xorl	%r10d, %r10d
	shrq	$3, %r11
	jne	.L6
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L24:
	addq	$1, %r10
	cmpq	%r11, %r10
	je	.L23
.L6:
	movq	(%rdx,%r10,8), %r9
	cmpq	%r9, (%rcx,%r10,8)
	je	.L24
.L3:
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	movzbl	(%rdx,%r11), %r9d
	cmpb	%r9b, (%rcx,%r11)
	jne	.L3
	addq	$1, %r11
.L21:
	cmpq	%r8, %r11
	jb	.L9
	movl	$1, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	salq	$3, %r11
	jmp	.L21
.L5:
	movq	%r8, %r9
	movq	%rcx, %rdx
	leaq	.LC1(%rip), %rcx
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L22:
	movq	%r8, %r9
	leaq	.LC0(%rip), %rcx
	movq	%rdx, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "neo::memory::Swap(): NULL Source1 with non-zero Size\12Params: Source1: %p, Source2: %p, Size: %lld\12\0"
	.align 8
.LC3:
	.ascii "neo::memory::Swap(): NULL Source2 with non-zero Size\12Params: Source1: %p, Source2: %p, Size: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4SwapEPvS1_y
	.def	_ZN3neo6memory4SwapEPvS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6memory4SwapEPvS1_y
_ZN3neo6memory4SwapEPvS1_y:
.LFB159:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %r10
	setne	%al
	testq	%rcx, %rcx
	jne	.L26
	testb	%al, %al
	jne	.L72
.L26:
	testq	%rdx, %rdx
	jne	.L50
	testb	%al, %al
	jne	.L27
.L50:
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L73
	leaq	-1(%rax), %rcx
	cmpq	$1, %rcx
	jbe	.L47
	leaq	15(%r10), %r9
	xorl	%ecx, %ecx
	subq	%rdx, %r9
	cmpq	$30, %r9
	ja	.L74
	.p2align 4,,10
	.p2align 3
.L35:
	movq	(%r10,%rcx,8), %r9
	movq	(%rdx,%rcx,8), %r11
	movq	%r11, (%r10,%rcx,8)
	movq	%r9, (%rdx,%rcx,8)
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.L35
	.p2align 4,,10
	.p2align 3
.L36:
	salq	$3, %rax
	cmpq	%r8, %rax
	jnb	.L57
	movq	%r8, %rbx
	subq	%rax, %rbx
	leaq	-1(%rbx), %rsi
	cmpq	$6, %rsi
	jbe	.L45
	leaq	16(%rax), %rcx
	leaq	(%r10,%rax), %r9
	leaq	(%rdx,%rcx), %rdi
	leaq	(%rdx,%rax), %r11
	cmpq	%rdi, %r9
	jnb	.L51
	addq	%r10, %rcx
	cmpq	%rcx, %r11
	jnb	.L51
	.p2align 4,,10
	.p2align 3
.L45:
	movzbl	(%r10,%rax), %ecx
	movzbl	(%rdx,%rax), %r9d
	movb	%r9b, (%r10,%rax)
	movb	%cl, (%rdx,%rax)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L45
.L57:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	movq	%r8, %rcx
	movq	%r8, %r9
	xorl	%r11d, %r11d
	shrq	$4, %rcx
	andq	$-16, %r9
	.p2align 4,,10
	.p2align 3
.L33:
	movdqu	(%r10,%r11), %xmm0
	movdqu	(%rdx,%r11), %xmm1
	movups	%xmm1, (%r10,%r11)
	movups	%xmm0, (%rdx,%r11)
	addq	$16, %r11
	cmpq	%r9, %r11
	jne	.L33
	leaq	(%rcx,%rcx), %r9
	cmpq	%r9, %rax
	je	.L36
	salq	$4, %rcx
	leaq	(%r10,%rcx), %r9
	addq	%rdx, %rcx
	movq	(%r9), %r11
	movq	(%rcx), %rdi
	movq	%rdi, (%r9)
	movq	%r11, (%rcx)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L51:
	cmpq	$14, %rsi
	jbe	.L49
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	andq	$-16, %rsi
	.p2align 4,,10
	.p2align 3
.L40:
	movdqu	(%r9,%rcx), %xmm0
	movdqu	(%r11,%rcx), %xmm2
	movups	%xmm2, (%r9,%rcx)
	movups	%xmm0, (%r11,%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %rsi
	jne	.L40
	addq	%rsi, %rax
	movq	%rax, %rcx
	cmpq	%rsi, %rbx
	je	.L57
	subq	%rsi, %rbx
	leaq	-1(%rbx), %r9
	cmpq	$6, %r9
	jbe	.L43
.L39:
	leaq	(%r10,%rax), %r9
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	(%r9), %r11
	movq	%rsi, (%r9)
	movq	%r11, (%rax)
	movq	%rbx, %rax
	andq	$-8, %rax
	addq	%rax, %rcx
	andl	$7, %ebx
	je	.L57
.L43:
	leaq	(%rdx,%rcx), %rax
	leaq	(%r10,%rcx), %r9
	movzbl	(%rax), %ebx
	movzbl	(%r9), %r11d
	movb	%bl, (%r9)
	movb	%r11b, (%rax)
	leaq	1(%rcx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%r10,%rax), %r9
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movzbl	(%r9), %r11d
	movb	%bl, (%r9)
	movb	%r11b, (%rax)
	leaq	2(%rcx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%r10,%rax), %r9
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movzbl	(%r9), %r11d
	movb	%bl, (%r9)
	movb	%r11b, (%rax)
	leaq	3(%rcx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%r10,%rax), %r9
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movzbl	(%r9), %r11d
	movb	%bl, (%r9)
	movb	%r11b, (%rax)
	leaq	4(%rcx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%r10,%rax), %r9
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movzbl	(%r9), %r11d
	movb	%bl, (%r9)
	movb	%r11b, (%rax)
	leaq	5(%rcx), %rax
	cmpq	%r8, %rax
	jnb	.L57
	leaq	(%r10,%rax), %r9
	addq	%rdx, %rax
	addq	$6, %rcx
	movzbl	(%r9), %r11d
	movzbl	(%rax), %ebx
	movb	%bl, (%r9)
	movb	%r11b, (%rax)
	cmpq	%r8, %rcx
	jnb	.L57
	addq	%rcx, %r10
	addq	%rcx, %rdx
	movzbl	(%r10), %eax
	movzbl	(%rdx), %ecx
	movb	%cl, (%r10)
	movb	%al, (%rdx)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	xorl	%ecx, %ecx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L73:
	testq	%r8, %r8
	jne	.L45
	jmp	.L57
.L49:
	movq	%rax, %rcx
	jmp	.L39
.L27:
	movq	%r8, %r9
	leaq	.LC3(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L72:
	movq	%r8, %r9
	leaq	.LC2(%rip), %rcx
	movq	%rdx, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "neo::memory::CopyTo(): NULL Source with non-zero Size\12Params: Source: %p, Destination: %p, Size: %lld\12\0"
	.align 8
.LC5:
	.ascii "neo::memory::CopyTo(): NULL Destination with non-zero Size\12Params: Source: %p, Destination: %p, Size: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory6CopyToEPKvPvy
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6memory6CopyToEPKvPvy
_ZN3neo6memory6CopyToEPKvPvy:
.LFB161:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%r8, %r8
	movq	%rdx, %r10
	setne	%al
	testq	%rcx, %rcx
	jne	.L76
	testb	%al, %al
	jne	.L121
.L76:
	testq	%r10, %r10
	jne	.L99
	testb	%al, %al
	jne	.L77
.L99:
	movq	%r8, %rax
	shrq	$3, %rax
	je	.L122
	leaq	-1(%rax), %rdx
	cmpq	$2, %rdx
	jbe	.L96
	leaq	8(%rcx), %r9
	xorl	%edx, %edx
	cmpq	%r9, %r10
	jne	.L123
	.p2align 4,,10
	.p2align 3
.L85:
	movq	(%rcx,%rdx,8), %r9
	movq	%r9, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L85
	.p2align 4,,10
	.p2align 3
.L86:
	salq	$3, %rax
	cmpq	%r8, %rax
	jnb	.L104
	movq	%r8, %r9
	leaq	1(%rax), %rdx
	subq	%rax, %r9
	leaq	-1(%r9), %rbx
	cmpq	$6, %rbx
	jbe	.L94
	leaq	(%r10,%rax), %r11
	leaq	1(%rax), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	%r11, %rsi
	subq	%rdi, %rsi
	cmpq	$14, %rsi
	jbe	.L94
	cmpq	$14, %rbx
	jbe	.L98
	movq	%r9, %rbx
	leaq	(%rcx,%rax), %rsi
	xorl	%edx, %edx
	andq	$-16, %rbx
	.p2align 4,,10
	.p2align 3
.L89:
	movdqu	(%rsi,%rdx), %xmm1
	movups	%xmm1, (%r11,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rbx
	jne	.L89
	addq	%rbx, %rax
	movq	%rax, %rdx
	cmpq	%r9, %rbx
	je	.L104
	subq	%rbx, %r9
	leaq	-1(%r9), %r11
	cmpq	$6, %r11
	jbe	.L92
.L88:
	movq	(%rcx,%rax), %r11
	movq	%r11, (%r10,%rax)
	movq	%r9, %rax
	andq	$-8, %rax
	addq	%rax, %rdx
	andl	$7, %r9d
	je	.L104
.L92:
	movzbl	(%rcx,%rdx), %eax
	movb	%al, (%r10,%rdx)
	leaq	1(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L104
	movzbl	1(%rcx,%rdx), %eax
	movb	%al, 1(%r10,%rdx)
	leaq	2(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L104
	movzbl	2(%rcx,%rdx), %eax
	movb	%al, 2(%r10,%rdx)
	leaq	3(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L104
	movzbl	3(%rcx,%rdx), %eax
	movb	%al, 3(%r10,%rdx)
	leaq	4(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L104
	movzbl	4(%rcx,%rdx), %eax
	movb	%al, 4(%r10,%rdx)
	leaq	5(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L104
	movzbl	5(%rcx,%rdx), %eax
	movb	%al, 5(%r10,%rdx)
	leaq	6(%rdx), %rax
	cmpq	%r8, %rax
	jnb	.L104
	movzbl	6(%rcx,%rdx), %eax
	movb	%al, 6(%r10,%rdx)
.L104:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	addq	$1, %rdx
.L94:
	movzbl	(%rcx,%rax), %r9d
	movb	%r9b, (%r10,%rax)
	movq	%rdx, %rax
	cmpq	%rdx, %r8
	jne	.L124
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%r8, %r9
	movq	%r8, %r11
	shrq	$4, %r9
	andq	$-16, %r11
	.p2align 4,,10
	.p2align 3
.L83:
	movdqu	(%rcx,%rdx), %xmm0
	movups	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r11
	jne	.L83
	leaq	(%r9,%r9), %rdx
	cmpq	%rdx, %rax
	je	.L86
	movq	%r9, %rdx
	salq	$4, %rdx
	movq	(%rcx,%rdx), %r9
	movq	%r9, (%r10,%rdx)
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L96:
	xorl	%edx, %edx
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L122:
	movl	$1, %edx
	testq	%r8, %r8
	jne	.L94
	jmp	.L104
.L98:
	movq	%rax, %rdx
	jmp	.L88
.L77:
	movq	%r8, %r9
	movq	%rcx, %rdx
	leaq	.LC5(%rip), %rcx
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L121:
	movq	%r8, %r9
	leaq	.LC4(%rip), %rcx
	movq	%rdx, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "neo::memory::Copy(): NULL Source with non-zero Size\12Params: Source: %p, Size: %lld\12\0"
	.align 8
.LC7:
	.ascii "neo::memory::Copy(): Memory allocation failed\12Params: Source: %p, Size: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4CopyEPKvy
	.def	_ZN3neo6memory4CopyEPKvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6memory4CopyEPKvy
_ZN3neo6memory4CopyEPKvy:
.LFB160:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	testq	%rcx, %rcx
	jne	.L126
	testq	%rdx, %rdx
	jne	.L136
.L129:
	xorl	%esi, %esi
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	testq	%rdx, %rdx
	je	.L129
	movq	%rdx, %rcx
	call	malloc
	movq	%rbx, %r8
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L137
	movq	%rax, %rdx
	movq	%rdi, %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L136:
	movq	%rdx, %r8
	leaq	.LC6(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L137:
	leaq	.LC7(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "neo::memory::LoadTo(): NULL FilePath with non-zero Size\12Params: FilePath: %p, Destination: %p, Size: %lld\12\0"
	.align 8
.LC9:
	.ascii "neo::memory::LoadTo(): NULL Destination with non-zero Size\12Params: FilePath: %s, Destination: %p, Size: %lld\12\0"
.LC10:
	.ascii "r\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory6LoadToEPKcPvy
	.def	_ZN3neo6memory6LoadToEPKcPvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6memory6LoadToEPKcPvy
_ZN3neo6memory6LoadToEPKcPvy:
.LFB163:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movq	%r8, %rsi
	testq	%rcx, %rcx
	je	.L155
	testq	%rdx, %rdx
	jne	.L140
	testq	%r8, %r8
	jne	.L156
.L140:
	leaq	.LC10(%rip), %rdx
	call	fopen
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L144
	testq	%rsi, %rsi
	je	.L142
	addq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L143:
	movq	%rdi, %rcx
	addq	$1, %rbx
	call	fgetc
	movb	%al, -1(%rbx)
	cmpq	%rsi, %rbx
	jne	.L143
.L142:
	movq	%rdi, %rcx
	call	fclose
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L144:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L156:
	movq	%r8, %r9
	movq	%rcx, %rdx
	leaq	.LC9(%rip), %rcx
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L155:
	movq	%r8, %r9
	leaq	.LC8(%rip), %rcx
	movq	%rdx, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "neo::memory::Load(): NULL FilePath with non-zero Size\12Params: FilePath: %p, Size: %lld\12\0"
	.align 8
.LC12:
	.ascii "neo::memory::Load(): Memory allocation failed\12Params: FilePath: %s, Size: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4LoadEPKcy
	.def	_ZN3neo6memory4LoadEPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6memory4LoadEPKcy
_ZN3neo6memory4LoadEPKcy:
.LFB162:
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
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rcx, %rcx
	je	.L168
	testq	%rdx, %rdx
	je	.L159
	movq	%rdx, %rcx
	call	malloc
	movq	%rbx, %r8
	movq	%rax, %rdi
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L169
	movq	%rax, %rdx
	movq	%rsi, %rcx
	call	_ZN3neo6memory6LoadToEPKcPvy
	testb	%al, %al
	jne	.L170
.L157:
	movq	%rbp, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L170:
	movq	%rdi, %rcx
	call	free
	.p2align 4,,10
	.p2align 3
.L159:
	xorl	%ebp, %ebp
	jmp	.L157
.L168:
	movq	%rdx, %r8
	leaq	.LC11(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L169:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "neo::memory::Save(): NULL Source with non-zero Size\12Params: Source: %p, Size: %lld, FilePath: %s\12\0"
	.align 8
.LC14:
	.ascii "neo::memory::Save(): NULL FilePath with non-zero Size\12Params: Source: %p, Size: %lld, FilePath: %s\12\0"
.LC15:
	.ascii "w\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3neo6memory4SaveEPKvyPKc
	.def	_ZN3neo6memory4SaveEPKvyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3neo6memory4SaveEPKvyPKc
_ZN3neo6memory4SaveEPKvyPKc:
.LFB164:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rcx
	testq	%rbx, %rbx
	jne	.L172
	testq	%rdx, %rdx
	jne	.L188
.L172:
	testq	%rcx, %rcx
	je	.L189
	leaq	.LC15(%rip), %rdx
	call	fopen
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L177
	testq	%rsi, %rsi
	je	.L175
	addq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L176:
	movzbl	(%rbx), %ecx
	movq	%rdi, %rdx
	addq	$1, %rbx
	call	fputc
	cmpq	%rsi, %rbx
	jne	.L176
.L175:
	movq	%rdi, %rcx
	call	fclose
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L177:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L188:
	movq	%r8, %r9
	leaq	.LC13(%rip), %rcx
	movq	%rdx, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L189:
	leaq	.LC14(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fgetc;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	fputc;	.scl	2;	.type	32;	.endef
