; DS stores the segment address of the data to be accessed
; [ADDRESS] is the offset address

MOV BX,1000H
MOV DS,BX
MOV AL,DS:[0]    ; [0] is the offset address

MOV BX,1000H
MOV DS,BX    ; MOV DS,1000H is the wrong way, we should use a transfer register

MOV BX,1000H
MOV DS,BX
MOV DS:[0],AL