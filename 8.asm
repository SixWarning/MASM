assume CS:XXX

XXX segment

mov ax,4c00H
int 21H    ; return

XXX ends    ; end the segment program

end    ; end the whole program

; when you use cmd to masm and link a asm file, you can input masm filename; or link filename;