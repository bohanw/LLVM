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
	subq	$4032, %rsp             # imm = 0xFC0
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movl	$22, %edi
	movl	$3, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	LAMP_init
	leaq	-36(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -36(%rbp)
	leaq	-4052(%rbp), %r14
	movl	$1, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -4052(%rbp)
	movl	$24, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$3, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-4052(%rbp), %rbx
	leaq	-4048(%rbp,%rbx,4), %rsi
	movl	$4, %edi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -4048(%rbp,%rbx,4)
	movl	$5, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-4052(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$6, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -4052(%rbp)
	callq	LAMP_loop_iteration_end
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$2, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$999, -4052(%rbp)       # imm = 0x3E7
	jle	.LBB0_2
# BB#3:                                 # %for.end
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-4056(%rbp), %r14
	movl	$7, %edi
	movq	%r14, %rsi
	movl	$100, %edx
	callq	LAMP_store4
	movl	$100, -4056(%rbp)
	movl	$23, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                # %for.body3
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$9, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-4056(%rbp), %r12
	leaq	-4048(%rbp,%r12,4), %r15
	movl	$10, %edi
	movq	%r15, %rsi
	callq	LAMP_load4
	movl	-4048(%rbp,%r12,4), %eax
	addl	$10, %eax
	movslq	%eax, %rbx
	movl	$11, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -4048(%rbp,%r12,4)
	movl	$12, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-4056(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$13, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -4056(%rbp)
	callq	LAMP_loop_iteration_end
.LBB0_4:                                # %for.cond1
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$8, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$999, -4056(%rbp)       # imm = 0x3E7
	jle	.LBB0_5
# BB#6:                                 # %for.end8
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	leaq	-4052(%rbp), %r14
	movl	$14, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	LAMP_store4
	movl	$0, -4052(%rbp)
	movl	$22, %edi
	callq	LAMP_loop_invocation
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_8:                                # %for.body11
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$16, %edi
	movl	$stdout, %esi
	callq	LAMP_load8
	movq	stdout(%rip), %r15
	movl	$17, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movslq	-4052(%rbp), %rbx
	leaq	-4048(%rbp,%rbx,4), %rsi
	movl	$18, %edi
	callq	LAMP_load4
	movl	-4048(%rbp,%rbx,4), %ebx
	movl	$19, %edi
	callq	LAMP_register
	movq	%r15, %rdi
	movl	$.L.str, %esi
	movl	%ebx, %edx
	xorb	%al, %al
	callq	fprintf
	movl	$20, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	movl	-4052(%rbp), %eax
	incl	%eax
	movslq	%eax, %rbx
	movl	$21, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	LAMP_store4
	movl	%ebx, -4052(%rbp)
	callq	LAMP_loop_iteration_end
.LBB0_7:                                # %for.cond9
                                        # =>This Inner Loop Header: Depth=1
	callq	LAMP_loop_iteration_begin
	movl	$15, %edi
	movq	%r14, %rsi
	callq	LAMP_load4
	cmpl	$999, -4052(%rbp)       # imm = 0x3E7
	jle	.LBB0_8
# BB#9:                                 # %for.end16
	callq	LAMP_loop_iteration_end
	callq	LAMP_loop_exit
	movl	$1, %eax
	addq	$4032, %rsp             # imm = 0xFC0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp10:
	.size	main, .Ltmp10-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d\n"
	.size	.L.str, 4


	.section	".note.GNU-stack","",@progbits
