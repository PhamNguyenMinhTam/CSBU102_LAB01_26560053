# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# LAB 01 - Step 1.2 - Listing 1
# Purpose: Explore register arithmetic and demonstrate that writes to $zero are discarded.
# Registers: $t0=12, $t1=30, $t2=sum, $t3=copy of sum; $zero=constant zero; $v0=exit service.

.text
.globl main
main:
    addi $t0, $zero, 12
    addi $t1, $zero, 30
    add $t2, $t0, $t1
    addi $zero, $zero, 5
    add $t3, $zero, $t2

    li $v0, 10
    syscall
