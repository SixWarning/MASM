; stack 
; POP PUSH
; SS:SP point to the cell in front of the top of the stack, when the stack is empty, SS:SP point to the cell after the botton of the stack SP = 0010H
; PUSH the top of the stack from the high address to low address direction

PUSH REGISTER
POP REGISTER

PUSH SEGMENT REGISTER
POP SEGMENT REGISTER

PUSH MEMORY UNIT
POP MEMORY UNIT

; 3.8
MOV AX,1000H
MOV SS,AX
MOV SP,0010H
MOV AX,001AH
MOV BX,001BH
PUSH AX
PUSH BX
MOV AX,0
MOV BX,0
POP BX
POP AX

; 3.9
MOV AX,1000H
MOV SS,AX
MOV SP,0010H
MOV AX,001AH
MOV BX,001BH
MOV AX,0
MOV BX,0
POP AX
POP BX