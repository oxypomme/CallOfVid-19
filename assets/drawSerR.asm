; généré avec https://github.com/oxypomme/BMPtoASM
push AX
push BX

mov  AX, projX
mov  BX, projY

add  AX, 5
mov  BX, projY

add  BX, 6
oxgSHOWPIXEL AX, BX, 00Fh	; 5-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 5-8

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 6-7

inc  AX
mov  BX, projY

add  BX, 6
oxgSHOWPIXEL AX, BX, 019h	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 019h	; 7-8

inc  AX
mov  BX, projY

add  BX, 6
oxgSHOWPIXEL AX, BX, 033h	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 8-8

inc  AX
mov  BX, projY

add  BX, 6
oxgSHOWPIXEL AX, BX, 033h	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 9-8

inc  AX
mov  BX, projY

add  BX, 6
oxgSHOWPIXEL AX, BX, 00Fh	; 10-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 11-7

inc  AX
mov  BX, projY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 12-7

pop  BX
pop  AX
