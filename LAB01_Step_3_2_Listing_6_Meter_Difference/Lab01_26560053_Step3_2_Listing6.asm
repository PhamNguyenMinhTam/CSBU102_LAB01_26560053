# Ho ten: PHAM NGUYEN MINH TAM
# MSSV: 26560053
# LAB01 Step 3.2 / Listing 6
# Purpose: Read previous/current readings and print current minus previous.
# Registers: $s0=previous, $s1=current, $t0=usage;
# $v0=syscall selector/input result; $a0=output argument.
.data
previous_prompt: .asciiz "Enter previous reading (kWh): "
current_prompt: .asciiz "Enter current reading (kWh): "
usage_label: .asciiz "Usage (kWh): "
line_end: .asciiz "\n"
.text
.globl main
main:
    li $v0, 4
    la $a0, previous_prompt
    syscall
    li $v0, 5
    syscall
    add $s0, $zero, $v0
    li $v0, 4
    la $a0, current_prompt
    syscall
    li $v0, 5
    syscall
    add $s1, $zero, $v0
    sub $t0, $s1, $s0
    li $v0, 4
    la $a0, usage_label
    syscall
    li $v0, 1
    add $a0, $zero, $t0
    syscall
    li $v0, 4
    la $a0, line_end
    syscall
    li $v0, 10
    syscall
