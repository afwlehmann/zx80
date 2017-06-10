org     $8000

cls     EQU $0D6B   ; define some ROM routines
opench  EQU $1601
print   EQU $203C

string:
db      'Hello world!', 13

start:
 call   cls         ; clear screen

 ld     a, 2        ; open upper screen channel
 call   opench

 ld     de, string  ; print string
 ld     bc, 13
 call   print

 ret                ; return to the operating system

end start

; vim:set ft=zx81 ts=4 sw=4 expandtab:
