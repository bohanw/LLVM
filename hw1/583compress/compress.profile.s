	.file	"compress.profile.bc"
	.text
	.globl	Usage
	.align	16, 0x90
	.type	Usage,@function
Usage:                                  # @Usage
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
	incl	EdgeProfCounters(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
	popq	%rbp
	ret
.Ltmp5:
	.size	Usage, .Ltmp5-Usage
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movl	$EdgeProfCounters, %edx
	movl	$467, %ecx              # imm = 0x1D3
	callq	llvm_start_edge_profiling
	incl	EdgeProfCounters+4(%rip)
	movl	$0, -44(%rbp)
	movl	%eax, -48(%rbp)
	movq	%rbx, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$2, %edi
	movl	$1, %esi
	callq	signal
	movq	%rax, bgnd_flag(%rip)
	cmpq	$1, %rax
	je	.LBB1_1
# BB#2:                                 # %if.then
	incl	EdgeProfCounters+8(%rip)
	movl	$2, %edi
	movl	$onintr, %esi
	callq	signal
	movl	$11, %edi
	movl	$oops, %esi
	callq	signal
	incl	EdgeProfCounters+16(%rip)
	jmp	.LBB1_3
.LBB1_1:                                # %entry.if.end_crit_edge
	incl	EdgeProfCounters+12(%rip)
.LBB1_3:                                # %if.end
	movslq	-48(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movl	$47, %esi
	callq	rindex
	movq	%rax, -184(%rbp)
	testq	%rax, %rax
	je	.LBB1_5
# BB#4:                                 # %if.then7
	incl	EdgeProfCounters+20(%rip)
	incq	-184(%rbp)
	incl	EdgeProfCounters+28(%rip)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	incl	EdgeProfCounters+24(%rip)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	incl	EdgeProfCounters+32(%rip)
.LBB1_6:                                # %if.end9
	movq	-184(%rbp), %rdi
	movl	$.L.str1, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_7
# BB#8:                                 # %if.else14
	incl	EdgeProfCounters+40(%rip)
	movq	-184(%rbp), %rdi
	movl	$.L.str2, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_10
# BB#9:                                 # %if.else14.if.end19_crit_edge
	incl	EdgeProfCounters+52(%rip)
	jmp	.LBB1_11
.LBB1_7:                                # %if.then13
	incl	EdgeProfCounters+36(%rip)
	movl	$1, do_decomp(%rip)
	incl	EdgeProfCounters+44(%rip)
	jmp	.LBB1_12
.LBB1_10:                               # %if.then18
	incl	EdgeProfCounters+48(%rip)
	movl	$1, do_decomp(%rip)
	movl	$1, zcat_flg(%rip)
	incl	EdgeProfCounters+56(%rip)
.LBB1_11:                               # %if.end19
	incl	EdgeProfCounters+60(%rip)
.LBB1_12:                               # %if.end20
	decl	-48(%rbp)
	addq	$8, -56(%rbp)
	incl	EdgeProfCounters+64(%rip)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_52:                               # %for.inc
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+216(%rip)
	decl	-48(%rbp)
	addq	$8, -56(%rbp)
	incl	EdgeProfCounters+220(%rip)
.LBB1_13:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
	cmpl	$0, -48(%rbp)
	jle	.LBB1_53
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+68(%rip)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB1_50
# BB#15:                                # %if.then27
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+76(%rip)
	incl	EdgeProfCounters+84(%rip)
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_33:                               # %sw.bb32
                                        #   in Loop: Header=BB1_16 Depth=2
	movl	$1, -60(%rbp)
	movl	$1, force(%rip)
	incl	EdgeProfCounters+152(%rip)
	incl	EdgeProfCounters+200(%rip)
.LBB1_16:                               # %while.cond
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	cmpb	$0, 1(%rcx)
	je	.LBB1_49
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+88(%rip)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$85, %eax
	ja	.LBB1_21
# BB#18:                                # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$67, %eax
	jne	.LBB1_19
# BB#35:                                # %sw.bb34
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+124(%rip)
	movl	$0, block_compress(%rip)
	incl	EdgeProfCounters+160(%rip)
	incl	EdgeProfCounters+200(%rip)
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_21:                               # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$97, %eax
	ja	.LBB1_24
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$86, %eax
	jne	.LBB1_48
# BB#23:                                # %sw.bb
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+100(%rip)
	callq	version
	incl	EdgeProfCounters+140(%rip)
	incl	EdgeProfCounters+200(%rip)
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_19:                               # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$70, %eax
	jne	.LBB1_48
# BB#20:                                # %while.body.sw.bb32_crit_edge55
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+116(%rip)
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_24:                               # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$109, %eax
	ja	.LBB1_27
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	addl	$-98, %eax
	cmpl	$4, %eax
	ja	.LBB1_48
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_46:                               # %sw.bb47
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+132(%rip)
	movl	$1, zcat_flg(%rip)
	incl	EdgeProfCounters+192(%rip)
	incl	EdgeProfCounters+200(%rip)
	jmp	.LBB1_16
.LBB1_27:                               # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$110, %eax
	je	.LBB1_34
# BB#28:                                # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$113, %eax
	jne	.LBB1_29
# BB#47:                                # %sw.bb48
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+136(%rip)
	movl	$1, quiet(%rip)
	incl	EdgeProfCounters+196(%rip)
	incl	EdgeProfCounters+200(%rip)
	jmp	.LBB1_16
.LBB1_34:                               # %sw.bb33
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+120(%rip)
	movl	$1, nomagic(%rip)
	incl	EdgeProfCounters+156(%rip)
	incl	EdgeProfCounters+200(%rip)
	jmp	.LBB1_16
.LBB1_29:                               # %while.body
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$118, %eax
	jne	.LBB1_48
# BB#30:                                # %sw.bb30
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+104(%rip)
	movl	$0, quiet(%rip)
	incl	EdgeProfCounters+144(%rip)
	incl	EdgeProfCounters+200(%rip)
	jmp	.LBB1_16
.LBB1_31:                               # %sw.bb31
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+108(%rip)
	movl	$1, do_decomp(%rip)
	incl	EdgeProfCounters+148(%rip)
	incl	EdgeProfCounters+200(%rip)
	jmp	.LBB1_16
.LBB1_32:                               # %while.body.sw.bb32_crit_edge
                                        #   in Loop: Header=BB1_16 Depth=2
	incl	EdgeProfCounters+112(%rip)
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_50:                               # %if.else51
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+80(%rip)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, -176(%rbp)
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	movq	$0, (%rax)
	incl	EdgeProfCounters+208(%rip)
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_49:                               # %while.end
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+92(%rip)
	incl	EdgeProfCounters+204(%rip)
.LBB1_51:                               # %if.end53
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+212(%rip)
	jmp	.LBB1_52
.LBB1_36:                               # %sw.bb35
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+128(%rip)
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movsbl	1(%rcx), %eax
	testl	%eax, %eax
	je	.LBB1_38
# BB#37:                                # %sw.bb35.if.end45_crit_edge
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+164(%rip)
	jmp	.LBB1_45
.LBB1_38:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+168(%rip)
	decl	-48(%rbp)
	je	.LBB1_39
# BB#40:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+172(%rip)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$0, 8(%rax)
	je	.LBB1_41
# BB#44:                                # %land.lhs.true.if.end45_crit_edge
                                        #   in Loop: Header=BB1_13 Depth=1
	incl	EdgeProfCounters+180(%rip)
.LBB1_45:                               # %if.end45
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi
	movl	%eax, maxbits(%rip)
	incl	EdgeProfCounters+188(%rip)
	jmp	.LBB1_52
.LBB1_48:                               # %sw.default
	incl	EdgeProfCounters+96(%rip)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %edx
	movq	stderr(%rip), %rdi
	movl	$.L.str4, %esi
	xorb	%al, %al
	callq	fprintf
.LBB1_43:                               # %if.then43
	callq	Usage
	movl	$1, %edi
	callq	exit
.LBB1_53:                               # %for.end
	incl	EdgeProfCounters+72(%rip)
	cmpl	$9, maxbits(%rip)
	jge	.LBB1_54
# BB#55:                                # %if.then58
	incl	EdgeProfCounters+224(%rip)
	movl	$9, maxbits(%rip)
	incl	EdgeProfCounters+232(%rip)
	jmp	.LBB1_56
.LBB1_54:                               # %for.end.if.end59_crit_edge
	incl	EdgeProfCounters+228(%rip)
.LBB1_56:                               # %if.end59
	cmpl	$16, maxbits(%rip)
	jle	.LBB1_57
# BB#58:                                # %if.then62
	incl	EdgeProfCounters+236(%rip)
	movl	$16, maxbits(%rip)
	incl	EdgeProfCounters+244(%rip)
	jmp	.LBB1_59
.LBB1_57:                               # %if.end59.if.end63_crit_edge
	incl	EdgeProfCounters+240(%rip)
.LBB1_59:                               # %if.end63
	movb	maxbits(%rip), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movslq	%eax, %rax
	movq	%rax, maxmaxcode(%rip)
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_144
# BB#60:                                # %if.then67
	incl	EdgeProfCounters+248(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	incl	EdgeProfCounters+256(%rip)
	leaq	-160(%rbp), %r12
	leaq	-328(%rbp), %r14
	leaq	-330(%rbp), %r15
	leaq	-329(%rbp), %r13
	jmp	.LBB1_61
	.align	16, 0x90
.LBB1_142:                              # %for.inc248
                                        #   in Loop: Header=BB1_61 Depth=1
	addq	$8, -176(%rbp)
	incl	EdgeProfCounters+652(%rip)
.LBB1_61:                               # %for.cond68
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_113 Depth 2
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_143
# BB#62:                                # %for.body70
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+260(%rip)
	movl	$0, exit_stat(%rip)
	cmpl	$0, do_decomp(%rip)
	je	.LBB1_79
# BB#63:                                # %if.then73
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+268(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	-2(%rbx,%rax), %rdi
	movl	$.L.str5, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_64
# BB#65:                                # %if.then79
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+276(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	strcpy
	movq	%r12, %rdi
	movl	$.L.str5, %esi
	callq	strcat
	movq	-176(%rbp), %rax
	movq	%r12, (%rax)
	incl	EdgeProfCounters+284(%rip)
	jmp	.LBB1_66
	.align	16, 0x90
.LBB1_79:                               # %if.else120
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+272(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	-2(%rbx,%rax), %rdi
	movl	$.L.str5, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_81
# BB#80:                                # %if.then127
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+348(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str9, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+356(%rip)
	jmp	.LBB1_142
	.align	16, 0x90
.LBB1_64:                               # %if.then73.if.end84_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+280(%rip)
.LBB1_66:                               # %if.end84
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	movq	stdin(%rip), %rdx
	movl	$.L.str6, %esi
	callq	freopen
	testq	%rax, %rax
	jne	.LBB1_68
# BB#67:                                # %if.then88
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+288(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	callq	perror
	incl	EdgeProfCounters+296(%rip)
	jmp	.LBB1_142
	.align	16, 0x90
.LBB1_81:                               # %if.end129
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+352(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	movq	stdin(%rip), %rdx
	movl	$.L.str6, %esi
	callq	freopen
	testq	%rax, %rax
	jne	.LBB1_83
# BB#82:                                # %if.then133
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+360(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	callq	perror
	incl	EdgeProfCounters+368(%rip)
	jmp	.LBB1_142
	.align	16, 0x90
.LBB1_68:                               # %if.end89
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+292(%rip)
	cmpl	$0, nomagic(%rip)
	jne	.LBB1_69
# BB#70:                                # %if.then92
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+300(%rip)
	callq	getchar
	movzbl	magic_header(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_72
# BB#71:                                # %if.then92.if.then103_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+308(%rip)
	jmp	.LBB1_74
.LBB1_83:                               # %if.end134
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+364(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	movq	%r14, %rsi
	callq	stat
	movq	-280(%rbp), %rax
	movq	%rax, fsize(%rip)
	movq	$69001, hsize(%rip)     # imm = 0x10D89
	cmpq	$4095, fsize(%rip)      # imm = 0xFFF
	jg	.LBB1_85
# BB#84:                                # %if.then138
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+372(%rip)
	movq	$5003, hsize(%rip)      # imm = 0x138B
	incl	EdgeProfCounters+380(%rip)
	jmp	.LBB1_98
.LBB1_69:                               # %if.end89.if.end116_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+304(%rip)
.LBB1_78:                               # %if.end116
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-176(%rbp), %rax
	movq	(%rax), %rsi
	movl	$ofname, %edi
	callq	strcpy
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movb	$0, ofname-2(%rax)
	incl	EdgeProfCounters+344(%rip)
	jmp	.LBB1_104
.LBB1_72:                               # %lor.lhs.false97
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+312(%rip)
	callq	getchar
	movzbl	magic_header+1(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_75
# BB#73:                                # %lor.lhs.false97.if.then103_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+316(%rip)
.LBB1_74:                               # %if.then103
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str7, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+324(%rip)
	jmp	.LBB1_142
.LBB1_85:                               # %if.else139
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+376(%rip)
	cmpq	$8191, fsize(%rip)      # imm = 0x1FFF
	jg	.LBB1_87
# BB#86:                                # %if.then142
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+384(%rip)
	movq	$9001, hsize(%rip)      # imm = 0x2329
	incl	EdgeProfCounters+392(%rip)
	jmp	.LBB1_97
.LBB1_75:                               # %if.end105
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+320(%rip)
	callq	getchar
	movl	%eax, maxbits(%rip)
	andl	$128, %eax
	movl	%eax, block_compress(%rip)
	andl	$31, maxbits(%rip)
	movb	maxbits(%rip), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movslq	%eax, %rax
	movq	%rax, maxmaxcode(%rip)
	cmpl	$17, maxbits(%rip)
	jl	.LBB1_77
# BB#76:                                # %if.then113
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+328(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	movl	maxbits(%rip), %ecx
	movq	stderr(%rip), %rdi
	movl	$.L.str8, %esi
	movl	$16, %r8d
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+336(%rip)
	jmp	.LBB1_142
.LBB1_87:                               # %if.else143
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+388(%rip)
	cmpq	$16383, fsize(%rip)     # imm = 0x3FFF
	jg	.LBB1_89
# BB#88:                                # %if.then146
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+396(%rip)
	movq	$18013, hsize(%rip)     # imm = 0x465D
	incl	EdgeProfCounters+404(%rip)
	jmp	.LBB1_96
.LBB1_77:                               # %if.end115
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+332(%rip)
	incl	EdgeProfCounters+340(%rip)
	jmp	.LBB1_78
.LBB1_89:                               # %if.else147
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+400(%rip)
	cmpq	$32767, fsize(%rip)     # imm = 0x7FFF
	jg	.LBB1_91
# BB#90:                                # %if.then150
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+408(%rip)
	movq	$35023, hsize(%rip)     # imm = 0x88CF
	incl	EdgeProfCounters+416(%rip)
	jmp	.LBB1_95
.LBB1_91:                               # %if.else151
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+412(%rip)
	cmpq	$47000, fsize(%rip)     # imm = 0xB798
	jge	.LBB1_92
# BB#93:                                # %if.then154
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+420(%rip)
	movq	$50021, hsize(%rip)     # imm = 0xC365
	incl	EdgeProfCounters+428(%rip)
	jmp	.LBB1_94
.LBB1_92:                               # %if.else151.if.end155_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+424(%rip)
.LBB1_94:                               # %if.end155
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+432(%rip)
.LBB1_95:                               # %if.end156
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+436(%rip)
.LBB1_96:                               # %if.end157
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+440(%rip)
.LBB1_97:                               # %if.end158
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+444(%rip)
.LBB1_98:                               # %if.end159
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-176(%rbp), %rax
	movq	(%rax), %rsi
	movl	$ofname, %edi
	callq	strcpy
	movl	$ofname, %edi
	movl	$47, %esi
	callq	rindex
	movq	%rax, -184(%rbp)
	testq	%rax, %rax
	je	.LBB1_100
# BB#99:                                # %if.then164
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+448(%rip)
	incq	-184(%rbp)
	incl	EdgeProfCounters+456(%rip)
	jmp	.LBB1_101
.LBB1_100:                              # %if.else166
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+452(%rip)
	movq	$ofname, -184(%rbp)
	incl	EdgeProfCounters+460(%rip)
.LBB1_101:                              # %if.end167
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	-184(%rbp), %rdi
	callq	strlen
	cmpq	$13, %rax
	jb	.LBB1_103
# BB#102:                               # %if.then171
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+464(%rip)
	movq	-184(%rbp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str10, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+472(%rip)
	jmp	.LBB1_142
.LBB1_103:                              # %if.end173
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+468(%rip)
	movl	$ofname, %edi
	movl	$.L.str5, %esi
	callq	strcat
	incl	EdgeProfCounters+476(%rip)
.LBB1_104:                              # %if.end175
                                        #   in Loop: Header=BB1_61 Depth=1
	cmpl	$0, -60(%rbp)
	jne	.LBB1_105
# BB#106:                               # %land.lhs.true178
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+480(%rip)
	cmpl	$0, zcat_flg(%rip)
	jne	.LBB1_107
# BB#108:                               # %if.then181
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+488(%rip)
	movl	$ofname, %edi
	movq	%r14, %rsi
	callq	stat
	testl	%eax, %eax
	jne	.LBB1_109
# BB#110:                               # %if.then185
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+496(%rip)
	movb	$110, -330(%rbp)
	movq	stderr(%rip), %rdi
	movl	$.L.str11, %esi
	movl	$ofname, %edx
	xorb	%al, %al
	callq	fprintf
	callq	foreground
	testl	%eax, %eax
	je	.LBB1_111
# BB#112:                               # %if.then190
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+504(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str12, %esi
	movl	$ofname, %edx
	xorb	%al, %al
	callq	fprintf
	movq	stderr(%rip), %rdi
	callq	fflush
	movl	$2, %edi
	movq	%r15, %rsi
	movl	$2, %edx
	callq	read
	incl	EdgeProfCounters+512(%rip)
	jmp	.LBB1_113
	.align	16, 0x90
.LBB1_160:                              # %if.end207
                                        #   in Loop: Header=BB1_113 Depth=2
	incl	EdgeProfCounters+528(%rip)
	incl	EdgeProfCounters+536(%rip)
.LBB1_113:                              # %while.cond195
                                        #   Parent Loop BB1_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	-329(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB1_114
# BB#115:                               # %while.body200
                                        #   in Loop: Header=BB1_113 Depth=2
	incl	EdgeProfCounters+516(%rip)
	movl	$2, %edi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	read
	testq	%rax, %rax
	jns	.LBB1_160
# BB#116:                               # %if.then206
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+524(%rip)
	movl	$.L.str13, %edi
	callq	perror
	incl	EdgeProfCounters+532(%rip)
	jmp	.LBB1_117
.LBB1_105:                              # %if.end175.if.end218_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+484(%rip)
	jmp	.LBB1_122
.LBB1_107:                              # %land.lhs.true178.if.end218_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+492(%rip)
	jmp	.LBB1_122
.LBB1_109:                              # %if.then181.if.end217_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+500(%rip)
	jmp	.LBB1_121
.LBB1_111:                              # %if.then185.if.end209_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+508(%rip)
	jmp	.LBB1_118
.LBB1_114:                              # %while.cond195.while.end208_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+520(%rip)
.LBB1_117:                              # %while.end208
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+540(%rip)
.LBB1_118:                              # %if.end209
                                        #   in Loop: Header=BB1_61 Depth=1
	movsbl	-330(%rbp), %eax
	cmpl	$121, %eax
	je	.LBB1_120
# BB#119:                               # %if.then214
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+544(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str14, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+552(%rip)
	jmp	.LBB1_142
.LBB1_120:                              # %if.end216
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+548(%rip)
	incl	EdgeProfCounters+556(%rip)
.LBB1_121:                              # %if.end217
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+560(%rip)
.LBB1_122:                              # %if.end218
                                        #   in Loop: Header=BB1_61 Depth=1
	cmpl	$0, zcat_flg(%rip)
	jne	.LBB1_123
# BB#124:                               # %if.then221
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+564(%rip)
	movq	stdout(%rip), %rdx
	movl	$ofname, %edi
	movl	$.L.str15, %esi
	callq	freopen
	testq	%rax, %rax
	jne	.LBB1_126
# BB#125:                               # %if.then225
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+572(%rip)
	movl	$ofname, %edi
	callq	perror
	incl	EdgeProfCounters+580(%rip)
	jmp	.LBB1_142
.LBB1_123:                              # %if.end218.if.end231_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+568(%rip)
	jmp	.LBB1_130
.LBB1_126:                              # %if.end226
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+576(%rip)
	cmpl	$0, quiet(%rip)
	je	.LBB1_128
# BB#127:                               # %if.end226.if.end230_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+584(%rip)
	jmp	.LBB1_129
.LBB1_128:                              # %if.then228
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+588(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str16, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+592(%rip)
.LBB1_129:                              # %if.end230
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+596(%rip)
.LBB1_130:                              # %if.end231
                                        #   in Loop: Header=BB1_61 Depth=1
	cmpl	$0, do_decomp(%rip)
	jne	.LBB1_132
# BB#131:                               # %if.then234
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+600(%rip)
	callq	compress
	incl	EdgeProfCounters+608(%rip)
	jmp	.LBB1_133
.LBB1_132:                              # %if.else235
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+604(%rip)
	callq	decompress
	incl	EdgeProfCounters+612(%rip)
.LBB1_133:                              # %if.end236
                                        #   in Loop: Header=BB1_61 Depth=1
	cmpl	$0, zcat_flg(%rip)
	jne	.LBB1_134
# BB#135:                               # %if.then239
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+616(%rip)
	movq	-176(%rbp), %rax
	movq	(%rax), %rdi
	movl	$ofname, %esi
	callq	copystat
	cmpl	$1, exit_stat(%rip)
	jne	.LBB1_137
# BB#136:                               # %if.then239.if.then244_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+624(%rip)
	jmp	.LBB1_139
.LBB1_134:                              # %if.end236.if.end247_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+620(%rip)
	jmp	.LBB1_141
.LBB1_137:                              # %lor.lhs.false242
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+628(%rip)
	cmpl	$0, quiet(%rip)
	je	.LBB1_138
# BB#161:                               # %lor.lhs.false242.if.end246_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+632(%rip)
	jmp	.LBB1_140
.LBB1_138:                              # %lor.lhs.false242.if.then244_crit_edge
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+636(%rip)
.LBB1_139:                              # %if.then244
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	incl	EdgeProfCounters+640(%rip)
.LBB1_140:                              # %if.end246
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+644(%rip)
.LBB1_141:                              # %if.end247
                                        #   in Loop: Header=BB1_61 Depth=1
	incl	EdgeProfCounters+648(%rip)
	jmp	.LBB1_142
.LBB1_39:                               # %lor.lhs.false.if.then43_crit_edge
	incl	EdgeProfCounters+176(%rip)
	jmp	.LBB1_42
.LBB1_41:                               # %land.lhs.true.if.then43_crit_edge
	incl	EdgeProfCounters+184(%rip)
.LBB1_42:                               # %if.then43
	movq	stderr(%rip), %rdi
	movl	$.L.str3, %esi
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB1_43
.LBB1_144:                              # %if.else251
	incl	EdgeProfCounters+252(%rip)
	cmpl	$0, do_decomp(%rip)
	jne	.LBB1_148
# BB#145:                               # %if.then254
	incl	EdgeProfCounters+660(%rip)
	callq	compress
	cmpl	$0, quiet(%rip)
	je	.LBB1_147
# BB#146:                               # %if.then254.if.end258_crit_edge
	incl	EdgeProfCounters+668(%rip)
	incl	EdgeProfCounters+680(%rip)
	jmp	.LBB1_158
.LBB1_143:                              # %for.end250
	incl	EdgeProfCounters+264(%rip)
	incl	EdgeProfCounters+656(%rip)
	movl	exit_stat(%rip), %edi
	callq	exit
.LBB1_148:                              # %if.else259
	incl	EdgeProfCounters+664(%rip)
	cmpl	$0, nomagic(%rip)
	jne	.LBB1_149
# BB#150:                               # %if.then262
	incl	EdgeProfCounters+684(%rip)
	callq	getchar
	movzbl	magic_header(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_152
# BB#151:                               # %if.then262.if.then274_crit_edge
	incl	EdgeProfCounters+692(%rip)
	jmp	.LBB1_154
.LBB1_147:                              # %if.then256
	incl	EdgeProfCounters+672(%rip)
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	incl	EdgeProfCounters+676(%rip)
	incl	EdgeProfCounters+680(%rip)
	jmp	.LBB1_158
.LBB1_149:                              # %if.else259.if.end287_crit_edge
	incl	EdgeProfCounters+688(%rip)
	jmp	.LBB1_157
.LBB1_152:                              # %lor.lhs.false268
	incl	EdgeProfCounters+696(%rip)
	callq	getchar
	movzbl	magic_header+1(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_155
# BB#153:                               # %lor.lhs.false268.if.then274_crit_edge
	incl	EdgeProfCounters+700(%rip)
.LBB1_154:                              # %if.then274
	movq	stderr(%rip), %rdi
	movl	$.L.str17, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB1_155:                              # %if.end276
	incl	EdgeProfCounters+704(%rip)
	callq	getchar
	movl	%eax, maxbits(%rip)
	andl	$128, %eax
	movl	%eax, block_compress(%rip)
	andl	$31, maxbits(%rip)
	movl	$1, %eax
	movb	maxbits(%rip), %cl
	shll	%cl, %eax
	movslq	%eax, %rax
	movq	%rax, maxmaxcode(%rip)
	movq	$100000, fsize(%rip)    # imm = 0x186A0
	cmpl	$17, maxbits(%rip)
	jl	.LBB1_156
# BB#162:                               # %if.then284
	incl	EdgeProfCounters+708(%rip)
	movl	maxbits(%rip), %edx
	movq	stderr(%rip), %rdi
	movl	$.L.str18, %esi
	movl	$16, %ecx
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB1_156:                              # %if.end286
	incl	EdgeProfCounters+712(%rip)
	incl	EdgeProfCounters+716(%rip)
.LBB1_157:                              # %if.end287
	callq	decompress
	incl	EdgeProfCounters+720(%rip)
.LBB1_158:                              # %if.end288
	incl	EdgeProfCounters+724(%rip)
	movl	exit_stat(%rip), %edi
	callq	exit
.Ltmp17:
	.size	main, .Ltmp17-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_36
	.quad	.LBB1_46
	.quad	.LBB1_31
	.quad	.LBB1_48
	.quad	.LBB1_32

	.text
	.globl	onintr
	.align	16, 0x90
	.type	onintr,@function
onintr:                                 # @onintr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	incl	EdgeProfCounters+728(%rip)
	movl	%edi, -4(%rbp)
	movl	$ofname, %edi
	callq	unlink
	movl	$1, %edi
	callq	exit
.Ltmp23:
	.size	onintr, .Ltmp23-onintr
	.cfi_endproc

	.globl	oops
	.align	16, 0x90
	.type	oops,@function
oops:                                   # @oops
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	incl	EdgeProfCounters+732(%rip)
	movl	%edi, -4(%rbp)
	cmpl	$1, do_decomp(%rip)
	jne	.LBB3_1
# BB#2:                                 # %if.then
	incl	EdgeProfCounters+736(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str24, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+744(%rip)
	jmp	.LBB3_3
.LBB3_1:                                # %entry.if.end_crit_edge
	incl	EdgeProfCounters+740(%rip)
.LBB3_3:                                # %if.end
	movl	$ofname, %edi
	callq	unlink
	movl	$1, %edi
	callq	exit
.Ltmp29:
	.size	oops, .Ltmp29-oops
	.cfi_endproc

	.globl	copystat
	.align	16, 0x90
	.type	copystat,@function
copystat:                               # @copystat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	incl	EdgeProfCounters+748(%rip)
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	stdout(%rip), %rdi
	callq	fclose
	movq	-8(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	stat
	testl	%eax, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	incl	EdgeProfCounters+752(%rip)
	movq	-8(%rbp), %rdi
	callq	perror
	incl	EdgeProfCounters+760(%rip)
	jmp	.LBB4_33
.LBB4_2:                                # %if.end
	incl	EdgeProfCounters+756(%rip)
	movl	$61440, %eax            # imm = 0xF000
	andl	-136(%rbp), %eax
	cmpl	$32768, %eax            # imm = 0x8000
	je	.LBB4_7
# BB#3:                                 # %if.then2
	incl	EdgeProfCounters+764(%rip)
	cmpl	$0, quiet(%rip)
	je	.LBB4_4
# BB#5:                                 # %if.then4
	incl	EdgeProfCounters+772(%rip)
	movq	-8(%rbp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str16, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+780(%rip)
	jmp	.LBB4_6
.LBB4_7:                                # %if.else
	incl	EdgeProfCounters+768(%rip)
	cmpq	$2, -144(%rbp)
	jb	.LBB4_12
# BB#8:                                 # %if.then9
	incl	EdgeProfCounters+788(%rip)
	cmpl	$0, quiet(%rip)
	je	.LBB4_9
# BB#10:                                # %if.then11
	incl	EdgeProfCounters+796(%rip)
	movq	-8(%rbp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str16, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+804(%rip)
	jmp	.LBB4_11
.LBB4_12:                               # %if.else16
	incl	EdgeProfCounters+792(%rip)
	cmpl	$2, exit_stat(%rip)
	jne	.LBB4_13
# BB#16:                                # %land.lhs.true
	incl	EdgeProfCounters+812(%rip)
	cmpl	$0, force(%rip)
	je	.LBB4_18
# BB#17:                                # %land.lhs.true.if.else24_crit_edge
	incl	EdgeProfCounters+820(%rip)
	jmp	.LBB4_14
.LBB4_4:                                # %if.then2.if.end6_crit_edge
	incl	EdgeProfCounters+776(%rip)
.LBB4_6:                                # %if.end6
	movq	stderr(%rip), %rdi
	movl	$.L.str20, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, exit_stat(%rip)
	incl	EdgeProfCounters+784(%rip)
	jmp	.LBB4_30
.LBB4_13:                               # %if.else16.if.else24_crit_edge
	incl	EdgeProfCounters+816(%rip)
.LBB4_14:                               # %if.else24
	movl	$0, exit_stat(%rip)
	movl	$4095, %esi             # imm = 0xFFF
	andl	-136(%rbp), %esi
	movl	%esi, -164(%rbp)
	movq	-16(%rbp), %rdi
	callq	chmod
	testl	%eax, %eax
	je	.LBB4_15
# BB#20:                                # %if.then29
	incl	EdgeProfCounters+844(%rip)
	movq	-16(%rbp), %rdi
	callq	perror
	incl	EdgeProfCounters+852(%rip)
	jmp	.LBB4_21
.LBB4_9:                                # %if.then9.if.end13_crit_edge
	incl	EdgeProfCounters+800(%rip)
.LBB4_11:                               # %if.end13
	movq	stderr(%rip), %rdi
	movq	-144(%rbp), %rdx
	decq	%rdx
	movl	$.L.str21, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, exit_stat(%rip)
	incl	EdgeProfCounters+808(%rip)
.LBB4_29:                               # %if.end43
	incl	EdgeProfCounters+888(%rip)
.LBB4_30:                               # %if.end44
	movq	-16(%rbp), %rdi
	callq	unlink
	testl	%eax, %eax
	je	.LBB4_31
# BB#32:                                # %if.then47
	incl	EdgeProfCounters+892(%rip)
	movq	-16(%rbp), %rdi
	callq	perror
	incl	EdgeProfCounters+900(%rip)
	jmp	.LBB4_33
.LBB4_31:                               # %if.end44.if.end48_crit_edge
	incl	EdgeProfCounters+896(%rip)
	jmp	.LBB4_33
.LBB4_15:                               # %if.else24.if.end30_crit_edge
	incl	EdgeProfCounters+848(%rip)
.LBB4_21:                               # %if.end30
	movl	-132(%rbp), %esi
	movl	-128(%rbp), %edx
	movq	-16(%rbp), %rdi
	callq	chown
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-184(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	utime
	movq	-8(%rbp), %rdi
	callq	unlink
	testl	%eax, %eax
	je	.LBB4_22
# BB#23:                                # %if.then36
	incl	EdgeProfCounters+856(%rip)
	movq	-8(%rbp), %rdi
	callq	perror
	incl	EdgeProfCounters+864(%rip)
	jmp	.LBB4_24
.LBB4_22:                               # %if.end30.if.end37_crit_edge
	incl	EdgeProfCounters+860(%rip)
.LBB4_24:                               # %if.end37
	cmpl	$0, quiet(%rip)
	je	.LBB4_26
# BB#25:                                # %if.end37.if.end41_crit_edge
	incl	EdgeProfCounters+868(%rip)
	incl	EdgeProfCounters+880(%rip)
	jmp	.LBB4_33
.LBB4_26:                               # %if.then39
	incl	EdgeProfCounters+872(%rip)
	movq	-16(%rbp), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str23, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+876(%rip)
	incl	EdgeProfCounters+880(%rip)
.LBB4_33:                               # %if.end48
	addq	$192, %rsp
	popq	%rbp
	ret
.LBB4_18:                               # %if.then19
	incl	EdgeProfCounters+824(%rip)
	cmpl	$0, quiet(%rip)
	je	.LBB4_27
# BB#19:                                # %if.then19.if.end23_crit_edge
	incl	EdgeProfCounters+828(%rip)
	jmp	.LBB4_28
.LBB4_27:                               # %if.then21
	incl	EdgeProfCounters+832(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str22, %esi
	xorb	%al, %al
	callq	fprintf
	incl	EdgeProfCounters+836(%rip)
.LBB4_28:                               # %if.end42
	incl	EdgeProfCounters+840(%rip)
	incl	EdgeProfCounters+884(%rip)
	jmp	.LBB4_29
.Ltmp35:
	.size	copystat, .Ltmp35-copystat
	.cfi_endproc

	.globl	compress
	.align	16, 0x90
	.type	compress,@function
compress:                               # @compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
	incl	EdgeProfCounters+904(%rip)
	movq	$0, -32(%rbp)
	cmpl	$0, nomagic(%rip)
	je	.LBB5_2
# BB#1:                                 # %entry.if.end8_crit_edge
	incl	EdgeProfCounters+912(%rip)
	jmp	.LBB5_6
.LBB5_2:                                # %if.then
	incl	EdgeProfCounters+908(%rip)
	movzbl	magic_header(%rip), %edi
	callq	putchar
	movzbl	magic_header+1(%rip), %edi
	callq	putchar
	movl	maxbits(%rip), %eax
	orl	block_compress(%rip), %eax
	movsbl	%al, %edi
	callq	putchar
	movq	stdout(%rip), %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB5_3
# BB#4:                                 # %if.then7
	incl	EdgeProfCounters+916(%rip)
	callq	writeerr
	incl	EdgeProfCounters+924(%rip)
	jmp	.LBB5_5
.LBB5_3:                                # %if.then.if.end_crit_edge
	incl	EdgeProfCounters+920(%rip)
.LBB5_5:                                # %if.end
	incl	EdgeProfCounters+928(%rip)
.LBB5_6:                                # %if.end8
	movl	$0, offset(%rip)
	movq	$3, bytes_out(%rip)
	movq	$0, out_count(%rip)
	movl	$0, clear_flg(%rip)
	movq	$0, ratio(%rip)
	movq	$1, in_count(%rip)
	movq	$10000, checkpoint(%rip) # imm = 0x2710
	movl	$257, %eax              # imm = 0x101
	movl	$9, n_bits(%rip)
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	cmpl	$0, block_compress(%rip)
	jne	.LBB5_8
# BB#7:                                 # %select.mid
	movl	$256, %eax              # imm = 0x100
.LBB5_8:                                # %select.end
	movslq	%eax, %rax
	movq	%rax, free_ent(%rip)
	callq	getchar
	movslq	%eax, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	hsize(%rip), %rax
	movq	%rax, -24(%rbp)
	incl	EdgeProfCounters+932(%rip)
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	incl	EdgeProfCounters+936(%rip)
	incl	-68(%rbp)
	incl	EdgeProfCounters+944(%rip)
	shlq	-24(%rbp)
	incl	EdgeProfCounters+948(%rip)
.LBB5_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$65535, -24(%rbp)       # imm = 0xFFFF
	jle	.LBB5_10
# BB#11:                                # %for.end
	incl	EdgeProfCounters+940(%rip)
	movl	$8, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	hsize(%rip), %rdi
	movq	%rdi, -64(%rbp)
	callq	cl_hash
	incl	EdgeProfCounters+952(%rip)
	leaq	-32(%rbp), %r14
	leaq	-48(%rbp), %rbx
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_14:                               # %if.then24
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+964(%rip)
	movq	-32(%rbp), %rax
	movzwl	codetab(%rax,%rax), %eax
	movq	%rax, -48(%rbp)
	incl	EdgeProfCounters+972(%rip)
.LBB5_12:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	getchar
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	je	.LBB5_53
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+956(%rip)
	incq	in_count(%rip)
	movb	maxbits(%rip), %cl
	movslq	-36(%rbp), %rax
	shlq	%cl, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movb	-68(%rbp), %cl
	movl	-36(%rbp), %eax
	shll	%cl, %eax
	movslq	%eax, %rax
	xorq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	htab(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB5_14
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+968(%rip)
	movq	-32(%rbp), %rax
	cmpq	$0, htab(,%rax,8)
	jns	.LBB5_17
# BB#16:                                # %if.then30
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+976(%rip)
	incl	EdgeProfCounters+984(%rip)
	jmp	.LBB5_45
	.align	16, 0x90
.LBB5_17:                               # %if.end32
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+980(%rip)
	incl	EdgeProfCounters+988(%rip)
	movl	-64(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_18
# BB#19:                                # %if.then37
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+992(%rip)
	movl	$1, -52(%rbp)
	incl	EdgeProfCounters+1000(%rip)
	jmp	.LBB5_20
.LBB5_18:                               # %if.end32.if.end38_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+996(%rip)
.LBB5_20:                               # %if.end38
                                        #   in Loop: Header=BB5_12 Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jns	.LBB5_21
# BB#22:                                # %if.then43
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1004(%rip)
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
	incl	EdgeProfCounters+1012(%rip)
	jmp	.LBB5_23
.LBB5_21:                               # %if.end38.if.end45_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1008(%rip)
.LBB5_23:                               # %if.end45
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-32(%rbp), %rax
	movq	htab(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_25
# BB#24:                                # %if.then49
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1016(%rip)
	movq	-32(%rbp), %rax
	movzwl	codetab(%rax,%rax), %eax
	movq	%rax, -48(%rbp)
	incl	EdgeProfCounters+1024(%rip)
	jmp	.LBB5_12
.LBB5_25:                               # %if.end52
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1020(%rip)
	movq	-32(%rbp), %rax
	cmpq	$0, htab(,%rax,8)
	jg	.LBB5_27
# BB#26:                                # %if.then56
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1028(%rip)
	incl	EdgeProfCounters+1036(%rip)
	jmp	.LBB5_45
.LBB5_27:                               # %if.end57
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1032(%rip)
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jns	.LBB5_28
# BB#29:                                # %if.then62
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1040(%rip)
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
	incl	EdgeProfCounters+1048(%rip)
	jmp	.LBB5_30
.LBB5_28:                               # %if.end57.if.end64_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1044(%rip)
.LBB5_30:                               # %if.end64
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-32(%rbp), %rax
	movq	htab(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_32
# BB#31:                                # %if.then68
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1052(%rip)
	movq	-32(%rbp), %rax
	movzwl	codetab(%rax,%rax), %eax
	movq	%rax, -48(%rbp)
	incl	EdgeProfCounters+1060(%rip)
	jmp	.LBB5_12
.LBB5_32:                               # %if.end71
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1056(%rip)
	movq	-32(%rbp), %rax
	cmpq	$0, htab(,%rax,8)
	jg	.LBB5_34
# BB#33:                                # %if.then75
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1064(%rip)
	incl	EdgeProfCounters+1072(%rip)
	jmp	.LBB5_45
.LBB5_34:                               # %if.end76
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1068(%rip)
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jns	.LBB5_35
# BB#36:                                # %if.then81
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1076(%rip)
	movq	-64(%rbp), %rax
	addq	%rax, -32(%rbp)
	incl	EdgeProfCounters+1084(%rip)
	jmp	.LBB5_37
.LBB5_35:                               # %if.end76.if.end83_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1080(%rip)
.LBB5_37:                               # %if.end83
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-32(%rbp), %rax
	movq	htab(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_39
# BB#38:                                # %if.then87
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1088(%rip)
	movq	-32(%rbp), %rax
	movzwl	codetab(%rax,%rax), %eax
	movq	%rax, -48(%rbp)
	incl	EdgeProfCounters+1096(%rip)
	jmp	.LBB5_12
.LBB5_39:                               # %if.end90
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1092(%rip)
	movq	-32(%rbp), %rax
	cmpq	$0, htab(,%rax,8)
	jle	.LBB5_40
# BB#41:                                # %if.then94
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1100(%rip)
	movl	$0, -72(%rbp)
	movl	-64(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %r8
	callq	scott_hack
	movl	%eax, -72(%rbp)
	testl	%eax, %eax
	je	.LBB5_43
# BB#42:                                # %if.then99
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1108(%rip)
	incl	EdgeProfCounters+1116(%rip)
	jmp	.LBB5_12
.LBB5_40:                               # %if.end90.if.end101_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1104(%rip)
	jmp	.LBB5_44
.LBB5_43:                               # %if.end100
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1112(%rip)
	incl	EdgeProfCounters+1120(%rip)
.LBB5_44:                               # %if.end101
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1124(%rip)
	.align	16, 0x90
.LBB5_45:                               # %nomatch
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-48(%rbp), %rdi
	callq	output
	incq	out_count(%rip)
	movslq	-36(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	free_ent(%rip), %rax
	cmpq	maxmaxcode(%rip), %rax
	jge	.LBB5_47
# BB#46:                                # %if.then106
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1128(%rip)
	movq	free_ent(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, free_ent(%rip)
	movq	-32(%rbp), %rcx
	movw	%ax, codetab(%rcx,%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, htab(,%rax,8)
	incl	EdgeProfCounters+1136(%rip)
	incl	EdgeProfCounters+1164(%rip)
	jmp	.LBB5_12
.LBB5_47:                               # %if.else111
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1132(%rip)
	movq	in_count(%rip), %rax
	cmpq	checkpoint(%rip), %rax
	jl	.LBB5_48
# BB#49:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1140(%rip)
	cmpl	$0, block_compress(%rip)
	je	.LBB5_50
# BB#51:                                # %if.then115
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1148(%rip)
	callq	cl_block
	incl	EdgeProfCounters+1156(%rip)
	jmp	.LBB5_52
.LBB5_48:                               # %if.else111.if.end116_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1144(%rip)
	jmp	.LBB5_52
.LBB5_50:                               # %land.lhs.true.if.end116_crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1152(%rip)
.LBB5_52:                               # %if.end116
                                        #   in Loop: Header=BB5_12 Depth=1
	incl	EdgeProfCounters+1160(%rip)
	incl	EdgeProfCounters+1164(%rip)
	jmp	.LBB5_12
.LBB5_53:                               # %while.end
	incl	EdgeProfCounters+960(%rip)
	movq	-48(%rbp), %rdi
	callq	output
	incq	out_count(%rip)
	movq	$-1, %rdi
	callq	output
	cmpl	$0, zcat_flg(%rip)
	je	.LBB5_55
# BB#54:                                # %while.end.if.end126_crit_edge
	incl	EdgeProfCounters+1172(%rip)
	jmp	.LBB5_58
.LBB5_55:                               # %land.lhs.true121
	incl	EdgeProfCounters+1168(%rip)
	cmpl	$0, quiet(%rip)
	je	.LBB5_57
# BB#56:                                # %land.lhs.true121.if.end126_crit_edge
	incl	EdgeProfCounters+1176(%rip)
	jmp	.LBB5_58
.LBB5_57:                               # %if.then123
	incl	EdgeProfCounters+1180(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str19, %esi
	xorb	%al, %al
	callq	fprintf
	movq	in_count(%rip), %rdx
	movq	%rdx, %rsi
	subq	bytes_out(%rip), %rsi
	movq	stderr(%rip), %rdi
	callq	prratio
	incl	EdgeProfCounters+1184(%rip)
.LBB5_58:                               # %if.end126
	movq	bytes_out(%rip), %rax
	cmpq	in_count(%rip), %rax
	jle	.LBB5_59
# BB#60:                                # %if.then129
	incl	EdgeProfCounters+1188(%rip)
	movl	$2, exit_stat(%rip)
	incl	EdgeProfCounters+1196(%rip)
	jmp	.LBB5_61
.LBB5_59:                               # %if.end126.if.end130_crit_edge
	incl	EdgeProfCounters+1192(%rip)
.LBB5_61:                               # %if.end130
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp44:
	.size	compress, .Ltmp44-compress
	.cfi_endproc

	.globl	cl_hash
	.align	16, 0x90
	.type	cl_hash,@function
cl_hash:                                # @cl_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	incl	EdgeProfCounters+1200(%rip)
	movq	%rdi, -8(%rbp)
	leaq	htab(,%rdi,8), %rax
	movq	%rax, -16(%rbp)
	movq	$-1, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -24(%rbp)
	incl	EdgeProfCounters+1204(%rip)
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_2:                                # %do.cond.do.body_crit_edge
                                        #   in Loop: Header=BB6_1 Depth=1
	incl	EdgeProfCounters+1212(%rip)
.LBB6_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -128(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -96(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -32(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -24(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -16(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rax)
	addq	$-128, -16(%rbp)
	incl	EdgeProfCounters+1208(%rip)
	movq	-24(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -24(%rbp)
	jns	.LBB6_2
# BB#3:                                 # %do.end
	incl	EdgeProfCounters+1216(%rip)
	addq	$16, -24(%rbp)
	incl	EdgeProfCounters+1220(%rip)
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_5:                                # %for.body
                                        #   in Loop: Header=BB6_4 Depth=1
	incl	EdgeProfCounters+1224(%rip)
	movq	-16(%rbp), %rax
	leaq	-8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rax)
	incl	EdgeProfCounters+1232(%rip)
	decq	-24(%rbp)
	incl	EdgeProfCounters+1236(%rip)
.LBB6_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	jg	.LBB6_5
# BB#6:                                 # %for.end
	incl	EdgeProfCounters+1228(%rip)
	popq	%rbp
	ret
.Ltmp50:
	.size	cl_hash, .Ltmp50-cl_hash
	.cfi_endproc

	.globl	scott_hack
	.align	16, 0x90
	.type	scott_hack,@function
scott_hack:                             # @scott_hack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	incl	EdgeProfCounters+1240(%rip)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	incl	EdgeProfCounters+1244(%rip)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_7:                                # %if.then12
                                        #   in Loop: Header=BB7_1 Depth=1
	incl	EdgeProfCounters+1272(%rip)
	incl	EdgeProfCounters+1280(%rip)
.LBB7_1:                                # %probeSH
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movslq	-28(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, (%rax)
	jns	.LBB7_2
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	incl	EdgeProfCounters+1248(%rip)
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	addq	%rcx, (%rax)
	incl	EdgeProfCounters+1256(%rip)
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_2:                                # %probeSH.if.end_crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	incl	EdgeProfCounters+1252(%rip)
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	htab(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB7_5
# BB#6:                                 # %if.end8
                                        #   in Loop: Header=BB7_1 Depth=1
	incl	EdgeProfCounters+1264(%rip)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, htab(,%rax,8)
	jg	.LBB7_7
# BB#8:                                 # %if.end13
	incl	EdgeProfCounters+1276(%rip)
	movl	$0, -4(%rbp)
	incl	EdgeProfCounters+1284(%rip)
	jmp	.LBB7_9
.LBB7_5:                                # %if.then5
	incl	EdgeProfCounters+1260(%rip)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzwl	codetab(%rax,%rax), %eax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -4(%rbp)
	incl	EdgeProfCounters+1268(%rip)
.LBB7_9:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.Ltmp56:
	.size	scott_hack, .Ltmp56-scott_hack
	.cfi_endproc

	.globl	output
	.align	16, 0x90
	.type	output,@function
output:                                 # @output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	incl	EdgeProfCounters+1288(%rip)
	movq	%rdi, -8(%rbp)
	movl	offset(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	n_bits(%rip), %eax
	movl	%eax, -16(%rbp)
	movq	$buf, -24(%rbp)
	cmpq	$0, -8(%rbp)
	js	.LBB8_31
# BB#1:                                 # %if.then
	incl	EdgeProfCounters+1292(%rip)
	movl	-12(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rax
	addq	%rax, -24(%rbp)
	movslq	-12(%rbp), %rcx
	movq	%rcx, %rdx
	andq	$7, %rdx
	movl	$8, %eax
	andl	$7, %ecx
	movl	%ecx, -12(%rbp)
	movzbl	rmask(%rdx), %esi
	movq	-24(%rbp), %r8
	movzbl	(%r8), %edi
	andl	%esi, %edi
	movq	-8(%rbp), %rsi
                                        # kill: CL<def> CL<kill> RCX<kill>
	shlq	%cl, %rsi
	movzbl	lmask(%rdx), %ecx
	andl	%esi, %ecx
	orl	%edi, %ecx
	movb	%cl, (%r8)
	incq	-24(%rbp)
	movl	$8, %ecx
	subl	-12(%rbp), %ecx
	subl	%ecx, -16(%rbp)
	subl	-12(%rbp), %eax
	movb	%al, %cl
	sarq	%cl, -8(%rbp)
	cmpl	$7, -16(%rbp)
	jle	.LBB8_2
# BB#3:                                 # %if.then15
	incl	EdgeProfCounters+1300(%rip)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movb	-8(%rbp), %dl
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	sarq	$8, -8(%rbp)
	addl	$-8, -16(%rbp)
	incl	EdgeProfCounters+1308(%rip)
	jmp	.LBB8_4
.LBB8_31:                               # %if.else63
	incl	EdgeProfCounters+1296(%rip)
	cmpl	$0, offset(%rip)
	jle	.LBB8_32
# BB#33:                                # %if.then66
	incl	EdgeProfCounters+1432(%rip)
	movl	offset(%rip), %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	stdout(%rip), %rcx
	movl	$buf, %edi
	movl	$1, %esi
	callq	fwrite
	incl	EdgeProfCounters+1440(%rip)
	jmp	.LBB8_34
.LBB8_2:                                # %if.then.if.end_crit_edge
	incl	EdgeProfCounters+1304(%rip)
.LBB8_4:                                # %if.end
	cmpl	$0, -16(%rbp)
	je	.LBB8_5
# BB#6:                                 # %if.then20
	incl	EdgeProfCounters+1312(%rip)
	movq	-24(%rbp), %rax
	movb	-8(%rbp), %cl
	movb	%cl, (%rax)
	incl	EdgeProfCounters+1320(%rip)
	jmp	.LBB8_7
.LBB8_32:                               # %if.else63.if.end70_crit_edge
	incl	EdgeProfCounters+1436(%rip)
.LBB8_34:                               # %if.end70
	movl	offset(%rip), %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %eax
	sarl	$3, %eax
	movslq	%eax, %rax
	addq	%rax, bytes_out(%rip)
	movl	$0, offset(%rip)
	movq	stdout(%rip), %rdi
	callq	fflush
	movq	stdout(%rip), %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB8_35
# BB#36:                                # %if.then78
	incl	EdgeProfCounters+1444(%rip)
	callq	writeerr
	incl	EdgeProfCounters+1452(%rip)
	jmp	.LBB8_37
.LBB8_5:                                # %if.end.if.end22_crit_edge
	incl	EdgeProfCounters+1316(%rip)
.LBB8_7:                                # %if.end22
	movl	offset(%rip), %eax
	addl	n_bits(%rip), %eax
	movl	%eax, offset(%rip)
	movl	n_bits(%rip), %ecx
	shll	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB8_8
# BB#9:                                 # %if.then26
	incl	EdgeProfCounters+1324(%rip)
	movq	$buf, -24(%rbp)
	movl	n_bits(%rip), %eax
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rax
	addq	%rax, bytes_out(%rip)
	incl	EdgeProfCounters+1332(%rip)
	jmp	.LBB8_10
	.align	16, 0x90
.LBB8_11:                               # %do.cond.do.body_crit_edge
                                        #   in Loop: Header=BB8_10 Depth=1
	incl	EdgeProfCounters+1340(%rip)
.LBB8_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movsbl	(%rax), %edi
	callq	putchar
	incl	EdgeProfCounters+1336(%rip)
	decl	-16(%rbp)
	jne	.LBB8_11
# BB#12:                                # %do.end
	incl	EdgeProfCounters+1344(%rip)
	movl	$0, offset(%rip)
	incl	EdgeProfCounters+1348(%rip)
	jmp	.LBB8_13
.LBB8_8:                                # %if.end22.if.end32_crit_edge
	incl	EdgeProfCounters+1328(%rip)
.LBB8_13:                               # %if.end32
	movq	free_ent(%rip), %rax
	cmpq	maxcode(%rip), %rax
	jle	.LBB8_15
# BB#14:                                # %if.end32.if.then37_crit_edge
	incl	EdgeProfCounters+1352(%rip)
	jmp	.LBB8_18
.LBB8_15:                               # %lor.lhs.false
	incl	EdgeProfCounters+1356(%rip)
	cmpl	$0, clear_flg(%rip)
	jle	.LBB8_16
# BB#17:                                # %lor.lhs.false.if.then37_crit_edge
	incl	EdgeProfCounters+1360(%rip)
.LBB8_18:                               # %if.then37
	cmpl	$0, offset(%rip)
	jle	.LBB8_19
# BB#20:                                # %if.then40
	incl	EdgeProfCounters+1368(%rip)
	movq	stdout(%rip), %rcx
	movslq	n_bits(%rip), %rdx
	movl	$buf, %edi
	movl	$1, %esi
	callq	fwrite
	movslq	n_bits(%rip), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_21
# BB#22:                                # %if.then46
	incl	EdgeProfCounters+1376(%rip)
	callq	writeerr
	incl	EdgeProfCounters+1384(%rip)
	jmp	.LBB8_23
.LBB8_35:                               # %if.end70.if.end79_crit_edge
	incl	EdgeProfCounters+1448(%rip)
.LBB8_37:                               # %if.end79
	incl	EdgeProfCounters+1456(%rip)
	jmp	.LBB8_38
.LBB8_19:                               # %if.then37.if.end50_crit_edge
	incl	EdgeProfCounters+1372(%rip)
	jmp	.LBB8_24
.LBB8_21:                               # %if.then40.if.end47_crit_edge
	incl	EdgeProfCounters+1380(%rip)
.LBB8_23:                               # %if.end47
	movslq	n_bits(%rip), %rax
	addq	%rax, bytes_out(%rip)
	incl	EdgeProfCounters+1388(%rip)
.LBB8_24:                               # %if.end50
	movl	$0, offset(%rip)
	cmpl	$0, clear_flg(%rip)
	je	.LBB8_26
# BB#25:                                # %if.then52
	incl	EdgeProfCounters+1392(%rip)
	movl	$9, n_bits(%rip)
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	movl	$0, clear_flg(%rip)
	incl	EdgeProfCounters+1400(%rip)
	jmp	.LBB8_30
.LBB8_26:                               # %if.else
	incl	EdgeProfCounters+1396(%rip)
	movl	n_bits(%rip), %eax
	incl	%eax
	movl	%eax, n_bits(%rip)
	cmpl	maxbits(%rip), %eax
	jne	.LBB8_28
# BB#27:                                # %if.then55
	incl	EdgeProfCounters+1404(%rip)
	movq	maxmaxcode(%rip), %rax
	movq	%rax, maxcode(%rip)
	incl	EdgeProfCounters+1412(%rip)
	jmp	.LBB8_29
.LBB8_16:                               # %lor.lhs.false.if.end62_crit_edge
	incl	EdgeProfCounters+1364(%rip)
	incl	EdgeProfCounters+1428(%rip)
	jmp	.LBB8_38
.LBB8_28:                               # %if.else56
	incl	EdgeProfCounters+1408(%rip)
	movl	$1, %eax
	movb	n_bits(%rip), %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %rax
	movq	%rax, maxcode(%rip)
	incl	EdgeProfCounters+1416(%rip)
.LBB8_29:                               # %if.end60
	incl	EdgeProfCounters+1420(%rip)
.LBB8_30:                               # %if.end61
	incl	EdgeProfCounters+1424(%rip)
	incl	EdgeProfCounters+1428(%rip)
.LBB8_38:                               # %if.end80
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp62:
	.size	output, .Ltmp62-output
	.cfi_endproc

	.globl	prratio
	.align	16, 0x90
	.type	prratio,@function
prratio:                                # @prratio
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	incl	EdgeProfCounters+1460(%rip)
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$214749, -16(%rbp)      # imm = 0x346DD
	jl	.LBB9_2
# BB#1:                                 # %if.then
	incl	EdgeProfCounters+1464(%rip)
	movabsq	$3777893186295716171, %rax # imm = 0x346DC5D63886594B
	imulq	-24(%rbp)
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$11, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	movl	%eax, -28(%rbp)
	incl	EdgeProfCounters+1472(%rip)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	incl	EdgeProfCounters+1468(%rip)
	imulq	$10000, -16(%rbp), %rax # imm = 0x2710
	cqto
	idivq	-24(%rbp)
	movl	%eax, -28(%rbp)
	incl	EdgeProfCounters+1476(%rip)
.LBB9_3:                                # %if.end
	cmpl	$0, -28(%rbp)
	js	.LBB9_5
# BB#4:                                 # %if.end.if.end7_crit_edge
	incl	EdgeProfCounters+1484(%rip)
	jmp	.LBB9_6
.LBB9_5:                                # %if.then6
	incl	EdgeProfCounters+1480(%rip)
	movq	-8(%rbp), %rsi
	movl	$45, %edi
	callq	_IO_putc
	negl	-28(%rbp)
	incl	EdgeProfCounters+1488(%rip)
.LBB9_6:                                # %if.end7
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$37, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	movq	-8(%rbp), %rdi
	subl	%eax, %ecx
	movl	$.L.str25, %esi
                                        # kill: EDX<def> EDX<kill> RDX<kill>
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	xorb	%al, %al
	callq	fprintf
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp68:
	.size	prratio, .Ltmp68-prratio
	.cfi_endproc

	.globl	decompress
	.align	16, 0x90
	.type	decompress,@function
decompress:                             # @decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp75:
	.cfi_offset %rbx, -24
	incl	EdgeProfCounters+1492(%rip)
	movl	$9, n_bits(%rip)
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	movq	$255, -32(%rbp)
	incl	EdgeProfCounters+1496(%rip)
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_2:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	incl	EdgeProfCounters+1500(%rip)
	movq	-32(%rbp), %rax
	movw	$0, codetab(%rax,%rax)
	movq	-32(%rbp), %rax
	movb	%al, htab(%rax)
	incl	EdgeProfCounters+1508(%rip)
	decq	-32(%rbp)
	incl	EdgeProfCounters+1512(%rip)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jns	.LBB10_2
# BB#3:                                 # %for.end
	incl	EdgeProfCounters+1504(%rip)
	movl	$257, %eax              # imm = 0x101
	cmpl	$0, block_compress(%rip)
	jne	.LBB10_5
# BB#4:                                 # %select.mid
	movl	$256, %eax              # imm = 0x100
.LBB10_5:                               # %select.end
	movslq	%eax, %rax
	movq	%rax, free_ent(%rip)
	callq	getcode
	movq	%rax, -40(%rbp)
	movl	%eax, -20(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	.LBB10_7
# BB#6:                                 # %if.then
	incl	EdgeProfCounters+1516(%rip)
	incl	EdgeProfCounters+1524(%rip)
	jmp	.LBB10_39
.LBB10_7:                               # %if.end
	incl	EdgeProfCounters+1520(%rip)
	movsbl	-20(%rbp), %edi
	callq	putchar
	movq	stdout(%rip), %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB10_8
# BB#9:                                 # %if.then11
	incl	EdgeProfCounters+1528(%rip)
	callq	writeerr
	incl	EdgeProfCounters+1536(%rip)
	jmp	.LBB10_10
.LBB10_8:                               # %if.end.if.end12_crit_edge
	incl	EdgeProfCounters+1532(%rip)
.LBB10_10:                              # %if.end12
	movq	$htab+65536, -16(%rbp)
	incl	EdgeProfCounters+1540(%rip)
	movl	$htab+65536, %ebx
	jmp	.LBB10_11
	.align	16, 0x90
.LBB10_37:                              # %if.end63
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	incl	EdgeProfCounters+1660(%rip)
.LBB10_11:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_20 Depth 2
                                        #     Child Loop BB10_29 Depth 2
                                        #     Child Loop BB10_32 Depth 2
	callq	getcode
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	js	.LBB10_12
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1544(%rip)
	cmpq	$256, -32(%rbp)         # imm = 0x100
	jne	.LBB10_16
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1552(%rip)
	cmpl	$0, block_compress(%rip)
	je	.LBB10_18
# BB#19:                                # %if.then19
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1560(%rip)
	movq	$255, -32(%rbp)
	incl	EdgeProfCounters+1568(%rip)
	jmp	.LBB10_20
	.align	16, 0x90
.LBB10_21:                              # %for.inc25
                                        #   in Loop: Header=BB10_20 Depth=2
	incl	EdgeProfCounters+1572(%rip)
	movq	-32(%rbp), %rax
	movw	$0, codetab(%rax,%rax)
	incl	EdgeProfCounters+1580(%rip)
	decq	-32(%rbp)
	incl	EdgeProfCounters+1584(%rip)
.LBB10_20:                              # %for.cond20
                                        #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	jns	.LBB10_21
# BB#22:                                # %for.end27
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1576(%rip)
	movl	$1, clear_flg(%rip)
	movq	$256, free_ent(%rip)    # imm = 0x100
	callq	getcode
	movq	%rax, -32(%rbp)
	cmpq	$-1, %rax
	je	.LBB10_23
# BB#24:                                # %if.end32
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1592(%rip)
	incl	EdgeProfCounters+1600(%rip)
	jmp	.LBB10_25
	.align	16, 0x90
.LBB10_16:                              # %while.body.if.end33_crit_edge
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1556(%rip)
	jmp	.LBB10_25
	.align	16, 0x90
.LBB10_18:                              # %land.lhs.true.if.end33_crit_edge
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1564(%rip)
.LBB10_25:                              # %if.end33
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpq	free_ent(%rip), %rax
	jl	.LBB10_26
# BB#27:                                # %if.then36
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1604(%rip)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movb	-20(%rbp), %dl
	movq	%rcx, -16(%rbp)
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	incl	EdgeProfCounters+1612(%rip)
	jmp	.LBB10_28
	.align	16, 0x90
.LBB10_26:                              # %if.end33.if.end38_crit_edge
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1608(%rip)
.LBB10_28:                              # %if.end38
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1616(%rip)
	jmp	.LBB10_29
	.align	16, 0x90
.LBB10_30:                              # %while.body42
                                        #   in Loop: Header=BB10_29 Depth=2
	incl	EdgeProfCounters+1620(%rip)
	movq	-32(%rbp), %rax
	movb	htab(%rax), %al
	movq	-16(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	movq	-32(%rbp), %rax
	movzwl	codetab(%rax,%rax), %eax
	movq	%rax, -32(%rbp)
	incl	EdgeProfCounters+1628(%rip)
.LBB10_29:                              # %while.cond39
                                        #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$256, -32(%rbp)         # imm = 0x100
	jge	.LBB10_30
# BB#31:                                # %while.end
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1624(%rip)
	movq	-32(%rbp), %rax
	movzbl	htab(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	incl	EdgeProfCounters+1632(%rip)
	jmp	.LBB10_32
	.align	16, 0x90
.LBB10_33:                              # %do.cond.do.body_crit_edge
                                        #   in Loop: Header=BB10_32 Depth=2
	incl	EdgeProfCounters+1640(%rip)
.LBB10_32:                              # %do.cond
                                        #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	-1(%rax), %edi
	callq	putchar
	incl	EdgeProfCounters+1636(%rip)
	cmpq	%rbx, -16(%rbp)
	ja	.LBB10_33
# BB#34:                                # %do.end
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1644(%rip)
	movq	free_ent(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpq	maxmaxcode(%rip), %rax
	jge	.LBB10_35
# BB#36:                                # %if.then58
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1648(%rip)
	movq	-32(%rbp), %rax
	movw	-40(%rbp), %cx
	movw	%cx, codetab(%rax,%rax)
	movq	-32(%rbp), %rax
	movb	-20(%rbp), %cl
	movb	%cl, htab(%rax)
	movq	-32(%rbp), %rax
	incq	%rax
	movq	%rax, free_ent(%rip)
	incl	EdgeProfCounters+1656(%rip)
	jmp	.LBB10_37
	.align	16, 0x90
.LBB10_35:                              # %do.end.if.end63_crit_edge
                                        #   in Loop: Header=BB10_11 Depth=1
	incl	EdgeProfCounters+1652(%rip)
	jmp	.LBB10_37
.LBB10_12:                              # %while.cond.while.end64_crit_edge
	incl	EdgeProfCounters+1548(%rip)
	jmp	.LBB10_13
.LBB10_23:                              # %if.then31
	incl	EdgeProfCounters+1588(%rip)
	incl	EdgeProfCounters+1596(%rip)
.LBB10_13:                              # %while.end64
	movq	stdout(%rip), %rdi
	callq	fflush
	movq	stdout(%rip), %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB10_14
# BB#38:                                # %if.then68
	incl	EdgeProfCounters+1664(%rip)
	callq	writeerr
	incl	EdgeProfCounters+1672(%rip)
	jmp	.LBB10_39
.LBB10_14:                              # %while.end64.if.end69_crit_edge
	incl	EdgeProfCounters+1668(%rip)
.LBB10_39:                              # %if.end69
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp76:
	.size	decompress, .Ltmp76-decompress
	.cfi_endproc

	.globl	getcode
	.align	16, 0x90
	.type	getcode,@function
getcode:                                # @getcode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	incl	EdgeProfCounters+1676(%rip)
	movq	$getcode.buf, -32(%rbp)
	cmpl	$0, clear_flg(%rip)
	jle	.LBB11_2
# BB#1:                                 # %entry.if.then_crit_edge
	incl	EdgeProfCounters+1680(%rip)
	jmp	.LBB11_7
.LBB11_2:                               # %lor.lhs.false
	incl	EdgeProfCounters+1684(%rip)
	movl	getcode.offset(%rip), %eax
	cmpl	getcode.size(%rip), %eax
	jl	.LBB11_4
# BB#3:                                 # %lor.lhs.false.if.then_crit_edge
	incl	EdgeProfCounters+1688(%rip)
	jmp	.LBB11_7
.LBB11_4:                               # %lor.lhs.false2
	incl	EdgeProfCounters+1692(%rip)
	movq	free_ent(%rip), %rax
	cmpq	maxcode(%rip), %rax
	jle	.LBB11_5
# BB#6:                                 # %lor.lhs.false2.if.then_crit_edge
	incl	EdgeProfCounters+1696(%rip)
.LBB11_7:                               # %if.then
	movq	free_ent(%rip), %rax
	cmpq	maxcode(%rip), %rax
	jle	.LBB11_8
# BB#9:                                 # %if.then5
	incl	EdgeProfCounters+1704(%rip)
	movl	n_bits(%rip), %eax
	incl	%eax
	movl	%eax, n_bits(%rip)
	cmpl	maxbits(%rip), %eax
	jne	.LBB11_11
# BB#10:                                # %if.then7
	incl	EdgeProfCounters+1712(%rip)
	movq	maxmaxcode(%rip), %rax
	movq	%rax, maxcode(%rip)
	incl	EdgeProfCounters+1720(%rip)
	jmp	.LBB11_12
.LBB11_8:                               # %if.then.if.end8_crit_edge
	incl	EdgeProfCounters+1708(%rip)
	jmp	.LBB11_13
.LBB11_11:                              # %if.else
	incl	EdgeProfCounters+1716(%rip)
	movl	$1, %eax
	movb	n_bits(%rip), %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %rax
	movq	%rax, maxcode(%rip)
	incl	EdgeProfCounters+1724(%rip)
.LBB11_12:                              # %if.end
	incl	EdgeProfCounters+1728(%rip)
.LBB11_13:                              # %if.end8
	cmpl	$0, clear_flg(%rip)
	jle	.LBB11_14
# BB#15:                                # %if.then11
	incl	EdgeProfCounters+1732(%rip)
	movl	$9, n_bits(%rip)
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	movl	$0, clear_flg(%rip)
	incl	EdgeProfCounters+1740(%rip)
	jmp	.LBB11_16
.LBB11_14:                              # %if.end8.if.end12_crit_edge
	incl	EdgeProfCounters+1736(%rip)
.LBB11_16:                              # %if.end12
	movq	stdin(%rip), %rcx
	movslq	n_bits(%rip), %rdx
	movl	$getcode.buf, %edi
	movl	$1, %esi
	callq	fread
	movl	%eax, getcode.size(%rip)
	testl	%eax, %eax
	jg	.LBB11_18
# BB#17:                                # %if.then17
	incl	EdgeProfCounters+1744(%rip)
	movq	$-1, -8(%rbp)
	incl	EdgeProfCounters+1752(%rip)
	jmp	.LBB11_23
.LBB11_18:                              # %if.end18
	incl	EdgeProfCounters+1748(%rip)
	movl	$0, getcode.offset(%rip)
	movl	n_bits(%rip), %eax
	decl	%eax
	movl	getcode.size(%rip), %ecx
	shll	$3, %ecx
	subl	%eax, %ecx
	movl	%ecx, getcode.size(%rip)
	incl	EdgeProfCounters+1756(%rip)
	jmp	.LBB11_19
.LBB11_5:                               # %lor.lhs.false2.if.end22_crit_edge
	incl	EdgeProfCounters+1700(%rip)
.LBB11_19:                              # %if.end22
	movl	getcode.offset(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	n_bits(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	movl	$8, %eax
	addq	%rcx, -32(%rbp)
	andl	$7, -20(%rbp)
	movq	-32(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %edx
	movb	-20(%rbp), %cl
	shrl	%cl, %edx
	movslq	%edx, %rcx
	movq	%rcx, -16(%rbp)
	movl	$8, %ecx
	subl	-20(%rbp), %ecx
	subl	%ecx, -24(%rbp)
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$7, -24(%rbp)
	jle	.LBB11_20
# BB#21:                                # %if.then31
	incl	EdgeProfCounters+1760(%rip)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %eax
	movb	-20(%rbp), %cl
	shll	%cl, %eax
	movslq	%eax, %rax
	orq	%rax, -16(%rbp)
	addl	$8, -20(%rbp)
	addl	$-8, -24(%rbp)
	incl	EdgeProfCounters+1768(%rip)
	jmp	.LBB11_22
.LBB11_20:                              # %if.end22.if.end37_crit_edge
	incl	EdgeProfCounters+1764(%rip)
.LBB11_22:                              # %if.end37
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movslq	-24(%rbp), %rcx
	andb	rmask(%rcx), %al
	movzbl	%al, %eax
	movb	-20(%rbp), %cl
	shll	%cl, %eax
	movslq	%eax, %rax
	orq	%rax, -16(%rbp)
	movl	n_bits(%rip), %eax
	addl	%eax, getcode.offset(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	incl	EdgeProfCounters+1772(%rip)
.LBB11_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp82:
	.size	getcode, .Ltmp82-getcode
	.cfi_endproc

	.globl	writeerr
	.align	16, 0x90
	.type	writeerr,@function
writeerr:                               # @writeerr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	incl	EdgeProfCounters+1776(%rip)
	movl	$ofname, %edi
	callq	perror
	movl	$ofname, %edi
	callq	unlink
	movl	$1, %edi
	callq	exit
.Ltmp88:
	.size	writeerr, .Ltmp88-writeerr
	.cfi_endproc

	.globl	foreground
	.align	16, 0x90
	.type	foreground,@function
foreground:                             # @foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	incl	EdgeProfCounters+1780(%rip)
	cmpq	$0, bgnd_flag(%rip)
	je	.LBB13_2
# BB#1:                                 # %if.then
	incl	EdgeProfCounters+1784(%rip)
	movl	$0, -4(%rbp)
	incl	EdgeProfCounters+1792(%rip)
	jmp	.LBB13_5
.LBB13_2:                               # %if.else
	incl	EdgeProfCounters+1788(%rip)
	movl	$2, %edi
	callq	isatty
	testl	%eax, %eax
	je	.LBB13_4
# BB#3:                                 # %if.then2
	incl	EdgeProfCounters+1796(%rip)
	movl	$1, -4(%rbp)
	incl	EdgeProfCounters+1804(%rip)
	jmp	.LBB13_5
.LBB13_4:                               # %if.else3
	incl	EdgeProfCounters+1800(%rip)
	movl	$0, -4(%rbp)
	incl	EdgeProfCounters+1808(%rip)
.LBB13_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp94:
	.size	foreground, .Ltmp94-foreground
	.cfi_endproc

	.globl	cl_block
	.align	16, 0x90
	.type	cl_block,@function
cl_block:                               # @cl_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	incl	EdgeProfCounters+1812(%rip)
	movl	$10000, %eax            # imm = 0x2710
	addq	in_count(%rip), %rax
	movq	%rax, checkpoint(%rip)
	cmpq	$8388608, in_count(%rip) # imm = 0x800000
	jl	.LBB14_4
# BB#1:                                 # %if.then
	incl	EdgeProfCounters+1816(%rip)
	movq	bytes_out(%rip), %rax
	sarq	$8, %rax
	movq	%rax, -8(%rbp)
	testq	%rax, %rax
	je	.LBB14_2
# BB#3:                                 # %if.else
	incl	EdgeProfCounters+1828(%rip)
	movq	in_count(%rip), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rax, -8(%rbp)
	incl	EdgeProfCounters+1836(%rip)
	incl	EdgeProfCounters+1840(%rip)
	jmp	.LBB14_5
.LBB14_4:                               # %if.else3
	incl	EdgeProfCounters+1820(%rip)
	movq	in_count(%rip), %rax
	shlq	$8, %rax
	cqto
	idivq	bytes_out(%rip)
	movq	%rax, -8(%rbp)
	incl	EdgeProfCounters+1844(%rip)
	jmp	.LBB14_5
.LBB14_2:                               # %if.then2
	incl	EdgeProfCounters+1824(%rip)
	movq	$2147483647, -8(%rbp)   # imm = 0x7FFFFFFF
	incl	EdgeProfCounters+1832(%rip)
	incl	EdgeProfCounters+1840(%rip)
.LBB14_5:                               # %if.end5
	movq	-8(%rbp), %rax
	cmpq	ratio(%rip), %rax
	jle	.LBB14_7
# BB#6:                                 # %if.then7
	incl	EdgeProfCounters+1848(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, ratio(%rip)
	incl	EdgeProfCounters+1856(%rip)
	jmp	.LBB14_8
.LBB14_7:                               # %if.else8
	incl	EdgeProfCounters+1852(%rip)
	movq	$0, ratio(%rip)
	movq	hsize(%rip), %rdi
	callq	cl_hash
	movq	$257, free_ent(%rip)    # imm = 0x101
	movl	$1, clear_flg(%rip)
	movl	$256, %edi              # imm = 0x100
	callq	output
	incl	EdgeProfCounters+1860(%rip)
.LBB14_8:                               # %if.end9
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp100:
	.size	cl_block, .Ltmp100-cl_block
	.cfi_endproc

	.globl	version
	.align	16, 0x90
	.type	version,@function
version:                                # @version
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	incl	EdgeProfCounters+1864(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str26, %esi
	movl	$rcs_ident, %edx
	xorb	%al, %al
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str27, %esi
	xorb	%al, %al
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str28, %esi
	movl	$16, %edx
	xorb	%al, %al
	callq	fprintf
	popq	%rbp
	ret
.Ltmp106:
	.size	version, .Ltmp106-version
	.cfi_endproc

	.type	magic_header,@object    # @magic_header
	.data
	.globl	magic_header
magic_header:
	.asciz	 "\037\235"
	.size	magic_header, 3

	.type	maxbits,@object         # @maxbits
	.globl	maxbits
	.align	4
maxbits:
	.long	16                      # 0x10
	.size	maxbits, 4

	.type	maxmaxcode,@object      # @maxmaxcode
	.globl	maxmaxcode
	.align	8
maxmaxcode:
	.quad	65536                   # 0x10000
	.size	maxmaxcode, 8

	.type	hsize,@object           # @hsize
	.globl	hsize
	.align	8
hsize:
	.quad	69001                   # 0x10d89
	.size	hsize, 8

	.type	free_ent,@object        # @free_ent
	.bss
	.globl	free_ent
	.align	8
free_ent:
	.quad	0                       # 0x0
	.size	free_ent, 8

	.type	exit_stat,@object       # @exit_stat
	.globl	exit_stat
	.align	4
exit_stat:
	.long	0                       # 0x0
	.size	exit_stat, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Usage: compress [-dfvcV] [-b maxbits] [file ...]\n"
	.size	.L.str, 50

	.type	nomagic,@object         # @nomagic
	.bss
	.globl	nomagic
	.align	4
nomagic:
	.long	0                       # 0x0
	.size	nomagic, 4

	.type	zcat_flg,@object        # @zcat_flg
	.globl	zcat_flg
	.align	4
zcat_flg:
	.long	0                       # 0x0
	.size	zcat_flg, 4

	.type	quiet,@object           # @quiet
	.data
	.globl	quiet
	.align	4
quiet:
	.long	1                       # 0x1
	.size	quiet, 4

	.type	block_compress,@object  # @block_compress
	.globl	block_compress
	.align	4
block_compress:
	.long	128                     # 0x80
	.size	block_compress, 4

	.type	clear_flg,@object       # @clear_flg
	.bss
	.globl	clear_flg
	.align	4
clear_flg:
	.long	0                       # 0x0
	.size	clear_flg, 4

	.type	ratio,@object           # @ratio
	.globl	ratio
	.align	8
ratio:
	.quad	0                       # 0x0
	.size	ratio, 8

	.type	checkpoint,@object      # @checkpoint
	.data
	.globl	checkpoint
	.align	8
checkpoint:
	.quad	10000                   # 0x2710
	.size	checkpoint, 8

	.type	force,@object           # @force
	.bss
	.globl	force
	.align	4
force:
	.long	0                       # 0x0
	.size	force, 4

	.type	do_decomp,@object       # @do_decomp
	.globl	do_decomp
	.align	4
do_decomp:
	.long	0                       # 0x0
	.size	do_decomp, 4

	.type	bgnd_flag,@object       # @bgnd_flag
	.comm	bgnd_flag,8,8
	.type	.L.str1,@object         # @.str1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1:
	.asciz	 "uncompress"
	.size	.L.str1, 11

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "zcat"
	.size	.L.str2, 5

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "Missing maxbits\n"
	.size	.L.str3, 17

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "Unknown flag: '%c'; "
	.size	.L.str4, 21

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 ".Z"
	.size	.L.str5, 3

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "r"
	.size	.L.str6, 2

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "%s: not in compressed format\n"
	.size	.L.str7, 30

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "%s: compressed with %d bits, can only handle %d bits\n"
	.size	.L.str8, 54

	.type	ofname,@object          # @ofname
	.comm	ofname,100,16
	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "%s: already has .Z suffix -- no change\n"
	.size	.L.str9, 40

	.type	fsize,@object           # @fsize
	.comm	fsize,8,8
	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "%s: filename too long to tack on .Z\n"
	.size	.L.str10, 37

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "%s already exists;"
	.size	.L.str11, 19

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 " do you wish to overwrite %s (y or n)? "
	.size	.L.str12, 40

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "stderr"
	.size	.L.str13, 7

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "\tnot overwritten\n"
	.size	.L.str14, 18

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "w"
	.size	.L.str15, 2

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	 "%s: "
	.size	.L.str16, 5

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	 "stdin: not in compressed format\n"
	.size	.L.str17, 33

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	 "stdin: compressed with %d bits, can only handle %d bits\n"
	.size	.L.str18, 57

	.type	in_count,@object        # @in_count
	.data
	.globl	in_count
	.align	8
in_count:
	.quad	1                       # 0x1
	.size	in_count, 8

	.type	out_count,@object       # @out_count
	.bss
	.globl	out_count
	.align	8
out_count:
	.quad	0                       # 0x0
	.size	out_count, 8

	.type	offset,@object          # @offset
	.local	offset
	.comm	offset,4,4
	.type	bytes_out,@object       # @bytes_out
	.comm	bytes_out,8,8
	.type	n_bits,@object          # @n_bits
	.comm	n_bits,4,4
	.type	maxcode,@object         # @maxcode
	.comm	maxcode,8,8
	.type	htab,@object            # @htab
	.comm	htab,552008,16
	.type	codetab,@object         # @codetab
	.comm	codetab,138002,16
	.type	.L.str19,@object        # @.str19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str19:
	.asciz	 "Compression: "
	.size	.L.str19, 14

	.type	lmask,@object           # @lmask
	.data
	.globl	lmask
lmask:
	.asciz	 "\377\376\374\370\360\340\300\200"
	.size	lmask, 9

	.type	rmask,@object           # @rmask
	.globl	rmask
rmask:
	.ascii	 "\000\001\003\007\017\037?\177\377"
	.size	rmask, 9

	.type	buf,@object             # @buf
	.local	buf
	.comm	buf,16,16
	.type	getcode.offset,@object  # @getcode.offset
	.local	getcode.offset
	.comm	getcode.offset,4,4
	.type	getcode.size,@object    # @getcode.size
	.local	getcode.size
	.comm	getcode.size,4,4
	.type	getcode.buf,@object     # @getcode.buf
	.local	getcode.buf
	.comm	getcode.buf,16,16
	.type	.L.str20,@object        # @.str20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str20:
	.asciz	 " -- not a regular file: unchanged"
	.size	.L.str20, 34

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	 " -- has %ld other links: unchanged"
	.size	.L.str21, 35

	.type	.L.str22,@object        # @.str22
.L.str22:
	.asciz	 " -- file unchanged"
	.size	.L.str22, 19

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	 " -- replaced with %s"
	.size	.L.str23, 21

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	 "uncompress: corrupt input\n"
	.size	.L.str24, 27

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	 "%d.%02d%%"
	.size	.L.str25, 10

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	 "%s\n"
	.size	.L.str26, 4

	.type	rcs_ident,@object       # @rcs_ident
	.data
	.align	16
rcs_ident:
	.asciz	 "$Header: /z/repository/benchmarks/specint92/026.compress/src/compress.c,v 1.2 2005/01/04 22:46:33 mchu Exp $"
	.size	rcs_ident, 109

	.type	.L.str27,@object        # @.str27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str27:
	.asciz	 "Options: "
	.size	.L.str27, 10

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	 "BITS = %d\n"
	.size	.L.str28, 11

	.type	EdgeProfCounters,@object # @EdgeProfCounters
	.local	EdgeProfCounters
	.comm	EdgeProfCounters,1868,16

	.section	".note.GNU-stack","",@progbits
