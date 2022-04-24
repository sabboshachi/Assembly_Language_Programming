.MODEL SMALL
.STACK 100H
.DATA
MS1 DB 'ENTER A HEX NUM $'
MS2 DB 0AH,0DH, '1'
RESULT DB ?, "$"
 
 .CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MS1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1 
    INT 21H
    MOV BL, AL
    SUB BL,11H
    MOV RESULT, BL
    
    LEA DX, MS2
    MOV AH, 9
    INT 21H
    
    
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN