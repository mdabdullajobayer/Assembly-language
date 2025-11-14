include emu8086.inc

org 100h

.data  

arr1 db 50,15,20,30,40 

.code
mov ax,@data
mov ds,ax

lea si,arr1
mov si,0

mov al,20

search:
cmp al,arr1[si]  
je found
inc si
cmp si,5
jl search

print "value not Found"
 
jmp stp

found:
print "value not Found: "       
mov dx,si
add dx,48
mov ah, 02h
int 21h

stp:
ret
