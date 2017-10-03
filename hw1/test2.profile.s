	.file	"test2.profile.bc"
	.text
	.globl	f1
	.align	16, 0x90
	.type	f1,@function
f1:                                     # @f1
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
	movl	%edi, -4(%rbp)
	addl	%edi, %edi
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	popq	%rbp
	ret
.Ltmp5:
	.size	f1, .Ltmp5-f1
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$EdgeProfCounters, %edx
	movl	$10, %ecx
	callq	llvm_start_edge_profiling
	incl	EdgeProfCounters+4(%rip)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	incl	EdgeProfCounters+8(%rip)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_3:                                # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+20(%rip)
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	incl	EdgeProfCounters+28(%rip)
	incl	EdgeProfCounters+36(%rip)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jg	.LBB1_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+12(%rip)
	incl	-16(%rbp)
	movl	-12(%rbp), %eax
	incl	%eax
	movl	%eax, -12(%rbp)
	cmpl	$1, %eax
	jle	.LBB1_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	EdgeProfCounters+24(%rip)
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	incl	EdgeProfCounters+32(%rip)
	incl	EdgeProfCounters+36(%rip)
	jmp	.LBB1_1
.LBB1_5:                                # %while.end
	incl	EdgeProfCounters+16(%rip)
	movl	-12(%rbp), %edi
	callq	f1
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %esi
	movl	$.L.str2, %edi
	movl	%eax, %edx
	xorb	%al, %al
	callq	printf
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	main, .Ltmp11-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "ha\n"
	.size	.L.str, 4

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "haha\n"
	.size	.L.str1, 6

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "%d, %d\n"
	.size	.L.str2, 8

	.type	EdgeProfCounters,@object # @EdgeProfCounters
	.local	EdgeProfCounters
	.comm	EdgeProfCounters,40,16

	.section	".note.GNU-stack","",@progbits
