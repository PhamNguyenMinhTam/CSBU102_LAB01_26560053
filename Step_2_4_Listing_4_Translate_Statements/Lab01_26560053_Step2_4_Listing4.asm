# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# Purpose: Translate four arithmetic statements into MIPS instructions.
# LAB 01 - Step_2_4_Listing_4_Translate_Statements

# Listing 4 - translating statements
.text
.globl main
main:
    addi $s0, $zero, 8       # y = 8
    addi $s1, $zero, 5       # z = 5
    addi $s2, $zero, 3       # w = 3
 
    add $t0, $s0, $s1
    add $t0, $t0, $s2
    add $t1, $s0, $s1
    addi $t5, $s2, 5
    sub $t1, $t1, $t5
    add $t2, $s0, $zero
    sub $t3, $s1, $s0
 
    li   $v0, 10
    syscall
