// Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2])

// Code

@R2
M=0 // Set RAM[2] to 0

@R1
D=M // Set RAM[1] to D register

@i // refers to some memory location
M=D

@END
D;JEQ

(LOOP)
@R0
D=M

@R2
M=D+M // Add D to RAM[2] and store in RAM[2]

@i
D=M
D=D-1
M=D

@LOOP
D;JGT // If D > 0 goto Loop

(END)
@END
0;JMP //Infinite Loop