	.file	"next_pow2.c"
	.text
	.p2align 4
	.globl	next_pow2
	.type	next_pow2, @function
next_pow2:
.LFB23:
	.cfi_startproc
	endbr64
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.L1
	bsrl	%edi, %edi
	movl	$64, %ecx
	xorl	$31, %edi
	subl	%edi, %ecx
	sall	%cl, %eax
	cltq
.L1:
	ret
	.cfi_endproc
.LFE23:
	.size	next_pow2, .-next_pow2
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
