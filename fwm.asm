[org 0x0100]

jmp start 
n: dw 6 

result: dw 0  ;used to store temporary results 
finalRes: dw 0



fact: 
xor ax, ax 
mov ax, [n] ;move into ax the value that is located at n 
xor cx, cx 


mov dx, ax 
dec dx  ;n -1 
push dx 

l1: 
shr dx, 1   ;dx is our multiplicand 
;if we get a one, we add our multiplier to the result 
;else we add the multiplicand to and shift our multiplicand 
;one place to the left
jnc skip 

add word [result], ax 


skip: 
shl ax, 1
cmp dx, 0 
jnz l1 
sub word [n], 1
mov ax, [result] ;move the result into ax 
jnz nextPass
jmp done 

nextPass:  
pop dx 
dec dx ;n - 1 
push dx 
mov word [finalRes], ax  ;preserves th final result 
mov word [result], 0 
jmp l1 


done: 
ret 



start: 
call fact 

mov ax, 0x4c00 
int 0x21 
