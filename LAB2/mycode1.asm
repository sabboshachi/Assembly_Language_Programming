.MODEL SMALL 
.STACK 100H 
.DATA
MSG DB 0AH, 0DH, 'THE SUM OF '
DATA1 DB ?, ' AND '
DATA2 DB ?, ' IS '
RESULT DB ?, '$'
.CODE
MAIN PROC
    MOV AX, @DATA 
    MOV DS,AX
    
    MOV AH,2 
    
    
    MOV DL, '?'
    INT 21H
    
    MOV AH,1
    INT 21H    
    MOV DATA1,AL     
         
         
    MOV AH,1
    INT 21H    
    MOV DATA2, AL
    
    
  
   
   
    ADD AL,DATA1
    SUB AL,30H
    MOV RESULT,AL
    ;INT 21H
   
   ;MOV DATA1, RESULT
   
   
   ;MOV DL, 0DH
   ;INT 21H
   ;MOV DL, 0AH
   ;INT 21H
   
   LEA DX,MSG 
   MOV AH,9
   INT 21H
   
   
   
   
   ;LEA DX, MSG 
   ;LEA DX, DATA1
   ;LEA DX, DATA1
   ;MOV
   
   
    
    MAIN ENDP 
END MAIN