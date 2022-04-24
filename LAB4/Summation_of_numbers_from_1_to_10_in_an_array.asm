; ARRAY
.MODEL SAMLL 
.STACK 100H
.DATA
ARRAY DW 1,2,3,4,5,6,7,8,9,10 

.CODE
MAIN PROC
     
     
     
     
     MOV AX, @DATA
     MOV DS, AX
     LEA SI, ARRAY
     MOV CX,10
     CLC
     MOV AX, 0
     
     
     SUM:
     
     ADD AX,[SI]
     ADD SI, 2
     LOOP SUM
     
     NEXT:
     
     
     MOV DL, 10
     DIV DL
     MOV BH, AH
     ADD BH, 30H
     ADD AL, 30H
     
     MOV AH, 2
     MOV DL, AL
     INT 21H   
     
     MOV AH, 2
     MOV DL, BH
     INT 21H
     
     MOV AH, 4CH
     INT 21H
     
     
     MAIN ENDP
END MAIN