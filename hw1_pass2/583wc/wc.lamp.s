	.file	"<stdin>"
	.text
	.globl	my_filbuf
	.align	16, 0x90
	.type	my_filbuf,@function
my_filbuf:                              # @my_filbuf
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	leaq	-24(%rbp), %r14
	xorl	%edi, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -24(%rbp)
	movl	$1, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-24(%rbp), %rbx
	movl	$2, %edi
	callq	LAMP_register
	movl	$buffer, %edi
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%rbx, %rcx
	callq	fread
	movslq	%eax, %rbx
	movl	$3, %edi
	movl	$bufcount, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, bufcount(%rip)
	movl	$4, %edi
	movl	$bufcurrent, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, bufcurrent(%rip)
	movl	$5, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-24(%rbp), %rbx
	movl	$6, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$7, %edi
	movl	$bufcount, %esi
	callq	LAMP_load4
	movslq	bufcount(%rip), %rbx
	leal	1(%rbx), %eax
	movslq	%eax, %r14
	movl	$8, %edi
	movl	$bufcount, %esi
	movq	%r14, %rdx
	callq	LAMP_store4
	leaq	buffer(%rbx), %rsi
	movl	%r14d, bufcount(%rip)
	movl	$9, %edi
	movq	$-1, %rdx
	callq	LAMP_store1
	movb	$-1, buffer(%rbx)
.LBB0_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp8:
	.size	my_filbuf, .Ltmp8-my_filbuf
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movl	%edi, %ebx
	movl	$151, %edi
	movl	$5, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	LAMP_init
	leaq	-44(%rbp), %rsi
	movl	$10, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -44(%rbp)
	movslq	%ebx, %r12
	leaq	-48(%rbp), %r14
	movl	$11, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	LAMP_store4
	leaq	-56(%rbp), %r13
	movl	%r12d, -48(%rbp)
	movl	$12, %edi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	LAMP_store8
	movq	%r15, -56(%rbp)
	movl	$153, %edi
	callq	LAMP_loop_invocation
	movl	$1049089, %r15d         # imm = 0x100201
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_6:                                # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$20, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	8(%rbx), %rsi
	movl	$21, %edi
	callq	LAMP_load8
	movq	8(%rbx), %rbx
	incq	%rbx
	movl	$22, %edi
	movl	$wd, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, wd(%rip)
	movl	$26, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-48(%rbp), %eax
	decl	%eax
	movslq	%eax, %rbx
	movl	$27, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -48(%rbp)
	movl	$28, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	addq	$8, %rbx
	movl	$29, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	callq	LAMP_loop_iteration_end
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$13, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	xorb	%al, %al
	cmpl	$2, -48(%rbp)
	jl	.LBB1_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$14, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	8(%rbx), %rsi
	movl	$15, %edi
	callq	LAMP_load8
	movq	8(%rbx), %rbx
	movl	$16, %edi
	movq	%rbx, %rsi
	callq	LAMP_load1
	movsbl	(%rbx), %eax
	cmpl	$45, %eax
	sete	%al
.LBB1_3:                                # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	testb	%al, %al
	je	.LBB1_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$17, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	8(%rbx), %rsi
	movl	$18, %edi
	callq	LAMP_load8
	movq	8(%rbx), %rbx
	leaq	1(%rbx), %rsi
	movl	$19, %edi
	callq	LAMP_load1
	movsbl	1(%rbx), %eax
	addl	$-99, %eax
	cmpl	$20, %eax
	ja	.LBB1_41
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	btl	%eax, %r15d
	jb	.LBB1_6
.LBB1_41:                               # %usage
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$23, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$24, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$25, %edi
	callq	LAMP_register
	movl	$1, %edi
	callq	exit
