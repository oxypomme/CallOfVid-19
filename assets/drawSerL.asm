; généré avec https://github.com/oxypomme/BMPtoASM
push AX
push BX

mov  AX, projX
mov  BX, projY

add  AX, 3
mov  BX, projY

add  BX, 8
oxgSHOWPIXEL AX, BX, 00Fh	; 3-8

inc  AX
mov  BX, projY

add  BX, 8
oxgSHOWPIXEL AX, BX, 00Fh	; 4-8

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 5-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 5-9

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 033h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 6-8
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 6-9

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 033h	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 7-8
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 7-9

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 019h	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 019h	; 8-9

inc  AX
mov  BX, projY

add  BX, 8
oxgSHOWPIXEL AX, BX, 00Fh	; 9-8

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-9

pop  BX
pop  AX
