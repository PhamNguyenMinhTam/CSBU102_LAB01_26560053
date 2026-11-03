# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# LAB 01 - Step 3.1 - Listing 5
# Purpose: Print the string Usage (kWh): followed by integer 150 and a newline.
# Registers: $t0=150; $a0=string address or integer to print; $v0=syscall selector; $zero=zero.

.data
msg: .asciiz "Usage (kWh): "
nl:  .asciiz "\n"

.text
.globl main
main:
    addi $t0, $zero, 150

    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 1
    add $a0, $t0, $zero
    syscall

    li $v0, 4
    la $a0, nl
    syscall

    li $v0, 10
    syscall
