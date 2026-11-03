# Ho ten: PHAM NGUYEN MINH TAM
# MSSV: 26560053
# LAB01 Step 3.3 / Listing 7
# Purpose: Read four cumulative readings; report monthly usages and total.
# Registers: $s0-$s3=readings 0-3; $t0-$t2=monthly usages; $t3=total;
# $v0=syscall selector/input result; $a0=output argument.
.data
prompt: .asciiz "Enter reading (kWh): "
m1: .asciiz "Month 1: "
m2: .asciiz "Month 2: "
m3: .asciiz "Month 3: "
tot: .asciiz "Total:   "
nl: .asciiz "\n"
.text
.globl main
main:
    # Preserve each input before selecting the next syscall.
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s0, $zero, $v0
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s1, $zero, $v0
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s2, $zero, $v0
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    add $s3, $zero, $v0
    sub $t0, $s1, $s0
    sub $t1, $s2, $s1
    sub $t2, $s3, $s2
    add $t3, $t1, $t2
    add $t3, $t0, $t3
    # Output leaves all four result registers intact.
    li $v0, 4
    la $a0, m1
    syscall
    li $v0, 1
    add $a0, $zero, $t0
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 4
    la $a0, m2
    syscall
    li $v0, 1
    add $a0, $zero, $t1
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 4
    la $a0, m3
    syscall
    li $v0, 1
    add $a0, $zero, $t2
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 4
    la $a0, tot
    syscall
    li $v0, 1
    add $a0, $zero, $t3
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li $v0, 10
    syscall
