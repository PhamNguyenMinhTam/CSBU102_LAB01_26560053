# Name: PHAM NGUYEN MINH TAM
# Student ID: 26560053
# Purpose: Print a message and the integer 150.
# LAB 01 - Step_3_1_Listing_5_Print_Output

# Listing 5 - print a message and an integer
.data
msg:   .asciiz "Usage (kWh): "
nl:    .asciiz "\n"
 
.text
.globl main
main:
    addi $t0, $zero, 150
    li   $v0, 4              # service 4: print string
    la   $a0, msg            # argument: address of msg
    syscall
    li   $v0, 1              # service 1: print integer
    add  $a0, $t0, $zero     # argument: the number to print
    syscall
    li   $v0, 4              # print a new line
    la   $a0, nl
    syscall
    li   $v0, 10             # service 10: exit
    syscall
