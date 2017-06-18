        org $8000

video   equ $4000   ; some useful locations in memory
colors  equ $5800

start:
        ld hl, colors
        ld a, 12

outer:  ld b, 16
inner1: ld (hl), 0
        inc hl
        ld (hl), 127
        inc hl
        djnz inner1
        ld b, 16
inner2: ld (hl), 127
        inc hl
        ld (hl), 0
        inc hl
        djnz inner2

        dec a
        jr nz, outer

        ret
end start

; vim:set ft=zx81 ts=4 sw=4 expandtab:
