; DUP is repeat
; db 3 dup (0) == db 0,0,0
; db 3 dup (0,1,2) == db 0,1,2,0,1,2,0,1,2
; db 3 dup ('abc') == db 'abc','abc','abc'

; p172
[BX].idata[SI]