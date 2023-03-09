#############################################################	
#  DO NOT MODIFY THIS FILE IN ANY WAY!!!
#############################################################


#############################################################	
#  This data block contains all of the inputs and outputs
#  necessary to run the test cases.
#############################################################

.data
    your_answer: .asciiz     "Your answer was: "
    your_length: .asciiz     "The length that you returned was: "
    newline:     .asciiz     "\n"
    lenpoints:   .asciiz     "Your score on the length tests is: "
    convpoints:  .asciiz     "Your score on the conversion tests is: "
    printpoints: .asciiz     "Your score on the sprintf() tests is: "
    slash:       .asciiz     "/"

    test1msg:    .asciiz     "Testing string 'This is a lovely test'.\n" 
    test1:       .asciiz     "This is a lovely test" 
    test1ans:	 .word       0
    test1pass:   .asciiz     "Correct, 'This is a lovely test' has 0 format specifiers.                                        10/10\n\n"
    test1fail:   .asciiz     "No, 'This is a lovely test' has 0 format specifiers.                                              0/10\n\n"

    test2msg:    .asciiz     "Testing string 'I have one %u format specifier'.\n" 
    test2:       .asciiz     "I have one %u format specifier" 
    test2ans:	 .word       1
    test2pass:   .asciiz     "Correct, 'I have one %u format specifier' has 1 format specifier.                                10/10\n\n"
    test2fail:   .asciiz     "No, 'I have one %u format specifier' has 1 format specifier.                                      0/10\n\n"
    
    test3msg:    .asciiz     "Testing string 'I have %s two format %u specifiers'.\n" 
    test3:       .asciiz     "I have %s two format %u specifiers" 
    test3ans:	 .word       2
    test3pass:   .asciiz     "Correct, 'I have %s two format %u specifiers' has 2 format specifiers.                           10/10\n\n"
    test3fail:   .asciiz     "No, 'I have %s two format %u specifiers' has 2 format specifiers.                                 0/10\n\n"
    
    test4msg:    .asciiz     "Testing string 'Writing tests for MIPS is awful'.\n" 
    test4:       .asciiz     "Writing tests for MIPS is awful" 
    test4ans:	 .word       0
    test4pass:   .asciiz     "Correct, 'Writing tests for MIPS is awful' has 0 format specifiers.                              10/10\n\n"
    test4fail:   .asciiz     "No, 'Writing tests for MIPS is awful' has 0 format specifiers.                                    0/10\n\n"
    
    test5msg:    .asciiz     "Testing string 'La Villa Strangiato'.\n" 
    test5:       .asciiz     "La Villa Strangiato" 
    test5ans:	 .word       0
    test5pass:   .asciiz     "Correct, 'La Villa Strangiato' has 0 format specifiers.                                          10/10\n\n"
    test5fail:   .asciiz     "No, 'La Villa Strangiato' has 0 format specifiers.                                                0/10\n\n"
    
    test6msg:    .asciiz     "Testing string '8 + 12 = %u'.\n" 
    test6:       .asciiz     "8 + 12 = %u" 
    test6ans:	 .word       1
    test6pass:   .asciiz     "Correct, '8 + 12 = %u' has 1 format specifier.                                                   10/10\n\n"
    test6fail:   .asciiz     "No, '8 + 12 = %u' has 1 format specifier.                                                         0/10\n\n"
    
    test7msg:    .asciiz     "Testing string '14 * %u = %u'.\n" 
    test7:       .asciiz     "14 * %u = %u" 
    test7ans:	 .word       2
    test7pass:   .asciiz     "Correct, '14 * %u = %u' has 2 format specifiers.                                                 10/10\n\n"
    test7fail:   .asciiz     "No, '14 * %u = %u' has 2 format specifiers.                                                       0/10\n\n"
    
    test8msg:    .asciiz     "Testing string 'My favorite number is %u'.\n" 
    test8:       .asciiz     "My favorite number is %u" 
    test8ans:	 .word       1
    test8pass:   .asciiz     "Correct, 'My favorite number is %u' has 1 format specifier.                                      10/10\n\n"
    test8fail:   .asciiz     "No, 'My favorite number is %u' has 1 format specifier.                                            0/10\n\n"
    
    test9msg:    .asciiz     "Testing string 'I haven't used %s in a test recently'.\n" 
    test9:       .asciiz     "I haven't used %s in a test recently" 
    test9ans:	 .word       1
    test9pass:   .asciiz     "Correct, 'I haven't used %s in a test recently' has 1 format specifier.                          10/10\n\n"
    test9fail:   .asciiz     "No, 'I haven't used %s in a test recently' has 1 format specifier.                                0/10\n\n"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

    test10msg:   .asciiz    "Testing string 'This is the last test of the category'.\n" 
    test10:      .asciiz    "This is the last test of the category" 
    test10ans:   .word      0
    test10pass:  .asciiz    "Correct, 'This is the last test of the category' has 0 format specifiers.                        10/10\n\n"
    test10fail:  .asciiz    "No, 'This is the last test of the category' has 0 format specifiers.                              0/10\n\n"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

    test11msg:   .asciiz    "Testing integer 12345.\n"
    test11:      .word      12345
    test11ans:	 .asciiz    "12345"
    test11pass:  .asciiz    "Correct, you have converted 12345 into '12345' successfully.                                     10/10\n\n"
    test11fail:  .asciiz    "No, 12345 should be converted into '12345'.                                                       0/10\n\n"
    
    test12msg:   .asciiz    "Testing integer 7.\n"
    test12:      .word      7
    test12ans:	 .asciiz    "7"
    test12pass:  .asciiz    "Correct, you have converted 7 into '7' successfully.                                             10/10\n\n"
    test12fail:  .asciiz    "No, 7 should be converted into '7'.                                                               0/10\n\n"
    
    test13msg:   .asciiz    "Testing integer 600.\n"
    test13:      .word      600
    test13ans:	 .asciiz    "600"
    test13pass:  .asciiz    "Correct, you have converted 600 into '600' successfully.                                         10/10\n\n"
    test13fail:  .asciiz    "No, 600 should be converted into '600'.                                                           0/10\n\n"    
    
    test14msg:   .asciiz    "Testing integer 42.\n"
    test14:      .word      42
    test14ans:	 .asciiz    "42"
    test14pass:  .asciiz    "Correct, you have converted 42 into '42' successfully.                                           10/10\n\n"
    test14fail:  .asciiz    "No, 42 should be converted into '42'.                                                             0/10\n\n"  

    test15msg:   .asciiz    "Testing integer 54321.\n"
    test15:      .word      54321
    test15ans:	 .asciiz    "54321"
    test15pass:  .asciiz    "Correct, you have converted 54321 into '54321' successfully.                                     10/10\n\n"
    test15fail:  .asciiz    "No, 54321 should be converted into '54321'.                                                       0/10\n\n"  

    test16msg:   .asciiz    "Testing integer 80.\n"
    test16:      .word      80
    test16ans:	 .asciiz    "80"
    test16pass:  .asciiz    "Correct, you have converted 80 into '80' successfully.                                           10/10\n\n"
    test16fail:  .asciiz    "No, 80 should be converted into '80'.                                                             0/10\n\n"  

    test17msg:   .asciiz    "Testing integer 123.\n"
    test17:      .word      123
    test17ans:	 .asciiz    "123"
    test17pass:  .asciiz    "Correct, you have converted 123 into '123' successfully.                                         10/10\n\n"
    test17fail:  .asciiz    "No, 123 should be converted into '123'.                                                           0/10\n\n"  

    test18msg:   .asciiz    "Testing integer 10005.\n"
    test18:      .word      10005
    test18ans:	 .asciiz    "10005"
    test18pass:  .asciiz    "Correct, you have converted 10005 into '10005' successfully.                                     10/10\n\n"
    test18fail:  .asciiz    "No, 10005 should be converted into '10005'.                                                       0/10\n\n"  

    test19msg:   .asciiz    "Testing integer 10050.\n"
    test19:      .word      10050
    test19ans:	 .asciiz    "10050"
    test19pass:  .asciiz    "Correct, you have converted 10050 into '10050' successfully.                                     10/10\n\n"
    test19fail:  .asciiz    "No, 12345 should be converted into '10050'.                                                       0/10\n\n"  

    test20msg:   .asciiz    "Testing integer 12045.\n"
    test20:      .word      12045
    test20ans:	 .asciiz    "12045"
    test20pass:  .asciiz    "Correct, you have converted 12045 into '12045' successfully.                                     10/10\n\n"
    test20fail:  .asciiz    "No, 12045 should be converted into '12045'.                                                       0/10\n\n"  

    test21msg:   .asciiz    "Testing string 'I have one %u format specifier'.\n" 
    test21msgin: .asciiz    "Format specifier input is integer 12345.\n"
    test21:	 .asciiz    "I have one %u format specifier"
    test21space: .space     100
    test21in1:   .word	    12345
    test21ans:   .asciiz    "I have one 12345 format specifier"
    test21len:   .word      33
    test21pass:  .asciiz    "Correct, you have created the string 'I have one 12345 format specifier'.                        10/10\n"
    test21fail:  .asciiz    "No, you should have created the string 'I have one 12345 format specifier'.                       0/10\n"
    test21pass2: .asciiz    "Correct, your string has length 33.                                                              10/10\n\n"
    test21fail2: .asciiz    "No, your function should return length 33.                                                        0/10\n\n"    

    test22msg:   .asciiz    "Testing string 'This is a lovely test'.\n" 
    test22msgin: .asciiz    "No format specifier inputs are needed.\n"
    test22:	 .asciiz    "This is a lovely test"
    test22space: .space     100
    test22ans:   .asciiz    "This is a lovely test"
    test22len:   .word      21
    test22pass:  .asciiz    "Correct, you have created the string 'This is a lovely test'.                                    10/10\n"
    test22fail:  .asciiz    "No, you should have created the string 'This is a lovely test'.                                   0/10\n"
    test22pass2: .asciiz    "Correct, your string has length 21.                                                              10/10\n\n"
    test22fail2: .asciiz    "No, your function should return length 21.                                                        0/10\n\n" 

    test23msg:   .asciiz    "Testing string 'I haven't used %s in a test recently'.\n"
    test23msgin: .asciiz    "Format specifier input is string 'this is so fun'.\n"
    test23:	 .asciiz    "I haven't used %s in a test recently"
    test23space: .space     100
    test23in1:   .asciiz    "this is so fun"
    test23ans:   .asciiz    "I haven't used this is so fun in a test recently"
    test23len:   .word      48
    test23pass:  .asciiz    "Correct, you have created the string 'I haven't used this is so fun in a test recently'.         10/10\n"
    test23fail:  .asciiz    "No, you should have created the string 'I haven't used this is so fun in a test recently'.        0/10\n"
    test23pass2: .asciiz    "Correct, your string has length 48.                                                              10/10\n\n"
    test23fail2: .asciiz    "No, your function should return length 48.                                                        0/10\n\n" 

    test24msg:   .asciiz    "Testing string 'I have %s two format %u specifiers'.\n"
    test24msgin: .asciiz    "Format specifier inputs are string 'parameter one' and integer 1001.\n"
    test24:	 .asciiz    "I have %s two format %u specifiers"
    test24space: .space     100
    test24in1:   .asciiz    "parameter one"
    test24in2:   .word      1001
    test24ans:   .asciiz    "I have parameter one two format 1001 specifiers"
    test24len:   .word      47
    test24pass:  .asciiz    "Correct, you have created the string 'I have parameter one two format 1001 specifiers'.          10/10\n"
    test24fail:  .asciiz    "No, you should have created the string 'I have parameter one two format 1001 specifiers'.         0/10\n"
    test24pass2: .asciiz    "Correct, your string has length 47.                                                              10/10\n\n"
    test24fail2: .asciiz    "No, your function should return length 47.                                                        0/10\n\n" 

    test25msg:   .asciiz    "Testing string 'Writing tests for MIPS is awful'.\n" 
    test25msgin: .asciiz    "No format specifier inputs are needed.\n"
    test25:	 .asciiz    "Writing tests for MIPS is awful"
    test25space: .space     100
    test25ans:   .asciiz    "Writing tests for MIPS is awful"
    test25len:   .word      31
    test25pass:  .asciiz    "Correct, you have created the string 'Writing tests for MIPS is awful'.                          10/10\n"
    test25fail:  .asciiz    "No, you should have created the string 'Writing tests for MIPS is awful'.                         0/10\n"
    test25pass2: .asciiz    "Correct, your string has length 31.                                                              10/10\n\n"
    test25fail2: .asciiz    "No, your function should return length 31.                                                        0/10\n\n" 

    test26msg:   .asciiz    "Testing string 'La Villa Strangiato'.\n" 
    test26msgin: .asciiz    "No format specifier inputs are needed.\n"
    test26:	 .asciiz    "La Villa Strangiato"
    test26space: .space     100
    test26ans:   .asciiz    "La Villa Strangiato"
    test26len:   .word      19
    test26pass:  .asciiz    "Correct, you have created the string 'La Villa Strangiato'.                                      10/10\n"
    test26fail:  .asciiz    "No, you should have created the string 'La Villa Strangiato'.                                     0/10\n"
    test26pass2: .asciiz    "Correct, your string has length 19.                                                              10/10\n\n"
    test26fail2: .asciiz    "No, your function should return length 19.                                                        0/10\n\n" 

    test27msg:   .asciiz    "Testing string 'I have one %u format specifier'.\n" 
    test27msgin: .asciiz    "Format specifier input is integer 20.\n"
    test27:	 .asciiz    "8 + 12 = %u"
    test27space: .space     100
    test27in1:   .word	    20
    test27ans:   .asciiz    "8 + 12 = 20"
    test27len:   .word      11
    test27pass:  .asciiz    "Correct, you have created the string '8 + 12 = 20'.                                              10/10\n"
    test27fail:  .asciiz    "No, you should have created the string '8 + 12 = 20'.                                             0/10\n"
    test27pass2: .asciiz    "Correct, your string has length 11.                                                              10/10\n\n"
    test27fail2: .asciiz    "No, your function should return length 11.                                                        0/10\n\n"

    test28msg:   .asciiz    "Testing string '14 * %u = %u'.\n"
    test28msgin: .asciiz    "Format specifier inputs are integer 17 and integer 238.\n"
    test28:	 .asciiz    "14 * %u = %u"
    test28space: .space     100
    test28in1:   .word      17
    test28in2:   .word      238
    test28ans:   .asciiz    "14 * 17 = 238"
    test28len:   .word      13
    test28pass:  .asciiz    "Correct, you have created the string '14 * 17 = 238'.                                            10/10\n"
    test28fail:  .asciiz    "No, you should have created the string '14 * 17 = 238'.                                           0/10\n"
    test28pass2: .asciiz    "Correct, your string has length 13.                                                              10/10\n\n"
    test28fail2: .asciiz    "No, your function should return length 13.                                                        0/10\n\n" 

    test29msg:   .asciiz    "Testing string 'My favorite number is %u'.\n" 
    test29msgin: .asciiz    "Format specifier input is integer 42.\n"
    test29:	 .asciiz    "My favorite number is %u"
    test29space: .space     100
    test29in1:   .word	    42
    test29ans:   .asciiz    "My favorite number is 42"
    test29len:   .word      24
    test29pass:  .asciiz    "Correct, you have created the string 'My favorite number is 42'.                                 10/10\n"
    test29fail:  .asciiz    "No, you should have created the string 'My favorite number is 42'.                                0/10\n"
    test29pass2: .asciiz    "Correct, your string has length 24.                                                              10/10\n\n"
    test29fail2: .asciiz    "No, your function should return length 24.                                                        0/10\n\n"

    test30msg:   .asciiz    "Testing string 'This is the last test of the category'.\n" 
    test30msgin: .asciiz    "No format specifier inputs are needed.\n"
    test30:	 .asciiz    "This is the last test of the category"
    test30space: .space     100
    test30ans:   .asciiz    "This is the last test of the category"
    test30len:   .word      37
    test30pass:  .asciiz    "Correct, you have created the string 'This is the last test of the category'.                    10/10\n"
    test30fail:  .asciiz    "No, you should have created the string 'This is the last test of the category'.                   0/10\n"
    test30pass2: .asciiz    "Correct, your string has length 37.                                                              10/10\n\n"
    test30fail2: .asciiz    "No, your function should return length 37.                                                        0/10\n\n" 
    
    
    

.text

.globl PROC_TEST_COUNT_FORMAT_SPECIFIERS
.globl PROC_TEST_CONVERT_INT_TO_STRING
.globl PROC_TEST_SPRINTF

###############################################################	
#  This procedure runs the tests to verify the correctness of
#  COUNT_FORMAT_SPECIFIERS.
#
#  Post:  $v0 contains the total points earned out of 100
###############################################################

PROC_TEST_COUNT_FORMAT_SPECIFIERS:

	# prologue
	subi $sp, $sp, 4
	sw $ra, 0($sp)

        # procedure body
	
	# initialize points to 0 in $t9
	li $t9, 0
	
    TEST_1:
        # display string to test
	la $a0, test1msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test1
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test1ans
    	bne $t0, $t8, TEST_1_INCORRECT

    # if correct, print that it is and allocate points
    TEST_1_CORRECT:    	
    	la $a0, test1pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_2
    	
    # if incorrect, print that it is not
    TEST_1_INCORRECT:
    	la $a0, test1fail
    	li $v0, 4
    	syscall


    TEST_2:
        # display string to test
	la $a0, test2msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test2
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test2ans
    	bne $t0, $t8, TEST_2_INCORRECT

    # if correct, print that it is and allocate points
    TEST_2_CORRECT:    	
    	la $a0, test2pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_3
    	
    # if incorrect, print that it is not
    TEST_2_INCORRECT:
    	la $a0, test2fail
    	li $v0, 4
    	syscall



    TEST_3:
        # display string to test
	la $a0, test3msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test3
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test3ans
    	bne $t0, $t8, TEST_3_INCORRECT

    # if correct, print that it is and allocate points
    TEST_3_CORRECT:    	
    	la $a0, test3pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_4
    	
    # if incorrect, print that it is not
    TEST_3_INCORRECT:
    	la $a0, test3fail
    	li $v0, 4
    	syscall



    TEST_4:
        # display string to test
	la $a0, test4msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test4
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test4ans
    	bne $t0, $t8, TEST_4_INCORRECT

    # if correct, print that it is and allocate points
    TEST_4_CORRECT:    	
    	la $a0, test4pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_5
    	
    # if incorrect, print that it is not
    TEST_4_INCORRECT:
    	la $a0, test4fail
    	li $v0, 4
    	syscall




    TEST_5:
        # display string to test
	la $a0, test5msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test5
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test5ans
    	bne $t0, $t8, TEST_5_INCORRECT

    # if correct, print that it is and allocate points
    TEST_5_CORRECT:    	
    	la $a0, test5pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_6
    	
    # if incorrect, print that it is not
    TEST_5_INCORRECT:
    	la $a0, test5fail
    	li $v0, 4
    	syscall




    TEST_6:
        # display string to test
	la $a0, test6msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test6
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test6ans
    	bne $t0, $t8, TEST_6_INCORRECT

    # if correct, print that it is and allocate points
    TEST_6_CORRECT:    	
    	la $a0, test6pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_7
    	
    # if incorrect, print that it is not
    TEST_6_INCORRECT:
    	la $a0, test6fail
    	li $v0, 4
    	syscall




    TEST_7:
        # display string to test
	la $a0, test7msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test7
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test7ans
    	bne $t0, $t8, TEST_7_INCORRECT

    # if correct, print that it is and allocate points
    TEST_7_CORRECT:    	
    	la $a0, test7pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_8
    	
    # if incorrect, print that it is not
    TEST_7_INCORRECT:
    	la $a0, test7fail
    	li $v0, 4
    	syscall




    TEST_8:
        # display string to test
	la $a0, test8msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test8
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test8ans
    	bne $t0, $t8, TEST_8_INCORRECT

    # if correct, print that it is and allocate points
    TEST_8_CORRECT:    	
    	la $a0, test8pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_9
    	
    # if incorrect, print that it is not
    TEST_8_INCORRECT:
    	la $a0, test8fail
    	li $v0, 4
    	syscall




    TEST_9:
        # display string to test
	la $a0, test9msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test9
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test9ans
    	bne $t0, $t8, TEST_9_INCORRECT

    # if correct, print that it is and allocate points
    TEST_9_CORRECT:    	
    	la $a0, test9pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_10
    	
    # if incorrect, print that it is not
    TEST_9_INCORRECT:
    	la $a0, test9fail
    	li $v0, 4
    	syscall


    TEST_10:
        # display string to test
	la $a0, test10msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the format specifier count procedure
	la $a0, test10
	jal PROC_COUNT_FORMAT_SPECIFIERS
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
    
    	# check for correctness
    	lw $t8, test10ans
    	bne $t0, $t8, TEST_10_INCORRECT

    # if correct, print that it is and allocate points
    TEST_10_CORRECT:    	
    	la $a0, test10pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TOTAL_POINTS_LEN
    	
    # if incorrect, print that it is not
    TEST_10_INCORRECT:
    	la $a0, test10fail
    	li $v0, 4
    	syscall




    # display final score
    TOTAL_POINTS_LEN:
	la $a0, lenpoints
	li $v0, 4
	syscall         

        move $a0, $t9
	li $v0, 1
	syscall        

	la $a0, slash
	li $v0, 4
	syscall         

        li $a0, 100
	li $v0, 1
	syscall      

	la $a0, newline
	li $v0, 4
	syscall
	syscall
	syscall
	
	# move point total into $v0 to return
	move $v0, $t9

	# epilogue
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	# Return
	jr $ra


###############################################################	
#  This procedure runs the tests to verify the correctness of
#  CONVERT_INT_TO_STRING.
#
#  Post:  $v0 contains the total points earned out of 100
###############################################################

PROC_TEST_CONVERT_INT_TO_STRING:

	# prologue
	subi $sp, $sp, 4
	sw $ra, 0($sp)


	# procedure body
	
	# initialize points to 0 in $t9
	li $t9, 0
	
    TEST_11:
        # reset digits space
        jal PROC_CLEAR_DIGITS
    
        # display integer to test
	la $a0, test11msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test11
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test11ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_11_INCORRECT

    # if correct, print that it is and allocate points
    TEST_11_CORRECT:    	
    	la $a0, test11pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_12
    	
    # if incorrect, print that it is not
    TEST_11_INCORRECT:
    	la $a0, test11fail
    	li $v0, 4
    	syscall




    TEST_12:
        # reset digits space
        jal PROC_CLEAR_DIGITS
        
        # display integer to test
	la $a0, test12msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test12
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test12ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_12_INCORRECT

    # if correct, print that it is and allocate points
    TEST_12_CORRECT:    	
    	la $a0, test12pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_13
    	
    # if incorrect, print that it is not
    TEST_12_INCORRECT:
    	la $a0, test12fail
    	li $v0, 4
    	syscall




    TEST_13:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test13msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test13
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test13ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_13_INCORRECT

    # if correct, print that it is and allocate points
    TEST_13_CORRECT:    	
    	la $a0, test13pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_14
    	
    # if incorrect, print that it is not
    TEST_13_INCORRECT:
    	la $a0, test13fail
    	li $v0, 4
    	syscall




    TEST_14:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test14msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test14
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test14ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_14_INCORRECT

    # if correct, print that it is and allocate points
    TEST_14_CORRECT:    	
    	la $a0, test14pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_15
    	
    # if incorrect, print that it is not
    TEST_14_INCORRECT:
    	la $a0, test14fail
    	li $v0, 4
    	syscall




    TEST_15:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test15msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test15
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test15ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_15_INCORRECT

    # if correct, print that it is and allocate points
    TEST_15_CORRECT:    	
    	la $a0, test15pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_16
    	
    # if incorrect, print that it is not
    TEST_15_INCORRECT:
    	la $a0, test15fail
    	li $v0, 4
    	syscall




    TEST_16:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test16msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test16
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test16ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_16_INCORRECT

    # if correct, print that it is and allocate points
    TEST_16_CORRECT:    	
    	la $a0, test16pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_17
    	
    # if incorrect, print that it is not
    TEST_16_INCORRECT:
    	la $a0, test16fail
    	li $v0, 4
    	syscall



    TEST_17:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test17msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test17
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test17ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_17_INCORRECT

    # if correct, print that it is and allocate points
    TEST_17_CORRECT:    	
    	la $a0, test17pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_18
    	
    # if incorrect, print that it is not
    TEST_17_INCORRECT:
    	la $a0, test17fail
    	li $v0, 4
    	syscall



    TEST_18:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test18msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test18
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test18ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_18_INCORRECT

    # if correct, print that it is and allocate points
    TEST_18_CORRECT:    	
    	la $a0, test18pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_19
    	
    # if incorrect, print that it is not
    TEST_18_INCORRECT:
    	la $a0, test18fail
    	li $v0, 4
    	syscall




    TEST_19:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test19msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test19
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test19ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_19_INCORRECT

    # if correct, print that it is and allocate points
    TEST_19_CORRECT:    	
    	la $a0, test19pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_20
    	
    # if incorrect, print that it is not
    TEST_19_INCORRECT:
    	la $a0, test19fail
    	li $v0, 4
    	syscall



    TEST_20:
        # reset digits space
        jal PROC_CLEAR_DIGITS    
    
        # display integer to test
	la $a0, test20msg
	li $v0, 4
	syscall 
    
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that integer to the conversion procedure
	lw $a0, test20
	jal PROC_CONVERT_INT_TO_STRING
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the answer to $t0
	move $t0, $v0
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	move $a0, $t0
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# load correct answer
	la $a1, test20ans

    	# check for correctness
    	move $a0, $t0
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_20_INCORRECT

    # if correct, print that it is and allocate points
    TEST_20_CORRECT:    	
    	la $a0, test20pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TOTAL_POINTS_CONVERT
    	
    # if incorrect, print that it is not
    TEST_20_INCORRECT:
    	la $a0, test20fail
    	li $v0, 4
    	syscall



    # display final score
    TOTAL_POINTS_CONVERT:
	la $a0, convpoints
	li $v0, 4
	syscall         

        move $a0, $t9
	li $v0, 1
	syscall        

	la $a0, slash
	li $v0, 4
	syscall         

        li $a0, 100
	li $v0, 1
	syscall      

	la $a0, newline
	li $v0, 4
	syscall
	syscall
	syscall
	
	# move point total into $v0 to return
	move $v0, $t9


	# epilogue
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	# Return
	jr $ra


