.MODEL SMALL 
.STACK 100H 
.DATA
 MSG1 DB 0DH, 0AH, 'ENTER A HEX DIGIT:'

 DATA1 DB ?,0AH, 0DH, '$'


; MSG2 DB ODH, OAH, 'IN DECIMAL IT IS:'                       
                       
 ;DATA2 DB ?,0AH, 0DH, '$'

.CODE

MAIN PROC
    
    LEA DX,MSG1 
   MOV AH,9
   INT 21H 
   
   MOV 4CH, AH
   INT 21H
   
   MAIN ENDP 
END MAIN