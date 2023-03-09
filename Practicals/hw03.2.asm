.data

A_IN:
	.space 40
A_OUT:
	.space 40
PROMPT:
	.asciz "Enter an integer: "

.text
main:
	la t1, A_IN
	la t2, A_OUT
	li t3, 0
	li t4, 10
	li t5, 10
	li t6, 0
LOOP1:
	addi t3, t3, 1
	la a0, PROMPT
	li a7, 4
	ecall
	li a7, 5
	ecall
	sw a0, (t1)
	
	beq t3, t4, LOOP2
	addi t1, t1, 4
	j LOOP1
LOOP2:
	addi t6, t6, 1
	lw s1, (t1)
	sw s1, (t2)
	addi t1, t1, -4
	addi t2, t2, 4
	
	beq t5, t6, END
	j LOOP2
END:
	