.LBB1_7:                                # %while.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-60(%rbp), %r13
	movl	$30, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, -60(%rbp)
	movl	$31, %edi
	movl	$stdin, %esi
	callq	LAMP_load8
	leaq	-72(%rbp), %rsi
	movq	stdin(%rip), %rbx
	movl	$32, %edi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	movl	$152, %edi
	callq	LAMP_loop_invocation
	leaq	-48(%rbp), %rbx
	.align	16, 0x90
.LBB1_8:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	callq	LAMP_loop_iteration_begin
	movl	$33, %edi
	movq	%rbx, %rsi
	callq	LAMP_load4
	cmpl	$2, -48(%rbp)
	jl	.LBB1_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$34, %edi
	movq	%r13, %rsi
	callq	LAMP_load4
	movslq	-60(%rbp), %r12
	movl	$35, %edi
	leaq	-56(%rbp), %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	(%rbx,%r12,8), %rsi
	movl	$36, %edi
	callq	LAMP_load8
	movq	(%rbx,%r12,8), %rbx
	movl	$37, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str2, %esi
	callq	fopen
	movq	%rax, %rbx
	movl	$38, %edi
	leaq	-72(%rbp), %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	testq	%rbx, %rbx
	jne	.LBB1_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$39, %edi
	movq	%r13, %rsi
	callq	LAMP_load4
	movslq	-60(%rbp), %r12
	movl	$40, %edi
	leaq	-56(%rbp), %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	(%rbx,%r12,8), %rsi
	movl	$41, %edi
	callq	LAMP_load8
	movq	(%rbx,%r12,8), %rbx
	movl	$42, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	perror
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_11:                               # %if.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$43, %edi
	movl	$linect, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, linect(%rip)
	movl	$44, %edi
	movl	$wordct, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, wordct(%rip)
	movl	$45, %edi
	movl	$charct, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, charct(%rip)
	movl	$46, %edi
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -64(%rbp)
	movl	$47, %edi
	movl	$last_charct, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, last_charct(%rip)
	movl	$151, %edi
	callq	LAMP_loop_invocation
	leaq	-76(%rbp), %r14
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_32:                               # %if.end70
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$92, %edi
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -64(%rbp)
	callq	LAMP_loop_iteration_end
.LBB1_12:                               # %for.cond
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LAMP_loop_iteration_begin
	movl	$48, %edi
	movl	$bufcurrent, %esi
	callq	LAMP_load4
	movl	bufcurrent(%rip), %ebx
	movl	$49, %edi
	movl	$bufcount, %esi
	callq	LAMP_load4
	cmpl	bufcount(%rip), %ebx
	jl	.LBB1_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$50, %edi
	leaq	-72(%rbp), %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %rdi
	callq	my_filbuf
	movl	$51, %edi
	movl	$bufcurrent, %esi
	callq	LAMP_load4
	movslq	bufcurrent(%rip), %r12
	leal	1(%r12), %eax
	movslq	%eax, %rbx
	movl	$52, %edi
	movl	$bufcurrent, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, bufcurrent(%rip)
	leaq	buffer(%r12), %rsi
	movl	$53, %edi
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               # %cond.false
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$54, %edi
	movl	$bufcurrent, %esi
	callq	LAMP_load4
	movslq	bufcurrent(%rip), %r12
	leal	1(%r12), %eax
	movslq	%eax, %rbx
	movl	$55, %edi
	movl	$bufcurrent, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, bufcurrent(%rip)
	leaq	buffer(%r12), %rsi
	movl	$56, %edi
.LBB1_15:                               # %cond.false
                                        #   in Loop: Header=BB1_12 Depth=2
	callq	LAMP_load1
	movsbl	buffer(%r12), %eax
	movslq	%eax, %rbx
	movl	$57, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -76(%rbp)
	movl	$58, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$-1, -76(%rbp)
	je	.LBB1_33
