// Experiment 6-b
// Sort a given array in Descending order

ORG 0000H             // Starting address
MOV R4, #04H          // Load the number of bits in R4
LOOP2: MOV R3, #04H   // Load the number of bits in R3
MOV R0, #20H          // LOad R0=20H
CLR C                 // CY=0
LOOP1: MOV A, @R0     // Move content of ML [20] in A
MOV R1, A             // Move content of A in R1
INC R0                // Increment R0
MOV A, @R0            // Move content of ML [20] in A
SUBB A, R1            // Substract R1 from register A
JC SKIP               // Check for carry
MOV A, @R0            // Move content of ML [20H] in A
DEC R0                // Decrement R0
MOV @R0, A            // Move content of register A in ML [20]
MOV A, R1             // Move content of R1 in A
INC R0                // Increment R0
MOV @R0, A            // Move content of register A in ML [20]
SKIP: DJNZ R3, LOOP1  // Repeat until counter=0
DJNZ R4, LOOP2        // Repeat until counter=0
END                   // Stop