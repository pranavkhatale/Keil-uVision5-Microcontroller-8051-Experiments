// Experiment 4
// Logical operations : AND, OR, XOR & NOT of 45H and 67H, store the result from 20H

ORG 0000H       // Starting address
MOV A, #45H     // Load A with 45H
MOV R0, #67H    // Load R0 with 67H
ANL A, R0       // AND the numbers
MOV 20H, A      // Move result to 20H
MOV A, #45H     // Load A with 45H
ORL A, R0       // OR the numbers
MOV 21H, A      // Move result to 21H
MOV A, #45H     // Load A with 45H
XRL A, R0       // EX-OR the numbers
MOV 22H, A      // Move result to 22H
MOV A, #45H     // Load A with 45H
CPL A           // Complement A
MOV 23H, A      // Move result to 20H
END             // Stop