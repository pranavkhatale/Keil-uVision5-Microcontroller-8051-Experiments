// Generate a square wave of 50% duty cycle on the P1.5
org 0000h
mov tmod,#01h
here: mov tl0,#0eah
mov th0,#0ffh
cpl p1.5
acall delay
sjmp here
delay: setb TR0
again: jnb tf0,again
clr TR0
clr tf0
ret
end