# Ho ten: PHAM NGUYEN MINH TAM
# MSSV: 26560053
# LAB01 Part 4 / Question 4.2; Listing: N/A (not a numbered listing).
# Purpose: Print the integer in $t5, then a newline.
# Registers: $t5=value; $a0=output argument; $v0=syscall selector.
.data
nl: .asciiz "\n"
.text
.globl main
main:
    addi $t5, $zero, 150  # Standalone demonstration input
    # Question 4.2 solution begins here.
    li $v0, 1
    add $a0, $zero, $t5
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    # Terminate the standalone demonstration.
    li $v0, 10
    syscall