# BB#16:                                # %if.end27
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$59, %edi
	movl	$charct, %esi
	callq	LAMP_load8
	movq	charct(%rip), %rbx
	incq	%rbx
	movl	$60, %edi
	movl	$charct, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, charct(%rip)
	movl	$61, %edi
	movl	$last_charct, %esi
	callq	LAMP_load8
	movq	last_charct(%rip), %rbx
	incq	%rbx
	movl	$62, %edi
	movl	$last_charct, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, last_charct(%rip)
	movl	$63, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$33, -76(%rbp)
	jl	.LBB1_24
# BB#17:                                # %land.lhs.true32
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$64, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$126, -76(%rbp)
	jg	.LBB1_24
# BB#18:                                # %if.then35
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$65, %edi
	leaq	-64(%rbp), %rsi
	callq	LAMP_load4
	cmpl	$0, -64(%rbp)
	jne	.LBB1_23
# BB#19:                                # %if.then36
                                        #   in Loop: Header=BB1_12 Depth=2
	movq	%r14, %r15
	movl	$66, %edi
	movl	$wordct, %esi
	callq	LAMP_load8
	movq	wordct(%rip), %rbx
	incq	%rbx
	movl	$67, %edi
	movl	$wordct, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, wordct(%rip)
	movl	$68, %edi
	leaq	-64(%rbp), %rbx
	movq	%rbx, %rsi
	callq	LAMP_load4
	movl	-64(%rbp), %eax
	incl	%eax
	movslq	%eax, %r14
	movl	$69, %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	LAMP_store4
	movl	%r14d, -64(%rbp)
	movl	$70, %edi
	movl	$last_charct, %esi
	callq	LAMP_load8
	cmpq	$25, last_charct(%rip)
	jl	.LBB1_21
# BB#20:                                # %if.then41
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$71, %edi
	movl	$wordct_array+192, %esi
	callq	LAMP_load8
	movq	wordct_array+192(%rip), %rbx
	incq	%rbx
	movl	$72, %edi
	movl	$wordct_array+192, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, wordct_array+192(%rip)
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_24:                               # %if.end47
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$77, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$10, -76(%rbp)
	jne	.LBB1_30
# BB#25:                                # %if.then50
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$78, %edi
	movl	$linect, %esi
	callq	LAMP_load8
	movq	linect(%rip), %rbx
	incq	%rbx
	movl	$79, %edi
	movl	$linect, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, linect(%rip)
	movl	$80, %edi
	movl	$linect, %esi
	callq	LAMP_load8
	cmpq	$21, linect(%rip)
	jl	.LBB1_28
# BB#26:                                # %land.lhs.true54
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$81, %edi
	movl	$last_charct, %esi
	callq	LAMP_load8
	cmpq	$11, last_charct(%rip)
	jl	.LBB1_28
# BB#27:                                # %if.then57
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$82, %edi
	movl	$linect, %esi
	callq	LAMP_load8
	movabsq	$7378697629483820647, %rax # imm = 0x6666666666666667
	imulq	linect(%rip)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	movslq	%edx, %rbx
	movl	$83, %edi
	movl	$main.x, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, main.x(%rip)
	movl	$84, %edi
	movl	$main.x, %esi
	callq	LAMP_load4
	imull	$98, main.x(%rip), %eax
	movslq	%eax, %rbx
	movl	$85, %edi
	movl	$main.y, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, main.y(%rip)
	movl	$86, %edi
	movl	$main.y, %esi
	callq	LAMP_load4
	movl	main.y(%rip), %eax
	movslq	%eax, %rax
	imulq	$-1307163959, %rax, %rdx # imm = 0xFFFFFFFFB21642C9
	shrq	$32, %rdx
	movl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$4, %ecx
	addl	%edx, %ecx
	imull	$23, %ecx, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rbx
	movl	$87, %edi
	jmp	.LBB1_29
	.align	16, 0x90
.LBB1_30:                               # %if.else62
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$90, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$32, -76(%rbp)
	je	.LBB1_32
# BB#31:                                # %land.lhs.true65
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$91, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$9, -76(%rbp)
	jne	.LBB1_23
	jmp	.LBB1_32
	.align	16, 0x90
