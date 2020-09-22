 .MODEL SMALL
 .STACK 100H

 
 
 .CODE
   MAIN PROC
     MOV AL,00H
     MOV SI,500H
     MOV [SI],AL
     INC SI
     ADD AL,01H
     MOV [SI],AL
     MOV CX,[600H]
     SUB CX,002H
    L1:
     MOV AL,[SI-1]
     ADD AL,[SI]
     INC SI
     MOV [SI],AL
     LOOP L1
     
   MAIN ENDP
 END MAIN