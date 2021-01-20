// Experiment 2-a : Transfer block of Data
// Transfer Block of Data from 20H memory location to 30H memory location internally

ORG 0000H           // Starting address
MOV R0, #20H        // Load R0 with 20H
MOV R1, #30H        // Load R1 with 30H
MOV R2, #0AH        // Load Counter
LOOP: MOV A, @R0    // Move the counter of ML whose addr. R0 into A
MOV @R1, A          // Move the content of A into ML whose addr. R1
INC R0              // Increment R0
INC R1              // Increment R1
DJNZ R2, LOOP       // Repeat until the counter=0
END                 // Stop