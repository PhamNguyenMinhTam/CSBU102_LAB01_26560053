# Ho ten: PHAM NGUYEN MINH TAM
# MSSV: 26560053
# LAB01 Step 2.4 / Listing 4
# Purpose: Evaluate the four statements in Table 9.
# Registers: $s0=y, $s1=z, $s2=w; $t0-$t3=x1-x4; $t5=intermediate.
.text
.globl main
main:
    addi $s0, $zero, 8
    addi $s1, $zero, 5
    addi $s2, $zero, 3
    # x1 = y + z + w
    add $t5, $s0, $s1
    add $t0, $t5, $s2
    # x2 = (y + z) - (w + 5)
    addi $t5, $s2, 5
    add $t1, $s0, $s1
    sub $t1, $t1, $t5
    # x3 = y; x4 = z - y
    add $t2, $zero, $s0
    sub $t3, $s1, $s0
    li $v0, 10
    syscall
