	.file	"<stdin>"
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp6:
	.cfi_offset %rbx, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
	movl	$25, %edi
	movl	$2, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	LAMP_init
	leaq	-28(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -28(%rbp)
	leaq	-32(%rbp), %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	leaq	-48(%rbp), %rsi
	movl	$0, -32(%rbp)
	movl	$2, %edi
	movl	$a, %edx
	callq	LAMP_store8
	leaq	-36(%rbp), %r14
	movq	$a, -48(%rbp)
	movl	$3, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -36(%rbp)
	movl	$26, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$5, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-36(%rbp), %r15
	movl	$6, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-36(%rbp), %rbx
	leaq	a(,%rbx,4), %rsi
	movl	$7, %edi
	movq	%r15, %rdx
	callq	LAMP_store4
	movl	%r15d, a(,%rbx,4)
	movl	$8, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-36(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$9, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -36(%rbp)
	callq	LAMP_loop_iteration_end
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$4, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$99, -36(%rbp)
	jle	.LBB0_2
# BB#3:                                 # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-36(%rbp), %r14
	movl	$10, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -36(%rbp)
	movl	$25, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$16, %edi
	movl	$a+388, %esi
	callq	LAMP_load4
	movl	a+388(%rip), %ebx
	movl	$17, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-36(%rbp), %r15
	leal	15(%rbx,%rbx,2), %eax
	movslq	%eax, %rbx
	leaq	b(,%r15,4), %rsi
	movl	$18, %edi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, b(,%r15,4)
	movl	$19, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-36(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$20, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -36(%rbp)
	callq	LAMP_loop_iteration_end
.LBB0_4:                                # %for.cond1
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$11, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$99, -36(%rbp)
	jg	.LBB0_8
# BB#5:                                 # %for.body3
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$12, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-36(%rbp), %rbx
	leaq	a(,%rbx,4), %rsi
	movl	$13, %edi
	callq	LAMP_load4
	cmpl	$96, a(,%rbx,4)
	jl	.LBB0_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$14, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-36(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	leaq	a(,%rbx,4), %rsi
	movl	$15, %edi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, a(,%rbx,4)
	jmp	.LBB0_7
.LBB0_8:                                # %for.end14
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$21, %edi
	movl	$b+388, %esi
	callq	LAMP_load4
	movl	b+388(%rip), %r14d
	movl	$22, %edi
	movl	$b+392, %esi
	callq	LAMP_load4
	movl	b+392(%rip), %r15d
	movl	$23, %edi
	movl	$b+396, %esi
	callq	LAMP_load4
	movl	b+396(%rip), %ebx
	movl	$24, %edi
	callq	LAMP_register
	movl	$.L.str, %edi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp9:
	.size	main, .Ltmp9-main
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
