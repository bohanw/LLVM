	.file	"correct3.slicm.bc"
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
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$a, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	%eax, a(,%rax,4)
	incl	-12(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$99, -12(%rbp)
	jle	.LBB0_2
# BB#3:                                 # %for.end
	movl	$0, -12(%rbp)
	movl	a+388(%rip), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdx
	movq	%rdx, %rsp
	movb	$0, -16(%rcx)
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_7:                                # %for.inc11
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	-12(%rbp), %rcx
	movl	%eax, b(,%rcx,4)
	incl	-12(%rbp)
.LBB0_4:                                # %for.cond1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$99, -12(%rbp)
	jg	.LBB0_8
# BB#5:                                 # %for.body3
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	-12(%rbp), %rcx
	cmpl	$96, a(,%rcx,4)
	jl	.LBB0_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-12(%rbp), %ecx
	incl	%ecx
	movslq	%ecx, %rcx
	movl	$1, a(,%rcx,4)
	jmp	.LBB0_7
.LBB0_8:                                # %for.end13
	movl	b+396(%rip), %ecx
	movl	b+392(%rip), %edx
	movl	b+388(%rip), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	movq	%rbp, %rsp
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


	.section	".note.GNU-stack","",@progbits
