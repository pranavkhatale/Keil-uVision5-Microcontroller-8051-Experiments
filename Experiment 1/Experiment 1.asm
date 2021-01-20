// Experiment 1
// Aritematic Operations

ORG 0000H                // Starting address
MOV R1, #02H             // Load R1 with 02H
MOV A, #05H              // Load A with 05H
ADD A, R1                // Add content of A with R1; Result ADD; R2=07H
MOV R2, A                // Move the content of A into R2

MOV R1, #02H             // Load R1 with 02H
MOV A, #05H              // Load A with 05H
SUBB A, R1               // Substract content of A and R1; R3=03H
MOV R3, A                // Move the content of A into R3; Result SUBB

MOV A, #05H              // Load A with 05H
MOV B, #02H              // Load R1 with 02H
MUL AB                   // Multiply the content of A and B; R4=0AH
MOV R4, A                // Move the content of A into R4; Resukt MUL

MOV A, #05H              // Load A with 05H
MOV B, #02H              // Load R1 with 02H
DIV AB                   // Divide the content of B from A
MOV R5, A                // Move the content of A into R5; Result DIV; R5=02;
MOV R6, B                // Move the content of B into R6; Remainder; R6=01H
END                      // Stop