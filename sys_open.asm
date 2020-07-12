BITS 64

global _main

section .rodata
	path db 'flags.txt'

section .text

_main:
	mov rax, 2
	mov rdi, path
	mov rsi, 00
	mov rdx, 0
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
