include emu8086.inc

org 100h

.data

.code 
 mov ax, @data
 mov ds,ax
 
 mov al,10
 mov bl,30
 mov cl,78
 
 cmp al,bl
 jge if1
 jl else1
 
if1:
cmp al,cl
jg L_al
jl L_cl

else1:
cmp bl,cl
jg L_bl
jl L_cl

L_al:
print "AL Largest"
jmp stp

L_bl:
print "BL is Largets"
jmp stp

L_cl:
print "CL is Largets"
 
stp:
