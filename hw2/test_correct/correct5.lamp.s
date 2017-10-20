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
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movl	$39, %edi
	movl	$2, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	LAMP_init
	leaq	-36(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -36(%rbp)
	leaq	-40(%rbp), %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	leaq	-56(%rbp), %rsi
	movl	$0, -40(%rbp)
	movl	$2, %edi
	movl	$a, %edx
	callq	LAMP_store8
	leaq	-44(%rbp), %r14
	movq	$a, -56(%rbp)
	movl	$3, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -44(%rbp)
	movl	$40, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$5, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-44(%rbp), %r15
	movl	$6, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-44(%rbp), %rbx
	leaq	a(,%rbx,4), %rsi
	movl	$7, %edi
	movq	%r15, %rdx
	callq	LAMP_store4
	movl	%r15d, a(,%rbx,4)
	movl	$8, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-44(%rbp), %rbx
	leaq	b(,%rbx,4), %rsi
	movl	$9, %edi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, b(,%rbx,4)
	movl	$10, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-44(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$11, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -44(%rbp)
	callq	LAMP_loop_iteration_end
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$4, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$99, -44(%rbp)
	jle	.LBB0_2
# BB#3:                                 # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-44(%rbp), %r14
	movl	$12, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -44(%rbp)
	movl	$39, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$20, %edi
	movl	$a+388, %esi
	callq	LAMP_load4
	movl	a+388(%rip), %r15d
	movl	$21, %edi
	movl	$a+392, %esi
	callq	LAMP_load4
	movl	a+392(%rip), %r12d
	movl	$22, %edi
	movl	$a+396, %esi
	callq	LAMP_load4
	movl	a+396(%rip), %ebx
	movl	$23, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	leal	(%r12,%r12,2), %eax
	leal	(%rax,%r15,2), %eax
	leal	10(%rax,%rbx,4), %eax
	movslq	%eax, %r15
	movslq	-44(%rbp), %rbx
	leaq	c(,%rbx,4), %rsi
	movl	$24, %edi
	movq	%r15, %rdx
	callq	LAMP_store4
	movl	%r15d, c(,%rbx,4)
	movl	$25, %edi
	movl	$b+388, %esi
	callq	LAMP_load4
	movl	b+388(%rip), %r15d
	movl	$26, %edi
	movl	$a+396, %esi
	callq	LAMP_load4
	movl	a+396(%rip), %ebx
	movl	$27, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	leal	(%rbx,%rbx,2), %eax
	leal	(%rax,%r15,2), %eax
	movslq	%eax, %r15
	movslq	-44(%rbp), %rbx
	leaq	d(,%rbx,4), %rsi
	movl	$28, %edi
	movq	%r15, %rdx
	callq	LAMP_store4
	movl	%r15d, d(,%rbx,4)
	movl	$29, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-44(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$30, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -44(%rbp)
	callq	LAMP_loop_iteration_end
.LBB0_4:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$13, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$99, -44(%rbp)
	jg	.LBB0_8
# BB#5:                                 # %for.body5
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$14, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-44(%rbp), %rbx
	leaq	a(,%rbx,4), %rsi
	movl	$15, %edi
	callq	LAMP_load4
	cmpl	$96, a(,%rbx,4)
	jl	.LBB0_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$16, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-44(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	leaq	a(,%rbx,4), %rsi
	movl	$17, %edi
	movl	$1, %edx
	callq	LAMP_store4
	movl	$1, a(,%rbx,4)
	movl	$18, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-44(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	leaq	b(,%rbx,4), %rsi
	movl	$19, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, b(,%rbx,4)
	jmp	.LBB0_7
.LBB0_8:                                # %for.end28
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$31, %edi
	movl	$c+388, %esi
	callq	LAMP_load4
	movl	c+388(%rip), %r14d
	movl	$32, %edi
	movl	$c+392, %esi
	callq	LAMP_load4
	movl	c+392(%rip), %r15d
	movl	$33, %edi
	movl	$c+396, %esi
	callq	LAMP_load4
	movl	c+396(%rip), %ebx
	movl	$34, %edi
	callq	LAMP_register
	movl	$.L.str, %edi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	xorb	%al, %al
	callq	printf
	movl	$35, %edi
	movl	$d+388, %esi
	callq	LAMP_load4
	movl	d+388(%rip), %r14d
	movl	$36, %edi
	movl	$d+392, %esi
	callq	LAMP_load4
	movl	d+392(%rip), %r15d
	movl	$37, %edi
	movl	$d+396, %esi
	callq	LAMP_load4
	movl	d+396(%rip), %ebx
	movl	$38, %edi
	callq	LAMP_register
	movl	$.L.str, %edi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp10:
	.size	main, .Ltmp10-main
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