.LBB1_28:                               # %if.else59
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$88, %edi
	movl	$main.z, %esi
	callq	LAMP_load4
	movl	main.z(%rip), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$89, %edi
.LBB1_29:                               # %if.else59
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$main.z, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, main.z(%rip)
	jmp	.LBB1_32
.LBB1_21:                               # %if.else
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$73, %edi
	movl	$last_charct, %esi
	callq	LAMP_load8
	movq	%r13, %r14
	movq	last_charct(%rip), %r13
	leaq	wordct_array(,%r13,8), %r12
	movl	$74, %edi
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	wordct_array(,%r13,8), %rbx
	incq	%rbx
	movl	$75, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, wordct_array(,%r13,8)
	movq	%r14, %r13
.LBB1_22:                               # %if.else
                                        #   in Loop: Header=BB1_12 Depth=2
	movq	%r15, %r14
	movl	$76, %edi
	movl	$last_charct, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, last_charct(%rip)
.LBB1_23:                               # %for.cond.backedge
                                        #   in Loop: Header=BB1_12 Depth=2
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_33:                               # %for.end
                                        #   in Loop: Header=BB1_8 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$93, %edi
	movl	$wd, %esi
	callq	LAMP_load8
	movq	wd(%rip), %r12
	movl	$94, %edi
	movl	$charct, %esi
	callq	LAMP_load8
	movq	charct(%rip), %rbx
	movl	$95, %edi
	movl	$wordct, %esi
	callq	LAMP_load8
	movq	wordct(%rip), %r14
	movl	$96, %edi
	movl	$linect, %esi
	callq	LAMP_load8
	movq	linect(%rip), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	$wordct_array, %r8d
	callq	wcp
	movl	$97, %edi
	leaq	-48(%rbp), %rsi
	callq	LAMP_load4
	cmpl	$2, -48(%rbp)
	jl	.LBB1_35
# BB#34:                                # %if.then73
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$98, %edi
	movq	%r13, %rsi
	callq	LAMP_load4
	movslq	-60(%rbp), %r12
	movl	$99, %edi
	leaq	-56(%rbp), %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	(%rbx,%r12,8), %rsi
	movl	$100, %edi
	callq	LAMP_load8
	movq	(%rbx,%r12,8), %rbx
	movl	$101, %edi
	callq	LAMP_register
	movl	$.L.str3, %edi
	movq	%rbx, %rsi
	xorb	%al, %al
	callq	printf
	jmp	.LBB1_36
	.align	16, 0x90
.LBB1_35:                               # %if.else77
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$102, %edi
	callq	LAMP_register
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
.LBB1_36:                               # %if.end79
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$103, %edi
	leaq	-72(%rbp), %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %rbx
	movl	$104, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	fclose
	movl	$105, %edi
	movl	$linect, %esi
	callq	LAMP_load8
	movq	linect(%rip), %rbx
	movl	$106, %edi
	movl	$tlinect, %esi
	callq	LAMP_load8
	addq	tlinect(%rip), %rbx
	movl	$107, %edi
	movl	$tlinect, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, tlinect(%rip)
	movl	$108, %edi
	movl	$wordct, %esi
	callq	LAMP_load8
	movq	wordct(%rip), %rbx
	movl	$109, %edi
	movl	$twordct, %esi
	callq	LAMP_load8
	addq	twordct(%rip), %rbx
	movl	$110, %edi
	movl	$twordct, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, twordct(%rip)
	movl	$111, %edi
	movl	$charct, %esi
	callq	LAMP_load8
	movq	charct(%rip), %rbx
	movl	$112, %edi
	movl	$tcharct, %esi
	callq	LAMP_load8
	addq	tcharct(%rip), %rbx
	movl	$113, %edi
	movl	$tcharct, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, tcharct(%rip)
