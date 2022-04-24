;1+2+3+4+5+6+7+8+9+10
.MODEL SAMLL 
.STACK 100H
.DATA

.CODE
MAIN PROC
     MOV BL, 0
     MOV CX, 10
     
     START:
     ADD BX, CX
     
     LOOP START
     
     MOV DL, 10 
     MOV AX, BX
     DIV DL
     
     MOV BH, AH 
     ADD BH, 30H
     ADD AL, 30H
     
     MOV AH, 2
     MOV DL, AL
     INT 21H
     
     MOV DL, BH
     INT 21H
     
     MAIN ENDP
END MAIN