##	On my honor:
##
##	- I have not discussed the C language code in my program with
##	anyone other than my instructor or the teaching assistants
##	assigned to this course.
##
##	- I have not used C language code obtained from another student,
##	the Internet, or any other unauthorized source, either modified
##	or unmodified.
##
##	- If any C language code or documentation used in my program
##	was obtained from an authorized source, such as a text book or
##	course notes, that has been clearly noted with a proper citation
##	in the comments of my program.
##
##	- I have not designed this program in such a way as to defeat or
##	interfere with the normal operation of the grading code.
##
##	Renzo Neps
##	raneps


#############################################################	
#  This data block contains a 'digits' memory allocation
#  that you can use to store any strings that you convert
#  from integers.  Remember to either clear it after use or
#  null-terminate the strings that you save here!
#############################################################

.data
    digits:      .space     10


.text

.globl PROC_COUNT_FORMAT_SPECIFIERS
.globl PROC_CONVERT_INT_TO_STRING
.globl PROC_SPRINTF

.globl PROC_FIND_LENGTH_STRING
.globl PROC_FIND_NUM_DIGITS
.globl PROC_REVERSE_STRING
.globl PROC_CLEAR_DIGITS


	
#############################################################	
#  Given the address of a string, count the number of format 
#  specifiers that appear in that string
#
#  Pre:  $a0 contains the address of the string to evaluate
#  Post: $v0 contains the number of format specifiers that 
#          were found in the input string
#############################################################

PROC_COUNT_FORMAT_SPECIFIERS:	

	# add your solution here
	move $t0, $a0			# Put address into t0
	li $t1, 0			# Create a counter
	
	# Loop through the entire string
	LOOP_THROUGH_STRING:
	lb $t2, 0($t0)			# Load character into t1
	beq $t2, $zero, END_FORMAT	# Check to see if at end of string
	beq $t2, '%', ADD_COUNTER 	# Checj to see if its a %
	addi $t0, $t0, 1		# Add 1 to get the next character
	j LOOP_THROUGH_STRING
	
	# If a format specifier add 1
	ADD_COUNTER:
	addi $t1, $t1, 1		# Add 1 to counter
	addi $t0, $t0, 1		# Add 1 to get the next character
	j LOOP_THROUGH_STRING
	
	# End of the method
	END_FORMAT:
	move $v0, $t1			# Move the counter into v0
	jr $ra

#############################################################	
#  Given an integer, convert it into a string
#
#  Pre:  $a0 contains the integer that will be converted
#  Post: $v0 contains the address of the newly-created string
#############################################################

PROC_CONVERT_INT_TO_STRING:

	# add your solution here
	move $s0, $ra			# Save the return address from PROC_FIND_NUM_DIGITS to s0
	jal PROC_CLEAR_DIGITS
	jal PROC_FIND_NUM_DIGITS
	move $ra, $s0			# Put the original return address back into ra
	move $s1, $v0			# Move the number of digits to s1
	move $t0, $a0			# Put address into t0
	li $t1, 0			# Create counter
	la $t2, digits			# Create digits to hold the string digits
	li $t4, 10			# Load 10 into t4
	move $t3, $t0			# Load digit into t3
	
	# Loop through the digits
	LOOP:
	beq $t1, $s1, DONE		# Checks if t1 == s1
	div $t3, $t4			# Divide t3 by t4
	mflo $t3			# Put quotient into t5
	mfhi $t6			# Put remainder into t6
	addi $t6, $t6, 48		# Turn into string by adding 48
	sb $t6, ($t2)			# Store word into t2
	addi $t2, $t2, 1		# Move t2 to next digit
	addi $t0, $t0, 1		# Add 1 for the next digit
	addi $t1, $t1, 1		# Add 1 to the counter
	b LOOP
	
	# End of the method
	DONE:
	beq $s1, 1, SUB_ONE		# Check to see if the length of digits is 1
	move $s0, $ra			# Save the return address from PROC_REVERSE_STRING to s0
	la $a0, digits			# Get the address of the first digit
	move $a1, $t2			# Get the address of the last digit
	jal PROC_REVERSE_STRING
	move $ra, $s0			# Put the original return address back into ra

	li $t9, 5			# Load 5 into t9
	slt $t5, $s1, $t9		# Check to see if the digits length is greater
	bne $t5, $zero, STRING_RETURN	# than 4
	subi $t2, $t2, 1		# Subtract 1 if that is the case
	b STRING_RETURN
	
	# Subtract 1
	SUB_ONE:
	subi $t2, $t2, 1		# Subtract 1 if tahat is the case
	b STRING_RETURN
	
	# Return statement
	STRING_RETURN:
	move $v0, $t2			# Move the address into v0
	jr $ra	
	
