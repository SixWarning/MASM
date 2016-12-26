; p187

assume cs:codesg,ss:stacksg,ds:datasg

datasg segment
    dd 'welcome to masm!'
    dd 00000010b
    dd 00100010b
    dd 00000001b
datasg ends

stacksg segment
    dw 6 dup (0)
stacksg ends

codesg segment
  start:
    mov ax,datasg
    mov ds,ax
    mov ax,stacksg
    mov ss,ax
    mov cx,3
  s0:
    mov bx,0
    push cx
    mov cx,16
  s:
    

    pop cx
    loop s0

    mov ax,4c00h
    int 21h
codesg ends
end start