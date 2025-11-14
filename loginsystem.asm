include emu8086.inc

org 100h

.data
user1 db "cse1$"
pass1 db "123$"


user2 db "cse1$"
pass2 db "123$"

.code
mov ax,@data
mov ds,ax

lea si,user1
lea di,user2

mov cl,4
repe cmpsb
jne not_same


lea si,pass1
lea di,pass2

mov cl, 3
repe cmpsb
jne not_same


print "User Login Sucessfull"

jmp stp

not_same:
print "Not Match"

stp:


ret