#############################################################	
#  Given the address of a string and a string which may or 
#  may not include format specifiers, write a formatted 
#  version of the string into the output register $v0
#
#  Pre:  $a0 contains the address of the string dest, where
#          the final string will be written into
#        $a1 contains the address of a format string, which 
#          may or may not include format specifiers, and which 
#          details the required final state of the output 
#          string
#        $a2 contains an unsigned integer or the address of
#          a string, or it is empty
#        $a3 contains an unsigned integer or the address of
#          a string, or it is empty
#  Post: $a0 contains the address of the formatted dest, 
#          including null terminator
#        $v0 contains the length of the string written into
#          dest, not including null terminator
#############################################################

PROC_SPRINTF:

	# add your solution here
	move $s2, $a0			# Put address into s2
	move $s3, $a1			# Put a1 into s3
	move $s4, $a2			# Put a2 into s4
	move $s5, $a3			# Put a3 into s5
	move $s6, $ra			# Save return address into s6
	jal PROC_COUNT_FORMAT_SPECIFIERS
	move $ra, $s6			# Move the return address back to ra
	move $s6, $v0			# Put vo into s6
	li $t1, 0			# Create counter
	
	# Loop through the string
	LOOP_SPF:
	lb $t0, 0($s3)			# Load the byte into t0
	beq $t0, $zero,END_SPF 	# Check to see if character is null
	beq $t0, '%', CHECK_LETTER	# Check to see if t0 is a %
	sb $t0, 0($s2)			# Save the byte into detination address
	addi $s2, $s2, 1		# Get the next byte
	addi $s3, $s3, 1		# Get the next byte
	j LOOP_SPF
	
	# Check the letter
	CHECK_LETTER:
	addi $t1, $t1, 1		# Add 1 to the counter
	addi $s3, $s3, 1		# Get the next byte
	lb $t8, 0($s3)			# Load byte into t8
	beq $t8, 's', S_LETTER		# Check to see if the next letter is s
	
	# If the letter is a U
	U_LETTER:
	addi $s3, $s3, 1
	beq $t1, 2, IF_2_U
	move $s7, $a0
	move $a0, $a2
	move $s6, $ra			# Save the return address
	jal PROC_CONVERT_INT_TO_STRING
	move $ra, $s6			# Move the return address back to ra 
	move $a0, $s7
	j TO_U2
	
	# If the second % is a U
	IF_2_U:	
	move $s7, $a0
	move $a0, $a3
	move $s6, $ra			# Save the return address
	jal PROC_CONVERT_INT_TO_STRING
	move $ra, $s6			# Move the return address back to ra 
	move $a0, $s7
	
	# Write the integer
	TO_U2:
	lb $t3, 0($v0)
	beq $t3, $zero, LOOP_SPF 	# Check to see if t3 is null
	sb $t3, 0($s2)
	addi $s2, $s2, 1
	addi $v0, $v0, 1
	j TO_U2
	
	# If the letter is S
	S_LETTER:
	addi $s3, $s3, 1
	beq $t1, 2, IF_2_S
	move $t2, $a2 			#if 1st %, run this
	j TO_S2
	
	# If its the seocnd %
	IF_2_S:
	move $t2, $a3
	
	#Write the string
	TO_S2:
	lb $t3, 0($t2)
	beq $t3, $zero, LOOP_SPF	# Check to see if t3 is null
	sb $t3, 0($s2)
	addi $s2, $s2, 1
	addi $t2, $t2, 1
	j TO_S2
	
	# Return statement
	END_SPF:
	move $s6, $ra			# Save the return address
	jal PROC_FIND_LENGTH_STRING
	move $ra, $s6			# Move the return address back to ra 
	jr $ra	

