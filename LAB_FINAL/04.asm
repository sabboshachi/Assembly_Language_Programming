.MODEL SMALL
.STACK 100H
.DATA 

MS_1 DB 0AH, 0DH, 'THE SUM OF ' 
DATA_1 DB ?,' AND '
DATA_2 DB ?,' IS '
RESULT DB ?,' $ '

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH, 2
    
    MOV DL, "?"
    INT 21H
    
    MOV DL, 0AH
    INT 21H
    
    MOV DL, 0DH
    INT 21H       
           
    MOV AH, 1
    INT 21H
    MOV DATA_1, AL
    
    MOV AH, 1
    INT 21H
    MOV DATA_2, AL
    
    ADD AL, DATA_1
    
    SUB AL, 30H
    
    MOV RESULT, AL
    
    LEA DX, MS_1
    MOV AH,9
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN