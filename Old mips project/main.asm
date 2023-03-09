#############################################################	
#  DO NOT MODIFY THIS FILE IN ANY WAY!!!
#############################################################


#############################################################	
#  This data block contains all of the inputs and outputs
#  necessary to summarize the final grades component of the
#  output.
#############################################################

.data
    testset_format:    .asciiz     "Beginning to run tests to count the number of format specifiers.\n\n" 
    testset_intconv:   .asciiz     "Beginning to run tests to check the integer conversion to string.\n\n" 
    testset_sprintf:   .asciiz     "Beginning to run tests to verify the correctness of sprintf().\n\n" 

    break:             .asciiz     "\n\n----------------------------------------------------\n\n"
    final_score:       .asciiz     "Your final scores are:\n"
    format_score:      .asciiz     "  Number of format specifiers:  "
    conv_score:        .asciiz     "  Converting int to string:     "
    sprintf_score:     .asciiz     "  Correctness of sprintf():     "
    
    slash_max:         .asciiz     "/100\n"
    slash_max2:        .asciiz     "/200\n"
    newline_main:      .asciiz     "\n"


.text

.globl main


#############################################################	
#  The code below calls the three testing procedures from 
#  the tests.asm file, stores, and outputs the total points
#  earned from this assignment.
#############################################################

main:
    
    # Run tests for number of format specifiers
    la $a0, testset_format
    li $v0, 4
    syscall 
    
    jal PROC_TEST_COUNT_FORMAT_SPECIFIERS
    
    # put number of points for format specifiers into $t9
    move $t9, $v0
    
    
    
    # Back up points so far before calling the next set of tests
    subi $sp, $sp, 4
    sw $t9, 0($sp)
    
    jal PROC_TEST_CONVERT_INT_TO_STRING
    
    # Recover points earned so far
    lw $t9, 0($sp)
    addi $sp, $sp, 4
    
    # put number of points for conversion into $t8
    move $t8, $v0
    
    
    
    # Run tests for number of format specifiers
    la $a0, testset_sprintf
    li $v0, 4
    syscall     
        
    # Back up points so far before calling the next set of tests
    subi $sp, $sp, 8
    sw $t9, 0($sp)
    sw $t8, 4($sp)
    
    jal PROC_TEST_SPRINTF
            
    # Recover points earned so far        
    lw $t9, 0($sp)
    lw $t8, 4($sp)    
    addi $sp, $sp, 8
    
    # put number of points for sprintf into $t7
    move $t7, $v0
    
    # output final grades
    la $a0, break
    li $v0, 4
    syscall
    
    la $a0, final_score
    syscall
    
    # format specifiers score
    la $a0, format_score
    syscall
    
    move $a0, $t9
    li $v0, 1
    syscall
    
    la $a0, slash_max
    li $v0, 4
    syscall
    
    # integer to string conversion score
    la $a0, conv_score
    syscall
    
    move $a0, $t8
    li $v0, 1
    syscall
    
    la $a0, slash_max
    li $v0, 4
    syscall    
    
    # sprintf score
    la $a0, sprintf_score
    syscall
    
    move $a0, $t7
    li $v0, 1
    syscall
    
    la $a0, slash_max2
    li $v0, 4
    syscall    
    
            
    
    # terminate program cleanly
    li $v0, 10
    syscall
