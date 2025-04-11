AREA P3, DATA, READONLY
ENTRY

        AREA CODE, CODE, READONLY

START
        LDR R0, =Numbers 
        LDR R1, =Sum 
        MOV R2, #0    
        MOV R3, #5 
LOOP
        LDR R4, [R0], #4 
        MUL R5, R4, R4 
        ADD R2, R2, R5 
        SUBS R3, R3, #1 
        BNE LOOP 

        STR R2, [R1] 

STOP
        B STOP 
        AREA DATA, DATA, READWRITE

Numbers DCD 2, 3, 4, 5, 6 
Sum DCD 0 

        END
