	.file	"<stdin>"
	.text
	.globl	Usage
	.align	16, 0x90
	.type	Usage,@function
Usage:                                  # @Usage
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
	pushq	%rbx
	pushq	%rax
.Ltmp6:
	.cfi_offset %rbx, -24
	xorl	%edi, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$1, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	Usage, .Ltmp7-Usage
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movl	%edi, %r14d
	movl	$873, %edi              # imm = 0x369
	movl	$15, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	LAMP_init
	leaq	-44(%rbp), %rsi
	movl	$2, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -44(%rbp)
	movslq	%r14d, %rbx
	leaq	-48(%rbp), %rsi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	LAMP_store4
	leaq	-56(%rbp), %rsi
	movl	%ebx, -48(%rbp)
	movl	$4, %edi
	movq	%r15, %rdx
	callq	LAMP_store8
	leaq	-60(%rbp), %rsi
	movq	%r15, -56(%rbp)
	movl	$5, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -60(%rbp)
	movl	$6, %edi
	callq	LAMP_register
	movl	$2, %edi
	movl	$1, %esi
	callq	signal
	movq	%rax, %rbx
	movl	$7, %edi
	movl	$bgnd_flag, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, bgnd_flag(%rip)
	cmpq	$1, %rbx
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$8, %edi
	callq	LAMP_register
	movl	$2, %edi
	movl	$onintr, %esi
	callq	signal
	movl	$9, %edi
	callq	LAMP_register
	movl	$11, %edi
	movl	$oops, %esi
	callq	signal
.LBB1_2:                                # %if.end
	leaq	-48(%rbp), %rsi
	movl	$10, %edi
	callq	LAMP_load4
	movslq	-48(%rbp), %rbx
	movl	$11, %edi
	callq	LAMP_register
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbx
	leaq	-176(%rbp), %rsi
	movl	$12, %edi
	movq	%rbx, %rdx
	callq	LAMP_store8
	leaq	-168(%rbp), %r14
	movq	%rbx, -176(%rbp)
	movl	$13, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -168(%rbp)
	movl	$14, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-168(%rbp), %rbx
	movl	$15, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	LAMP_store8
	leaq	-56(%rbp), %rsi
	movq	$0, (%rbx)
	movl	$16, %edi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$17, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$18, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$47, %esi
	callq	rindex
	movq	%rax, %rbx
	leaq	-184(%rbp), %rsi
	movl	$19, %edi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -184(%rbp)
	testq	%rbx, %rbx
	je	.LBB1_4
# BB#3:                                 # %if.then7
	leaq	-184(%rbp), %r14
	movl	$20, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-184(%rbp), %rbx
	incq	%rbx
	movl	$21, %edi
	movq	%r14, %rsi
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	leaq	-56(%rbp), %rsi
	movl	$22, %edi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$23, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	leaq	-184(%rbp), %rsi
	movl	$24, %edi
.LBB1_5:                                # %if.else
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -184(%rbp)
	leaq	-184(%rbp), %rsi
	movl	$25, %edi
	callq	LAMP_load8
	movq	-184(%rbp), %rbx
	movl	$26, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str1, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_6
# BB#7:                                 # %if.else14
	leaq	-184(%rbp), %rsi
	movl	$28, %edi
	callq	LAMP_load8
	movq	-184(%rbp), %rbx
	movl	$29, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str2, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then18
	movl	$30, %edi
	movl	$do_decomp, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, do_decomp(%rip)
	movl	$31, %edi
	movl	$zcat_flg, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, zcat_flg(%rip)
	jmp	.LBB1_9
.LBB1_6:                                # %if.then13
	movl	$27, %edi
	movl	$do_decomp, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, do_decomp(%rip)
.LBB1_9:                                # %if.end20
	leaq	-48(%rbp), %r14
	movl	$32, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-48(%rbp), %eax
	decl	%eax
	movslq	%eax, %rbx
	movl	$33, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -48(%rbp)
	leaq	-56(%rbp), %r13
	movl	$34, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	addq	$8, %rbx
	movl	$35, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$876, %edi              # imm = 0x36C
	callq	LAMP_loop_invocation
	leaq	-176(%rbp), %r15
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_42:                               # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$84, %edi
	leaq	-48(%rbp), %r14
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-48(%rbp), %eax
	decl	%eax
	movslq	%eax, %rbx
	movl	$85, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -48(%rbp)
	movl	$86, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	addq	$8, %rbx
	movl	$87, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	callq	LAMP_loop_iteration_end
.LBB1_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	callq	LAMP_loop_iteration_begin
	movl	$36, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$0, -48(%rbp)
	jle	.LBB1_43
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$37, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$38, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$39, %edi
	movq	%rbx, %rsi
	callq	LAMP_load1
	movsbl	(%rbx), %eax
	cmpl	$45, %eax
	jne	.LBB1_41
# BB#12:                                # %if.then27
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$875, %edi              # imm = 0x36B
	callq	LAMP_loop_invocation
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_17:                               # %sw.bb32
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$49, %edi
	leaq	-60(%rbp), %rsi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, -60(%rbp)
	movl	$50, %edi
	movl	$force, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, force(%rip)
	callq	LAMP_loop_iteration_end
.LBB1_13:                               # %while.cond
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LAMP_loop_iteration_begin
	movl	$40, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$41, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %r14
	leaq	1(%r14), %r12
	movl	$42, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, (%rbx)
	movl	$43, %edi
	movq	%r12, %rsi
	callq	LAMP_load1
	cmpb	$0, 1(%r14)
	je	.LBB1_40
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$44, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$45, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$46, %edi
	movq	%rbx, %rsi
	callq	LAMP_load1
	movsbl	(%rbx), %eax
	cmpl	$85, %eax
	ja	.LBB1_18
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$67, %eax
	jne	.LBB1_16
# BB#29:                                # %sw.bb34
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$52, %edi
	movl	$block_compress, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, block_compress(%rip)
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_18:                               # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$97, %eax
	ja	.LBB1_21
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$86, %eax
	jne	.LBB1_37
# BB#20:                                # %sw.bb
                                        #   in Loop: Header=BB1_13 Depth=2
	callq	version
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_16:                               # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$70, %eax
	jne	.LBB1_37
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_21:                               # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$109, %eax
	ja	.LBB1_24
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	addl	$-98, %eax
	cmpl	$4, %eax
	ja	.LBB1_37
# BB#23:                                # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_35:                               # %sw.bb47
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$69, %edi
	movl	$zcat_flg, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, zcat_flg(%rip)
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_13
.LBB1_24:                               # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$110, %eax
	je	.LBB1_28
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$113, %eax
	jne	.LBB1_26
# BB#36:                                # %sw.bb48
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$70, %edi
	movl	$quiet, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, quiet(%rip)
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_13
.LBB1_28:                               # %sw.bb33
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$51, %edi
	movl	$nomagic, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, nomagic(%rip)
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_13
.LBB1_26:                               # %while.body
                                        #   in Loop: Header=BB1_13 Depth=2
	cmpl	$118, %eax
	jne	.LBB1_37
# BB#27:                                # %sw.bb30
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$47, %edi
	movl	$quiet, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, quiet(%rip)
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_13
.LBB1_38:                               # %sw.bb31
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	$48, %edi
	movl	$do_decomp, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, do_decomp(%rip)
	callq	LAMP_loop_iteration_end
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_41:                               # %if.else51
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$77, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$78, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$79, %edi
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %r12
	leaq	8(%r12), %r14
	movl	$80, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	LAMP_store8
	movq	%r14, -176(%rbp)
	movl	$81, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, (%r12)
	movl	$82, %edi
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$83, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, (%rbx)
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_40:                               # %while.end
                                        #   in Loop: Header=BB1_10 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	jmp	.LBB1_42
.LBB1_30:                               # %sw.bb35
                                        #   in Loop: Header=BB1_10 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$53, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$54, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %r14
	leaq	1(%r14), %r12
	movl	$55, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, (%rbx)
	movl	$56, %edi
	movq	%r12, %rsi
	callq	LAMP_load1
	movsbl	1(%r14), %eax
	testl	%eax, %eax
	jne	.LBB1_34
# BB#31:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$57, %edi
	leaq	-48(%rbp), %r14
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-48(%rbp), %eax
	decl	%eax
	movslq	%eax, %rbx
	movl	$58, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -48(%rbp)
	testl	%ebx, %ebx
	je	.LBB1_33
# BB#32:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$59, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %r14
	leaq	8(%r14), %rbx
	movl	$60, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$61, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	cmpq	$0, 8(%r14)
	je	.LBB1_33
.LBB1_34:                               # %if.end45
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$65, %edi
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$66, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$67, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	atoi
	movslq	%eax, %rbx
	movl	$68, %edi
	movl	$maxbits, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, maxbits(%rip)
	jmp	.LBB1_42
.LBB1_37:                               # %sw.default
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$71, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	leaq	-56(%rbp), %rsi
	movq	stderr(%rip), %r14
	movl	$72, %edi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$73, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$74, %edi
	movq	%rbx, %rsi
	callq	LAMP_load1
	movsbl	(%rbx), %ebx
	movl	$75, %edi
	callq	LAMP_register
	movq	%r14, %rdi
	movl	$.L.str4, %esi
	movl	%ebx, %edx
	xorb	%al, %al
	callq	fprintf
	callq	Usage
	movl	$76, %edi
.LBB1_117:                              # %if.then274
	callq	LAMP_register
	movl	$1, %edi
	callq	exit
.LBB1_43:                               # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$88, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	cmpl	$8, maxbits(%rip)
	jg	.LBB1_45
# BB#44:                                # %if.then58
	movl	$89, %edi
	movl	$maxbits, %esi
	movl	$9, %edx
	callq	LAMP_store4
	movl	$9, maxbits(%rip)
.LBB1_45:                               # %if.end59
	movl	$90, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	cmpl	$17, maxbits(%rip)
	jl	.LBB1_47
# BB#46:                                # %if.then62
	movl	$91, %edi
	movl	$maxbits, %esi
	movl	$16, %edx
	callq	LAMP_store4
	movl	$16, maxbits(%rip)
.LBB1_47:                               # %if.end63
	movl	$92, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movl	$1, %eax
	movb	maxbits(%rip), %cl
	shll	%cl, %eax
	movslq	%eax, %rbx
	movl	$93, %edi
	movl	$maxmaxcode, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, maxmaxcode(%rip)
	leaq	-168(%rbp), %rsi
	movl	$94, %edi
	callq	LAMP_load8
	movq	-168(%rbp), %rbx
	movl	$95, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	cmpq	$0, (%rbx)
	je	.LBB1_110
# BB#48:                                # %if.then67
	leaq	-168(%rbp), %rsi
	movl	$96, %edi
	callq	LAMP_load8
	movq	-168(%rbp), %rbx
	leaq	-176(%rbp), %r14
	movl	$97, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -176(%rbp)
	movl	$874, %edi              # imm = 0x36A
	callq	LAMP_loop_invocation
	leaq	-184(%rbp), %r15
	jmp	.LBB1_49
	.align	16, 0x90
.LBB1_108:                              # %for.inc248
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$232, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	addq	$8, %rbx
	movl	$233, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -176(%rbp)
	callq	LAMP_loop_iteration_end
.LBB1_49:                               # %for.cond68
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_89 Depth 2
	callq	LAMP_loop_iteration_begin
	movl	$98, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$99, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	cmpq	$0, (%rbx)
	je	.LBB1_109
# BB#50:                                # %for.body70
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$100, %edi
	movl	$exit_stat, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, exit_stat(%rip)
	movl	$101, %edi
	movl	$do_decomp, %esi
	callq	LAMP_load4
	cmpl	$0, do_decomp(%rip)
	je	.LBB1_63
# BB#51:                                # %if.then73
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$102, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$103, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %r12
	movl	$104, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$105, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$106, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$107, %edi
	callq	LAMP_register
	leaq	-2(%r12,%rbx), %rdi
	movl	$.L.str5, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_53
