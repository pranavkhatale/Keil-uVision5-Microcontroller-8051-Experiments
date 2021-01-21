// Experiment 5-b
// Find the largest number in a given array starting from 5000H memory location and stored the result in 60H memory location

ORG 0000H            // Starting address
MOV DPTR, #5000H     // DPTR=5000H; DPTR is a pointyer to data
MOV R2, #09H         // Load counter
MOVX A, @DPTR        // Load A with content of DPTR externally
MOV 60H, A           // Move content of A in 60H
LP2: INC DPTR        // Increment DPTR
MOVX A, @DPTR        // Move a number to A
CJNE A, 60H, LP1     // Compare A with content of 60H
SJMP NEXT
LP1: JC NEXT         // If A<60H, jump to NEXT
MOV 60H, A           // If A>60H, move it to 60H
NEXT: DJNZ R2, LP2   // Repeat until the counter=0
END                  // Stop