.MODEL SMALL 
.STACK 100H 
.DATA

MSG DB 0AH, 0DH
DATA1 DB ?,0AH, 0DH
DATA2 DB ?,0AH, 0DH
DATA3 DB ?, '$'
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
    
    MOV AH,1
    INT 21H    
    MOV DATA3, AL
    
    LEA DX,MSG 
   MOV AH,9
   INT 21H
   
   MAIN ENDP 
END MAIN
    
    