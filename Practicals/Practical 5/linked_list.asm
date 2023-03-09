.data
.text

.globl LL_PUSH_FRONT
.globl LL_COUNT
.globl LL_SEARCH
.globl LL_INDEX
.globl LL_GREATER_OR_EQUAL
.globl LL_REVERSE


# -----------------------------------------------------------------------------
# Push a integer to the front of the given linked list.
# Allocates memory for the linked list node on the heap.
#
# Pre:
# 	- $a0 contains the address of the start of the linked list
# 	- $a1 contains the integer to add to the node
# Post:
# 	- $a0 contains the new address of the start of the linked list
# -----------------------------------------------------------------------------
LL_PUSH_FRONT:
	# -- START SOLUTION --
	mv t0, a0
	
	li a7, 9
	li a0, 8
	ecall
	
	sw a1, 0(a0)
	sw t0, 4(a0)
	# -- END SOLUTION --
	jr ra, 0


# -----------------------------------------------------------------------------
# Return the length of the given linked list.
# The length of the linked list is the number of nodes it contains.
# A list with only the sentinel node has length 0.
#
# Pre:
# 	- $a0 contains the address of the head of the linked list
# Post:
# 	- $a0 contains the length of the linked list
# -----------------------------------------------------------------------------
LL_COUNT:
	# -- START SOLUTION --
	mv t0, a0
	li t1, 0
	
	COUNT_LOOP:
	lb t3, 0(t0)
	beq t3, zero, COUNT_LOOP_END
	lw t0, 4(t0)
	addi t1, t1, 1
	j COUNT_LOOP
	
	COUNT_LOOP_END:
	mv a0, t1
	# -- END SOLUTION --
	jr ra, 0


# -----------------------------------------------------------------------------
# Return the lowest index of the given integer in the list.
# Return -1 if the integer is not found.
#
# Pre:
# 	- $a0 contains the address of the head of the linked list
# 	- $a1 contains the integer to search for in the list
# Post:
# 	- $a0 contains the lowest index of the integer if found, -1 otherwise
# -----------------------------------------------------------------------------
LL_SEARCH:
	# -- START SOLUTION --
	mv t0, a0
	li t1, 0
		
	LOOP_SEARCH:
	lb t3, 0(t0)
	beq t3, a1, LOOP_SEARCH_END
	beq t3, zero, NOT_FOUND
	lw t0, 4(t0)
	addi t1, t1, 1
	j LOOP_SEARCH
	
	NOT_FOUND:
	li a0, -1
	j SEARCH_END
	
	LOOP_SEARCH_END:
	mv a0, t1
	
	SEARCH_END:
	# -- END SOLUTION --
	jr ra, 0


# -----------------------------------------------------------------------------
# Return the integer at the given index in the list, and an integer indicating
# success/failure.
# 
# The first integer is at index 0, second integer at index 1, and so forth.
# The index is invalid if it is greater or equal to the length of the list.
#
# Pre:
# 	- $a0 contains the address of the start of the linked list
# 	- $a1 contains the index of the list to retrieve
# 	- The index given is greater or equal to 0
# Post:
# 	- $a0 contains the integer at the given index if it is valid
# 	- $a1 contains 0 on success, or -1 on failure (if the index is invalid)
# -----------------------------------------------------------------------------
LL_INDEX:
	# -- START SOLUTION --
	mv t0, a0
	li t1, 0
	
	LOOP_INDEX:
	lb t3, 0(t0)
	beq t3, zero, INDEX_NOT_FOUND
	beq t1, a1, INDEX_FOUND
	lw t0, 4(t0)
	addi t1, t1, 1
	j LOOP_INDEX
	
	INDEX_NOT_FOUND:
	li a0, 0
	li a1, -1
	j INDEX_END
	
	INDEX_FOUND:
	mv a0, t3
	li a1, 0
	
	INDEX_END:
	# -- END SOLUTION --
	jr ra, 0


# -----------------------------------------------------------------------------
# Return a heap-allocated array of all integers in the given linked list that
# are greater or equal to the given lower bound.
#
# If none of the integers in the linked list are greater or equal to the lower
# bound, return 0 for both the result array and its length.
# 
# Example 1:
# 	- (argument) Linked list: 1->5->3->7->4->9
# 	- (argument) Lower bound: 4
# 	- Values in result array on heap: 5, 7, 4, 9
# 	- (return value) Array pointer: 0x100040
# 	- (return value) Array length: 4
#
# Example 2:
# 	- (argument) Linked list: 1->5->3->7->4->9
# 	- (argument) Lower bound: 100
# 	- (return value) Array pointer: 0
# 	- (return value) Array length: 0
#
# Pre:
# 	- $a0 contains the address of the head of the linked list
# 	- $a1 contains the lower bound of the integers to retrieve
# Post:
# 	- $a0 contains the address of the heap-allocated result array
# 	- $a1 contains the length of the result array
# -----------------------------------------------------------------------------
LL_GREATER_OR_EQUAL:
	# -- START SOLUTION --
	mv t0, a0
	li t1, 0
	
	addi sp, sp -128
	sw s0, 128(sp)
	addi s0, sp, 128
	
	
	# -- END SOLUTION --
	jr ra, 0


# -----------------------------------------------------------------------------
# Reverse the given linked list in-place, then return the new head of the
# linked list.
#
# Pre:
# 	- $a0 contains the address of the head of the linked list
#       - $a1 contains the address of sentinel value of the linked list
# Post:
# 	- $a0 contains the new address of the head of the linked list
# -----------------------------------------------------------------------------
LL_REVERSE:
	# -- START SOLUTION --
	mv t0, a0
	mv t1, a1
	
	LOOP_REVERSE:
	
	ble t0, t1, LOOP_REVERSE_END
	j LOOP_REVERSE
	
	LOOP_REVERSE_END:
	mv a0, t1
	# -- END SOLUTION --
	jr ra, 0
