AREA P9, CODE, READONLY 
START
        LDR R0,=0x0000000 
        LDR R1,=0x11112222 
        LDR R2,=0x4000000
        SWP R0,R1,[R2]
HERE B HERE 
        END 
