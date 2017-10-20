	.file	"correct4.profile.ls.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$32, %rsp
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$EdgeProfCounters, %edx
	movl	$14, %ecx
	callq	llvm_start_edge_profiling
	incl	EdgeProfCounters(%rip)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$a, -24(%rbp)
	movl	$0, -12(%rbp)
	incl	EdgeProfCounters+4(%rip)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	incl	EdgeProfCounters+8(%rip)
	movslq	-12(%rbp), %rax
	movl	%eax, a(,%rax,4)
	incl	EdgeProfCounters+16(%rip)
	incl	-12(%rbp)
	incl	EdgeProfCounters+20(%rip)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$99, -12(%rbp)
	jle	.LBB0_2
# BB#3:                                 # %for.end
	incl	EdgeProfCounters+12(%rip)
	movl	$0, -12(%rbp)
	incl	EdgeProfCounters+24(%rip)
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	a+388(%rip), %eax
	leal	15(%rax,%rax,2), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, b(,%rcx,4)
	incl	EdgeProfCounters+48(%rip)
	incl	-12(%rbp)
	incl	EdgeProfCounters+52(%rip)
.LBB0_4:                                # %for.cond1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$99, -12(%rbp)
	jg	.LBB0_9
# BB#5:                                 # %for.body3
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	EdgeProfCounters+28(%rip)
	movslq	-12(%rbp), %rax
	cmpl	$95, a(,%rax,4)
	jle	.LBB0_6
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	EdgeProfCounters+36(%rip)
	movl	-12(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movl	$1, a(,%rax,4)
	incl	EdgeProfCounters+44(%rip)
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_6:                                # %for.body3.if.end_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	EdgeProfCounters+40(%rip)
	jmp	.LBB0_8
.LBB0_9:                                # %for.end14
	incl	EdgeProfCounters+32(%rip)
	movl	b+396(%rip), %ecx
	movl	b+392(%rip), %edx
	movl	b+388(%rip), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.type	a,@object               # @a
	.comm	a,400,16
	.type	b,@object               # @b
	.comm	b,400,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d, %d, %d\n"
	.size	.L.str, 12

	.type	EdgeProfCounters,@object # @EdgeProfCounters
	.local	EdgeProfCounters
	.comm	EdgeProfCounters,56,16

	.section	".note.GNU-stack","",@progbits
