;2+4+6+8+10
.MODEL SAMLL 
.STACK 100H
.DATA

.CODE
MAIN PROC
     MOV AX, 0
     MOV BX, 2
     MOV CX, 5
     
     START:
     ADD AX, BX 
     ADD BX, 2D
     
     
     
     LOOP START
     
     MOV DL, 10 
     ;MOV AX, BX
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