// Experiment 3
// Exchange the 10 byte of data between 20H memory location and 30H memory location

ORG 0000H          // Starting address
MOV R3, #0AH       // Load counter
MOV R0, #20H       // Load R0 with 20H
MOV R1, #30H       // Load R1 with 30H
LOOP: MOV A, @R0   // Move the content of R0 register into A
XCH A, @R1         // Exchange the content of A and R1
MOV @R0, A         // Move the content of A into ML whose addr. R0
INC R0             // Increment R0
INC R1             // Increment R1
DJNZ R3, LOOP      // Repeat until the counter=0
END                // Stop