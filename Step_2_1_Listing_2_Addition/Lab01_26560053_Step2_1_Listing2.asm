# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# Purpose: Compute a = b + c; inspect the add machine code in Step 2.2.
# LAB 01 - Step_2_1_Listing_2_Addition

# Listing 2 - a = b + c
.text
.globl main
main:
    addi $t1, $zero, 7       # b = 7
    addi $t2, $zero, 5       # c = 5
    add  $t0, $t1, $t2       # a = b + c
    li   $v0, 10
    syscall
