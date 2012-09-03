	.file	"parser.cpp"
	.text
	.align 2
.globl _Z22libmpq_conf_parse_linePcS_S_i
	.type	_Z22libmpq_conf_parse_linePcS_S_i, @function
_Z22libmpq_conf_parse_linePcS_S_i:
.LFB3:
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$36, %esp
.LCFI3:
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L2
.L3:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%eax
	movl	%eax, (%esp)
	call	isspace
	testl	%eax, %eax
	jne	.L4
	cmpl	$1, -20(%ebp)
	jne	.L4
	movl	$1, -16(%ebp)
	jmp	.L7
.L4:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L2
	cmpl	$0, -20(%ebp)
	jne	.L2
	movl	$1, -20(%ebp)
.L2:
	addl	$1, 8(%ebp)
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L3
.L7:
	movl	$0, -12(%ebp)
	jmp	.L10
.L11:
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L12
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L14
.L12:
	addl	$1, -12(%ebp)
.L10:
	movl	-12(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	cmpl	%eax, %ebx
	jb	.L11
.L14:
	cmpl	$0, -8(%ebp)
	je	.L15
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L17
.L18:
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L19
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	je	.L19
	movl	8(%ebp), %edx
	addl	$1, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	jmp	.L15
.L19:
	subl	$1, -12(%ebp)
.L17:
	cmpl	$0, -12(%ebp)
	jns	.L18
.L15:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, -12(%ebp)
	jmp	.L22
.L23:
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L24
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	je	.L24
	movl	8(%ebp), %edx
	addl	$1, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	jmp	.L27
.L24:
	subl	$1, -12(%ebp)
.L22:
	cmpl	$0, -12(%ebp)
	jns	.L23
.L27:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, -12(%ebp)
	jmp	.L28
.L29:
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$34, %al
	jne	.L30
	movl	8(%ebp), %edx
	addl	$1, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	jmp	.L32
.L30:
	subl	$1, -12(%ebp)
.L28:
	cmpl	$0, -12(%ebp)
	jns	.L29
.L32:
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy
	movl	-16(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE3:
	.size	_Z22libmpq_conf_parse_linePcS_S_i, .-_Z22libmpq_conf_parse_linePcS_S_i
.globl __gxx_personality_v0
	.align 2
.globl _Z23libmpq_conf_delete_charPcS_
	.type	_Z23libmpq_conf_delete_charPcS_, @function
_Z23libmpq_conf_delete_charPcS_:
.LFB2:
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$40, %esp
.LCFI6:
	movl	8(%ebp), %eax
	movl	%eax, _ZZ23libmpq_conf_delete_charPcS_E4temp
	jmp	.L35
.L36:
	movl	_ZZ23libmpq_conf_delete_charPcS_E4temp, %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	movl	_ZZ23libmpq_conf_delete_charPcS_E4temp, %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, %ecx
	movl	_ZZ23libmpq_conf_delete_charPcS_E4temp, %eax
	addl	$1, %eax
	movl	_ZZ23libmpq_conf_delete_charPcS_E4temp, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	memmove
	cmpb	$92, -1(%ebp)
	jne	.L35
	movl	_ZZ23libmpq_conf_delete_charPcS_E4temp, %eax
	addl	$1, %eax
	movl	%eax, _ZZ23libmpq_conf_delete_charPcS_E4temp
.L35:
	movl	_ZZ23libmpq_conf_delete_charPcS_E4temp, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strpbrk
	movl	%eax, _ZZ23libmpq_conf_delete_charPcS_E4temp
	movl	_ZZ23libmpq_conf_delete_charPcS_E4temp, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	.L36
	movl	8(%ebp), %eax
	leave
	ret
.LFE2:
	.size	_Z23libmpq_conf_delete_charPcS_, .-_Z23libmpq_conf_delete_charPcS_
	.section	.rodata
.LC0:
	.string	"MPQ_BUFFER = "
.LC1:
	.string	"MPQ_BUFFER"
.LC2:
	.string	"\"\\"
	.text
	.align 2
.globl _Z21libmpq_conf_get_arrayP8_IO_FILEPcPPS1_Pi
	.type	_Z21libmpq_conf_get_arrayP8_IO_FILEPcPPS1_Pi, @function
_Z21libmpq_conf_get_arrayP8_IO_FILEPcPPS1_Pi:
.LFB5:
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$8244, %esp
.LCFI10:
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	movl	$2048, (%esp)
	call	malloc
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, -24(%ebp)
	movl	$512, -20(%ebp)
	jmp	.L41
.L42:
	leal	-4132(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	subl	$1, %eax
	movb	$0, -4132(%ebp,%eax)
	leal	-4132(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L43
.L44:
	addl	$1, -8(%ebp)
.L43:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%eax
	movl	%eax, (%esp)
	call	isspace
	testl	%eax, %eax
	jne	.L44
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L41
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	je	.L41
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$41, %al
	jne	.L48
	movl	$1, -28(%ebp)
	jmp	.L50
.L48:
	cmpl	$1, -32(%ebp)
	jne	.L51
	cmpl	$0, -28(%ebp)
	jne	.L51
	movl	$4096, 8(%esp)
	movl	$.LC0, 4(%esp)
	leal	-8228(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy
	movl	$4096, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-8228(%ebp), %eax
	movl	%eax, (%esp)
	call	strncat
	movl	$4096, 12(%esp)
	leal	-8228(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC1, 4(%esp)
	leal	-8228(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z22libmpq_conf_parse_linePcS_S_i
	movl	%eax, -16(%ebp)
	cmpl	$1, -16(%ebp)
	jne	.L51
	movl	$.LC2, 4(%esp)
	leal	-8228(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z23libmpq_conf_delete_charPcS_
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ebx
	leal	-8228(%ebp), %eax
	movl	%eax, (%esp)
	call	strdup
	movl	%eax, (%ebx)
	addl	$1, -24(%ebp)
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L55
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	$2048, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	addl	$512, -20(%ebp)
.L55:
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
.L51:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	jne	.L41
	jmp	.L58
.L59:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$40, %al
	jne	.L60
	cmpl	$1, -36(%ebp)
	jne	.L60
	movl	$1, -32(%ebp)
	jmp	.L41
.L60:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L58
	cmpl	$0, -36(%ebp)
	jne	.L58
	movl	$1, -36(%ebp)
.L58:
	addl	$1, -8(%ebp)
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L59
.L41:
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4096, 4(%esp)
	leal	-4132(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	.L42
.L50:
	movl	8(%ebp), %eax
	movl	$0, 12(%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	lseek64
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	movl	-16(%ebp), %eax
	addl	$8244, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	_Z21libmpq_conf_get_arrayP8_IO_FILEPcPPS1_Pi, .-_Z21libmpq_conf_get_arrayP8_IO_FILEPcPPS1_Pi
	.section	.rodata
.LC3:
	.string	""
	.text
	.align 2
.globl _Z21libmpq_conf_get_valueP8_IO_FILEPcPvii
	.type	_Z21libmpq_conf_get_valueP8_IO_FILEPcPvii, @function
_Z21libmpq_conf_get_valueP8_IO_FILEPcPvii:
.LFB4:
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$4132, %esp
.LCFI14:
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L67
.L68:
	leal	-4112(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	subl	$1, %eax
	movb	$0, -4112(%ebp,%eax)
	leal	-4112(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L69
.L70:
	addl	$1, -8(%ebp)
.L69:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%eax
	movl	%eax, (%esp)
	call	isspace
	testl	%eax, %eax
	jne	.L70
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L67
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	je	.L67
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	jne	.L67
	movl	$4096, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z22libmpq_conf_parse_linePcS_S_i
	movl	%eax, -16(%ebp)
	cmpl	$1, -16(%ebp)
	jne	.L67
	movl	$.LC2, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z23libmpq_conf_delete_charPcS_
	movl	20(%ebp), %eax
	cmpl	$2, %eax
	je	.L77
	jmp	.L76
.L77:
	movl	16(%ebp), %ebx
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	%eax, (%ebx)
	jmp	.L79
.L76:
	movl	24(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncpy
	jmp	.L79
.L67:
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4096, 4(%esp)
	leal	-4112(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	.L68
.L79:
	cmpl	$0, -16(%ebp)
	jne	.L80
	movl	20(%ebp), %eax
	cmpl	$2, %eax
	je	.L83
	jmp	.L82
.L83:
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	$-2, -12(%ebp)
	jmp	.L80
.L82:
	movl	24(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	$.LC3, 4(%esp)
	movl	%edx, (%esp)
	call	strncpy
	movl	$-2, -12(%ebp)
.L80:
	movl	8(%ebp), %eax
	movl	$0, 12(%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	lseek64
	movl	-12(%ebp), %eax
	addl	$4132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE4:
	.size	_Z21libmpq_conf_get_valueP8_IO_FILEPcPvii, .-_Z21libmpq_conf_get_valueP8_IO_FILEPcPvii
	.local	_ZZ23libmpq_conf_delete_charPcS_E4temp
	.comm	_ZZ23libmpq_conf_delete_charPcS_E4temp,4,4
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	"zP"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.uleb128 0x5
	.byte	0x0
	.long	__gxx_personality_v0
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE1:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI7-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI11-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE7:
	.ident	"GCC: (GNU) 4.2.3 (Debian 4.2.3-3)"
	.section	.note.GNU-stack,"",@progbits
