; [BX] and LOOP

MOV AX,[BX]    ; segment address is DS and offset address is BX

; idata is constant
; INC is just like ++a in C 

; LOOP and CX, CX store the number of cycles

MOV CX,idata
s: 
  ; codes
  loop s

5.2
assume cs:code
code segment

  mov cx,123

s: 
  add ax,236
  loop s

  mov ax,4c00h
  int 21h

code ends
end