.LBB1_37:                               # %do.cond
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$114, %edi
	movq	%r13, %rsi
	callq	LAMP_load4
	movl	-60(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$115, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -60(%rbp)
	movl	$116, %edi
	leaq	-48(%rbp), %r14
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-48(%rbp), %r12d
	callq	LAMP_loop_iteration_end
	cmpl	%r12d, %ebx
	movq	%r14, %rbx
	jl	.LBB1_8
# BB#38:                                # %do.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-48(%rbp), %rsi
	movl	$117, %edi
	callq	LAMP_load4
	cmpl	$3, -48(%rbp)
	jl	.LBB1_40
# BB#39:                                # %if.then88
	movl	$118, %edi
	movl	$wd, %esi
	callq	LAMP_load8
	movq	wd(%rip), %r14
	movl	$119, %edi
	movl	$tcharct, %esi
	callq	LAMP_load8
	movq	tcharct(%rip), %r15
	movl	$120, %edi
	movl	$twordct, %esi
	callq	LAMP_load8
	movq	twordct(%rip), %rbx
	movl	$121, %edi
	movl	$tlinect, %esi
	callq	LAMP_load8
	movq	tlinect(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	$wordct_array, %r8d
	callq	wcp
	movl	$122, %edi
	callq	LAMP_register
	movl	$.L.str5, %edi
	xorb	%al, %al
	callq	printf
.LBB1_40:                               # %if.end90
	movl	$123, %edi
	callq	LAMP_register
	xorl	%edi, %edi
	callq	exit
.Ltmp20:
	.size	main, .Ltmp20-main
	.cfi_endproc

	.globl	wcp
	.align	16, 0x90
	.type	wcp,@function
wcp:                                    # @wcp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	-48(%rbp), %rsi
	movl	$125, %edi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
	leaq	-56(%rbp), %rsi
	movl	$126, %edi
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -56(%rbp)
	leaq	-64(%rbp), %rsi
	movl	$127, %edi
	movq	%r14, %rdx
	callq	LAMP_store8
	leaq	-72(%rbp), %rsi
	movq	%r14, -64(%rbp)
	movl	$128, %edi
	movq	%r12, %rdx
	callq	LAMP_store8
	leaq	-80(%rbp), %r14
	movq	%r12, -72(%rbp)
	movl	$129, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	LAMP_store8
	movq	%r15, -80(%rbp)
	movl	$130, %edi
	callq	LAMP_register
	movl	$.L.str6, %edi
	xorb	%al, %al
	callq	printf
	leaq	-84(%rbp), %r15
	movl	$131, %edi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -84(%rbp)
	movl	$155, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$133, %edi
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-84(%rbp), %r12d
	movl	$134, %edi
	movq	%r15, %rsi
	callq	LAMP_load4
	movslq	-84(%rbp), %r13
	movl	$135, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-80(%rbp), %rbx
	leaq	(%rbx,%r13,8), %rsi
	movl	$136, %edi
	callq	LAMP_load8
	movq	(%rbx,%r13,8), %rbx
	movl	$137, %edi
	callq	LAMP_register
	movl	$.L.str7, %edi
	movl	%r12d, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	printf
	movl	$138, %edi
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-84(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$139, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -84(%rbp)
	callq	LAMP_loop_iteration_end
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$132, %edi
	movq	%r15, %rsi
	callq	LAMP_load4
	cmpl	$24, -84(%rbp)
	jle	.LBB2_2
# BB#3:                                 # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$154, %edi
	callq	LAMP_loop_invocation
	leaq	-48(%rbp), %r13
	leaq	-64(%rbp), %r15
	leaq	-72(%rbp), %r12
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_12:                               # %sw.epilog
                                        #   in Loop: Header=BB2_4 Depth=1
	callq	LAMP_loop_iteration_end
.LBB2_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$140, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	movl	$141, %edi
	movq	%rbx, %rsi
	callq	LAMP_load1
	cmpb	$0, (%rbx)
	je	.LBB2_13
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$142, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	leaq	1(%rbx), %r14
	movl	$143, %edi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	LAMP_store8
	movq	%r14, -48(%rbp)
	movl	$144, %edi
	movq	%rbx, %rsi
	callq	LAMP_load1
	movsbl	(%rbx), %eax
	cmpl	$99, %eax
	je	.LBB2_10
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$119, %eax
	jne	.LBB2_7
# BB#9:                                 # %sw.bb2
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$146, %edi
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rdi
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_10:                               # %sw.bb3
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$147, %edi
	leaq	-56(%rbp), %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rdi
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_7:                                # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$108, %eax
	jne	.LBB2_12
# BB#8:                                 # %sw.bb
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$145, %edi
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %rdi
	.align	16, 0x90
.LBB2_11:                               # %sw.bb3
                                        #   in Loop: Header=BB2_4 Depth=1
	callq	ipr
	jmp	.LBB2_12
.LBB2_13:                               # %while.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp32:
	.size	wcp, .Ltmp32-wcp
	.cfi_endproc

	.globl	ipr
	.align	16, 0x90
	.type	ipr,@function
ipr:                                    # @ipr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	leaq	-24(%rbp), %r14
	movl	$148, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -24(%rbp)
	movl	$149, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-24(%rbp), %rbx
	movl	$150, %edi
	callq	LAMP_register
	movl	$.L.str8, %edi
	movq	%rbx, %rsi
	xorb	%al, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp41:
	.size	ipr, .Ltmp41-ipr
	.cfi_endproc

	.type	copyright,@object       # @copyright
	.data
	.globl	copyright
	.align	16
copyright:
	.asciz	 "@(#) Copyright (c) 1980 Regents of the University of California.\n All rights reserved.\n"
	.size	copyright, 88

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "lwc"
	.size	.L.str, 4

	.type	wd,@object              # @wd
	.data
	.globl	wd
	.align	8
wd:
	.quad	.L.str
	.size	wd, 8

	.type	buffer,@object          # @buffer
	.local	buffer
	.comm	buffer,8192,16
	.type	bufcount,@object        # @bufcount
	.local	bufcount
	.comm	bufcount,4,4
	.type	bufcurrent,@object      # @bufcurrent
	.local	bufcurrent
	.comm	bufcurrent,4,4
	.type	main.x,@object          # @main.x
	.local	main.x
	.comm	main.x,4,4
	.type	main.y,@object          # @main.y
	.local	main.y
	.comm	main.y,4,4
	.type	main.z,@object          # @main.z
	.local	main.z
	.comm	main.z,4,4
	.type	.L.str1,@object         # @.str1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1:
	.asciz	 "Usage: wc [-lwc] [files]\n"
	.size	.L.str1, 26

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "r"
	.size	.L.str2, 2

	.type	linect,@object          # @linect
	.comm	linect,8,8
	.type	wordct,@object          # @wordct
	.comm	wordct,8,8
	.type	charct,@object          # @charct
	.comm	charct,8,8
	.type	last_charct,@object     # @last_charct
	.comm	last_charct,8,8
	.type	wordct_array,@object    # @wordct_array
	.comm	wordct_array,200,16
	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 " %s\n"
	.size	.L.str3, 5

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "\n"
	.size	.L.str4, 2

	.type	tlinect,@object         # @tlinect
	.comm	tlinect,8,8
	.type	twordct,@object         # @twordct
	.comm	twordct,8,8
	.type	tcharct,@object         # @tcharct
	.comm	tcharct,8,8
	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 " total\n"
	.size	.L.str5, 8

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "Word size histogran\n"
	.size	.L.str6, 21

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "%d: %ld\n"
	.size	.L.str7, 9

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 " %7ld"
	.size	.L.str8, 6

	.type	pagect,@object          # @pagect
	.comm	pagect,8,8
	.type	tpagect,@object         # @tpagect
	.comm	tpagect,8,8

	.section	".note.GNU-stack","",@progbits
