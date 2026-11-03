# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# LAB 01 - Step 2.3 - Listing 3
# Purpose: Calculate electricity usage for three months and the total in kWh.
# Registers: $s0-$s3=readings 0-3; $t0-$t2=monthly usages 1-3; $t3=total; $zero=zero; $v0=exit service.

.text
.globl main
main:
    addi $s0, $zero, 1200
    addi $s1, $zero, 1350
    addi $s2, $zero, 1475
    addi $s3, $zero, 1640

    sub $t0, $s1, $s0
    sub $t1, $s2, $s1
    sub $t2, $s3, $s2

    add $t3, $t0, $t1
    add $t3, $t3, $t2

    li $v0, 10
    syscall
