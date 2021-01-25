// Experiment 7
// Display "INDIA" in ROM space strating at 250H also transfer the bytes into RAM location starting at 40H

ORG 0000H           // Strating address
MOV DPTR, #MYDATA   // Load ROM pointer
MOV R0, #40H        // Load RAM pointer
MOV R2, #05H        // Load counter
BACK: CLR A          // A=0
MOVC A, @A+DPTR     // Move data from code space
MOV @R0, A          // Save it in RAM
INC DPTR            // Increment ROM pointer
INC R0              // Increment RAM pointer
DJNZ R2, BACK       // Loop until counter=0
HERE: SJMP HERE
ORG 250             // On chip ROM space for storing data
MYDATA: DB"INDIA"
END                 // Stop