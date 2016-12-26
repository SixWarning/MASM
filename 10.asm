; 00200h~002ffh are the safe space
; ES is additional segment register

; p121

assume  cs:code

code segment

    mov cx,64
    mov ax,0
    mov ds,ax
    mov bx,200h

s:  mov ax,[bx]
    inc ax
    inc bx
    loop s

    mov ax,4c00h
    int 21h

code ends
end


