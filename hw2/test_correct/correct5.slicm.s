	.file	"correct5.slicm.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	$a, -64(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-52(%rbp), %rax
	movl	%eax, a(,%rax,4)
	movslq	-52(%rbp), %rax
	movl	$1, b(,%rax,4)
	incl	-52(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$99, -52(%rbp)
	jle	.LBB0_2
# BB#3:                                 # %for.end
	movl	$0, -52(%rbp)
	movl	b+388(%rip), %r13d
	movl	a+396(%rip), %eax
	movl	a+388(%rip), %edx
	movl	a+392(%rip), %ecx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r12
	movq	%r12, %rsp
	movb	$0, -16(%rsi)
	leal	(%rcx,%rcx,2), %r8d
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	leal	(%r8,%rdx,2), %r11d
	leal	(%rax,%rax,2), %r15d
	leal	(%r15,%r13,2), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	addl	%r13d, %r13d
	leal	10(%r11,%rax,4), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	leal	(%r11,%rax,4), %edi
	leal	(,%rax,4), %r10d
	addl	%edx, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	movb	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movb	$0, -16(%rax)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movb	$0, -16(%rcx)
	movq	%rsp, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rsp
	movb	$0, -16(%r9)
	leal	(%rdx,%r8), %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	addl	%r10d, %r11d
	movl	%r10d, %r8d
	addl	$10, %edi
	movl	%edi, %r9d
	leal	(%r13,%r15), %r10d
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_17:                               # %if.end.split.split.split.split.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	-52(%rbp), %rdi
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	%edx, d(,%rdi,4)
	incl	-52(%rbp)
.LBB0_4:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$99, -52(%rbp)
	jg	.LBB0_18
# BB#5:                                 # %for.body5
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	-52(%rbp), %rdi
	cmpl	$96, a(,%rdi,4)
	jl	.LBB0_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-52(%rbp), %r14d
	incl	%r14d
	movslq	%r14d, %rdi
	movl	$1, a(,%rdi,4)
	movl	-52(%rbp), %edi
	incl	%edi
	movslq	%edi, %rdi
	movl	$0, b(,%rdi,4)
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpb	$1, (%rsi)
	jne	.LBB0_9
# BB#8:                                 # %if.end.split12
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	a+388(%rip), %edi
	movl	%edi, -92(%rbp)
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -96(%rbp)
	movb	$0, (%rsi)
.LBB0_9:                                # %if.end.split12.split
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpb	$1, (%rax)
	jne	.LBB0_11
# BB#10:                                # %if.end.split12.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	a+392(%rip), %edi
	movl	%edi, -100(%rbp)
	movl	-136(%rbp), %edx        # 4-byte Reload
	movl	%edx, -104(%rbp)
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	%edx, -108(%rbp)
	movb	$0, (%rax)
.LBB0_11:                               # %if.end.split12.split.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpb	$1, (%r12)
	jne	.LBB0_13
# BB#12:                                # %if.end.split
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	a+396(%rip), %edi
	movl	%edi, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r11d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	movb	$0, (%r12)
.LBB0_13:                               # %if.end.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	-52(%rbp), %rdi
	movl	-128(%rbp), %edx        # 4-byte Reload
	movl	%edx, c(,%rdi,4)
	cmpb	$1, (%rbx)
	jne	.LBB0_15
# BB#14:                                # %if.end.split.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	b+388(%rip), %edi
	movl	%edi, -84(%rbp)
	movl	%r13d, -88(%rbp)
	movb	$0, (%rbx)
.LBB0_15:                               # %if.end.split.split.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpb	$1, (%rcx)
	jne	.LBB0_17
# BB#16:                                # %if.end.split.split.split.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	a+396(%rip), %edi
	movl	%edi, -112(%rbp)
	movl	%r15d, -116(%rbp)
	movl	%r10d, -120(%rbp)
	movb	$0, (%rcx)
	jmp	.LBB0_17
.LBB0_18:                               # %for.end28
	movl	c+396(%rip), %ecx
	movl	c+392(%rip), %edx
	movl	c+388(%rip), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movl	d+396(%rip), %ecx
	movl	d+392(%rip), %edx
	movl	d+388(%rip), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp11:
	.size	main, .Ltmp11-main
	.cfi_endproc

	.type	a,@object               # @a
	.comm	a,400,16
	.type	b,@object               # @b
	.comm	b,400,16
	.type	c,@object               # @c
	.comm	c,400,16
	.type	d,@object               # @d
	.comm	d,400,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d, %d, %d\n"
	.size	.L.str, 12


	.section	".note.GNU-stack","",@progbits
