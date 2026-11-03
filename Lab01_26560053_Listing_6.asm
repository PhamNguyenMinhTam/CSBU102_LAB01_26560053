# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# LAB 01 - Step 3.2 - Listing 6
# Purpose: Read previous and current meter readings, then print current minus previous.
# Registers: $s0=previous reading; $s1=current reading; $t0=usage; $v0=syscall selector/input result; $a0=output argument; $zero=zero.

.data
prompt1: .asciiz "Enter previous reading (kWh): "
prompt2: .asciiz "Enter current reading (kWh): "
label:   .asciiz "Usage (kWh): "
newline: .asciiz "\n"

.text
.globl main
main:
    li $v0, 4
    la $a0, prompt1
    syscall

    li $v0, 5
    syscall
    add $s0, $v0, $zero

    li $v0, 4
    la $a0, prompt2
    syscall

    li $v0, 5
    syscall
    add $s1, $v0, $zero

    sub $t0, $s1, $s0

    li $v0, 4
    la $a0, label
    syscall

    li $v0, 1
    add $a0, $t0, $zero
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall
