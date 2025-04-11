AREA P7, CODE, READONLY
ENTRY
    MRS R0, CPSR 
    MOV R1, #0x13
    MSR CPSR_c, R1 

loop
    B loop
        BX LR
        END