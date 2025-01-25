/*
-------------------------------------------------------
intro.s
-------------------------------------------------------
Author: Myra Ribeiro
ID: 169030590
Email: ribe0590@mylaurier.ca
Date: 2025/01/22
-------------------------------------------------------
Assign to and add contents of registers.
-------------------------------------------------------
*/
.org 0x1000  // Start at memory location 1000
.text        // Code section
.global _start
_start:

mov r0, #9       // Store decimal 9 in register r0
mov r1, #14 // Store hex E (decimal 14) in register r1
mov r3, #8
add r3, r3, r3
add r2, r1, r0  // Add the contents of r0 and r1 and put result in r2

add r4, r4, #5

// End program
_stop:
b _stop