# BB#52:                                # %if.then79
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$108, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$109, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %r12
	movl	$110, %edi
	callq	LAMP_register
	leaq	-160(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	strcpy
	movl	$111, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str5, %esi
	callq	strcat
	movl	$112, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %r12
	movl	$113, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, (%r12)
.LBB1_53:                               # %if.end84
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$114, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$115, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %r12
	movl	$116, %edi
	movl	$stdin, %esi
	callq	LAMP_load8
	movq	stdin(%rip), %rbx
	movl	$117, %edi
	callq	LAMP_register
	movq	%r12, %rdi
	movl	$.L.str6, %esi
	movq	%rbx, %rdx
	callq	freopen
	testq	%rax, %rax
	jne	.LBB1_56
# BB#54:                                # %if.then88
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$118, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$119, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$120, %edi
	jmp	.LBB1_55
	.align	16, 0x90
.LBB1_63:                               # %if.else120
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$151, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$152, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %r12
	movl	$153, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$154, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$155, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$156, %edi
	callq	LAMP_register
	leaq	-2(%r12,%rbx), %rdi
	movl	$.L.str5, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_65
# BB#64:                                # %if.then127
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$157, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r12
	movl	$158, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$159, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$160, %edi
	callq	LAMP_register
	movq	%r12, %rdi
	movl	$.L.str9, %esi
	jmp	.LBB1_82
	.align	16, 0x90
.LBB1_56:                               # %if.end89
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$121, %edi
	movl	$nomagic, %esi
	callq	LAMP_load4
	cmpl	$0, nomagic(%rip)
	jne	.LBB1_62
# BB#57:                                # %if.then92
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$122, %edi
	callq	LAMP_register
	callq	getchar
	movl	%eax, %ebx
	movl	$123, %edi
	movl	$magic_header, %esi
	callq	LAMP_load1
	movzbl	magic_header(%rip), %eax
	cmpl	%eax, %ebx
	jne	.LBB1_59
# BB#58:                                # %lor.lhs.false97
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$124, %edi
	callq	LAMP_register
	callq	getchar
	movl	%eax, %ebx
	movl	$125, %edi
	movl	$magic_header+1, %esi
	callq	LAMP_load1
	movzbl	magic_header+1(%rip), %eax
	cmpl	%eax, %ebx
	je	.LBB1_60
.LBB1_59:                               # %if.then103
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$126, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r12
	movl	$127, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$128, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$129, %edi
	callq	LAMP_register
	movq	%r12, %rdi
	movl	$.L.str7, %esi
	jmp	.LBB1_82
	.align	16, 0x90
.LBB1_65:                               # %if.end129
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$161, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$162, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %r12
	movl	$163, %edi
	movl	$stdin, %esi
	callq	LAMP_load8
	movq	stdin(%rip), %rbx
	movl	$164, %edi
	callq	LAMP_register
	movq	%r12, %rdi
	movl	$.L.str6, %esi
	movq	%rbx, %rdx
	callq	freopen
	testq	%rax, %rax
	jne	.LBB1_67
# BB#66:                                # %if.then133
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$165, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$166, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$167, %edi
.LBB1_55:                               # %if.then88
                                        #   in Loop: Header=BB1_49 Depth=1
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	perror
	jmp	.LBB1_108
.LBB1_67:                               # %if.end134
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$168, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$169, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$170, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	leaq	-328(%rbp), %rsi
	callq	stat
	movl	$171, %edi
	leaq	-280(%rbp), %rsi
	callq	LAMP_load8
	movq	-280(%rbp), %rbx
	movl	$172, %edi
	movl	$fsize, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, fsize(%rip)
	movl	$173, %edi
	movl	$hsize, %esi
	movl	$69001, %edx            # imm = 0x10D89
	callq	LAMP_store8
	movq	$69001, hsize(%rip)     # imm = 0x10D89
	movl	$174, %edi
	movl	$fsize, %esi
	callq	LAMP_load8
	cmpq	$4095, fsize(%rip)      # imm = 0xFFF
	jg	.LBB1_69
# BB#68:                                # %if.then138
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$175, %edi
	movl	$hsize, %esi
	movl	$5003, %edx             # imm = 0x138B
	callq	LAMP_store8
	movq	$5003, hsize(%rip)      # imm = 0x138B
	movq	%r15, %r12
	jmp	.LBB1_77
.LBB1_69:                               # %if.else139
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$176, %edi
	movl	$fsize, %esi
	callq	LAMP_load8
	cmpq	$8191, fsize(%rip)      # imm = 0x1FFF
	movq	%r15, %r12
	jg	.LBB1_71
# BB#70:                                # %if.then142
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$177, %edi
	movl	$hsize, %esi
	movl	$9001, %edx             # imm = 0x2329
	callq	LAMP_store8
	movq	$9001, hsize(%rip)      # imm = 0x2329
	jmp	.LBB1_77
.LBB1_60:                               # %if.end105
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$130, %edi
	callq	LAMP_register
	callq	getchar
	movslq	%eax, %rbx
	movl	$131, %edi
	movl	$maxbits, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, maxbits(%rip)
	movl	$132, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movslq	maxbits(%rip), %rbx
	movq	%rbx, %rdx
	andq	$128, %rdx
	movl	$133, %edi
	movl	$block_compress, %esi
	callq	LAMP_store4
	andl	$128, %ebx
	movl	%ebx, block_compress(%rip)
	movl	$134, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movslq	maxbits(%rip), %rbx
	movq	%rbx, %rdx
	andq	$31, %rdx
	movl	$135, %edi
	movl	$maxbits, %esi
	callq	LAMP_store4
	andl	$31, %ebx
	movl	%ebx, maxbits(%rip)
	movl	$136, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movb	maxbits(%rip), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movslq	%eax, %rbx
	movl	$137, %edi
	movl	$maxmaxcode, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, maxmaxcode(%rip)
	movl	$138, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	cmpl	$17, maxbits(%rip)
	jl	.LBB1_62
# BB#61:                                # %if.then113
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$139, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r13
	movl	$140, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$141, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$142, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movl	maxbits(%rip), %r12d
	movl	$143, %edi
	callq	LAMP_register
	movq	%r13, %rdi
	movl	$.L.str8, %esi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	movl	$16, %r8d
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB1_108
.LBB1_62:                               # %if.end116
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$144, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$145, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$146, %edi
	callq	LAMP_register
	movl	$ofname, %edi
	movq	%rbx, %rsi
	callq	strcpy
	movl	$147, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$148, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$149, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	leaq	ofname-2(%rbx), %rsi
	movl	$150, %edi
	xorl	%edx, %edx
	callq	LAMP_store1
	movb	$0, ofname-2(%rbx)
	movq	%r15, %r12
	jmp	.LBB1_84
.LBB1_71:                               # %if.else143
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$178, %edi
	movl	$fsize, %esi
	callq	LAMP_load8
	cmpq	$16383, fsize(%rip)     # imm = 0x3FFF
	jg	.LBB1_73
# BB#72:                                # %if.then146
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$179, %edi
	movl	$hsize, %esi
	movl	$18013, %edx            # imm = 0x465D
	callq	LAMP_store8
	movq	$18013, hsize(%rip)     # imm = 0x465D
	jmp	.LBB1_77
.LBB1_73:                               # %if.else147
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$180, %edi
	movl	$fsize, %esi
	callq	LAMP_load8
	cmpq	$32767, fsize(%rip)     # imm = 0x7FFF
	jg	.LBB1_75
# BB#74:                                # %if.then150
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$181, %edi
	movl	$hsize, %esi
	movl	$35023, %edx            # imm = 0x88CF
	callq	LAMP_store8
	movq	$35023, hsize(%rip)     # imm = 0x88CF
	jmp	.LBB1_77
.LBB1_75:                               # %if.else151
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$182, %edi
	movl	$fsize, %esi
	callq	LAMP_load8
	cmpq	$46999, fsize(%rip)     # imm = 0xB797
	jg	.LBB1_77
# BB#76:                                # %if.then154
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$183, %edi
	movl	$hsize, %esi
	movl	$50021, %edx            # imm = 0xC365
	callq	LAMP_store8
	movq	$50021, hsize(%rip)     # imm = 0xC365
.LBB1_77:                               # %if.end159
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$184, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$185, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$186, %edi
	callq	LAMP_register
	movl	$ofname, %edi
	movq	%rbx, %rsi
	callq	strcpy
	movl	$187, %edi
	callq	LAMP_register
	movl	$ofname, %edi
	movl	$47, %esi
	callq	rindex
	movq	%rax, %rbx
	movl	$188, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -184(%rbp)
	testq	%rbx, %rbx
	je	.LBB1_79
# BB#78:                                # %if.then164
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$189, %edi
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-184(%rbp), %rbx
	incq	%rbx
	movl	$190, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -184(%rbp)
	jmp	.LBB1_80
.LBB1_79:                               # %if.else166
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$191, %edi
	movq	%r12, %rsi
	movl	$ofname, %edx
	callq	LAMP_store8
	movq	$ofname, -184(%rbp)
.LBB1_80:                               # %if.end167
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$192, %edi
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-184(%rbp), %rbx
	movl	$193, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$13, %rax
	jb	.LBB1_83
# BB#81:                                # %if.then171
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$194, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	%r12, %rsi
	movq	stderr(%rip), %r12
	movl	$195, %edi
	movq	%rsi, %r15
	callq	LAMP_load8
	movq	-184(%rbp), %rbx
	movl	$196, %edi
	callq	LAMP_register
	movq	%r12, %rdi
	movl	$.L.str10, %esi
	.align	16, 0x90
.LBB1_82:                               # %if.then171
                                        #   in Loop: Header=BB1_49 Depth=1
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB1_108
.LBB1_83:                               # %if.end173
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$197, %edi
	callq	LAMP_register
	movl	$ofname, %edi
	movl	$.L.str5, %esi
	callq	strcat
.LBB1_84:                               # %if.end175
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$198, %edi
	leaq	-60(%rbp), %rsi
	callq	LAMP_load4
	cmpl	$0, -60(%rbp)
	jne	.LBB1_96
# BB#85:                                # %land.lhs.true178
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$199, %edi
	movl	$zcat_flg, %esi
	callq	LAMP_load4
	cmpl	$0, zcat_flg(%rip)
	jne	.LBB1_96
# BB#86:                                # %if.then181
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$200, %edi
	callq	LAMP_register
	movl	$ofname, %edi
	leaq	-328(%rbp), %rsi
	callq	stat
	testl	%eax, %eax
	jne	.LBB1_96
# BB#87:                                # %if.then185
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$201, %edi
	leaq	-330(%rbp), %rsi
	movl	$110, %edx
	callq	LAMP_store1
	movb	$110, -330(%rbp)
	movl	$202, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$203, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str11, %esi
	movl	$ofname, %edx
	xorb	%al, %al
	callq	fprintf
	callq	foreground
	testl	%eax, %eax
	leaq	-329(%rbp), %rbx
	je	.LBB1_94
# BB#88:                                # %if.then190
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$204, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r15
	movl	$205, %edi
	callq	LAMP_register
	movq	%r15, %rdi
	movl	$.L.str12, %esi
	movl	$ofname, %edx
	xorb	%al, %al
	callq	fprintf
	movl	$206, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r15
	movl	$207, %edi
	callq	LAMP_register
	movq	%r15, %rdi
	callq	fflush
	movl	$208, %edi
	callq	LAMP_register
	movl	$2, %edi
	leaq	-330(%rbp), %rsi
	movl	$2, %edx
	callq	read
	movl	$873, %edi              # imm = 0x369
	callq	LAMP_loop_invocation
	jmp	.LBB1_89
	.align	16, 0x90
.LBB1_92:                               # %if.end207
                                        #   in Loop: Header=BB1_89 Depth=2
	callq	LAMP_loop_iteration_end
.LBB1_89:                               # %while.cond195
                                        #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LAMP_loop_iteration_begin
	movl	$209, %edi
	movq	%rbx, %rsi
	callq	LAMP_load1
	movsbl	-329(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB1_93
# BB#90:                                # %while.body200
                                        #   in Loop: Header=BB1_89 Depth=2
	movl	$210, %edi
	callq	LAMP_register
	movl	$2, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	read
	testq	%rax, %rax
	jns	.LBB1_92
# BB#91:                                # %if.then206
                                        #   in Loop: Header=BB1_49 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$211, %edi
	callq	LAMP_register
	movl	$.L.str13, %edi
	callq	perror
	jmp	.LBB1_94
.LBB1_93:                               # %while.end208.loopexit
                                        #   in Loop: Header=BB1_49 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
.LBB1_94:                               # %if.end209
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$212, %edi
	leaq	-330(%rbp), %rsi
	callq	LAMP_load1
	movsbl	-330(%rbp), %eax
	cmpl	$121, %eax
	je	.LBB1_96
# BB#95:                                # %if.then214
                                        #   in Loop: Header=BB1_49 Depth=1
	movq	%r12, %r15
	movl	$213, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$214, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str14, %esi
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB1_108
.LBB1_96:                               # %if.end218
                                        #   in Loop: Header=BB1_49 Depth=1
	movq	%r12, %r15
	movl	$215, %edi
	movl	$zcat_flg, %esi
	callq	LAMP_load4
	cmpl	$0, zcat_flg(%rip)
	jne	.LBB1_101
# BB#97:                                # %if.then221
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$216, %edi
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$217, %edi
	callq	LAMP_register
	movl	$ofname, %edi
	movl	$.L.str15, %esi
	movq	%rbx, %rdx
	callq	freopen
	testq	%rax, %rax
	jne	.LBB1_99
# BB#98:                                # %if.then225
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$218, %edi
	callq	LAMP_register
	movl	$ofname, %edi
	callq	perror
	jmp	.LBB1_108
.LBB1_99:                               # %if.end226
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$219, %edi
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	jne	.LBB1_101
# BB#100:                               # %if.then228
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$220, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r12
	movl	$221, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$222, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	movl	$223, %edi
	callq	LAMP_register
	movq	%r12, %rdi
	movl	$.L.str16, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	fprintf
.LBB1_101:                              # %if.end231
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$224, %edi
	movl	$do_decomp, %esi
	callq	LAMP_load4
	cmpl	$0, do_decomp(%rip)
	jne	.LBB1_103
# BB#102:                               # %if.then234
                                        #   in Loop: Header=BB1_49 Depth=1
	callq	compress
	jmp	.LBB1_104
.LBB1_103:                              # %if.else235
                                        #   in Loop: Header=BB1_49 Depth=1
	callq	decompress
.LBB1_104:                              # %if.end236
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$225, %edi
	movl	$zcat_flg, %esi
	callq	LAMP_load4
	cmpl	$0, zcat_flg(%rip)
	jne	.LBB1_108
# BB#105:                               # %if.then239
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$226, %edi
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$227, %edi
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rdi
	movl	$ofname, %esi
	callq	copystat
	movl	$228, %edi
	movl	$exit_stat, %esi
	callq	LAMP_load4
	cmpl	$1, exit_stat(%rip)
	je	.LBB1_107
# BB#106:                               # %lor.lhs.false242
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$229, %edi
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	jne	.LBB1_108
.LBB1_107:                              # %if.then244
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	$230, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$231, %edi
	callq	LAMP_register
	movl	$10, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	jmp	.LBB1_108
.LBB1_33:                               # %if.then43
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$62, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$63, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str3, %esi
	xorb	%al, %al
	callq	fprintf
	callq	Usage
	movl	$64, %edi
	jmp	.LBB1_117
.LBB1_110:                              # %if.else251
	movl	$234, %edi
	movl	$do_decomp, %esi
	callq	LAMP_load4
	cmpl	$0, do_decomp(%rip)
	jne	.LBB1_113
# BB#111:                               # %if.then254
	callq	compress
	movl	$235, %edi
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	jne	.LBB1_121
# BB#112:                               # %if.then256
	movl	$236, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$237, %edi
	callq	LAMP_register
	movl	$10, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	jmp	.LBB1_121
.LBB1_109:                              # %for.end250
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	jmp	.LBB1_121
.LBB1_113:                              # %if.else259
	movl	$238, %edi
	movl	$nomagic, %esi
	callq	LAMP_load4
	cmpl	$0, nomagic(%rip)
	jne	.LBB1_120
# BB#114:                               # %if.then262
	movl	$239, %edi
	callq	LAMP_register
	callq	getchar
	movl	%eax, %ebx
	movl	$240, %edi
	movl	$magic_header, %esi
	callq	LAMP_load1
	movzbl	magic_header(%rip), %eax
	cmpl	%eax, %ebx
	jne	.LBB1_116
# BB#115:                               # %lor.lhs.false268
	movl	$241, %edi
	callq	LAMP_register
	callq	getchar
	movl	%eax, %ebx
	movl	$242, %edi
	movl	$magic_header+1, %esi
	callq	LAMP_load1
	movzbl	magic_header+1(%rip), %eax
	cmpl	%eax, %ebx
	je	.LBB1_118
.LBB1_116:                              # %if.then274
	movl	$243, %edi
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$244, %edi
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str17, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$245, %edi
	jmp	.LBB1_117
.LBB1_118:                              # %if.end276
	movl	$246, %edi
	callq	LAMP_register
	callq	getchar
	movslq	%eax, %rbx
	movl	$247, %edi
	movl	$maxbits, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, maxbits(%rip)
	movl	$248, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movslq	maxbits(%rip), %rbx
	movq	%rbx, %rdx
	andq	$128, %rdx
	movl	$249, %edi
	movl	$block_compress, %esi
	callq	LAMP_store4
	andl	$128, %ebx
	movl	%ebx, block_compress(%rip)
	movl	$250, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movslq	maxbits(%rip), %rbx
	movq	%rbx, %rdx
	andq	$31, %rdx
	movl	$251, %edi
	movl	$maxbits, %esi
	callq	LAMP_store4
	andl	$31, %ebx
	movl	%ebx, maxbits(%rip)
	movl	$252, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	movl	$1, %eax
	movb	maxbits(%rip), %cl
	shll	%cl, %eax
	movslq	%eax, %rbx
	movl	$253, %edi
	movl	$maxmaxcode, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, maxmaxcode(%rip)
	movl	$254, %edi
	movl	$fsize, %esi
	movl	$100000, %edx           # imm = 0x186A0
	callq	LAMP_store8
	movq	$100000, fsize(%rip)    # imm = 0x186A0
	movl	$255, %edi
	movl	$maxbits, %esi
	callq	LAMP_load4
	cmpl	$17, maxbits(%rip)
	jl	.LBB1_120
# BB#119:                               # %if.then284
	movl	$256, %edi              # imm = 0x100
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r14
	movl	$257, %edi              # imm = 0x101
	movl	$maxbits, %esi
	callq	LAMP_load4
	movl	maxbits(%rip), %ebx
	movl	$258, %edi              # imm = 0x102
	callq	LAMP_register
	movq	%r14, %rdi
	movl	$.L.str18, %esi
	movl	%ebx, %edx
	movl	$16, %ecx
	xorb	%al, %al
	callq	fprintf
	movl	$259, %edi              # imm = 0x103
	jmp	.LBB1_117
.LBB1_120:                              # %if.end287
	callq	decompress
.LBB1_121:                              # %if.end289
	movl	$260, %edi              # imm = 0x104
	movl	$exit_stat, %esi
	callq	LAMP_load4
	movl	exit_stat(%rip), %ebx
	movl	$261, %edi              # imm = 0x105
	callq	LAMP_register
	movl	%ebx, %edi
	callq	exit
.Ltmp19:
	.size	main, .Ltmp19-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_30
	.quad	.LBB1_35
	.quad	.LBB1_38
	.quad	.LBB1_37
	.quad	.LBB1_17

	.text
	.globl	onintr
	.align	16, 0x90
	.type	onintr,@function
onintr:                                 # @onintr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp26:
	.cfi_offset %rbx, -24
	movslq	%edi, %rbx
	leaq	-12(%rbp), %rsi
	movl	$263, %edi              # imm = 0x107
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -12(%rbp)
	movl	$264, %edi              # imm = 0x108
	callq	LAMP_register
	movl	$ofname, %edi
	callq	unlink
	movl	$265, %edi              # imm = 0x109
	callq	LAMP_register
	movl	$1, %edi
	callq	exit
.Ltmp27:
	.size	onintr, .Ltmp27-onintr
	.cfi_endproc

	.globl	oops
	.align	16, 0x90
	.type	oops,@function
oops:                                   # @oops
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp34:
	.cfi_offset %rbx, -24
	movslq	%edi, %rbx
	leaq	-12(%rbp), %rsi
	movl	$266, %edi              # imm = 0x10A
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -12(%rbp)
	movl	$267, %edi              # imm = 0x10B
	movl	$do_decomp, %esi
	callq	LAMP_load4
	cmpl	$1, do_decomp(%rip)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$268, %edi              # imm = 0x10C
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$269, %edi              # imm = 0x10D
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str24, %esi
	xorb	%al, %al
	callq	fprintf
.LBB3_2:                                # %if.end
	movl	$270, %edi              # imm = 0x10E
	callq	LAMP_register
	movl	$ofname, %edi
	callq	unlink
	movl	$271, %edi              # imm = 0x10F
	callq	LAMP_register
	movl	$1, %edi
	callq	exit
.Ltmp35:
	.size	oops, .Ltmp35-oops
	.cfi_endproc

	.globl	copystat
	.align	16, 0x90
	.type	copystat,@function
copystat:                               # @copystat
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Ltmp42:
	.cfi_offset %rbx, -48
.Ltmp43:
	.cfi_offset %r12, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	-40(%rbp), %r14
	movl	$272, %edi              # imm = 0x110
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -40(%rbp)
	leaq	-48(%rbp), %rsi
	movl	$273, %edi              # imm = 0x111
	movq	%r15, %rdx
	callq	LAMP_store8
	movq	%r15, -48(%rbp)
	movl	$274, %edi              # imm = 0x112
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$275, %edi              # imm = 0x113
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	fclose
	movl	$276, %edi              # imm = 0x114
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-40(%rbp), %rbx
	movl	$277, %edi              # imm = 0x115
	callq	LAMP_register
	leaq	-192(%rbp), %rsi
	movq	%rbx, %rdi
	callq	stat
	testl	%eax, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-40(%rbp), %rsi
	movl	$278, %edi              # imm = 0x116
	callq	LAMP_load8
	movq	-40(%rbp), %rbx
	movl	$279, %edi              # imm = 0x117
	jmp	.LBB4_17
.LBB4_2:                                # %if.end
	leaq	-168(%rbp), %rsi
	movl	$280, %edi              # imm = 0x118
	callq	LAMP_load4
	movl	$61440, %eax            # imm = 0xF000
	andl	-168(%rbp), %eax
	cmpl	$32768, %eax            # imm = 0x8000
	je	.LBB4_7
# BB#3:                                 # %if.then2
	movl	$281, %edi              # imm = 0x119
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	je	.LBB4_5
# BB#4:                                 # %if.then4
	movl	$282, %edi              # imm = 0x11A
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r14
	leaq	-40(%rbp), %rsi
	movl	$283, %edi              # imm = 0x11B
	callq	LAMP_load8
	movq	-40(%rbp), %rbx
	movl	$284, %edi              # imm = 0x11C
	callq	LAMP_register
	movq	%r14, %rdi
	movl	$.L.str16, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	fprintf
.LBB4_5:                                # %if.end6
	movl	$285, %edi              # imm = 0x11D
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$286, %edi              # imm = 0x11E
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str20, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$287, %edi              # imm = 0x11F
	jmp	.LBB4_6
.LBB4_7:                                # %if.else
	leaq	-176(%rbp), %rsi
	movl	$288, %edi              # imm = 0x120
	callq	LAMP_load8
	cmpq	$2, -176(%rbp)
	jb	.LBB4_11
# BB#8:                                 # %if.then9
	movl	$289, %edi              # imm = 0x121
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	je	.LBB4_10
# BB#9:                                 # %if.then11
	movl	$290, %edi              # imm = 0x122
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r14
	leaq	-40(%rbp), %rsi
	movl	$291, %edi              # imm = 0x123
	callq	LAMP_load8
	movq	-40(%rbp), %rbx
	movl	$292, %edi              # imm = 0x124
	callq	LAMP_register
	movq	%r14, %rdi
	movl	$.L.str16, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	fprintf
.LBB4_10:                               # %if.end13
	movl	$293, %edi              # imm = 0x125
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r14
	leaq	-176(%rbp), %rsi
	movl	$294, %edi              # imm = 0x126
	callq	LAMP_load8
	movq	-176(%rbp), %rbx
	movl	$295, %edi              # imm = 0x127
	callq	LAMP_register
	decq	%rbx
	movq	%r14, %rdi
	movl	$.L.str21, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	fprintf
	movl	$296, %edi              # imm = 0x128
.LBB4_6:                                # %if.end6
	movl	$exit_stat, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, exit_stat(%rip)
.LBB4_15:                               # %if.end44
	leaq	-48(%rbp), %rsi
	movl	$328, %edi              # imm = 0x148
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	movl	$329, %edi              # imm = 0x149
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	unlink
	testl	%eax, %eax
	je	.LBB4_24
# BB#16:                                # %if.then47
	leaq	-48(%rbp), %rsi
	movl	$330, %edi              # imm = 0x14A
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	movl	$331, %edi              # imm = 0x14B
.LBB4_17:                               # %if.then47
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	perror
.LBB4_24:                               # %if.end48
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB4_11:                               # %if.else16
	movl	$297, %edi              # imm = 0x129
	movl	$exit_stat, %esi
	callq	LAMP_load4
	cmpl	$2, exit_stat(%rip)
	jne	.LBB4_18
# BB#12:                                # %land.lhs.true
	movl	$298, %edi              # imm = 0x12A
	movl	$force, %esi
	callq	LAMP_load4
	cmpl	$0, force(%rip)
	je	.LBB4_13
.LBB4_18:                               # %if.else24
	movl	$302, %edi              # imm = 0x12E
	movl	$exit_stat, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, exit_stat(%rip)
	leaq	-168(%rbp), %rsi
	movl	$303, %edi              # imm = 0x12F
	callq	LAMP_load4
	movslq	-168(%rbp), %rbx
	movq	%rbx, %rdx
	andq	$4095, %rdx             # imm = 0xFFF
	leaq	-196(%rbp), %r14
	movl	$304, %edi              # imm = 0x130
	movq	%r14, %rsi
	callq	LAMP_store4
	leaq	-48(%rbp), %rsi
	andl	$4095, %ebx             # imm = 0xFFF
	movl	%ebx, -196(%rbp)
	movl	$305, %edi              # imm = 0x131
	callq	LAMP_load8
	movq	-48(%rbp), %r15
	movl	$306, %edi              # imm = 0x132
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-196(%rbp), %ebx
	movl	$307, %edi              # imm = 0x133
	callq	LAMP_register
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	chmod
	testl	%eax, %eax
	je	.LBB4_20
# BB#19:                                # %if.then29
	leaq	-48(%rbp), %rsi
	movl	$308, %edi              # imm = 0x134
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	movl	$309, %edi              # imm = 0x135
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	perror
.LBB4_20:                               # %if.end30
	leaq	-48(%rbp), %r14
	movl	$310, %edi              # imm = 0x136
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %r15
	leaq	-164(%rbp), %rsi
	movl	$311, %edi              # imm = 0x137
	callq	LAMP_load4
	movl	-164(%rbp), %r12d
	leaq	-160(%rbp), %rsi
	movl	$312, %edi              # imm = 0x138
	callq	LAMP_load4
	movl	-160(%rbp), %ebx
	movl	$313, %edi              # imm = 0x139
	callq	LAMP_register
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	chown
	leaq	-120(%rbp), %rsi
	movl	$314, %edi              # imm = 0x13A
	callq	LAMP_load8
	leaq	-216(%rbp), %r15
	movq	-120(%rbp), %rbx
	movl	$315, %edi              # imm = 0x13B
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	leaq	-104(%rbp), %rsi
	movq	%rbx, -216(%rbp)
	movl	$316, %edi              # imm = 0x13C
	callq	LAMP_load8
	leaq	-208(%rbp), %rsi
	movq	-104(%rbp), %rbx
	movl	$317, %edi              # imm = 0x13D
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -208(%rbp)
	movl	$318, %edi              # imm = 0x13E
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	movl	$319, %edi              # imm = 0x13F
	callq	LAMP_register
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	utime
	leaq	-40(%rbp), %rsi
	movl	$320, %edi              # imm = 0x140
	callq	LAMP_load8
	movq	-40(%rbp), %rbx
	movl	$321, %edi              # imm = 0x141
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	unlink
	testl	%eax, %eax
	je	.LBB4_22
# BB#21:                                # %if.then36
	leaq	-40(%rbp), %rsi
	movl	$322, %edi              # imm = 0x142
	callq	LAMP_load8
	movq	-40(%rbp), %rbx
	movl	$323, %edi              # imm = 0x143
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	perror
.LBB4_22:                               # %if.end37
	movl	$324, %edi              # imm = 0x144
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	jne	.LBB4_24
# BB#23:                                # %if.then39
	movl	$325, %edi              # imm = 0x145
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r14
	leaq	-48(%rbp), %rsi
	movl	$326, %edi              # imm = 0x146
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	movl	$327, %edi              # imm = 0x147
	callq	LAMP_register
	movq	%r14, %rdi
	movl	$.L.str23, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB4_24
.LBB4_13:                               # %if.then19
	movl	$299, %edi              # imm = 0x12B
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	jne	.LBB4_15
# BB#14:                                # %if.then21
	movl	$300, %edi              # imm = 0x12C
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$301, %edi              # imm = 0x12D
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str22, %esi
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB4_15
.Ltmp46:
	.size	copystat, .Ltmp46-copystat
	.cfi_endproc

	.globl	compress
	.align	16, 0x90
	.type	compress,@function
compress:                               # @compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
	leaq	-56(%rbp), %rsi
	movl	$332, %edi              # imm = 0x14C
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, -56(%rbp)
	movl	$333, %edi              # imm = 0x14D
	movl	$nomagic, %esi
	callq	LAMP_load4
	cmpl	$0, nomagic(%rip)
	jne	.LBB5_3
# BB#1:                                 # %if.then
	movl	$334, %edi              # imm = 0x14E
	movl	$magic_header, %esi
	callq	LAMP_load1
	movzbl	magic_header(%rip), %ebx
	movl	$335, %edi              # imm = 0x14F
	callq	LAMP_register
	movl	%ebx, %edi
	callq	putchar
	movl	$336, %edi              # imm = 0x150
	movl	$magic_header+1, %esi
	callq	LAMP_load1
	movzbl	magic_header+1(%rip), %ebx
	movl	$337, %edi              # imm = 0x151
	callq	LAMP_register
	movl	%ebx, %edi
	callq	putchar
	movl	$338, %edi              # imm = 0x152
	movl	$maxbits, %esi
	callq	LAMP_load4
	movl	maxbits(%rip), %r14d
	movl	$339, %edi              # imm = 0x153
	movl	$block_compress, %esi
	callq	LAMP_load4
	movl	block_compress(%rip), %ebx
	movl	$340, %edi              # imm = 0x154
	callq	LAMP_register
	orl	%r14d, %ebx
	movsbl	%bl, %edi
	callq	putchar
	movl	$341, %edi              # imm = 0x155
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$342, %edi              # imm = 0x156
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then7
	callq	writeerr
.LBB5_3:                                # %if.end8
	movl	$343, %edi              # imm = 0x157
	movl	$offset, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, offset(%rip)
	movl	$344, %edi              # imm = 0x158
	movl	$bytes_out, %esi
	movl	$3, %edx
	callq	LAMP_store8
	movq	$3, bytes_out(%rip)
	movl	$345, %edi              # imm = 0x159
	movl	$out_count, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, out_count(%rip)
	movl	$346, %edi              # imm = 0x15A
	movl	$clear_flg, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, clear_flg(%rip)
	movl	$347, %edi              # imm = 0x15B
	movl	$ratio, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, ratio(%rip)
	movl	$348, %edi              # imm = 0x15C
	movl	$in_count, %esi
	movl	$1, %edx
	callq	LAMP_store8
	movq	$1, in_count(%rip)
	movl	$349, %edi              # imm = 0x15D
	movl	$checkpoint, %esi
	movl	$10000, %edx            # imm = 0x2710
	callq	LAMP_store8
	movq	$10000, checkpoint(%rip) # imm = 0x2710
	movl	$350, %edi              # imm = 0x15E
	movl	$n_bits, %esi
	movl	$9, %edx
	callq	LAMP_store4
	movl	$9, n_bits(%rip)
	movl	$351, %edi              # imm = 0x15F
	movl	$maxcode, %esi
	movl	$511, %edx              # imm = 0x1FF
	callq	LAMP_store8
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	movl	$352, %edi              # imm = 0x160
	movl	$block_compress, %esi
	callq	LAMP_load4
	movl	$257, %eax              # imm = 0x101
	cmpl	$0, block_compress(%rip)
	jne	.LBB5_5
# BB#4:                                 # %select.mid
	movl	$256, %eax              # imm = 0x100
.LBB5_5:                                # %select.end
	movslq	%eax, %rbx
	movl	$353, %edi              # imm = 0x161
	movl	$free_ent, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, free_ent(%rip)
	movl	$354, %edi              # imm = 0x162
	callq	LAMP_register
	callq	getchar
	leaq	-72(%rbp), %rsi
	movslq	%eax, %rbx
	movl	$355, %edi              # imm = 0x163
	movq	%rbx, %rdx
	callq	LAMP_store8
	leaq	-92(%rbp), %r14
	movq	%rbx, -72(%rbp)
	movl	$356, %edi              # imm = 0x164
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -92(%rbp)
	movl	$357, %edi              # imm = 0x165
	movl	$hsize, %esi
	callq	LAMP_load8
	leaq	-48(%rbp), %r15
	movq	hsize(%rip), %rbx
	movl	$358, %edi              # imm = 0x166
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
	movl	$878, %edi              # imm = 0x36E
	callq	LAMP_loop_invocation
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$360, %edi              # imm = 0x168
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-92(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$361, %edi              # imm = 0x169
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -92(%rbp)
	movl	$362, %edi              # imm = 0x16A
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	addq	%rbx, %rbx
	movl	$363, %edi              # imm = 0x16B
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
	callq	LAMP_loop_iteration_end
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$359, %edi              # imm = 0x167
	movq	%r15, %rsi
	callq	LAMP_load8
	cmpq	$65535, -48(%rbp)       # imm = 0xFFFF
	jle	.LBB5_7
# BB#8:                                 # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-92(%rbp), %r14
	movl	$364, %edi              # imm = 0x16C
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	$8, %eax
	subl	-92(%rbp), %eax
	movslq	%eax, %rbx
	movl	$365, %edi              # imm = 0x16D
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -92(%rbp)
	movl	$366, %edi              # imm = 0x16E
	movl	$hsize, %esi
	callq	LAMP_load8
	leaq	-88(%rbp), %r14
	movq	hsize(%rip), %rbx
	movl	$367, %edi              # imm = 0x16F
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -88(%rbp)
	movl	$368, %edi              # imm = 0x170
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-88(%rbp), %rdi
	callq	cl_hash
	movl	$877, %edi              # imm = 0x36D
	callq	LAMP_loop_invocation
	leaq	-60(%rbp), %r12
	leaq	-72(%rbp), %r13
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_12:                               # %while.cond.backedge
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%r12, %r13
	callq	LAMP_loop_iteration_end
	leaq	-60(%rbp), %r12
.LBB5_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$369, %edi              # imm = 0x171
	callq	LAMP_register
	callq	getchar
	movslq	%eax, %rbx
	movl	$370, %edi              # imm = 0x172
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -60(%rbp)
	cmpl	$-1, %ebx
	je	.LBB5_38
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$371, %edi              # imm = 0x173
	movl	$in_count, %esi
	callq	LAMP_load8
	movq	in_count(%rip), %rbx
	incq	%rbx
	movl	$372, %edi              # imm = 0x174
	movl	$in_count, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, in_count(%rip)
	movl	$373, %edi              # imm = 0x175
	movq	%r12, %rsi
	callq	LAMP_load4
	movq	%r12, %r15
	movslq	-60(%rbp), %r12
	movl	$374, %edi              # imm = 0x176
	movl	$maxbits, %esi
	callq	LAMP_load4
	movb	maxbits(%rip), %r14b
	movl	$375, %edi              # imm = 0x177
	movq	%r13, %rbx
	movq	%rbx, %rsi
	callq	LAMP_load8
	movb	%r14b, %cl
	shlq	%cl, %r12
	addq	-72(%rbp), %r12
	movl	$376, %edi              # imm = 0x178
	leaq	-48(%rbp), %r14
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, -48(%rbp)
	movl	$377, %edi              # imm = 0x179
	movq	%r15, %rsi
	movq	%rbx, %r15
	callq	LAMP_load4
	movl	-60(%rbp), %ebx
	movl	$378, %edi              # imm = 0x17A
	leaq	-92(%rbp), %rsi
	callq	LAMP_load4
	movb	-92(%rbp), %r12b
	movl	$379, %edi              # imm = 0x17B
	movq	%r15, %rsi
	callq	LAMP_load8
	movb	%r12b, %cl
	shll	%cl, %ebx
	movslq	%ebx, %rbx
	xorq	-72(%rbp), %rbx
	movl	$380, %edi              # imm = 0x17C
	leaq	-56(%rbp), %r13
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$381, %edi              # imm = 0x17D
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$382, %edi              # imm = 0x17E
	callq	LAMP_load8
	movq	htab(,%rbx,8), %rbx
	movl	$383, %edi              # imm = 0x17F
	movq	%r14, %rsi
	callq	LAMP_load8
	cmpq	-48(%rbp), %rbx
	jne	.LBB5_13
# BB#11:                                # %if.then24
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$384, %edi              # imm = 0x180
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$385, %edi              # imm = 0x181
	callq	LAMP_load2
	movzwl	codetab(%rbx,%rbx), %ebx
	movl	$386, %edi              # imm = 0x182
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	movq	%r15, %r12
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_13:                               # %if.else
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$387, %edi              # imm = 0x183
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$388, %edi              # imm = 0x184
	callq	LAMP_load8
	cmpq	$0, htab(,%rbx,8)
	movq	%r15, %r12
	movq	%r13, %r14
	js	.LBB5_33
# BB#14:                                # %if.end32
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%r12, %r13
	movl	$389, %edi              # imm = 0x185
	leaq	-88(%rbp), %rsi
	callq	LAMP_load8
	movq	-88(%rbp), %rbx
	movl	$390, %edi              # imm = 0x186
	movq	%r14, %rsi
	callq	LAMP_load8
	subq	-56(%rbp), %rbx
	movslq	%ebx, %r12
	movl	$391, %edi              # imm = 0x187
	leaq	-76(%rbp), %rbx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	LAMP_store4
	movl	%r12d, -76(%rbp)
	movl	$392, %edi              # imm = 0x188
	movq	%r14, %rsi
	callq	LAMP_load8
	cmpq	$0, -56(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then37
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$393, %edi              # imm = 0x189
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, -76(%rbp)
.LBB5_16:                               # %if.end38
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$394, %edi              # imm = 0x18A
	movq	%rbx, %rsi
	callq	LAMP_load4
	movslq	-76(%rbp), %r12
	movl	$395, %edi              # imm = 0x18B
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	subq	%r12, %rbx
	movl	$396, %edi              # imm = 0x18C
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	testq	%rbx, %rbx
	jns	.LBB5_18
# BB#17:                                # %if.then43
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$397, %edi              # imm = 0x18D
	leaq	-88(%rbp), %rsi
	callq	LAMP_load8
	movq	-88(%rbp), %rbx
	movl	$398, %edi              # imm = 0x18E
	movq	%r14, %rsi
	callq	LAMP_load8
	addq	-56(%rbp), %rbx
	movl	$399, %edi              # imm = 0x18F
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
.LBB5_18:                               # %if.end45
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$400, %edi              # imm = 0x190
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$401, %edi              # imm = 0x191
	callq	LAMP_load8
	movq	htab(,%rbx,8), %rbx
	movl	$402, %edi              # imm = 0x192
	leaq	-48(%rbp), %rsi
	callq	LAMP_load8
	cmpq	-48(%rbp), %rbx
	movq	%r13, %r12
	jne	.LBB5_21
# BB#19:                                # %if.then49
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$403, %edi              # imm = 0x193
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$404, %edi              # imm = 0x194
	callq	LAMP_load2
	movzwl	codetab(%rbx,%rbx), %ebx
	movl	$405, %edi              # imm = 0x195
	jmp	.LBB5_20
.LBB5_21:                               # %if.end52
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$406, %edi              # imm = 0x196
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$407, %edi              # imm = 0x197
	callq	LAMP_load8
	cmpq	$0, htab(,%rbx,8)
	jle	.LBB5_33
# BB#22:                                # %if.end57
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%r12, %r13
	movl	$408, %edi              # imm = 0x198
	leaq	-76(%rbp), %rsi
	callq	LAMP_load4
	movslq	-76(%rbp), %r12
	movl	$409, %edi              # imm = 0x199
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	subq	%r12, %rbx
	movl	$410, %edi              # imm = 0x19A
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	testq	%rbx, %rbx
	jns	.LBB5_24
# BB#23:                                # %if.then62
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$411, %edi              # imm = 0x19B
	leaq	-88(%rbp), %rsi
	callq	LAMP_load8
	movq	-88(%rbp), %rbx
	movl	$412, %edi              # imm = 0x19C
	movq	%r14, %rsi
	callq	LAMP_load8
	addq	-56(%rbp), %rbx
	movl	$413, %edi              # imm = 0x19D
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
.LBB5_24:                               # %if.end64
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$414, %edi              # imm = 0x19E
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$415, %edi              # imm = 0x19F
	callq	LAMP_load8
	movq	htab(,%rbx,8), %rbx
	movl	$416, %edi              # imm = 0x1A0
	leaq	-48(%rbp), %rsi
	callq	LAMP_load8
	cmpq	-48(%rbp), %rbx
	movq	%r13, %r12
	jne	.LBB5_26
# BB#25:                                # %if.then68
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$417, %edi              # imm = 0x1A1
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$418, %edi              # imm = 0x1A2
	callq	LAMP_load2
	movzwl	codetab(%rbx,%rbx), %ebx
	movl	$419, %edi              # imm = 0x1A3
	jmp	.LBB5_20
.LBB5_26:                               # %if.end71
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$420, %edi              # imm = 0x1A4
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$421, %edi              # imm = 0x1A5
	callq	LAMP_load8
	cmpq	$0, htab(,%rbx,8)
	jle	.LBB5_33
# BB#27:                                # %if.end76
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%r12, %r13
	movl	$422, %edi              # imm = 0x1A6
	leaq	-76(%rbp), %rsi
	callq	LAMP_load4
	movslq	-76(%rbp), %r12
	movl	$423, %edi              # imm = 0x1A7
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	subq	%r12, %rbx
	movl	$424, %edi              # imm = 0x1A8
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	testq	%rbx, %rbx
	jns	.LBB5_29
# BB#28:                                # %if.then81
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$425, %edi              # imm = 0x1A9
	leaq	-88(%rbp), %rsi
	callq	LAMP_load8
	movq	-88(%rbp), %rbx
	movl	$426, %edi              # imm = 0x1AA
	movq	%r14, %rsi
	callq	LAMP_load8
	addq	-56(%rbp), %rbx
	movl	$427, %edi              # imm = 0x1AB
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
.LBB5_29:                               # %if.end83
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$428, %edi              # imm = 0x1AC
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$429, %edi              # imm = 0x1AD
	callq	LAMP_load8
	movq	htab(,%rbx,8), %rbx
	movl	$430, %edi              # imm = 0x1AE
	leaq	-48(%rbp), %rsi
	callq	LAMP_load8
	cmpq	-48(%rbp), %rbx
	movq	%r13, %r12
	jne	.LBB5_31
# BB#30:                                # %if.then87
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$431, %edi              # imm = 0x1AF
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$432, %edi              # imm = 0x1B0
	callq	LAMP_load2
	movzwl	codetab(%rbx,%rbx), %ebx
	movl	$433, %edi              # imm = 0x1B1
.LBB5_20:                               # %if.then49
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	jmp	.LBB5_12
.LBB5_31:                               # %if.end90
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$434, %edi              # imm = 0x1B2
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$435, %edi              # imm = 0x1B3
	callq	LAMP_load8
	cmpq	$0, htab(,%rbx,8)
	jle	.LBB5_33
# BB#32:                                # %if.then94
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$436, %edi              # imm = 0x1B4
	leaq	-96(%rbp), %r13
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -96(%rbp)
	movl	$437, %edi              # imm = 0x1B5
	leaq	-48(%rbp), %rsi
	callq	LAMP_load8
	movq	%r12, %r15
	movq	-48(%rbp), %r12
	movl	$438, %edi              # imm = 0x1B6
	leaq	-76(%rbp), %rsi
	callq	LAMP_load4
	movl	-76(%rbp), %ebx
	movl	$439, %edi              # imm = 0x1B7
	leaq	-88(%rbp), %rsi
	callq	LAMP_load8
	movl	-88(%rbp), %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %r12
	movl	%ebx, %edx
	movq	%r12, %r8
	callq	scott_hack
	movslq	%eax, %rbx
	movl	$440, %edi              # imm = 0x1B8
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -96(%rbp)
	movl	$441, %edi              # imm = 0x1B9
	movq	%r13, %rsi
	callq	LAMP_load4
	cmpl	$0, -96(%rbp)
	jne	.LBB5_12
	.align	16, 0x90
.LBB5_33:                               # %nomatch
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$442, %edi              # imm = 0x1BA
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %rdi
	callq	output
	movl	$443, %edi              # imm = 0x1BB
	movl	$out_count, %esi
	callq	LAMP_load8
	movq	out_count(%rip), %rbx
	incq	%rbx
	movl	$444, %edi              # imm = 0x1BC
	movl	$out_count, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, out_count(%rip)
	movl	$445, %edi              # imm = 0x1BD
	leaq	-60(%rbp), %rsi
	callq	LAMP_load4
	movslq	-60(%rbp), %rbx
	movl	$446, %edi              # imm = 0x1BE
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	movl	$447, %edi              # imm = 0x1BF
	movl	$free_ent, %esi
	callq	LAMP_load8
	movq	free_ent(%rip), %rbx
	movl	$448, %edi              # imm = 0x1C0
	movl	$maxmaxcode, %esi
	callq	LAMP_load8
	cmpq	maxmaxcode(%rip), %rbx
	jge	.LBB5_35
# BB#34:                                # %if.then106
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$449, %edi              # imm = 0x1C1
	movl	$free_ent, %esi
	callq	LAMP_load8
	movq	%r12, %r13
	movq	free_ent(%rip), %r12
	leaq	1(%r12), %rbx
	movl	$450, %edi              # imm = 0x1C2
	movl	$free_ent, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, free_ent(%rip)
	movl	$451, %edi              # imm = 0x1C3
	movq	%r14, %rsi
	callq	LAMP_load8
	movswq	%r12w, %r12
	movq	-56(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$452, %edi              # imm = 0x1C4
	movq	%r12, %rdx
	callq	LAMP_store2
	movw	%r12w, codetab(%rbx,%rbx)
	movl	$453, %edi              # imm = 0x1C5
	leaq	-48(%rbp), %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %r12
	movl	$454, %edi              # imm = 0x1C6
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$455, %edi              # imm = 0x1C7
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, htab(,%rbx,8)
	movq	%r13, %r12
	jmp	.LBB5_12
.LBB5_35:                               # %if.else111
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$456, %edi              # imm = 0x1C8
	movl	$in_count, %esi
	callq	LAMP_load8
	movq	in_count(%rip), %rbx
	movl	$457, %edi              # imm = 0x1C9
	movl	$checkpoint, %esi
	callq	LAMP_load8
	cmpq	checkpoint(%rip), %rbx
	jl	.LBB5_12
# BB#36:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$458, %edi              # imm = 0x1CA
	movl	$block_compress, %esi
	callq	LAMP_load4
	cmpl	$0, block_compress(%rip)
	je	.LBB5_12
# BB#37:                                # %if.then115
                                        #   in Loop: Header=BB5_9 Depth=1
	callq	cl_block
	jmp	.LBB5_12
.LBB5_38:                               # %while.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-72(%rbp), %rsi
	movl	$459, %edi              # imm = 0x1CB
	callq	LAMP_load8
	movq	-72(%rbp), %rdi
	callq	output
	movl	$460, %edi              # imm = 0x1CC
	movl	$out_count, %esi
	callq	LAMP_load8
	movq	out_count(%rip), %rbx
	incq	%rbx
	movl	$461, %edi              # imm = 0x1CD
	movl	$out_count, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, out_count(%rip)
	movq	$-1, %rdi
	callq	output
	movl	$462, %edi              # imm = 0x1CE
	movl	$zcat_flg, %esi
	callq	LAMP_load4
	cmpl	$0, zcat_flg(%rip)
	jne	.LBB5_41
# BB#39:                                # %land.lhs.true121
	movl	$463, %edi              # imm = 0x1CF
	movl	$quiet, %esi
	callq	LAMP_load4
	cmpl	$0, quiet(%rip)
	jne	.LBB5_41
# BB#40:                                # %if.then123
	movl	$464, %edi              # imm = 0x1D0
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$465, %edi              # imm = 0x1D1
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str19, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$466, %edi              # imm = 0x1D2
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %r14
	movl	$467, %edi              # imm = 0x1D3
	movl	$in_count, %esi
	callq	LAMP_load8
	movq	in_count(%rip), %rbx
	movl	$468, %edi              # imm = 0x1D4
	movl	$bytes_out, %esi
	callq	LAMP_load8
	movq	bytes_out(%rip), %r15
	movl	$469, %edi              # imm = 0x1D5
	movl	$in_count, %esi
	callq	LAMP_load8
	subq	%r15, %rbx
	movq	in_count(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	prratio
.LBB5_41:                               # %if.end126
	movl	$470, %edi              # imm = 0x1D6
	movl	$bytes_out, %esi
	callq	LAMP_load8
	movq	bytes_out(%rip), %rbx
	movl	$471, %edi              # imm = 0x1D7
	movl	$in_count, %esi
	callq	LAMP_load8
	cmpq	in_count(%rip), %rbx
	jle	.LBB5_43
# BB#42:                                # %if.then129
	movl	$472, %edi              # imm = 0x1D8
	movl	$exit_stat, %esi
	movl	$2, %edx
	callq	LAMP_store4
	movl	$2, exit_stat(%rip)
.LBB5_43:                               # %if.end130
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp58:
	.size	compress, .Ltmp58-compress
	.cfi_endproc

	.globl	cl_hash
	.align	16, 0x90
	.type	cl_hash,@function
cl_hash:                                # @cl_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r15
	movl	$473, %edi              # imm = 0x1D9
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
	movl	$474, %edi              # imm = 0x1DA
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rax
	leaq	htab(,%rax,8), %rbx
	leaq	-56(%rbp), %r12
	movl	$475, %edi              # imm = 0x1DB
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	leaq	-72(%rbp), %r14
	movq	%rbx, -56(%rbp)
	movl	$476, %edi              # imm = 0x1DC
	movq	%r14, %rsi
	movq	$-1, %rdx
	callq	LAMP_store8
	movq	$-1, -72(%rbp)
	movl	$477, %edi              # imm = 0x1DD
	movq	%r15, %rsi
	callq	LAMP_load8
	leaq	-64(%rbp), %r15
	movq	-48(%rbp), %rbx
	addq	$-16, %rbx
	movl	$478, %edi              # imm = 0x1DE
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	movl	$880, %edi              # imm = 0x370
	callq	LAMP_loop_invocation
	.align	16, 0x90
.LBB6_1:                                # %do.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$479, %edi              # imm = 0x1DF
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$480, %edi              # imm = 0x1E0
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-128(%rbx), %rsi
	movl	$481, %edi              # imm = 0x1E1
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -128(%rbx)
	movl	$482, %edi              # imm = 0x1E2
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$483, %edi              # imm = 0x1E3
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-120(%rbx), %rsi
	movl	$484, %edi              # imm = 0x1E4
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -120(%rbx)
	movl	$485, %edi              # imm = 0x1E5
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$486, %edi              # imm = 0x1E6
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-112(%rbx), %rsi
	movl	$487, %edi              # imm = 0x1E7
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -112(%rbx)
	movl	$488, %edi              # imm = 0x1E8
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$489, %edi              # imm = 0x1E9
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-104(%rbx), %rsi
	movl	$490, %edi              # imm = 0x1EA
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -104(%rbx)
	movl	$491, %edi              # imm = 0x1EB
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$492, %edi              # imm = 0x1EC
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-96(%rbx), %rsi
	movl	$493, %edi              # imm = 0x1ED
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -96(%rbx)
	movl	$494, %edi              # imm = 0x1EE
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$495, %edi              # imm = 0x1EF
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-88(%rbx), %rsi
	movl	$496, %edi              # imm = 0x1F0
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -88(%rbx)
	movl	$497, %edi              # imm = 0x1F1
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$498, %edi              # imm = 0x1F2
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-80(%rbx), %rsi
	movl	$499, %edi              # imm = 0x1F3
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -80(%rbx)
	movl	$500, %edi              # imm = 0x1F4
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$501, %edi              # imm = 0x1F5
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-72(%rbx), %rsi
	movl	$502, %edi              # imm = 0x1F6
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -72(%rbx)
	movl	$503, %edi              # imm = 0x1F7
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$504, %edi              # imm = 0x1F8
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-64(%rbx), %rsi
	movl	$505, %edi              # imm = 0x1F9
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -64(%rbx)
	movl	$506, %edi              # imm = 0x1FA
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$507, %edi              # imm = 0x1FB
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-56(%rbx), %rsi
	movl	$508, %edi              # imm = 0x1FC
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -56(%rbx)
	movl	$509, %edi              # imm = 0x1FD
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$510, %edi              # imm = 0x1FE
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-48(%rbx), %rsi
	movl	$511, %edi              # imm = 0x1FF
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -48(%rbx)
	movl	$512, %edi              # imm = 0x200
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$513, %edi              # imm = 0x201
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-40(%rbx), %rsi
	movl	$514, %edi              # imm = 0x202
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -40(%rbx)
	movl	$515, %edi              # imm = 0x203
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$516, %edi              # imm = 0x204
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-32(%rbx), %rsi
	movl	$517, %edi              # imm = 0x205
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -32(%rbx)
	movl	$518, %edi              # imm = 0x206
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$519, %edi              # imm = 0x207
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-24(%rbx), %rsi
	movl	$520, %edi              # imm = 0x208
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -24(%rbx)
	movl	$521, %edi              # imm = 0x209
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$522, %edi              # imm = 0x20A
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-16(%rbx), %rsi
	movl	$523, %edi              # imm = 0x20B
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -16(%rbx)
	movl	$524, %edi              # imm = 0x20C
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$525, %edi              # imm = 0x20D
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	leaq	-8(%rbx), %rsi
	movl	$526, %edi              # imm = 0x20E
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -8(%rbx)
	movl	$527, %edi              # imm = 0x20F
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	addq	$-128, %rbx
	movl	$528, %edi              # imm = 0x210
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$529, %edi              # imm = 0x211
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	-16(%rbx), %r13
	movl	$530, %edi              # imm = 0x212
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -64(%rbp)
	callq	LAMP_loop_iteration_end
	addq	$-16, %rbx
	jns	.LBB6_1
# BB#2:                                 # %do.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-64(%rbp), %r12
	movl	$531, %edi              # imm = 0x213
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	addq	$16, %rbx
	movl	$532, %edi              # imm = 0x214
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	movl	$879, %edi              # imm = 0x36F
	callq	LAMP_loop_invocation
	leaq	-56(%rbp), %r15
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_4:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$534, %edi              # imm = 0x216
	leaq	-72(%rbp), %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r13
	movl	$535, %edi              # imm = 0x217
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %r14
	leaq	-8(%r14), %rbx
	movl	$536, %edi              # imm = 0x218
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$537, %edi              # imm = 0x219
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -8(%r14)
	movl	$538, %edi              # imm = 0x21A
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	decq	%rbx
	movl	$539, %edi              # imm = 0x21B
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	callq	LAMP_loop_iteration_end
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$533, %edi              # imm = 0x215
	movq	%r12, %rsi
	callq	LAMP_load8
	cmpq	$0, -64(%rbp)
	jg	.LBB6_4
# BB#5:                                 # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp70:
	.size	cl_hash, .Ltmp70-cl_hash
	.cfi_endproc

	.globl	scott_hack
	.align	16, 0x90
	.type	scott_hack,@function
scott_hack:                             # @scott_hack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
	movq	%r8, %r13
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	leaq	-56(%rbp), %r14
	movl	$540, %edi              # imm = 0x21C
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, -56(%rbp)
	leaq	-64(%rbp), %rsi
	movl	$541, %edi              # imm = 0x21D
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	movslq	%r15d, %r15
	leaq	-68(%rbp), %rsi
	movl	$542, %edi              # imm = 0x21E
	movq	%r15, %rdx
	callq	LAMP_store4
	movslq	-84(%rbp), %rbx         # 4-byte Folded Reload
	leaq	-72(%rbp), %rsi
	movl	%r15d, -68(%rbp)
	movl	$543, %edi              # imm = 0x21F
	movq	%rsi, %r12
	movq	%rbx, %rdx
	callq	LAMP_store4
	leaq	-80(%rbp), %rsi
	movl	%ebx, -72(%rbp)
	movl	$544, %edi              # imm = 0x220
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -80(%rbp)
	movl	$881, %edi              # imm = 0x371
	callq	LAMP_loop_invocation
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_6:                                # %if.then12
                                        #   in Loop: Header=BB7_1 Depth=1
	callq	LAMP_loop_iteration_end
.LBB7_1:                                # %probeSH
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$545, %edi              # imm = 0x221
	leaq	-68(%rbp), %rsi
	callq	LAMP_load4
	movslq	-68(%rbp), %r13
	movl	$546, %edi              # imm = 0x222
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %r15
	movl	$547, %edi              # imm = 0x223
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	(%r15), %rbx
	subq	%r13, %rbx
	movl	$548, %edi              # imm = 0x224
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, (%r15)
	testq	%rbx, %rbx
	jns	.LBB7_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$549, %edi              # imm = 0x225
	movq	%r12, %rsi
	callq	LAMP_load4
	movslq	-72(%rbp), %r13
	movl	$550, %edi              # imm = 0x226
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$551, %edi              # imm = 0x227
	movq	%rbx, %rsi
	callq	LAMP_load8
	addq	(%rbx), %r13
	movl	$552, %edi              # imm = 0x228
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, (%rbx)
.LBB7_3:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$553, %edi              # imm = 0x229
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$554, %edi              # imm = 0x22A
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$555, %edi              # imm = 0x22B
	callq	LAMP_load8
	movq	htab(,%rbx,8), %rbx
	movl	$556, %edi              # imm = 0x22C
	leaq	-64(%rbp), %rsi
	callq	LAMP_load8
	cmpq	-64(%rbp), %rbx
	je	.LBB7_4
# BB#5:                                 # %if.end8
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$563, %edi              # imm = 0x233
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$564, %edi              # imm = 0x234
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	leaq	htab(,%rbx,8), %rsi
	movl	$565, %edi              # imm = 0x235
	callq	LAMP_load8
	cmpq	$0, htab(,%rbx,8)
	jg	.LBB7_6
# BB#7:                                 # %if.end13
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-44(%rbp), %rsi
	movl	$566, %edi              # imm = 0x236
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_4:                                # %if.then5
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-56(%rbp), %rsi
	movl	$557, %edi              # imm = 0x22D
	callq	LAMP_load8
	movq	-56(%rbp), %rbx
	movl	$558, %edi              # imm = 0x22E
	movq	%rbx, %rsi
	callq	LAMP_load8
	movq	(%rbx), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$559, %edi              # imm = 0x22F
	callq	LAMP_load2
	leaq	-80(%rbp), %rsi
	movzwl	codetab(%rbx,%rbx), %r14d
	movl	$560, %edi              # imm = 0x230
	callq	LAMP_load8
	movq	-80(%rbp), %rbx
	movl	$561, %edi              # imm = 0x231
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	LAMP_store8
	leaq	-44(%rbp), %rsi
	movq	%r14, (%rbx)
	movl	$562, %edi              # imm = 0x232
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, -44(%rbp)
.LBB7_8:                                # %return
	leaq	-44(%rbp), %rsi
	movl	$567, %edi              # imm = 0x237
	callq	LAMP_load4
	movl	-44(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp82:
	.size	scott_hack, .Ltmp82-scott_hack
	.cfi_endproc

	.globl	output
	.align	16, 0x90
	.type	output,@function
output:                                 # @output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp89:
	.cfi_offset %rbx, -56
.Ltmp90:
	.cfi_offset %r12, -48
.Ltmp91:
	.cfi_offset %r13, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r14
	movl	$568, %edi              # imm = 0x238
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
	movl	$569, %edi              # imm = 0x239
	movl	$offset, %esi
	callq	LAMP_load4
	movslq	offset(%rip), %rbx
	leaq	-52(%rbp), %rsi
	movl	$570, %edi              # imm = 0x23A
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -52(%rbp)
	movl	$571, %edi              # imm = 0x23B
	movl	$n_bits, %esi
	callq	LAMP_load4
	leaq	-56(%rbp), %rsi
	movslq	n_bits(%rip), %rbx
	movl	$572, %edi              # imm = 0x23C
	movq	%rbx, %rdx
	callq	LAMP_store4
	leaq	-64(%rbp), %rsi
	movl	%ebx, -56(%rbp)
	movl	$573, %edi              # imm = 0x23D
	movl	$buf, %edx
	callq	LAMP_store8
	movq	$buf, -64(%rbp)
	movl	$574, %edi              # imm = 0x23E
	movq	%r14, %rsi
	callq	LAMP_load8
	cmpq	$0, -48(%rbp)
	js	.LBB8_21
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %r12
	movl	$575, %edi              # imm = 0x23F
	movq	%r12, %rsi
	callq	LAMP_load4
	movl	-52(%rbp), %ebx
	leaq	-64(%rbp), %rsi
	movl	$576, %edi              # imm = 0x240
	movq	%rsi, %r14
	callq	LAMP_load8
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	addq	-64(%rbp), %rbx
	movl	$577, %edi              # imm = 0x241
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	movl	$578, %edi              # imm = 0x242
	movq	%r12, %rsi
	callq	LAMP_load4
	movslq	-52(%rbp), %rbx
	movq	%rbx, %rdx
	andq	$7, %rdx
	movl	$579, %edi              # imm = 0x243
	movq	%r12, %rsi
	callq	LAMP_store4
	andl	$7, %ebx
	movl	%ebx, -52(%rbp)
	movl	$580, %edi              # imm = 0x244
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	movl	$581, %edi              # imm = 0x245
	movq	%rbx, %rsi
	callq	LAMP_load1
	movzbl	(%rbx), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	$582, %edi              # imm = 0x246
	movq	%r12, %rsi
	callq	LAMP_load4
	movslq	-52(%rbp), %rbx
	leaq	rmask(%rbx), %rsi
	movl	$583, %edi              # imm = 0x247
	callq	LAMP_load1
	leaq	-48(%rbp), %rsi
	movzbl	rmask(%rbx), %r15d
	movl	$584, %edi              # imm = 0x248
	callq	LAMP_load8
	movq	-48(%rbp), %r14
	movl	$585, %edi              # imm = 0x249
	movq	%r12, %rbx
	movq	%rbx, %rsi
	callq	LAMP_load4
	movb	-52(%rbp), %r13b
	movl	$586, %edi              # imm = 0x24A
	movq	%rbx, %rsi
	callq	LAMP_load4
	movslq	-52(%rbp), %rbx
	leaq	lmask(%rbx), %rsi
	movl	$587, %edi              # imm = 0x24B
	callq	LAMP_load1
	movzbl	lmask(%rbx), %ebx
	movl	$588, %edi              # imm = 0x24C
	leaq	-64(%rbp), %r12
	movq	%r12, %rsi
	callq	LAMP_load8
	andl	-68(%rbp), %r15d        # 4-byte Folded Reload
	movb	%r13b, %cl
	shlq	%cl, %r14
	andq	%rbx, %r14
	orq	%r15, %r14
	movsbq	%r14b, %r13
	movq	-64(%rbp), %rbx
	movl	$589, %edi              # imm = 0x24D
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	LAMP_store1
	movb	%r13b, (%rbx)
	movl	$590, %edi              # imm = 0x24E
	movq	%r12, %r14
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	incq	%rbx
	movl	$591, %edi              # imm = 0x24F
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	movl	$592, %edi              # imm = 0x250
	leaq	-52(%rbp), %r15
	movq	%r15, %rsi
	callq	LAMP_load4
	leaq	-56(%rbp), %r14
	movl	-52(%rbp), %ebx
	movl	$593, %edi              # imm = 0x251
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	$8, %r13d
	movl	$8, %eax
	subl	%ebx, %eax
	movl	-56(%rbp), %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rbx
	movl	$594, %edi              # imm = 0x252
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -56(%rbp)
	movl	$595, %edi              # imm = 0x253
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-52(%rbp), %ebx
	movl	$596, %edi              # imm = 0x254
	leaq	-48(%rbp), %r15
	movq	%r15, %rsi
	callq	LAMP_load8
	subl	%ebx, %r13d
	movq	-48(%rbp), %rbx
	movb	%r13b, %cl
	sarq	%cl, %rbx
	movl	$597, %edi              # imm = 0x255
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
	movl	$598, %edi              # imm = 0x256
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$8, -56(%rbp)
	jl	.LBB8_3
# BB#2:                                 # %if.then15
	leaq	-48(%rbp), %r14
	movl	$599, %edi              # imm = 0x257
	movq	%r14, %rsi
	callq	LAMP_load8
	movsbq	-48(%rbp), %r15
	leaq	-64(%rbp), %r12
	movl	$600, %edi              # imm = 0x258
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	1(%rbx), %r13
	movl	$601, %edi              # imm = 0x259
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -64(%rbp)
	movl	$602, %edi              # imm = 0x25A
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	LAMP_store1
	movb	%r15b, (%rbx)
	movl	$603, %edi              # imm = 0x25B
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	sarq	$8, %rbx
	movl	$604, %edi              # imm = 0x25C
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	leaq	-56(%rbp), %r14
	movq	%rbx, -48(%rbp)
	movl	$605, %edi              # imm = 0x25D
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-56(%rbp), %eax
	addl	$-8, %eax
	movslq	%eax, %rbx
	movl	$606, %edi              # imm = 0x25E
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -56(%rbp)
.LBB8_3:                                # %if.end
	leaq	-56(%rbp), %rsi
	movl	$607, %edi              # imm = 0x25F
	callq	LAMP_load4
	cmpl	$0, -56(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then20
	leaq	-48(%rbp), %rsi
	movl	$608, %edi              # imm = 0x260
	callq	LAMP_load8
	movsbq	-48(%rbp), %r14
	leaq	-64(%rbp), %rsi
	movl	$609, %edi              # imm = 0x261
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	movl	$610, %edi              # imm = 0x262
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	LAMP_store1
	movb	%r14b, (%rbx)
.LBB8_5:                                # %if.end22
	movl	$611, %edi              # imm = 0x263
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	n_bits(%rip), %ebx
	movl	$612, %edi              # imm = 0x264
	movl	$offset, %esi
	callq	LAMP_load4
	addl	offset(%rip), %ebx
	movslq	%ebx, %rbx
	movl	$613, %edi              # imm = 0x265
	movl	$offset, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, offset(%rip)
	movl	$614, %edi              # imm = 0x266
	movl	$offset, %esi
	callq	LAMP_load4
	movl	offset(%rip), %ebx
	movl	$615, %edi              # imm = 0x267
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	n_bits(%rip), %eax
	shll	$3, %eax
	cmpl	%eax, %ebx
	jne	.LBB8_9
# BB#6:                                 # %if.then26
	leaq	-64(%rbp), %r14
	movl	$616, %edi              # imm = 0x268
	movq	%r14, %rsi
	movl	$buf, %edx
	callq	LAMP_store8
	movq	$buf, -64(%rbp)
	movl	$617, %edi              # imm = 0x269
	movl	$n_bits, %esi
	callq	LAMP_load4
	movslq	n_bits(%rip), %rbx
	leaq	-56(%rbp), %r15
	movl	$618, %edi              # imm = 0x26A
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -56(%rbp)
	movl	$619, %edi              # imm = 0x26B
	movq	%r15, %rsi
	callq	LAMP_load4
	movslq	-56(%rbp), %rbx
	movl	$620, %edi              # imm = 0x26C
	movl	$bytes_out, %esi
	callq	LAMP_load8
	addq	bytes_out(%rip), %rbx
	movl	$621, %edi              # imm = 0x26D
	movl	$bytes_out, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, bytes_out(%rip)
	movl	$882, %edi              # imm = 0x372
	callq	LAMP_loop_invocation
	.align	16, 0x90
.LBB8_7:                                # %do.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$622, %edi              # imm = 0x26E
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	1(%rbx), %r12
	movl	$623, %edi              # imm = 0x26F
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, -64(%rbp)
	movl	$624, %edi              # imm = 0x270
	movq	%rbx, %rsi
	callq	LAMP_load1
	movsbl	(%rbx), %ebx
	movl	$625, %edi              # imm = 0x271
	callq	LAMP_register
	movl	%ebx, %edi
	callq	putchar
	movl	$626, %edi              # imm = 0x272
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-56(%rbp), %eax
	decl	%eax
	movslq	%eax, %rbx
	movl	$627, %edi              # imm = 0x273
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -56(%rbp)
	callq	LAMP_loop_iteration_end
	testl	%ebx, %ebx
	jne	.LBB8_7
# BB#8:                                 # %do.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$628, %edi              # imm = 0x274
	movl	$offset, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, offset(%rip)
.LBB8_9:                                # %if.end32
	movl	$629, %edi              # imm = 0x275
	movl	$free_ent, %esi
	callq	LAMP_load8
	movq	free_ent(%rip), %rbx
	movl	$630, %edi              # imm = 0x276
	movl	$maxcode, %esi
	callq	LAMP_load8
	cmpq	maxcode(%rip), %rbx
	jg	.LBB8_11
# BB#10:                                # %lor.lhs.false
	movl	$631, %edi              # imm = 0x277
	movl	$clear_flg, %esi
	callq	LAMP_load4
	cmpl	$0, clear_flg(%rip)
	jle	.LBB8_25
.LBB8_11:                               # %if.then37
	movl	$632, %edi              # imm = 0x278
	movl	$offset, %esi
	callq	LAMP_load4
	cmpl	$0, offset(%rip)
	jle	.LBB8_15
# BB#12:                                # %if.then40
	movl	$633, %edi              # imm = 0x279
	movl	$n_bits, %esi
	callq	LAMP_load4
	movslq	n_bits(%rip), %r14
	movl	$634, %edi              # imm = 0x27A
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$635, %edi              # imm = 0x27B
	callq	LAMP_register
	movl	$buf, %edi
	movl	$1, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	fwrite
	movq	%rax, %rbx
	movl	$636, %edi              # imm = 0x27C
	movl	$n_bits, %esi
	callq	LAMP_load4
	movslq	n_bits(%rip), %rax
	cmpq	%rax, %rbx
	je	.LBB8_14
# BB#13:                                # %if.then46
	callq	writeerr
.LBB8_14:                               # %if.end47
	movl	$637, %edi              # imm = 0x27D
	movl	$n_bits, %esi
	callq	LAMP_load4
	movslq	n_bits(%rip), %rbx
	movl	$638, %edi              # imm = 0x27E
	movl	$bytes_out, %esi
	callq	LAMP_load8
	addq	bytes_out(%rip), %rbx
	movl	$639, %edi              # imm = 0x27F
	movl	$bytes_out, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, bytes_out(%rip)
.LBB8_15:                               # %if.end50
	movl	$640, %edi              # imm = 0x280
	movl	$offset, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, offset(%rip)
	movl	$641, %edi              # imm = 0x281
	movl	$clear_flg, %esi
	callq	LAMP_load4
	cmpl	$0, clear_flg(%rip)
	je	.LBB8_17
# BB#16:                                # %if.then52
	movl	$642, %edi              # imm = 0x282
	movl	$n_bits, %esi
	movl	$9, %edx
	callq	LAMP_store4
	movl	$9, n_bits(%rip)
	movl	$643, %edi              # imm = 0x283
	movl	$maxcode, %esi
	movl	$511, %edx              # imm = 0x1FF
	callq	LAMP_store8
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	movl	$644, %edi              # imm = 0x284
	movl	$clear_flg, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, clear_flg(%rip)
	jmp	.LBB8_25
.LBB8_21:                               # %if.else63
	movl	$653, %edi              # imm = 0x28D
	movl	$offset, %esi
	callq	LAMP_load4
	cmpl	$0, offset(%rip)
	jle	.LBB8_23
# BB#22:                                # %if.then66
	movl	$654, %edi              # imm = 0x28E
	movl	$offset, %esi
	callq	LAMP_load4
	movl	offset(%rip), %ebx
	movl	$655, %edi              # imm = 0x28F
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %r14
	movl	$656, %edi              # imm = 0x290
	callq	LAMP_register
	leal	7(%rbx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbx,%rax), %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movl	$buf, %edi
	movl	$1, %esi
	movq	%r14, %rcx
	callq	fwrite
.LBB8_23:                               # %if.end70
	movl	$657, %edi              # imm = 0x291
	movl	$offset, %esi
	callq	LAMP_load4
	movl	offset(%rip), %ebx
	movl	$658, %edi              # imm = 0x292
	movl	$bytes_out, %esi
	callq	LAMP_load8
	leal	7(%rbx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbx,%rax), %eax
	sarl	$3, %eax
	movslq	%eax, %rbx
	addq	bytes_out(%rip), %rbx
	movl	$659, %edi              # imm = 0x293
	movl	$bytes_out, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, bytes_out(%rip)
	movl	$660, %edi              # imm = 0x294
	movl	$offset, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, offset(%rip)
	movl	$661, %edi              # imm = 0x295
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$662, %edi              # imm = 0x296
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	fflush
	movl	$663, %edi              # imm = 0x297
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$664, %edi              # imm = 0x298
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB8_25
# BB#24:                                # %if.then78
	callq	writeerr
	jmp	.LBB8_25
.LBB8_17:                               # %if.else
	movl	$645, %edi              # imm = 0x285
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	n_bits(%rip), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$646, %edi              # imm = 0x286
	movl	$n_bits, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, n_bits(%rip)
	movl	$647, %edi              # imm = 0x287
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	n_bits(%rip), %ebx
	movl	$648, %edi              # imm = 0x288
	movl	$maxbits, %esi
	callq	LAMP_load4
	cmpl	maxbits(%rip), %ebx
	jne	.LBB8_20
# BB#18:                                # %if.then55
	movl	$649, %edi              # imm = 0x289
	movl	$maxmaxcode, %esi
	callq	LAMP_load8
	movq	maxmaxcode(%rip), %rbx
	movl	$650, %edi              # imm = 0x28A
	jmp	.LBB8_19
.LBB8_20:                               # %if.else56
	movl	$651, %edi              # imm = 0x28B
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	$1, %eax
	movb	n_bits(%rip), %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %rbx
	movl	$652, %edi              # imm = 0x28C
.LBB8_19:                               # %if.then55
	movl	$maxcode, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, maxcode(%rip)
.LBB8_25:                               # %if.end80
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp94:
	.size	output, .Ltmp94-output
	.cfi_endproc

	.globl	prratio
	.align	16, 0x90
	.type	prratio,@function
prratio:                                # @prratio
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
.Ltmp101:
	.cfi_offset %rbx, -48
.Ltmp102:
	.cfi_offset %r12, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	leaq	-40(%rbp), %rsi
	movl	$665, %edi              # imm = 0x299
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -40(%rbp)
	leaq	-48(%rbp), %r15
	movl	$666, %edi              # imm = 0x29A
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, -48(%rbp)
	leaq	-56(%rbp), %rsi
	movl	$667, %edi              # imm = 0x29B
	movq	%r14, %rdx
	callq	LAMP_store8
	movq	%r14, -56(%rbp)
	movl	$668, %edi              # imm = 0x29C
	movq	%r15, %rsi
	callq	LAMP_load8
	cmpq	$214749, -48(%rbp)      # imm = 0x346DD
	jl	.LBB9_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movl	$669, %edi              # imm = 0x29D
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	leaq	-56(%rbp), %rsi
	movl	$670, %edi              # imm = 0x29E
	callq	LAMP_load8
	movabsq	$3777893186295716171, %rax # imm = 0x346DC5D63886594B
	imulq	-56(%rbp)
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$11, %rcx
	leaq	-60(%rbp), %rsi
	addq	%rax, %rcx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	movslq	%eax, %rbx
	movl	$671, %edi              # imm = 0x29F
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	leaq	-48(%rbp), %rsi
	movl	$672, %edi              # imm = 0x2A0
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	leaq	-56(%rbp), %rsi
	movl	$673, %edi              # imm = 0x2A1
	callq	LAMP_load8
	imulq	$10000, %rbx, %rax      # imm = 0x2710
	cqto
	idivq	-56(%rbp)
	leaq	-60(%rbp), %rsi
	movslq	%eax, %rbx
	movl	$674, %edi              # imm = 0x2A2
.LBB9_3:                                # %if.else
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -60(%rbp)
	leaq	-60(%rbp), %rsi
	movl	$675, %edi              # imm = 0x2A3
	callq	LAMP_load4
	cmpl	$0, -60(%rbp)
	jns	.LBB9_5
# BB#4:                                 # %if.then6
	leaq	-40(%rbp), %rsi
	movl	$676, %edi              # imm = 0x2A4
	callq	LAMP_load8
	movq	-40(%rbp), %rbx
	movl	$677, %edi              # imm = 0x2A5
	callq	LAMP_register
	movl	$45, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	leaq	-60(%rbp), %r14
	movl	$678, %edi              # imm = 0x2A6
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-60(%rbp), %eax
	negl	%eax
	movslq	%eax, %rbx
	movl	$679, %edi              # imm = 0x2A7
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -60(%rbp)
.LBB9_5:                                # %if.end7
	leaq	-40(%rbp), %rsi
	movl	$680, %edi              # imm = 0x2A8
	callq	LAMP_load8
	movq	-40(%rbp), %r14
	leaq	-60(%rbp), %r15
	movl	$681, %edi              # imm = 0x2A9
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-60(%rbp), %r12d
	movl	$682, %edi              # imm = 0x2AA
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-60(%rbp), %ebx
	movl	$683, %edi              # imm = 0x2AB
	callq	LAMP_register
	movslq	%ebx, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rsi
	shrq	$63, %rsi
	movslq	%r12d, %rdx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rdi
	shrq	$63, %rdi
	sarq	$37, %rdx
	addl	%edi, %edx
	sarq	$37, %rax
	addl	%esi, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movq	%r14, %rdi
	movl	$.L.str25, %esi
                                        # kill: EDX<def> EDX<kill> RDX<kill>
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	xorb	%al, %al
	callq	fprintf
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp105:
	.size	prratio, .Ltmp105-prratio
	.cfi_endproc

	.globl	decompress
	.align	16, 0x90
	.type	decompress,@function
decompress:                             # @decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
	movl	$684, %edi              # imm = 0x2AC
	movl	$n_bits, %esi
	movl	$9, %edx
	callq	LAMP_store4
	movl	$9, n_bits(%rip)
	movl	$685, %edi              # imm = 0x2AD
	movl	$maxcode, %esi
	movl	$511, %edx              # imm = 0x1FF
	callq	LAMP_store8
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	leaq	-64(%rbp), %r14
	movl	$686, %edi              # imm = 0x2AE
	movq	%r14, %rsi
	movl	$255, %edx
	callq	LAMP_store8
	movq	$255, -64(%rbp)
	movl	$887, %edi              # imm = 0x377
	callq	LAMP_loop_invocation
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_2:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$688, %edi              # imm = 0x2B0
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$689, %edi              # imm = 0x2B1
	xorl	%edx, %edx
	callq	LAMP_store2
	movw	$0, codetab(%rbx,%rbx)
	movl	$690, %edi              # imm = 0x2B2
	movq	%r14, %rsi
	callq	LAMP_load8
	movsbq	-64(%rbp), %r15
	movl	$691, %edi              # imm = 0x2B3
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	htab(%rbx), %rsi
	movl	$692, %edi              # imm = 0x2B4
	movq	%r15, %rdx
	callq	LAMP_store1
	movb	%r15b, htab(%rbx)
	movl	$693, %edi              # imm = 0x2B5
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	decq	%rbx
	movl	$694, %edi              # imm = 0x2B6
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	callq	LAMP_loop_iteration_end
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$687, %edi              # imm = 0x2AF
	movq	%r14, %rsi
	callq	LAMP_load8
	cmpq	$0, -64(%rbp)
	jns	.LBB10_2
# BB#3:                                 # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$695, %edi              # imm = 0x2B7
	movl	$block_compress, %esi
	callq	LAMP_load4
	movl	$257, %eax              # imm = 0x101
	cmpl	$0, block_compress(%rip)
	jne	.LBB10_5
# BB#4:                                 # %select.mid
	movl	$256, %eax              # imm = 0x100
.LBB10_5:                               # %select.end
	movslq	%eax, %rbx
	movl	$696, %edi              # imm = 0x2B8
	movl	$free_ent, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, free_ent(%rip)
	callq	getcode
	movq	%rax, %rbx
	leaq	-72(%rbp), %r14
	movl	$697, %edi              # imm = 0x2B9
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	leaq	-52(%rbp), %rsi
	movq	%rbx, -72(%rbp)
	movslq	%ebx, %rbx
	movl	$698, %edi              # imm = 0x2BA
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -52(%rbp)
	movl	$699, %edi              # imm = 0x2BB
	movq	%r14, %rsi
	callq	LAMP_load8
	cmpq	$-1, -72(%rbp)
	je	.LBB10_28
# BB#6:                                 # %if.end
	leaq	-52(%rbp), %rsi
	movl	$700, %edi              # imm = 0x2BC
	callq	LAMP_load4
	movsbl	-52(%rbp), %ebx
	movl	$701, %edi              # imm = 0x2BD
	callq	LAMP_register
	movl	%ebx, %edi
	callq	putchar
	movl	$702, %edi              # imm = 0x2BE
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$703, %edi              # imm = 0x2BF
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB10_8
# BB#7:                                 # %if.then11
	callq	writeerr
.LBB10_8:                               # %if.end12
	leaq	-48(%rbp), %r12
	movl	$704, %edi              # imm = 0x2C0
	movq	%r12, %rsi
	movl	$htab+65536, %edx
	callq	LAMP_store8
	movq	$htab+65536, -48(%rbp)
	movl	$886, %edi              # imm = 0x376
	callq	LAMP_loop_invocation
	leaq	-64(%rbp), %r13
	leaq	-80(%rbp), %r14
	jmp	.LBB10_9
	.align	16, 0x90
.LBB10_25:                              # %if.end63
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$758, %edi              # imm = 0x2F6
	leaq	-80(%rbp), %r14
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-80(%rbp), %rbx
	movl	$759, %edi              # imm = 0x2F7
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	callq	LAMP_loop_iteration_end
.LBB10_9:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_13 Depth 2
                                        #     Child Loop BB10_19 Depth 2
                                        #     Child Loop BB10_22 Depth 2
	callq	LAMP_loop_iteration_begin
	callq	getcode
	movq	%rax, %rbx
	movl	$705, %edi              # imm = 0x2C1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	testq	%rbx, %rbx
	js	.LBB10_26
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$706, %edi              # imm = 0x2C2
	movq	%r13, %rsi
	callq	LAMP_load8
	cmpq	$256, -64(%rbp)         # imm = 0x100
	jne	.LBB10_16
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$707, %edi              # imm = 0x2C3
	movl	$block_compress, %esi
	callq	LAMP_load4
	cmpl	$0, block_compress(%rip)
	je	.LBB10_16
# BB#12:                                # %if.then19
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$708, %edi              # imm = 0x2C4
	movq	%r13, %rsi
	movl	$255, %edx
	callq	LAMP_store8
	movq	$255, -64(%rbp)
	movl	$883, %edi              # imm = 0x373
	callq	LAMP_loop_invocation
	jmp	.LBB10_13
	.align	16, 0x90
.LBB10_14:                              # %for.inc25
                                        #   in Loop: Header=BB10_13 Depth=2
	movl	$710, %edi              # imm = 0x2C6
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$711, %edi              # imm = 0x2C7
	xorl	%edx, %edx
	callq	LAMP_store2
	movw	$0, codetab(%rbx,%rbx)
	movl	$712, %edi              # imm = 0x2C8
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	decq	%rbx
	movl	$713, %edi              # imm = 0x2C9
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	callq	LAMP_loop_iteration_end
.LBB10_13:                              # %for.cond20
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LAMP_loop_iteration_begin
	movl	$709, %edi              # imm = 0x2C5
	movq	%r13, %rsi
	callq	LAMP_load8
	cmpq	$0, -64(%rbp)
	jns	.LBB10_14
# BB#15:                                # %for.end27
                                        #   in Loop: Header=BB10_9 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$714, %edi              # imm = 0x2CA
	movl	$clear_flg, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, clear_flg(%rip)
	movl	$715, %edi              # imm = 0x2CB
	movl	$free_ent, %esi
	movl	$256, %edx              # imm = 0x100
	callq	LAMP_store8
	movq	$256, free_ent(%rip)    # imm = 0x100
	callq	getcode
	movq	%rax, %rbx
	movl	$716, %edi              # imm = 0x2CC
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	cmpq	$-1, %rbx
	je	.LBB10_26
.LBB10_16:                              # %if.end33
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$717, %edi              # imm = 0x2CD
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	movl	$718, %edi              # imm = 0x2CE
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -80(%rbp)
	movl	$719, %edi              # imm = 0x2CF
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	movl	$720, %edi              # imm = 0x2D0
	movl	$free_ent, %esi
	callq	LAMP_load8
	cmpq	free_ent(%rip), %rbx
	jl	.LBB10_18
# BB#17:                                # %if.then36
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$721, %edi              # imm = 0x2D1
	leaq	-52(%rbp), %rsi
	callq	LAMP_load4
	movsbq	-52(%rbp), %r15
	movl	$722, %edi              # imm = 0x2D2
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	movq	%r12, %r14
	leaq	1(%rbx), %r12
	movl	$723, %edi              # imm = 0x2D3
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	LAMP_store8
	movq	%r12, -48(%rbp)
	movq	%r14, %r12
	movl	$724, %edi              # imm = 0x2D4
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	LAMP_store1
	movb	%r15b, (%rbx)
	movl	$725, %edi              # imm = 0x2D5
	leaq	-72(%rbp), %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %rbx
	movl	$726, %edi              # imm = 0x2D6
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
.LBB10_18:                              # %if.end38
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$884, %edi              # imm = 0x374
	callq	LAMP_loop_invocation
	jmp	.LBB10_19
	.align	16, 0x90
.LBB10_20:                              # %while.body42
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	$728, %edi              # imm = 0x2D8
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	htab(%rbx), %rsi
	movl	$729, %edi              # imm = 0x2D9
	callq	LAMP_load1
	movsbq	htab(%rbx), %r15
	movl	$730, %edi              # imm = 0x2DA
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	leaq	1(%rbx), %r14
	movl	$731, %edi              # imm = 0x2DB
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	LAMP_store8
	movq	%r14, -48(%rbp)
	movl	$732, %edi              # imm = 0x2DC
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	LAMP_store1
	movb	%r15b, (%rbx)
	movl	$733, %edi              # imm = 0x2DD
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$734, %edi              # imm = 0x2DE
	callq	LAMP_load2
	movzwl	codetab(%rbx,%rbx), %ebx
	movl	$735, %edi              # imm = 0x2DF
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	callq	LAMP_loop_iteration_end
.LBB10_19:                              # %while.cond39
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LAMP_loop_iteration_begin
	movl	$727, %edi              # imm = 0x2D7
	movq	%r13, %rsi
	callq	LAMP_load8
	cmpq	$256, -64(%rbp)         # imm = 0x100
	jge	.LBB10_20
# BB#21:                                # %while.end
                                        #   in Loop: Header=BB10_9 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$736, %edi              # imm = 0x2E0
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	htab(%rbx), %rsi
	movl	$737, %edi              # imm = 0x2E1
	callq	LAMP_load1
	movq	%r12, %r15
	movsbq	htab(%rbx), %r12
	movzbl	%r12b, %edx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	$738, %edi              # imm = 0x2E2
	leaq	-52(%rbp), %rsi
	callq	LAMP_store4
	movzbl	%r12b, %eax
	movl	%eax, -52(%rbp)
	movl	$739, %edi              # imm = 0x2E3
	movq	%r15, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	leaq	1(%rbx), %r14
	movl	$740, %edi              # imm = 0x2E4
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	LAMP_store8
	movq	%r14, -48(%rbp)
	movl	$741, %edi              # imm = 0x2E5
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %r12
	callq	LAMP_store1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movb	%al, (%rbx)
	movl	$885, %edi              # imm = 0x375
	callq	LAMP_loop_invocation
	movl	$htab+65536, %r15d
	.align	16, 0x90
.LBB10_22:                              # %do.cond
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	LAMP_loop_iteration_begin
	movl	$742, %edi              # imm = 0x2E6
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %r14
	leaq	-1(%r14), %rbx
	movl	$743, %edi              # imm = 0x2E7
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
	movl	$744, %edi              # imm = 0x2E8
	movq	%rbx, %rsi
	callq	LAMP_load1
	movzbl	-1(%r14), %ebx
	movl	$745, %edi              # imm = 0x2E9
	callq	LAMP_register
	movl	%ebx, %edi
	callq	putchar
	movl	$746, %edi              # imm = 0x2EA
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-48(%rbp), %rbx
	callq	LAMP_loop_iteration_end
	cmpq	%r15, %rbx
	ja	.LBB10_22
# BB#23:                                # %do.end
                                        #   in Loop: Header=BB10_9 Depth=1
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$747, %edi              # imm = 0x2EB
	movl	$free_ent, %esi
	callq	LAMP_load8
	movq	free_ent(%rip), %rbx
	movl	$748, %edi              # imm = 0x2EC
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -64(%rbp)
	movl	$749, %edi              # imm = 0x2ED
	movl	$maxmaxcode, %esi
	callq	LAMP_load8
	cmpq	maxmaxcode(%rip), %rbx
	leaq	-72(%rbp), %r15
	jge	.LBB10_25
# BB#24:                                # %if.then58
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$750, %edi              # imm = 0x2EE
	movq	%r15, %rsi
	callq	LAMP_load8
	movswq	-72(%rbp), %r14
	movl	$751, %edi              # imm = 0x2EF
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	codetab(%rbx,%rbx), %rsi
	movl	$752, %edi              # imm = 0x2F0
	movq	%r14, %rdx
	callq	LAMP_store2
	movw	%r14w, codetab(%rbx,%rbx)
	movl	$753, %edi              # imm = 0x2F1
	leaq	-52(%rbp), %rsi
	callq	LAMP_load4
	movsbq	-52(%rbp), %r14
	movl	$754, %edi              # imm = 0x2F2
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	leaq	htab(%rbx), %rsi
	movl	$755, %edi              # imm = 0x2F3
	movq	%r14, %rdx
	callq	LAMP_store1
	movb	%r14b, htab(%rbx)
	movl	$756, %edi              # imm = 0x2F4
	movq	%r13, %rsi
	callq	LAMP_load8
	movq	-64(%rbp), %rbx
	incq	%rbx
	movl	$757, %edi              # imm = 0x2F5
	movl	$free_ent, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, free_ent(%rip)
	jmp	.LBB10_25
.LBB10_26:                              # %while.end64.loopexit
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$760, %edi              # imm = 0x2F8
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$761, %edi              # imm = 0x2F9
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	fflush
	movl	$762, %edi              # imm = 0x2FA
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %rbx
	movl	$763, %edi              # imm = 0x2FB
	callq	LAMP_register
	movq	%rbx, %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB10_28
# BB#27:                                # %if.then68
	callq	writeerr
.LBB10_28:                              # %if.end69
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp117:
	.size	decompress, .Ltmp117-decompress
	.cfi_endproc

	.globl	getcode
	.align	16, 0x90
	.type	getcode,@function
getcode:                                # @getcode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp124:
	.cfi_offset %rbx, -56
.Ltmp125:
	.cfi_offset %r12, -48
.Ltmp126:
	.cfi_offset %r13, -40
.Ltmp127:
	.cfi_offset %r14, -32
.Ltmp128:
	.cfi_offset %r15, -24
	leaq	-72(%rbp), %rsi
	movl	$764, %edi              # imm = 0x2FC
	movl	$getcode.buf, %edx
	callq	LAMP_store8
	movq	$getcode.buf, -72(%rbp)
	movl	$765, %edi              # imm = 0x2FD
	movl	$clear_flg, %esi
	callq	LAMP_load4
	cmpl	$0, clear_flg(%rip)
	jg	.LBB11_3
# BB#1:                                 # %lor.lhs.false
	movl	$766, %edi              # imm = 0x2FE
	movl	$getcode.offset, %esi
	callq	LAMP_load4
	movl	getcode.offset(%rip), %ebx
	movl	$767, %edi              # imm = 0x2FF
	movl	$getcode.size, %esi
	callq	LAMP_load4
	cmpl	getcode.size(%rip), %ebx
	jge	.LBB11_3
# BB#2:                                 # %lor.lhs.false2
	movl	$768, %edi              # imm = 0x300
	movl	$free_ent, %esi
	callq	LAMP_load8
	movq	free_ent(%rip), %rbx
	movl	$769, %edi              # imm = 0x301
	movl	$maxcode, %esi
	callq	LAMP_load8
	cmpq	maxcode(%rip), %rbx
	jle	.LBB11_13
.LBB11_3:                               # %if.then
	movl	$770, %edi              # imm = 0x302
	movl	$free_ent, %esi
	callq	LAMP_load8
	movq	free_ent(%rip), %rbx
	movl	$771, %edi              # imm = 0x303
	movl	$maxcode, %esi
	callq	LAMP_load8
	cmpq	maxcode(%rip), %rbx
	jle	.LBB11_8
# BB#4:                                 # %if.then5
	movl	$772, %edi              # imm = 0x304
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	n_bits(%rip), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$773, %edi              # imm = 0x305
	movl	$n_bits, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, n_bits(%rip)
	movl	$774, %edi              # imm = 0x306
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	n_bits(%rip), %ebx
	movl	$775, %edi              # imm = 0x307
	movl	$maxbits, %esi
	callq	LAMP_load4
	cmpl	maxbits(%rip), %ebx
	jne	.LBB11_6
# BB#5:                                 # %if.then7
	movl	$776, %edi              # imm = 0x308
	movl	$maxmaxcode, %esi
	callq	LAMP_load8
	movq	maxmaxcode(%rip), %rbx
	movl	$777, %edi              # imm = 0x309
	jmp	.LBB11_7
.LBB11_6:                               # %if.else
	movl	$778, %edi              # imm = 0x30A
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	$1, %eax
	movb	n_bits(%rip), %cl
	shll	%cl, %eax
	decl	%eax
	movslq	%eax, %rbx
	movl	$779, %edi              # imm = 0x30B
.LBB11_7:                               # %if.else
	movl	$maxcode, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, maxcode(%rip)
.LBB11_8:                               # %if.end8
	movl	$780, %edi              # imm = 0x30C
	movl	$clear_flg, %esi
	callq	LAMP_load4
	cmpl	$0, clear_flg(%rip)
	jle	.LBB11_10
# BB#9:                                 # %if.then11
	movl	$781, %edi              # imm = 0x30D
	movl	$n_bits, %esi
	movl	$9, %edx
	callq	LAMP_store4
	movl	$9, n_bits(%rip)
	movl	$782, %edi              # imm = 0x30E
	movl	$maxcode, %esi
	movl	$511, %edx              # imm = 0x1FF
	callq	LAMP_store8
	movq	$511, maxcode(%rip)     # imm = 0x1FF
	movl	$783, %edi              # imm = 0x30F
	movl	$clear_flg, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, clear_flg(%rip)
.LBB11_10:                              # %if.end12
	movl	$784, %edi              # imm = 0x310
	movl	$n_bits, %esi
	callq	LAMP_load4
	movslq	n_bits(%rip), %r14
	movl	$785, %edi              # imm = 0x311
	movl	$stdin, %esi
	callq	LAMP_load8
	movq	stdin(%rip), %rbx
	movl	$786, %edi              # imm = 0x312
	callq	LAMP_register
	movl	$getcode.buf, %edi
	movl	$1, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	fread
	movslq	%eax, %rbx
	movl	$787, %edi              # imm = 0x313
	movl	$getcode.size, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, getcode.size(%rip)
	movl	$788, %edi              # imm = 0x314
	movl	$getcode.size, %esi
	callq	LAMP_load4
	cmpl	$0, getcode.size(%rip)
	jg	.LBB11_12
# BB#11:                                # %if.then17
	leaq	-48(%rbp), %rsi
	movl	$789, %edi              # imm = 0x315
	movq	$-1, %rdx
	callq	LAMP_store8
	movq	$-1, -48(%rbp)
	jmp	.LBB11_16
.LBB11_12:                              # %if.end18
	movl	$790, %edi              # imm = 0x316
	movl	$getcode.offset, %esi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, getcode.offset(%rip)
	movl	$791, %edi              # imm = 0x317
	movl	$getcode.size, %esi
	callq	LAMP_load4
	movl	getcode.size(%rip), %ebx
	movl	$792, %edi              # imm = 0x318
	movl	$n_bits, %esi
	callq	LAMP_load4
	shll	$3, %ebx
	movl	n_bits(%rip), %eax
	decl	%eax
	subl	%eax, %ebx
	movslq	%ebx, %rbx
	movl	$793, %edi              # imm = 0x319
	movl	$getcode.size, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, getcode.size(%rip)
.LBB11_13:                              # %if.end22
	movl	$794, %edi              # imm = 0x31A
	movl	$getcode.offset, %esi
	callq	LAMP_load4
	movslq	getcode.offset(%rip), %rbx
	leaq	-60(%rbp), %r15
	movl	$795, %edi              # imm = 0x31B
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -60(%rbp)
	movl	$796, %edi              # imm = 0x31C
	movl	$n_bits, %esi
	callq	LAMP_load4
	leaq	-64(%rbp), %r14
	movslq	n_bits(%rip), %rbx
	movl	$797, %edi              # imm = 0x31D
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -64(%rbp)
	movl	$798, %edi              # imm = 0x31E
	movq	%r15, %rsi
	callq	LAMP_load4
	leaq	-72(%rbp), %r12
	movl	-60(%rbp), %ebx
	movl	$799, %edi              # imm = 0x31F
	movq	%r12, %rsi
	callq	LAMP_load8
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	addq	-72(%rbp), %rbx
	movl	$800, %edi              # imm = 0x320
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	movl	$801, %edi              # imm = 0x321
	movq	%r15, %rsi
	callq	LAMP_load4
	movslq	-60(%rbp), %rbx
	movq	%rbx, %rdx
	andq	$7, %rdx
	movl	$802, %edi              # imm = 0x322
	movq	%r15, %rsi
	callq	LAMP_store4
	andl	$7, %ebx
	movl	%ebx, -60(%rbp)
	movl	$803, %edi              # imm = 0x323
	movq	%r12, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %rbx
	leaq	1(%rbx), %r13
	movl	$804, %edi              # imm = 0x324
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	LAMP_store8
	movq	%r13, -72(%rbp)
	movl	$805, %edi              # imm = 0x325
	movq	%rbx, %rsi
	callq	LAMP_load1
	movzbl	(%rbx), %ebx
	movl	$806, %edi              # imm = 0x326
	movq	%r15, %rsi
	callq	LAMP_load4
	leaq	-56(%rbp), %rsi
	movb	-60(%rbp), %cl
	shrl	%cl, %ebx
	movslq	%ebx, %rbx
	movl	$807, %edi              # imm = 0x327
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$808, %edi              # imm = 0x328
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-60(%rbp), %ebx
	movl	$809, %edi              # imm = 0x329
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	$8, %r12d
	movl	$8, %eax
	subl	%ebx, %eax
	movl	-64(%rbp), %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rbx
	movl	$810, %edi              # imm = 0x32A
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -64(%rbp)
	movl	$811, %edi              # imm = 0x32B
	movq	%r15, %rsi
	callq	LAMP_load4
	subl	-60(%rbp), %r12d
	movslq	%r12d, %rbx
	movl	$812, %edi              # imm = 0x32C
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -60(%rbp)
	movl	$813, %edi              # imm = 0x32D
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$8, -64(%rbp)
	jl	.LBB11_15
# BB#14:                                # %if.then31
	leaq	-72(%rbp), %r14
	movl	$814, %edi              # imm = 0x32E
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	-72(%rbp), %r15
	leaq	1(%r15), %rbx
	movl	$815, %edi              # imm = 0x32F
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -72(%rbp)
	movl	$816, %edi              # imm = 0x330
	movq	%r15, %rsi
	callq	LAMP_load1
	leaq	-60(%rbp), %r14
	movzbl	(%r15), %ebx
	movl	$817, %edi              # imm = 0x331
	movq	%r14, %rsi
	callq	LAMP_load4
	leaq	-56(%rbp), %r15
	movb	-60(%rbp), %r12b
	movl	$818, %edi              # imm = 0x332
	movq	%r15, %rsi
	callq	LAMP_load8
	movb	%r12b, %cl
	shll	%cl, %ebx
	movslq	%ebx, %rbx
	orq	-56(%rbp), %rbx
	movl	$819, %edi              # imm = 0x333
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$820, %edi              # imm = 0x334
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-60(%rbp), %eax
	addl	$8, %eax
	movslq	%eax, %rbx
	movl	$821, %edi              # imm = 0x335
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	leaq	-64(%rbp), %r14
	movl	%ebx, -60(%rbp)
	movl	$822, %edi              # imm = 0x336
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-64(%rbp), %eax
	addl	$-8, %eax
	movslq	%eax, %rbx
	movl	$823, %edi              # imm = 0x337
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -64(%rbp)
.LBB11_15:                              # %if.end37
	leaq	-72(%rbp), %rsi
	movl	$824, %edi              # imm = 0x338
	callq	LAMP_load8
	movq	-72(%rbp), %rbx
	movl	$825, %edi              # imm = 0x339
	movq	%rbx, %rsi
	callq	LAMP_load1
	movb	(%rbx), %r15b
	leaq	-64(%rbp), %rsi
	movl	$826, %edi              # imm = 0x33A
	callq	LAMP_load4
	movslq	-64(%rbp), %rbx
	leaq	rmask(%rbx), %rsi
	movl	$827, %edi              # imm = 0x33B
	callq	LAMP_load1
	leaq	-60(%rbp), %rsi
	movb	rmask(%rbx), %bl
	movl	$828, %edi              # imm = 0x33C
	callq	LAMP_load4
	leaq	-56(%rbp), %r14
	movb	-60(%rbp), %r12b
	movl	$829, %edi              # imm = 0x33D
	movq	%r14, %rsi
	callq	LAMP_load8
	andb	%r15b, %bl
	movzbl	%bl, %eax
	movb	%r12b, %cl
	shll	%cl, %eax
	movslq	%eax, %rbx
	orq	-56(%rbp), %rbx
	movl	$830, %edi              # imm = 0x33E
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -56(%rbp)
	movl	$831, %edi              # imm = 0x33F
	movl	$n_bits, %esi
	callq	LAMP_load4
	movl	n_bits(%rip), %ebx
	movl	$832, %edi              # imm = 0x340
	movl	$getcode.offset, %esi
	callq	LAMP_load4
	addl	getcode.offset(%rip), %ebx
	movslq	%ebx, %rbx
	movl	$833, %edi              # imm = 0x341
	movl	$getcode.offset, %esi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, getcode.offset(%rip)
	movl	$834, %edi              # imm = 0x342
	movq	%r14, %rsi
	callq	LAMP_load8
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rbx
	movl	$835, %edi              # imm = 0x343
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -48(%rbp)
.LBB11_16:                              # %return
	leaq	-48(%rbp), %rsi
	movl	$836, %edi              # imm = 0x344
	callq	LAMP_load8
	movq	-48(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp129:
	.size	getcode, .Ltmp129-getcode
	.cfi_endproc

	.globl	writeerr
	.align	16, 0x90
	.type	writeerr,@function
writeerr:                               # @writeerr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	movl	$837, %edi              # imm = 0x345
	callq	LAMP_register
	movl	$ofname, %edi
	callq	perror
	movl	$838, %edi              # imm = 0x346
	callq	LAMP_register
	movl	$ofname, %edi
	callq	unlink
	movl	$839, %edi              # imm = 0x347
	callq	LAMP_register
	movl	$1, %edi
	callq	exit
.Ltmp135:
	.size	writeerr, .Ltmp135-writeerr
	.cfi_endproc

	.globl	foreground
	.align	16, 0x90
	.type	foreground,@function
foreground:                             # @foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$840, %edi              # imm = 0x348
	movl	$bgnd_flag, %esi
	callq	LAMP_load8
	cmpq	$0, bgnd_flag(%rip)
	je	.LBB13_2
# BB#1:                                 # %if.then
	leaq	-4(%rbp), %rsi
	movl	$841, %edi              # imm = 0x349
	jmp	.LBB13_5
.LBB13_2:                               # %if.else
	movl	$842, %edi              # imm = 0x34A
	callq	LAMP_register
	movl	$2, %edi
	callq	isatty
	leaq	-4(%rbp), %rsi
	testl	%eax, %eax
	je	.LBB13_4
# BB#3:                                 # %if.then2
	movl	$843, %edi              # imm = 0x34B
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, -4(%rbp)
	jmp	.LBB13_6
.LBB13_4:                               # %if.else3
	movl	$844, %edi              # imm = 0x34C
.LBB13_5:                               # %if.else3
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -4(%rbp)
.LBB13_6:                               # %return
	leaq	-4(%rbp), %rsi
	movl	$845, %edi              # imm = 0x34D
	callq	LAMP_load4
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp141:
	.size	foreground, .Ltmp141-foreground
	.cfi_endproc

	.globl	cl_block
	.align	16, 0x90
	.type	cl_block,@function
cl_block:                               # @cl_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp148:
	.cfi_offset %rbx, -32
.Ltmp149:
	.cfi_offset %r14, -24
	movl	$846, %edi              # imm = 0x34E
	movl	$in_count, %esi
	callq	LAMP_load8
	movq	in_count(%rip), %rbx
	addq	$10000, %rbx            # imm = 0x2710
	movl	$847, %edi              # imm = 0x34F
	movl	$checkpoint, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, checkpoint(%rip)
	movl	$848, %edi              # imm = 0x350
	movl	$in_count, %esi
	callq	LAMP_load8
	cmpq	$8388608, in_count(%rip) # imm = 0x800000
	jl	.LBB14_4
# BB#1:                                 # %if.then
	movl	$849, %edi              # imm = 0x351
	movl	$bytes_out, %esi
	callq	LAMP_load8
	movq	bytes_out(%rip), %rbx
	sarq	$8, %rbx
	leaq	-24(%rbp), %r14
	movl	$850, %edi              # imm = 0x352
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -24(%rbp)
	movl	$851, %edi              # imm = 0x353
	movq	%r14, %rsi
	callq	LAMP_load8
	cmpq	$0, -24(%rbp)
	je	.LBB14_2
# BB#3:                                 # %if.else
	movl	$853, %edi              # imm = 0x355
	movl	$in_count, %esi
	callq	LAMP_load8
	movq	in_count(%rip), %rbx
	leaq	-24(%rbp), %r14
	movl	$854, %edi              # imm = 0x356
	movq	%r14, %rsi
	callq	LAMP_load8
	movq	%rbx, %rax
	cqto
	idivq	-24(%rbp)
	movq	%rax, %rbx
	movl	$855, %edi              # imm = 0x357
	movq	%r14, %rsi
	jmp	.LBB14_5
.LBB14_4:                               # %if.else3
	movl	$856, %edi              # imm = 0x358
	movl	$in_count, %esi
	callq	LAMP_load8
	movq	in_count(%rip), %rbx
	movl	$857, %edi              # imm = 0x359
	movl	$bytes_out, %esi
	callq	LAMP_load8
	shlq	$8, %rbx
	movq	%rbx, %rax
	cqto
	idivq	bytes_out(%rip)
	movq	%rax, %rbx
	leaq	-24(%rbp), %rsi
	movl	$858, %edi              # imm = 0x35A
.LBB14_5:                               # %if.else3
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, -24(%rbp)
	jmp	.LBB14_6
.LBB14_2:                               # %if.then2
	leaq	-24(%rbp), %rsi
	movl	$852, %edi              # imm = 0x354
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	callq	LAMP_store8
	movq	$2147483647, -24(%rbp)  # imm = 0x7FFFFFFF
.LBB14_6:                               # %if.end5
	leaq	-24(%rbp), %rsi
	movl	$859, %edi              # imm = 0x35B
	callq	LAMP_load8
	movq	-24(%rbp), %rbx
	movl	$860, %edi              # imm = 0x35C
	movl	$ratio, %esi
	callq	LAMP_load8
	cmpq	ratio(%rip), %rbx
	jle	.LBB14_8
# BB#7:                                 # %if.then7
	leaq	-24(%rbp), %rsi
	movl	$861, %edi              # imm = 0x35D
	callq	LAMP_load8
	movq	-24(%rbp), %rbx
	movl	$862, %edi              # imm = 0x35E
	movl	$ratio, %esi
	movq	%rbx, %rdx
	callq	LAMP_store8
	movq	%rbx, ratio(%rip)
	jmp	.LBB14_9
.LBB14_8:                               # %if.else8
	movl	$863, %edi              # imm = 0x35F
	movl	$ratio, %esi
	xorl	%edx, %edx
	callq	LAMP_store8
	movq	$0, ratio(%rip)
	movl	$864, %edi              # imm = 0x360
	movl	$hsize, %esi
	callq	LAMP_load8
	movq	hsize(%rip), %rdi
	callq	cl_hash
	movl	$865, %edi              # imm = 0x361
	movl	$free_ent, %esi
	movl	$257, %edx              # imm = 0x101
	callq	LAMP_store8
	movq	$257, free_ent(%rip)    # imm = 0x101
	movl	$866, %edi              # imm = 0x362
	movl	$clear_flg, %esi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, clear_flg(%rip)
	movl	$256, %edi              # imm = 0x100
	callq	output
.LBB14_9:                               # %if.end9
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp150:
	.size	cl_block, .Ltmp150-cl_block
	.cfi_endproc

	.globl	version
	.align	16, 0x90
	.type	version,@function
version:                                # @version
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp157:
	.cfi_offset %rbx, -24
	movl	$867, %edi              # imm = 0x363
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$868, %edi              # imm = 0x364
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str26, %esi
	movl	$rcs_ident, %edx
	xorb	%al, %al
	callq	fprintf
	movl	$869, %edi              # imm = 0x365
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$870, %edi              # imm = 0x366
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str27, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$871, %edi              # imm = 0x367
	movl	$stderr, %esi
	callq	LAMP_load8
	movq	stderr(%rip), %rbx
	movl	$872, %edi              # imm = 0x368
	callq	LAMP_register
	movq	%rbx, %rdi
	movl	$.L.str28, %esi
	movl	$16, %edx
	xorb	%al, %al
	callq	fprintf
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp158:
	.size	version, .Ltmp158-version
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


	.section	".note.GNU-stack","",@progbits
