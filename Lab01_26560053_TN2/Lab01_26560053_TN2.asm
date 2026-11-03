# Ho ten: PHAM NGUYEN MINH TAM
# MSSV: 26560053
# LAB01 Step 2.3 / Listing 3
# Purpose: Calculate three monthly usages and their total (kWh).
# Registers: $s0-$s3=readings 0-3; $t0-$t2=usages 1-3; $t3=total.
.text
.globl main
main:
    addi $s0, $zero, 1200
    addi $s1, $zero, 1350
    addi $s2, $zero, 1475
    addi $s3, $zero, 1640
    # Solution arithmetic uses only add and sub.
    sub $t0, $s1, $s0
    sub $t1, $s2, $s1
    sub $t2, $s3, $s2
    add $t3, $t1, $t2
    add $t3, $t0, $t3
    li $v0, 10
    syscall
