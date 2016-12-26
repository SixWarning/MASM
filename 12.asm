; reg is a register and sreg is a segment register
; if we use BP in [...], the segment address is in SS
; SA is the segment address and EA is the offset address(effective address)
; word(byte) PTR 
mov word ptr ds:[0],1
; PUSH and POP can only operate word

; DIV == /  The dividend num is in AX or in AX(low 16-bit) and DX(high 16-bit)
; If divisor is 8-bit, AL is the quot, AH is the remained
; If divisor is 16-bit, AX is the quot, DX is the remained
; DIV REG  or  DIV MEMORY UNIT(PTR)

; 8.1

data segment
    dd 100001
    dw 100
    dw 0
data ends

code segment
    mov ax,data
    mov ds,ax
    mov ax,ds:[0]
    mov dx,ds:[2]
    div word ptr ds:[4]
    mov ds:[6],ax
code ends