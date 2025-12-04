include emu8086.inc

org 100h

mov ah, 01h  
int 21h       
sub al, '0'   
mov bl, al     

mov ah, 01h
int 21h
sub al, '0'  

add bl, al    

mov dl, bl
add dl, '0'
printn
print "Output: "
mov ah, 02h
int 21h

ret
