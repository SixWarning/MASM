; Branch instruction is something we can use to modify CS or CS and IP
; OFFSET get the sign's offset address(EA)
; MOV AX,OFFSET START

; JMP can modify CS or both of CS and IP

; Destination address is in the instruction 
; JMP SHORT SIGN == (IP) = (IP) + 8-bit displacement   SHORT means 8-bit
; JMP NEAR PTR SIGN == (IP) = (IP) + 16-bit displacement
; JMP FAR PTR SIGN  (CS) is segment address and (IP) is EA in the segment

; Destination address is in the register
; JMP 16-BIT REG == (IP) = (16-BIT REG)

; Destination address is in the memory
; JMP WORD PTR MEMORY UNIT ADDRESS == (IP) = (MEMORY UNIT ADDRESS)
; JMP DWORD PTR MEMORY UNIT ADDRESS == (CS) = (MEMORY UNIT ADDRESS + 2), (IP) = (MEMORY UNIT ADDRESS)
