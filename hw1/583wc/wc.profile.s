	.file	"wc.profile.bc"
	.text
	.globl	my_filbuf
	.align	16, 0x90
	.type	my_filbuf,@function
my_filbuf:                              # @my_filbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	incl	EdgeProfCounters(%rip)
	movq	%rax, -8(%rbp)
	movl	$buffer, %edi
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%rax, %rcx
	callq	fread
	movl	%eax, bufcount(%rip)
	movl	$0, bufcurrent(%rip)
	movq	-8(%rbp), %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB0_1
# BB#2:                                 # %if.then
	incl	EdgeProfCounters+4(%rip)
	movslq	bufcount(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, bufcount(%rip)
	movb	$-1, buffer(%rax)
	incl	EdgeProfCounters+12(%rip)
	jmp	.LBB0_3
.LBB0_1:                                # %entry.if.end_crit_edge
	incl	EdgeProfCounters+8(%rip)
.LBB0_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	my_filbuf, .Ltmp5-my_filbuf
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	movl	$EdgeProfCounters, %edx
	movl	$88, %ecx
	callq	llvm_start_edge_profiling
	incl	EdgeProfCounters+16(%rip)
	movl	$0, -12(%rbp)
	movl	%eax, -16(%rbp)
	movq	%rbx, -24(%rbp)
	incl	EdgeProfCounters+20(%rip)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_12:                               # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	incq	%rax
	movq	%rax, wd(%rip)
	incl	EdgeProfCounters+60(%rip)
	decl	-16(%rbp)
	addq	$8, -24(%rbp)
	incl	EdgeProfCounters+68(%rip)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -16(%rbp)
	jle	.LBB1_2
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+24(%rip)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %eax
	incl	EdgeProfCounters+32(%rip)
	cmpl	$45, %eax
	sete	%al
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_2:                                # %while.cond.land.end_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+28(%rip)
	xorb	%al, %al
.LBB1_4:                                # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	testb	%al, %al
	je	.LBB1_13
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+36(%rip)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	1(%rax), %eax
	cmpl	$119, %eax
	je	.LBB1_11
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$108, %eax
	jne	.LBB1_7
# BB#9:                                 # %while.body.sw.bb_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+48(%rip)
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_11:                               # %while.body.sw.bb_crit_edge17
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+52(%rip)
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_7:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$99, %eax
	jne	.LBB1_10
# BB#8:                                 # %while.body.sw.bb_crit_edge20
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+56(%rip)
	jmp	.LBB1_12
.LBB1_13:                               # %while.end
	incl	EdgeProfCounters+40(%rip)
	movl	$1, -28(%rbp)
	movq	stdin(%rip), %rax
	movq	%rax, -40(%rbp)
	incl	EdgeProfCounters+72(%rip)
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_50:                               # %do.cond.do.body_crit_edge
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+260(%rip)
.LBB1_14:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	cmpl	$1, -16(%rbp)
	jle	.LBB1_15
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+76(%rip)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str2, %esi
	callq	fopen
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	jne	.LBB1_17
# BB#55:                                # %if.then
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+84(%rip)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	perror
	incl	EdgeProfCounters+92(%rip)
	jmp	.LBB1_49
	.align	16, 0x90
.LBB1_15:                               # %do.body.if.end_crit_edge
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+80(%rip)
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_17:                               # %land.lhs.true.if.end_crit_edge
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+88(%rip)
.LBB1_18:                               # %if.end
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	$0, linect(%rip)
	movq	$0, wordct(%rip)
	movq	$0, charct(%rip)
	movl	$0, -32(%rbp)
	movq	$0, last_charct(%rip)
	incl	EdgeProfCounters+96(%rip)
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_44:                               # %if.end70
                                        #   in Loop: Header=BB1_19 Depth=2
	movl	$0, -32(%rbp)
	incl	EdgeProfCounters+236(%rip)
.LBB1_19:                               # %for.cond
                                        #   Parent Loop BB1_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	bufcurrent(%rip), %eax
	cmpl	bufcount(%rip), %eax
	jl	.LBB1_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+100(%rip)
	movq	-40(%rbp), %rdi
	callq	my_filbuf
	movslq	bufcurrent(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, bufcurrent(%rip)
	movsbl	buffer(%rax), %eax
	incl	EdgeProfCounters+108(%rip)
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_21:                               # %cond.false
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+104(%rip)
	movslq	bufcurrent(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, bufcurrent(%rip)
	movsbl	buffer(%rax), %eax
	incl	EdgeProfCounters+112(%rip)
.LBB1_22:                               # %cond.end
                                        #   in Loop: Header=BB1_19 Depth=2
	movl	%eax, -44(%rbp)
	cmpl	$-1, %eax
	je	.LBB1_45
# BB#23:                                # %if.end27
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+120(%rip)
	incq	charct(%rip)
	incq	last_charct(%rip)
	cmpl	$32, -44(%rbp)
	jle	.LBB1_24
# BB#28:                                # %land.lhs.true32
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+128(%rip)
	cmpl	$127, -44(%rbp)
	jge	.LBB1_29
# BB#30:                                # %if.then35
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+136(%rip)
	cmpl	$0, -32(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then35.if.end46_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+144(%rip)
	incl	EdgeProfCounters+172(%rip)
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_24:                               # %if.end27.if.end47_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+132(%rip)
	jmp	.LBB1_25
	.align	16, 0x90
.LBB1_29:                               # %land.lhs.true32.if.end47_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+140(%rip)
.LBB1_25:                               # %if.end47
                                        #   in Loop: Header=BB1_19 Depth=2
	cmpl	$10, -44(%rbp)
	jne	.LBB1_39
# BB#26:                                # %if.then50
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+176(%rip)
	movq	linect(%rip), %rax
	incq	%rax
	movq	%rax, linect(%rip)
	cmpq	$20, %rax
	jle	.LBB1_27
# BB#36:                                # %land.lhs.true54
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+184(%rip)
	cmpq	$10, last_charct(%rip)
	jle	.LBB1_37
# BB#56:                                # %if.then57
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+192(%rip)
	movabsq	$7378697629483820647, %rax # imm = 0x6666666666666667
	imulq	linect(%rip)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	%rdx
	addl	%eax, %edx
	movl	%edx, main.x(%rip)
	imull	$98, %edx, %eax
	movslq	%eax, %rax
	imulq	$-1307163959, %rax, %rcx # imm = 0xFFFFFFFFB21642C9
	shrq	$32, %rcx
	movl	%eax, main.y(%rip)
	movl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	sarl	$4, %edx
	addl	%ecx, %edx
	imull	$23, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, main.z(%rip)
	incl	EdgeProfCounters+200(%rip)
	incl	EdgeProfCounters+208(%rip)
	jmp	.LBB1_44
	.align	16, 0x90
.LBB1_39:                               # %if.else62
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+180(%rip)
	cmpl	$32, -44(%rbp)
	je	.LBB1_40
# BB#41:                                # %land.lhs.true65
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+212(%rip)
	cmpl	$9, -44(%rbp)
	je	.LBB1_42
# BB#57:                                # %if.then68
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+220(%rip)
	incl	EdgeProfCounters+228(%rip)
	jmp	.LBB1_19
.LBB1_27:                               # %if.then50.if.else59_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+188(%rip)
	jmp	.LBB1_38
.LBB1_40:                               # %if.else62.if.end69_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+216(%rip)
	jmp	.LBB1_43
.LBB1_32:                               # %if.then36
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+148(%rip)
	incq	wordct(%rip)
	incl	-32(%rbp)
	cmpq	$25, last_charct(%rip)
	jl	.LBB1_34
# BB#33:                                # %if.then41
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+152(%rip)
	incq	wordct_array+192(%rip)
	incl	EdgeProfCounters+160(%rip)
	jmp	.LBB1_35
.LBB1_37:                               # %land.lhs.true54.if.else59_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+196(%rip)
.LBB1_38:                               # %if.else59
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	main.z(%rip)
	incl	EdgeProfCounters+204(%rip)
	incl	EdgeProfCounters+208(%rip)
	jmp	.LBB1_44
.LBB1_42:                               # %land.lhs.true65.if.end69_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+224(%rip)
.LBB1_43:                               # %if.end69
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+232(%rip)
	jmp	.LBB1_44
.LBB1_34:                               # %if.else
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	EdgeProfCounters+156(%rip)
	movq	last_charct(%rip), %rax
	incq	wordct_array(,%rax,8)
	incl	EdgeProfCounters+164(%rip)
.LBB1_35:                               # %if.end45
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	$0, last_charct(%rip)
	incl	EdgeProfCounters+168(%rip)
	incl	EdgeProfCounters+172(%rip)
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_45:                               # %for.end
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+116(%rip)
	incl	EdgeProfCounters+124(%rip)
	movq	linect(%rip), %rcx
	movq	wordct(%rip), %rdx
	movq	charct(%rip), %rsi
	movq	wd(%rip), %rdi
	movl	$wordct_array, %r8d
	callq	wcp
	cmpl	$2, -16(%rbp)
	jl	.LBB1_47
# BB#46:                                # %if.then73
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+240(%rip)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	incl	EdgeProfCounters+248(%rip)
	jmp	.LBB1_48
	.align	16, 0x90
.LBB1_47:                               # %if.else77
                                        #   in Loop: Header=BB1_14 Depth=1
	incl	EdgeProfCounters+244(%rip)
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
	incl	EdgeProfCounters+252(%rip)
.LBB1_48:                               # %if.end79
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	linect(%rip), %rax
	addq	%rax, tlinect(%rip)
	movq	wordct(%rip), %rax
	addq	%rax, twordct(%rip)
	movq	charct(%rip), %rax
	addq	%rax, tcharct(%rip)
	incl	EdgeProfCounters+256(%rip)
.LBB1_49:                               # %do.cond
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	-28(%rbp), %eax
	incl	%eax
	movl	%eax, -28(%rbp)
	cmpl	-16(%rbp), %eax
	jl	.LBB1_50
# BB#51:                                # %do.end
	incl	EdgeProfCounters+264(%rip)
	cmpl	$2, -16(%rbp)
	jle	.LBB1_52
# BB#53:                                # %if.then88
	incl	EdgeProfCounters+268(%rip)
	movq	tlinect(%rip), %rcx
	movq	twordct(%rip), %rdx
	movq	tcharct(%rip), %rsi
	movq	wd(%rip), %rdi
	movl	$wordct_array, %r8d
	callq	wcp
	movl	$.L.str5, %edi
	xorb	%al, %al
	callq	printf
	incl	EdgeProfCounters+276(%rip)
	xorl	%edi, %edi
	callq	exit
.LBB1_10:                               # %usage
	incl	EdgeProfCounters+44(%rip)
	incl	EdgeProfCounters+64(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB1_52:                               # %do.end.if.end90_crit_edge
	incl	EdgeProfCounters+272(%rip)
	xorl	%edi, %edi
	callq	exit
.Ltmp13:
	.size	main, .Ltmp13-main
	.cfi_endproc

	.globl	wcp
	.align	16, 0x90
	.type	wcp,@function
wcp:                                    # @wcp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	incl	EdgeProfCounters+280(%rip)
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$.L.str6, %edi
	xorb	%al, %al
	callq	printf
	movl	$0, -44(%rbp)
	incl	EdgeProfCounters+284(%rip)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	incl	EdgeProfCounters+288(%rip)
	movslq	-44(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax,%rsi,8), %rdx
	movl	$.L.str7, %edi
                                        # kill: ESI<def> ESI<kill> RSI<kill>
	xorb	%al, %al
	callq	printf
	incl	EdgeProfCounters+296(%rip)
	incl	-44(%rbp)
	incl	EdgeProfCounters+300(%rip)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -44(%rbp)
	jle	.LBB2_2
# BB#3:                                 # %for.end
	incl	EdgeProfCounters+292(%rip)
	incl	EdgeProfCounters+304(%rip)
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_9:                                # %sw.bb
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	EdgeProfCounters+320(%rip)
	movq	-32(%rbp), %rdi
	callq	ipr
	incl	EdgeProfCounters+332(%rip)
	incl	EdgeProfCounters+344(%rip)
.LBB2_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_12
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	EdgeProfCounters+308(%rip)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movsbl	(%rax), %eax
	cmpl	$99, %eax
	je	.LBB2_11
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$108, %eax
	je	.LBB2_9
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$119, %eax
	jne	.LBB2_8
# BB#10:                                # %sw.bb2
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	EdgeProfCounters+324(%rip)
	movq	-24(%rbp), %rdi
	callq	ipr
	incl	EdgeProfCounters+336(%rip)
	incl	EdgeProfCounters+344(%rip)
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_11:                               # %sw.bb3
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	EdgeProfCounters+328(%rip)
	movq	-16(%rbp), %rdi
	callq	ipr
	incl	EdgeProfCounters+340(%rip)
	incl	EdgeProfCounters+344(%rip)
	jmp	.LBB2_4
.LBB2_8:                                # %while.body.sw.epilog_crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	EdgeProfCounters+316(%rip)
	incl	EdgeProfCounters+344(%rip)
	jmp	.LBB2_4
.LBB2_12:                               # %while.end
	incl	EdgeProfCounters+312(%rip)
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp19:
	.size	wcp, .Ltmp19-wcp
	.cfi_endproc

	.globl	ipr
	.align	16, 0x90
	.type	ipr,@function
ipr:                                    # @ipr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	incl	EdgeProfCounters+348(%rip)
	movq	%rax, -8(%rbp)
	movl	$.L.str8, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp25:
	.size	ipr, .Ltmp25-ipr
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
	.type	EdgeProfCounters,@object # @EdgeProfCounters
	.local	EdgeProfCounters
	.comm	EdgeProfCounters,352,16

	.section	".note.GNU-stack","",@progbits
