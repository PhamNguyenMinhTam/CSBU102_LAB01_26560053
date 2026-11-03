# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# Purpose: Print Hello, MARS! to check the simulator.
# LAB 01 - Step_0_Listing_0_Hello_MARS

# Listing 0 - quick check
.data
msg:   .asciiz "Hello, MARS!\n"
 
.text
.globl main
main:
    li   $v0, 4
    la   $a0, msg
    syscall
    li   $v0, 10
    syscall