###############################################################	
#  This procedure runs the tests to verify the correctness of
#  SPRINTF.
#
#  Post:  $v0 contains the total points earned out of 200
###############################################################

PROC_TEST_SPRINTF:

	# prologue
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	
	# function body
	
	# initialize points to 0 in $t9
	li $t9, 0
	

    TEST_21:	
        # display string to test
	la $a0, test21msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test21msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test21space
	la $a1, test21
	lw $a2, test21in1
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test21ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test21space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test21space
  	la $a1, test21ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_21_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_21_CORRECT:    	
    	la $a0, test21pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_21_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_21_INCORRECT:
    	la $a0, test21fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_21_PART_2:
	lw $t5, test21len
	bne $t5, $t6, TEST_21_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_21_CORRECT_2:
     	la $a0, test21pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_22

    # if the string length is incorrect, print that it is not
    TEST_21_INCORRECT_2:
    	la $a0, test21fail2
    	li $v0, 4
    	syscall





    TEST_22:	
        # display string to test
	la $a0, test22msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test22msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test22space
	la $a1, test22
	li $a2, 0
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test22ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test22space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test22space
  	la $a1, test22ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_22_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_22_CORRECT:    	
    	la $a0, test22pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_22_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_22_INCORRECT:
    	la $a0, test22fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_22_PART_2:
	lw $t5, test22len
	bne $t5, $t6, TEST_22_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_22_CORRECT_2:
     	la $a0, test22pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_23

    # if the string length is incorrect, print that it is not
    TEST_22_INCORRECT_2:
    	la $a0, test22fail2
    	li $v0, 4
    	syscall



    TEST_23:	
        # display string to test
	la $a0, test23msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test23msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test23space
	la $a1, test23
	la $a2, test23in1
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test23ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test23space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test23space
  	la $a1, test23ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_23_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_23_CORRECT:    	
    	la $a0, test23pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_23_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_23_INCORRECT:
    	la $a0, test23fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_23_PART_2:
	lw $t5, test23len
	bne $t5, $t6, TEST_23_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_23_CORRECT_2:
     	la $a0, test23pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_24

    # if the string length is incorrect, print that it is not
    TEST_23_INCORRECT_2:
    	la $a0, test23fail2
    	li $v0, 4
    	syscall



    TEST_24:	
        # display string to test
	la $a0, test24msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test24msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test24space
	la $a1, test24
	la $a2, test24in1
	lw $a3, test24in2
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test24ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test24space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test24space
  	la $a1, test24ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_24_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_24_CORRECT:    	
    	la $a0, test24pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_24_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_24_INCORRECT:
    	la $a0, test24fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_24_PART_2:
	lw $t5, test24len
	bne $t5, $t6, TEST_24_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_24_CORRECT_2:
     	la $a0, test24pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_25

    # if the string length is incorrect, print that it is not
    TEST_24_INCORRECT_2:
    	la $a0, test24fail2
    	li $v0, 4
    	syscall




    TEST_25:	
        # display string to test
	la $a0, test25msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test25msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test25space
	la $a1, test25
	li $a2, 0
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test25ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test25space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test25space
  	la $a1, test25ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_25_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_25_CORRECT:    	
    	la $a0, test25pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_25_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_25_INCORRECT:
    	la $a0, test25fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_25_PART_2:
	lw $t5, test25len
	bne $t5, $t6, TEST_25_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_25_CORRECT_2:
     	la $a0, test25pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_26

    # if the string length is incorrect, print that it is not
    TEST_25_INCORRECT_2:
    	la $a0, test25fail2
    	li $v0, 4
    	syscall




    TEST_26:	
        # display string to test
	la $a0, test26msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test26msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test26space
	la $a1, test26
	li $a2, 0
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test26ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test26space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test26space
  	la $a1, test26ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_26_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_26_CORRECT:    	
    	la $a0, test26pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_26_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_26_INCORRECT:
    	la $a0, test26fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_26_PART_2:
	lw $t5, test26len
	bne $t5, $t6, TEST_26_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_26_CORRECT_2:
     	la $a0, test26pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_27

    # if the string length is incorrect, print that it is not
    TEST_26_INCORRECT_2:
    	la $a0, test26fail2
    	li $v0, 4
    	syscall




    TEST_27:	
        # display string to test
	la $a0, test27msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test27msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test27space
	la $a1, test27
	lw $a2, test27in1
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test27ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test27space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test27space
  	la $a1, test27ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_27_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_27_CORRECT:    	
    	la $a0, test27pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_27_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_27_INCORRECT:
    	la $a0, test27fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_27_PART_2:
	lw $t5, test27len
	bne $t5, $t6, TEST_27_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_27_CORRECT_2:
     	la $a0, test27pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_28

    # if the string length is incorrect, print that it is not
    TEST_27_INCORRECT_2:
    	la $a0, test27fail2
    	li $v0, 4
    	syscall



    TEST_28:	
        # display string to test
	la $a0, test28msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test28msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test28space
	la $a1, test28
	lw $a2, test28in1
	lw $a3, test28in2
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test28ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test28space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test28space
  	la $a1, test28ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_28_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_28_CORRECT:    	
    	la $a0, test28pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_28_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_28_INCORRECT:
    	la $a0, test28fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_28_PART_2:
	lw $t5, test28len
	bne $t5, $t6, TEST_28_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_28_CORRECT_2:
     	la $a0, test28pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_29

    # if the string length is incorrect, print that it is not
    TEST_28_INCORRECT_2:
    	la $a0, test28fail2
    	li $v0, 4
    	syscall



    TEST_29:	
        # display string to test
	la $a0, test29msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test29msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test29space
	la $a1, test29
	lw $a2, test29in1
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test29ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test29space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test29space
  	la $a1, test29ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_29_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_29_CORRECT:    	
    	la $a0, test29pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_29_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_29_INCORRECT:
    	la $a0, test29fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_29_PART_2:
	lw $t5, test29len
	bne $t5, $t6, TEST_29_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_29_CORRECT_2:
     	la $a0, test29pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_30

    # if the string length is incorrect, print that it is not
    TEST_29_INCORRECT_2:
    	la $a0, test29fail2
    	li $v0, 4
    	syscall





    TEST_30:	
        # display string to test
	la $a0, test30msg
	li $v0, 4
	syscall 
	
	# display inputs to test
	la $a0, test30msgin
	li $v0, 4
	syscall 
        
        # back up $t9 to the stack
        subi $sp, $sp, 4
        sw $t9, 0($sp)
    
        # pass that string to the sprintf procedure
	la $a0, test30space
	la $a1, test30
	li $a2, 0
	li $a3, 0
	jal PROC_SPRINTF
	
	# recover $t9 from the stack
	lw $t9, 0($sp)
	addi $sp, $sp, 4
	
	# copy the length answer to $t6
	move $t6, $v0
	
	# load the solution
	la $t1, test30ans
	
	# display the answer provided by the function
	la $a0, your_answer
	li $v0, 4
	syscall
	
	la $a0, test30space
	li $v0, 4
	syscall

	la $a0, newline
	li $v0, 4
	syscall	
	
	# display the length provided by the function
	la $a0, your_length
	li $v0, 4
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	la $a0, newline
	li $v0, 4
	syscall
    
    	# check for correctness of string contents
  	la $a0, test30space
  	la $a1, test30ans
    	jal PROC_COMPARE_STRINGS
    	bne $v0, $zero, TEST_30_INCORRECT

    # if the string is correct, print that it is and allocate points
    TEST_30_CORRECT:    	
    	la $a0, test30pass
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TEST_30_PART_2
    	
    # if the string is incorrect, print that it is not
    TEST_30_INCORRECT:
    	la $a0, test30fail
    	li $v0, 4
    	syscall

    # test that the length of the string is correct
    TEST_30_PART_2:
	lw $t5, test30len
	bne $t5, $t6, TEST_30_INCORRECT_2

    # if the string length is correct, print that it is and allocate points		
    TEST_30_CORRECT_2:
     	la $a0, test30pass2
    	li $v0, 4
    	syscall
    	
    	addi $t9, $t9, 10
    	
    	j TOTAL_POINTS_SPRINTF

    # if the string length is incorrect, print that it is not
    TEST_30_INCORRECT_2:
    	la $a0, test30fail2
    	li $v0, 4
    	syscall




    TOTAL_POINTS_SPRINTF:
	la $a0, printpoints
	li $v0, 4
	syscall         

        move $a0, $t9
	li $v0, 1
	syscall        

	la $a0, slash
	li $v0, 4
	syscall         

        li $a0, 200
	li $v0, 1
	syscall      

	la $a0, newline
	li $v0, 4
	syscall
	syscall
	syscall
	
	# move point total into $v0 to return
	move $v0, $t9
        

	# epilogue
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	# Return
	jr $ra	


###############################################################	
#  This helper procedure is used in the testing code to
#  compare two strings
#
#  Post:  $v0 contains 0 if the strings are equal, 0 otherwise
###############################################################

PROC_COMPARE_STRINGS:

	# prologue
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	
	# function body
	move $t0, $a0      # copy address of first string to $t0
	move $t1, $a1      # copy address of second string to $t1
	
    COMPARE_LOOP:
        lb $t2, 0($t0)     # get byte from first string
        lb $t3, 0($t1)     # get byte from second string	
	
	bne $t2, $t3, NOT_EQUAL_STRINGS    # branch if the characters aren't equal
	
	beq $t2, $zero, EQUAL_STRINGS      # branch if we got to the null terminator
	
	# move to the next characters of each string and loop
	addi $t0, $t0, 1
	addi $t1, $t1, 1
	j COMPARE_LOOP
	
    NOT_EQUAL_STRINGS:
	# if the strings aren't equal, return 1
	li $v0, 1
	j END_OF_COMPARE_STRINGS
	
    EQUAL_STRINGS:
	# if the strings are equal, return 0
	li $v0, 0
	
    END_OF_COMPARE_STRINGS:

	# epilogue
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	# Return
	jr $ra	
	
	
