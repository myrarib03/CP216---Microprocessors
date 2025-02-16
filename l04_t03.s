/*
-------------------------------------------------------
list_demo.s
-------------------------------------------------------
Author:  Myra Ribeiro
ID:      169030590
Email:   ribe0590@mylaurier.ca
Date:    2025-02-07
-------------------------------------------------------
A simple list demo program. Traverses all elements of an integer list.
r0: temp storage of value in list
r2: address of start of list
r3: address of end of list
-------------------------------------------------------
*/
.org 0x1000  // Start at memory location 1000
.text        // Code section
.global _start
_start:

ldr    r2, =Data    // Store address of start of list
ldr    r3, =_Data   // Store address of end of list
ldr    r0, [r2], #4 
mov    r6, r0       
mov    r7, r0 

Loop:
cmp    r2, r3       // Compare current address with end of list
beq    _stop        // If at end, stop

ldr    r0, [r2], #4 // Load value from list and increment address
cmp    r0, r6       // Compare value with current min
movlt  r6, r0       // If new value is less, update min
cmp    r0, r7       // Compare value with current max
movgt  r7, r0       // If new value is greater, update max
b      Loop         // Repeat loop

_stop:
b _stop

.data
.align
Data:
.word   4,5,-9,0,3,0,8,-7,12    // The list of data
_Data: // End of list address

.end