#############################################################	
#  This procedure will find the length of a provided string
#  by counting characters until the null terminator is 
#  reached
#
#  Pre:  $a0 contains the string to evaluate
#  Post: $v0 contains the length of the string
#############################################################

PROC_FIND_LENGTH_STRING:	
	
	# prologue
	
	# function body
	move $t2, $a0			# $t2 is the current char we're pointing to
	li $t4, 0			# $t4 is my length counter for my_string

	# Loop until we find the null terminator
    LOOP_FIND_NULL_BYTE_LENGTH:	
	lb $t1, 0($t2)			# $t1 is the character loaded from offset $t2
	beq $t1, $zero, FOUND_NULL_BYTE_LENGTH
	
	addi $t4, $t4, 1		# increment length counter
	addi $t2, $t2, 1		# increment character pointer
	
	j LOOP_FIND_NULL_BYTE_LENGTH
	
    FOUND_NULL_BYTE_LENGTH:	
	# at this point, $t2 is pointed at \0
	move $v0, $t4
	
	# epilogue
	
	# return 
	jr $ra
	
#############################################################	
#  This procedure will determine the number of digits in the
#  provided integer input via iterative division by 10.
#
#  Pre:  $a0 contains the integer to evaluate
#  Post: $v0 contains the number of digits in that integer
#############################################################	

PROC_FIND_NUM_DIGITS:

	# prologue
	
	# function body
	li $t0, 10      # load a 10 into $t0 for the division
	li $t5, 0       # $t5 will hold the counter for number of digits
	move $t6, $a0   # $t6 will hold the result of the iterative division

    NUM_DIGITS_LOOP:
        divu $t6, $t0   # divide the number by 10
        addi $t5, $t5, 1
        
        mflo $t6       # move quotient back into $t6
        beq $t6, $zero, FOUND_NUM_DIGITS    # if the quotient was 0, $t5 stores the number of digits
        j NUM_DIGITS_LOOP


    FOUND_NUM_DIGITS:
        move $v0, $t5   # copy the number of digits $t5 into $v0 to return
	
	# epilogue
	
	# return 
	jr $ra		
	
#############################################################	
#  This procedure will reverse the characters in a string in-
#  place when given the addresses of the first and last
#  characters in the string.
#
#  Pre:  $a0 contains the address of the first character
#        $a1 contains the address of the last character
#  Post: $a0 contains the first character of the reversed
#          string
#############################################################

PROC_REVERSE_STRING:

	# prologue

	# function body	
	move $t0, $a0                  # move the pointer to the first char into $t0
	move $t2, $a1	               # move the pointer to the last char into $t2
					
	# Loop until the pointers cross	
LOOP_REVERSE:	
	lb $t9, 0($t2)			# backing up the $t2 position char into $t9
	lb $t8, 0($t0)			# load the $t0 position char into $t8
	
	sb $t8, 0($t2)			# write the begin char into $t2 position
	sb $t9, 0($t0)			# write the end char into $t0 position
	
	# increment and decrement the pointers
	addi $t0, $t0, 1
	subi $t2, $t2, 1
	
	ble $t2, $t0, END_OF_REVERSE_LOOP
	j LOOP_REVERSE

END_OF_REVERSE_LOOP:
	
	# epilogue
	
	# return 
	jr $ra


#############################################################	
#  This procedure will clear the contents of the 'digits'
#  memory allocation that is defined in the data block of 
#  this file.
#
#  Pre:  None
#  Post: The 'digits' section of memory is cleared to all 0s
#############################################################
	
PROC_CLEAR_DIGITS:	

	# prologue
	
	# function body
	la $t0, digits    # get the address of the digits space
	li $t1, 10        # we need to loop 10 times
	li $t2, 0         # and the loop counter starts at 0
	
    CLEAR_LOOP:	
        sb $zero, 0($t0)  # write all zeros into #t0
        addi $t0, $t0, 1  # move to the next char space
        addi $t2, $t2, 1  # increment loop counter
        
        beq $t2, $t1, END_CLEAR   # break out of the loop after 10 writes
        j CLEAR_LOOP
        
    END_CLEAR:	

	# epilogue

	# Return
	jr $ra		
	
#############################################################		
