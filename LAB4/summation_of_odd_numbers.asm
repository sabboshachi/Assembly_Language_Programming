;1+3+5+7+9
.MODEL SAMLL 
.STACK 100H
.DATA

.CODE
MAIN PROC
     MOV AX, 0
     MOV BX, 1
     MOV CX, 5
     
     START:
     ADD AX, BX
     ADD BX, 2D
     DEC CX
     
     
     ;SUB DX, 1
     ;CMP DX, 0
     
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