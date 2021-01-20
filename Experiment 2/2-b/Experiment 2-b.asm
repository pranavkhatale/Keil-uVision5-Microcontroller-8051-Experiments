// Experiment 2-b : Transfer Block of data from 8100H memory location to 8200H memory location externally

ORG 0000H          // Starting addree
MOV R0, #0AH       // Load counter
MOV R1, #81H       // Load R1 with 81H
MOV R2, #82H       // Load R2 with 82H
MOV R3, #00H       // Load R3 with 00H
LOOP: MOV DPH, R1  // Load DPH with 81H
MOV DPL, R3        // Load DPL wth 00H; DPTR-8100H
MOVX A, @DPTR      // Load A with content of DPTR externally
MOV DPH, R2        // Move content of R2 into DPH
MOVX@DPTR, A       // Load DPTR with content of A externally
INC R3             // Increment R3
DJNZ R0, LOOP      // Repeat until te counter=0
END                // Stop