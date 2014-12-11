	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$32, %rsp
Ltmp2:
	movw	$0, %ax
	movzwl	%ax, %eax
	movl	%eax, %edi
	callq	_umask
	movabsq	$208, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, %rcx
	movq	_temp3@GOTPCREL(%rip), %rdx
	movq	%rcx, (%rdx)
	movl	$2, %ecx
	xorb	%dl, %dl
	leaq	L_.str(%rip), %rdi
	movl	%ecx, %esi
	movb	%dl, %al
	callq	_open
	movl	%eax, %ecx
	movq	_fd@GOTPCREL(%rip), %rdx
	movl	%ecx, (%rdx)
	movl	(%rdx), %ecx
	cmpl	$0, %ecx
	jge	LBB1_2
	movl	$514, %eax
	movl	$420, %ecx
	xorb	%dl, %dl
	leaq	L_.str(%rip), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	%dl, -17(%rbp)
	movl	%ecx, %edx
	movb	-17(%rbp), %al
	callq	_open
	movl	%eax, %ecx
	movq	_fd@GOTPCREL(%rip), %rdx
	movl	%ecx, (%rdx)
LBB1_2:
	movq	_fd@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movabsq	$0, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_lseek
	leaq	L_.str1(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
	jmp	LBB1_4
LBB1_3:
	movq	_temp3@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$64, %rdx
	addq	%rdx, %rcx
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_add_entry
	leaq	L_.str2(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
LBB1_4:
	movq	_temp3@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_fd@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movabsq	$208, %rdx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	_read
	cmpq	$0, %rax
	jne	LBB1_3
	xorb	%al, %al
	leaq	L_.str3(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	xorb	%cl, %cl
	leaq	L_.str4(%rip), %rdx
	movq	_temp@GOTPCREL(%rip), %rsi
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_scanf
	xorb	%cl, %cl
	leaq	L_.str5(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	xorb	%cl, %cl
	leaq	L_.str4(%rip), %rdx
	movq	_temp2@GOTPCREL(%rip), %rsi
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_scanf
	movq	_temp@GOTPCREL(%rip), %rax
	leaq	(%rax), %rax
	movq	_temp2@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_add_entry
	xorb	%cl, %cl
	leaq	L_.str6(%rip), %rdx
	movq	%rdx, %rdi
	movb	%cl, %al
	callq	_printf
	xorb	%cl, %cl
	movb	%cl, %al
	callq	_print_book
	movq	_fd@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movabsq	$0, %rcx
	movl	$0, %esi
	movl	%eax, %edi
	movl	%esi, -24(%rbp)
	movq	%rcx, %rsi
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	callq	_lseek
	movq	_m@GOTPCREL(%rip), %rax
	movq	_book@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movq	%rcx, (%rax)
	jmp	LBB1_10
LBB1_6:
	movq	_m@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB1_8
LBB1_7:
	movq	_fd@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movabsq	$208, %rdx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	_write
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -16(%rbp)
LBB1_8:
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB1_7
	movq	_m@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$8, %rdx
	addq	%rdx, %rcx
	movq	%rcx, (%rax)
LBB1_10:
	movq	_m@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_book@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movabsq	$200, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jb	LBB1_6
	leaq	L_.str7(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
	movq	_fd@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	callq	_close
	movl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_clear_book
	.align	4, 0x90
_clear_book:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	subq	$16, %rsp
Ltmp5:
	movl	$0, -4(%rbp)
	jmp	LBB2_2
LBB2_1:
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	_book@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movabsq	$8, %rsi
	imulq	%rsi, %rcx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, %rdi
	movl	%eax, -8(%rbp)
	movq	%rdx, -16(%rbp)
	callq	_free_list
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
LBB2_2:
	movl	-4(%rbp), %eax
	cmpl	$25, %eax
	jle	LBB2_1
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end2:

	.globl	_delete_name
	.align	4, 0x90
_delete_name:
Leh_func_begin3:
	pushq	%rbp
Ltmp6:
	movq	%rsp, %rbp
Ltmp7:
	subq	$48, %rsp
Ltmp8:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	movsbl	%al, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	callq	_get_letter
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	_book@GOTPCREL(%rip), %rsi
	leaq	(%rsi), %rsi
	movabsq	$8, %rdi
	imulq	%rdi, %rdx
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	(%rdi), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rdi
	movq	-24(%rbp), %rdx
	movq	%rsi, -32(%rbp)
	movq	%rdx, %rsi
	movl	%ecx, -36(%rbp)
	callq	_remove_name
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end3:

	.globl	_search_entry
	.align	4, 0x90
_search_entry:
Leh_func_begin4:
	pushq	%rbp
Ltmp9:
	movq	%rsp, %rbp
Ltmp10:
	subq	$32, %rsp
Ltmp11:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	movsbl	%al, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	callq	_get_letter
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	_book@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movabsq	$8, %rsi
	imulq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	_find_name
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB4_2
	leaq	L_.str8(%rip), %rax
	movq	%rax, %rdi
	callq	_puts
	jmp	LBB4_3
LBB4_2:
	movq	-16(%rbp), %rax
	movabsq	$64, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str9(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movb	%dl, -21(%rbp)
	movq	%rax, %rdx
	movb	-21(%rbp), %al
	callq	_printf
LBB4_3:
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end4:

	.globl	_add_entry
	.align	4, 0x90
_add_entry:
Leh_func_begin5:
	pushq	%rbp
Ltmp12:
	movq	%rsp, %rbp
Ltmp13:
	subq	$48, %rsp
Ltmp14:
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	movsbl	%al, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	callq	_get_letter
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	_book@GOTPCREL(%rip), %rsi
	leaq	(%rsi), %rsi
	movabsq	$8, %rdi
	imulq	%rdi, %rdx
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	(%rdi), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rdi, -32(%rbp)
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx
	movq	%rsi, -40(%rbp)
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%ecx, -44(%rbp)
	callq	_insert_order
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movabsq	$8, %rdx
	imulq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end5:

	.globl	_print_letter
	.align	4, 0x90
_print_letter:
Leh_func_begin6:
	pushq	%rbp
Ltmp15:
	movq	%rsp, %rbp
Ltmp16:
	subq	$16, %rsp
Ltmp17:
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movb	-1(%rbp), %al
	movsbl	%al, %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	callq	_get_letter
	movl	%eax, %ecx
	movl	%ecx, -8(%rbp)
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	_book@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movabsq	$8, %rsi
	imulq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, %rdi
	callq	_print_list
	movl	$10, %eax
	movl	%eax, %edi
	callq	_putchar
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end6:

	.globl	_print_book
	.align	4, 0x90
_print_book:
Leh_func_begin7:
	pushq	%rbp
Ltmp18:
	movq	%rsp, %rbp
Ltmp19:
	subq	$16, %rsp
Ltmp20:
	movl	$10, %eax
	movl	%eax, %edi
	callq	_putchar
	movq	_book@GOTPCREL(%rip), %rax
	leaq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB7_2
LBB7_1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	_print_list
	movq	-8(%rbp), %rax
	movabsq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
LBB7_2:
	movq	-8(%rbp), %rax
	movq	_book@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movabsq	$200, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	LBB7_1
	movl	$10, %eax
	movl	%eax, %edi
	callq	_putchar
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end7:

	.globl	_insert_order
	.align	4, 0x90
_insert_order:
Leh_func_begin8:
	pushq	%rbp
Ltmp21:
	movq	%rsp, %rbp
Ltmp22:
	subq	$80, %rsp
Ltmp23:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movabsq	$208, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB8_2
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_insert_front
	movq	%rax, -56(%rbp)
	jmp	LBB8_13
LBB8_2:
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB8_4
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___strcpy_chk
	movq	%rax, -48(%rbp)
	jmp	LBB8_5
LBB8_4:
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___inline_strcpy_chk
	movq	%rax, -48(%rbp)
LBB8_5:
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB8_7
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	movq	-64(%rbp), %rcx
	movabsq	$64, %rdx
	addq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___strcpy_chk
	movq	%rax, -40(%rbp)
	jmp	LBB8_8
LBB8_7:
	movq	-64(%rbp), %rax
	movabsq	$64, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___inline_strcpy_chk
	movq	%rax, -40(%rbp)
LBB8_8:
	movq	-16(%rbp), %rax
	movb	(%rax), %al
	movq	-64(%rbp), %rcx
	movb	%al, 192(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	LBB8_11
LBB8_9:
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_strcmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	LBB8_12
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -8(%rbp)
LBB8_11:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	$0, %rax
	jne	LBB8_9
LBB8_12:
	movq	-80(%rbp), %rax
	movq	200(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 200(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
LBB8_13:
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
Leh_func_end8:

	.align	4, 0x90
___inline_strcpy_chk:
Leh_func_begin9:
	pushq	%rbp
Ltmp24:
	movq	%rsp, %rbp
Ltmp25:
	subq	$32, %rsp
Ltmp26:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-1, %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___strcpy_chk
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end9:

	.globl	_remove_name
	.align	4, 0x90
_remove_name:
Leh_func_begin10:
	pushq	%rbp
Ltmp27:
	movq	%rsp, %rbp
Ltmp28:
	subq	$48, %rsp
Ltmp29:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_find_name
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB10_2
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB10_8
LBB10_2:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB10_4
	movq	$0, -32(%rbp)
	jmp	LBB10_8
LBB10_4:
	jmp	LBB10_6
LBB10_5:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -8(%rbp)
LBB10_6:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB10_5
	movq	-40(%rbp), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB10_8:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end10:

	.globl	_free_list
	.align	4, 0x90
_free_list:
Leh_func_begin11:
	pushq	%rbp
Ltmp30:
	movq	%rsp, %rbp
Ltmp31:
	subq	$32, %rsp
Ltmp32:
	movq	%rdi, -8(%rbp)
	jmp	LBB11_2
LBB11_1:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
LBB11_2:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB11_1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end11:

	.globl	_find_name
	.align	4, 0x90
_find_name:
Leh_func_begin12:
	pushq	%rbp
Ltmp33:
	movq	%rsp, %rbp
Ltmp34:
	subq	$32, %rsp
Ltmp35:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	LBB12_4
LBB12_1:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_strcmp
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	LBB12_3
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB12_6
LBB12_3:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -8(%rbp)
LBB12_4:
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB12_1
	movq	$0, -32(%rbp)
LBB12_6:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end12:

	.globl	_insert_front
	.align	4, 0x90
_insert_front:
Leh_func_begin13:
	pushq	%rbp
Ltmp36:
	movq	%rsp, %rbp
Ltmp37:
	subq	$64, %rsp
Ltmp38:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movabsq	$208, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB13_2
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___strcpy_chk
	movq	%rax, -56(%rbp)
	jmp	LBB13_3
LBB13_2:
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___inline_strcpy_chk
	movq	%rax, -56(%rbp)
LBB13_3:
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	cmpq	$-1, %rax
	je	LBB13_5
	movq	-64(%rbp), %rax
	movabsq	$-1, %rax
	movq	-64(%rbp), %rcx
	movabsq	$64, %rdx
	addq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	___strcpy_chk
	movq	%rax, -48(%rbp)
	jmp	LBB13_6
LBB13_5:
	movq	-64(%rbp), %rax
	movabsq	$64, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___inline_strcpy_chk
	movq	%rax, -48(%rbp)
LBB13_6:
	movq	-16(%rbp), %rax
	movb	(%rax), %al
	movq	-64(%rbp), %rcx
	movb	%al, 192(%rcx)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 200(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
Leh_func_end13:

	.globl	_print_list
	.align	4, 0x90
_print_list:
Leh_func_begin14:
	pushq	%rbp
Ltmp39:
	movq	%rsp, %rbp
Ltmp40:
	subq	$32, %rsp
Ltmp41:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB14_2
LBB14_1:
	movq	-16(%rbp), %rax
	movabsq	$64, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str10(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movb	%dl, -17(%rbp)
	movq	%rax, %rdx
	movb	-17(%rbp), %al
	callq	_printf
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -16(%rbp)
LBB14_2:
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB14_1
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end14:

	.globl	_get_letter
	.align	4, 0x90
_get_letter:
Leh_func_begin15:
	pushq	%rbp
Ltmp42:
	movq	%rsp, %rbp
Ltmp43:
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movb	-1(%rbp), %al
	cmpb	$96, %al
	jle	LBB15_2
	movb	-1(%rbp), %al
	movsbl	%al, %eax
	subl	$97, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB15_3
LBB15_2:
	movb	-1(%rbp), %al
	movsbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -12(%rbp)
LBB15_3:
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end15:

	.comm	_temp3,8,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "data"

	.comm	_fd,4,2
L_.str1:
	.asciz	 "opened data..."

L_.str2:
	.asciz	 "loaded entry..."

L_.str3:
	.asciz	 "Please enter a name: "

L_.str4:
	.asciz	 "%s"

	.comm	_temp,256,5
L_.str5:
	.asciz	 "Please enter email: "

	.comm	_temp2,256,5
L_.str6:
	.asciz	 "\n**COMPLETE BOOK**"

	.comm	_m,8,3
	.comm	_book,208,5
L_.str7:
	.asciz	 "saved entry...\n"

L_.str8:
	.asciz	 "No entry found"

L_.str9:
	.asciz	 "%s: %s\n\n"

L_.str10:
	.asciz	 "%s: %s\n"

	.comm	_b,4,2
	.comm	_i,4,2
	.comm	_j,4,2
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_main.eh
_main.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp44:
	.quad	Leh_func_begin1-Ltmp44
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

	.globl	_clear_book.eh
_clear_book.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp45:
	.quad	Leh_func_begin2-Ltmp45
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp3-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp4-Ltmp3
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	_delete_name.eh
_delete_name.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp46:
	.quad	Leh_func_begin3-Ltmp46
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp6-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp7-Ltmp6
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	_search_entry.eh
_search_entry.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp47:
	.quad	Leh_func_begin4-Ltmp47
Lset18 = Leh_func_end4-Leh_func_begin4
	.quad	Lset18
	.byte	0
	.byte	4
Lset19 = Ltmp9-Leh_func_begin4
	.long	Lset19
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset20 = Ltmp10-Ltmp9
	.long	Lset20
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

	.globl	_add_entry.eh
_add_entry.eh:
Lset21 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset21
Leh_frame_begin5:
Lset22 = Leh_frame_begin5-Leh_frame_common
	.long	Lset22
Ltmp48:
	.quad	Leh_func_begin5-Ltmp48
Lset23 = Leh_func_end5-Leh_func_begin5
	.quad	Lset23
	.byte	0
	.byte	4
Lset24 = Ltmp12-Leh_func_begin5
	.long	Lset24
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset25 = Ltmp13-Ltmp12
	.long	Lset25
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

	.globl	_print_letter.eh
_print_letter.eh:
Lset26 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset26
Leh_frame_begin6:
Lset27 = Leh_frame_begin6-Leh_frame_common
	.long	Lset27
Ltmp49:
	.quad	Leh_func_begin6-Ltmp49
Lset28 = Leh_func_end6-Leh_func_begin6
	.quad	Lset28
	.byte	0
	.byte	4
Lset29 = Ltmp15-Leh_func_begin6
	.long	Lset29
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset30 = Ltmp16-Ltmp15
	.long	Lset30
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:

	.globl	_print_book.eh
_print_book.eh:
Lset31 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset31
Leh_frame_begin7:
Lset32 = Leh_frame_begin7-Leh_frame_common
	.long	Lset32
Ltmp50:
	.quad	Leh_func_begin7-Ltmp50
Lset33 = Leh_func_end7-Leh_func_begin7
	.quad	Lset33
	.byte	0
	.byte	4
Lset34 = Ltmp18-Leh_func_begin7
	.long	Lset34
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset35 = Ltmp19-Ltmp18
	.long	Lset35
	.byte	13
	.byte	6
	.align	3
Leh_frame_end7:

	.globl	_insert_order.eh
_insert_order.eh:
Lset36 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset36
Leh_frame_begin8:
Lset37 = Leh_frame_begin8-Leh_frame_common
	.long	Lset37
Ltmp51:
	.quad	Leh_func_begin8-Ltmp51
Lset38 = Leh_func_end8-Leh_func_begin8
	.quad	Lset38
	.byte	0
	.byte	4
Lset39 = Ltmp21-Leh_func_begin8
	.long	Lset39
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset40 = Ltmp22-Ltmp21
	.long	Lset40
	.byte	13
	.byte	6
	.align	3
Leh_frame_end8:

___inline_strcpy_chk.eh:
Lset41 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset41
Leh_frame_begin9:
Lset42 = Leh_frame_begin9-Leh_frame_common
	.long	Lset42
Ltmp52:
	.quad	Leh_func_begin9-Ltmp52
Lset43 = Leh_func_end9-Leh_func_begin9
	.quad	Lset43
	.byte	0
	.byte	4
Lset44 = Ltmp24-Leh_func_begin9
	.long	Lset44
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset45 = Ltmp25-Ltmp24
	.long	Lset45
	.byte	13
	.byte	6
	.align	3
Leh_frame_end9:

	.globl	_remove_name.eh
_remove_name.eh:
Lset46 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset46
Leh_frame_begin10:
Lset47 = Leh_frame_begin10-Leh_frame_common
	.long	Lset47
Ltmp53:
	.quad	Leh_func_begin10-Ltmp53
Lset48 = Leh_func_end10-Leh_func_begin10
	.quad	Lset48
	.byte	0
	.byte	4
Lset49 = Ltmp27-Leh_func_begin10
	.long	Lset49
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset50 = Ltmp28-Ltmp27
	.long	Lset50
	.byte	13
	.byte	6
	.align	3
Leh_frame_end10:

	.globl	_free_list.eh
_free_list.eh:
Lset51 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset51
Leh_frame_begin11:
Lset52 = Leh_frame_begin11-Leh_frame_common
	.long	Lset52
Ltmp54:
	.quad	Leh_func_begin11-Ltmp54
Lset53 = Leh_func_end11-Leh_func_begin11
	.quad	Lset53
	.byte	0
	.byte	4
Lset54 = Ltmp30-Leh_func_begin11
	.long	Lset54
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset55 = Ltmp31-Ltmp30
	.long	Lset55
	.byte	13
	.byte	6
	.align	3
Leh_frame_end11:

	.globl	_find_name.eh
_find_name.eh:
Lset56 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset56
Leh_frame_begin12:
Lset57 = Leh_frame_begin12-Leh_frame_common
	.long	Lset57
Ltmp55:
	.quad	Leh_func_begin12-Ltmp55
Lset58 = Leh_func_end12-Leh_func_begin12
	.quad	Lset58
	.byte	0
	.byte	4
Lset59 = Ltmp33-Leh_func_begin12
	.long	Lset59
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset60 = Ltmp34-Ltmp33
	.long	Lset60
	.byte	13
	.byte	6
	.align	3
Leh_frame_end12:

	.globl	_insert_front.eh
_insert_front.eh:
Lset61 = Leh_frame_end13-Leh_frame_begin13
	.long	Lset61
Leh_frame_begin13:
Lset62 = Leh_frame_begin13-Leh_frame_common
	.long	Lset62
Ltmp56:
	.quad	Leh_func_begin13-Ltmp56
Lset63 = Leh_func_end13-Leh_func_begin13
	.quad	Lset63
	.byte	0
	.byte	4
Lset64 = Ltmp36-Leh_func_begin13
	.long	Lset64
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset65 = Ltmp37-Ltmp36
	.long	Lset65
	.byte	13
	.byte	6
	.align	3
Leh_frame_end13:

	.globl	_print_list.eh
_print_list.eh:
Lset66 = Leh_frame_end14-Leh_frame_begin14
	.long	Lset66
Leh_frame_begin14:
Lset67 = Leh_frame_begin14-Leh_frame_common
	.long	Lset67
Ltmp57:
	.quad	Leh_func_begin14-Ltmp57
Lset68 = Leh_func_end14-Leh_func_begin14
	.quad	Lset68
	.byte	0
	.byte	4
Lset69 = Ltmp39-Leh_func_begin14
	.long	Lset69
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset70 = Ltmp40-Ltmp39
	.long	Lset70
	.byte	13
	.byte	6
	.align	3
Leh_frame_end14:

	.globl	_get_letter.eh
_get_letter.eh:
Lset71 = Leh_frame_end15-Leh_frame_begin15
	.long	Lset71
Leh_frame_begin15:
Lset72 = Leh_frame_begin15-Leh_frame_common
	.long	Lset72
Ltmp58:
	.quad	Leh_func_begin15-Ltmp58
Lset73 = Leh_func_end15-Leh_func_begin15
	.quad	Lset73
	.byte	0
	.byte	4
Lset74 = Ltmp42-Leh_func_begin15
	.long	Lset74
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset75 = Ltmp43-Ltmp42
	.long	Lset75
	.byte	13
	.byte	6
	.align	3
Leh_frame_end15:


.subsections_via_symbols
