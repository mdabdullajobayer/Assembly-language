include emu8086.inc
org 100h

.data
.code

mov ax, @data
mov ds, ax

mov al, 5       

outer_loop:
    mov bl, 1     

inner_loop:
    print "*"
    inc bl
    cmp bl, al
    jle inner_loop

    printn 

    dec al      
    cmp al, 1
    jge outer_loop

ret
