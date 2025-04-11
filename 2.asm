 AREA P2, CODE, READONLY
        ENTRY

        MOV r0, #0          
        MOV r1, #1          
        LDR r2, =fib_array  
        MOV r3, #10      
        
loop
        STR r0, [r2], #4 
        ADD r4, r0, r1   
        MOV r0, r1       
        MOV r1, r4       
        SUBS r3, r3, #1      
        BNE loop            

        B ends             
        ;AREA Data, DATA, READWRITE
fib_array
        SPACE 40              

ends
        END