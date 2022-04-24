.MODEL SMALL
.STACK 100H
.DATA
P DW 10
R DW 0 
 .CODE
MAIN PROC
    MOV AX, @DATA 
    MOV DS, AX
    
    MOV BX, 0

START:
    MOV AH,1
    INT 21H
    
    CMP AL, 13D
    JNE PROCESS
    JE PRINT
    
PROCESS:
    SUB AL,30H
    MOV CL,AL
    
    MOV CH,0
    
    MOV AX,BX
    
    MUL P
    MOV BX,AX
    
    ADD BX, CX
    JMP START

PRINT:
    MOV DX, 0
    MOV AX, BX
    
    DIV P
    INC R
    
    PUSH DX
    
    CMP AX,0
    JE NEWLINE
    MOV BX,AX
    
    LOOP PRINT 

NEWLINE:
    MOV CX, R
    
    MOV AH, 2
    INT 21H
    
    MOV DL, 0AH
    INT 21H 
    
    MOV DL, 0DH
    INT 21H

EXIT:
    POP DX
    ADD DL,30H
    MOV AH,2
    
    INT 21H
    LOOP EXIT
    
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN