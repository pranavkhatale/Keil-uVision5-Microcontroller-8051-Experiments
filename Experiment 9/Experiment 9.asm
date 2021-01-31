// Generate a triangular wave on the P1
org 0000h
mov p1, #00h
again: mov a, #00h
RAISE: mov p1, a
inc a
cjne a, #0ffh, RAISE
mov a, #0ffh
FALL: mov p1, a
dec A
cjne a, #00h, FALL
jmp again
end