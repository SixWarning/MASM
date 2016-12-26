; we can let a letter ascii code's five bit become 0, so the letter will be lower case
; ................................................ 1, ..................... upper case

; [BX + idata] == idata[BX] we can use array idata it's the a[i]'s a

; SI DI are like bx, but they can't divided into two 8-bit registers

; [BX + SI] and [BX + DI] == [BX][SI] and [BX][DI]

; [BX + SI + idata] == idata[BX][SI] == [BX].idata[SI] == [BX][SI].idata, [BX + SI + idata] is just like that

; 7.7

assume cs:codesg, ds:datasg

datasg segment
    db 'ibm             '
    db 'dec             '
    db 'dos             '
    db 'vax             '
datasg ends

codesg segment
start:
    mov ax,datasg
    mov ds,ax
    mov bx,0
    mov cx,4

s0: mov dx,cx
    mov si,0
    mov cx,3

s:  mov al,[bx+si]
    or al,00010000b
    mov [bx+si],al
    inc si
    loop s

    mov cx,dx
    add bx,fh
    loop s0

    mov ax,4c00h
    int 21h
codesg ends

end start

; 7.9

assume cs:codesg, ss:stacksg, ds:datasg

stacksg segment
    dw 0,0,0,0,0,0,0,0
stacksg ends

datasg segment
    db '1. display      '
    db '2. brows        '
    db '3. replace      '
    db '4. modify       '
datasg ends

codesg segment
  start:
    mov ax,datasg
    mov ds,ax
    mov ax,stacksg
    mov ss,ax
    mov bx,0
    mov cx,4

s0: mov si,3
    push cx
    mov cx,4

s:  mov al,[bx+si]
    or al,0001000b
    mov [bx+si],al
    inc si
    loop s

    pop cx
    add bx,fh
    loop s0
codesg ends
end start
    