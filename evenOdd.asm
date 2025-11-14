include emu8086.inc

org 100h

.data

.code
mov ax,@data
mov ds,ax

mov al,24
mov bl,2
mov ah,00
div bl ;al=al/bl
cmp ah,0
je even

print "odd"
jmp stp

even:
print "Even"

stp:

ret

