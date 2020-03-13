data segment
        msg     db      'Hello World$'
data ends

code segment
        assume  cs:code
start:  mov     ax, data
        mov     ds, ax

        mov     ah, 9h
        mov     dx, offset msg
        int     21h

        mov     ah, 4ch
        int     21h
code ends
        end     start
