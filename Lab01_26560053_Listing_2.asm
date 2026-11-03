# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# LAB 01 - Step 2.1-2.2 - Listing 2
# Purpose: Compute a = b + c and inspect the add instruction machine code.
# Registers: $t1=b (7), $t2=c (5), $t0=a (12); $zero=constant zero; $v0=exit service.

.text
.globl main
main:
    addi $t1, $zero, 7
    addi $t2, $zero, 5
    add $t0, $t1, $t2
    li $v0, 10
    syscall
