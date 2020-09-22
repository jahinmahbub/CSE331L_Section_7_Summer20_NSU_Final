 .MODEL SMALL
 .STACK 100H

 .DATA
    PROMPT_1  DB  'Enter int 1: $'
    PROMPT_2  DB  'Enter int 2: $'
    PROMPT_3  DB  'LCM:  $'  
    NUM1 DW 1500
    NUM2 DW 2500
    HCF DW ?
    LCM DW ?

 .CODE
   MAIN PROC
     MOV AX,DATA
     MOV DS,AX
     LEA DX,PROMPT_1
     MOV AH,9
     INT 21H
     MOV AH,1
     INT 21H
     MOV AX,NUM1
     LEA DX,PROMPT_2
     MOV AH,9
     INT 21H
     MOV AH,1
     INT 21H
     MOV BX,NUM2
    WHILE:
     MOV DX,0
     MOV CX,BX
     DIV BX
     MOV BX,DX
     MOV AX,CX
     CMP BX,0
     JNE WHILE
     MOV HCF,AX
     MOV CX,AX
     MOV AX,NUM1
     MOV BX,NUM2
     MUL BX
     DIV CX
     LEA DX,PROMPT_3
     MOV AH,9
     INT 21H
     MOV LCM,AX
     MOV AH,4CH
     INT 21H
   MAIN ENDP
 END MAIN