push AX
push BX

mov  AX, projX
mov  BX, projY


inc  AX
mov  BX, projY


inc  AX
mov  BX, projY


inc  AX
mov  BX, projY


inc  AX
mov  BX, projY

add  BX, 5
oxgSHOWPIXEL AX, BX, 028h	; 4-5
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 4-6
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 4-7
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 4-8
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 4-9
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 4-10

inc  AX
mov  BX, projY

add  BX, 4
oxgSHOWPIXEL AX, BX, 028h	; 5-4
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 5-5
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 5-6
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 5-8
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 5-9
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 5-10
inc  BX
oxgSHOWPIXEL AX, BX, 028h	; 5-11

inc  AX
mov  BX, projY

add  BX, 4
oxgSHOWPIXEL AX, BX, 019h	; 6-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-10
inc  BX
oxgSHOWPIXEL AX, BX, 019h	; 6-11

inc  AX
mov  BX, projY

add  BX, 4
oxgSHOWPIXEL AX, BX, 01Dh	; 7-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-10
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 7-11

inc  AX
mov  BX, projY

add  BX, 4
oxgSHOWPIXEL AX, BX, 01Dh	; 8-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-10
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 8-11

inc  AX
mov  BX, projY

add  BX, 4
oxgSHOWPIXEL AX, BX, 019h	; 9-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-10
inc  BX
oxgSHOWPIXEL AX, BX, 019h	; 9-11

inc  AX
mov  BX, projY

add  BX, 4
oxgSHOWPIXEL AX, BX, 014h	; 10-4
inc  BX
oxgSHOWPIXEL AX, BX, 01Ch	; 10-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-9
inc  BX
oxgSHOWPIXEL AX, BX, 01Ch	; 10-10
inc  BX
oxgSHOWPIXEL AX, BX, 014h	; 10-11

inc  AX
mov  BX, projY

add  BX, 5
oxgSHOWPIXEL AX, BX, 014h	; 11-5
inc  BX
oxgSHOWPIXEL AX, BX, 019h	; 11-6
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 11-7
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 11-8
inc  BX
oxgSHOWPIXEL AX, BX, 019h	; 11-9
inc  BX
oxgSHOWPIXEL AX, BX, 014h	; 11-10

inc  AX
mov  BX, projY


inc  AX
mov  BX, projY


inc  AX
mov  BX, projY


inc  AX
mov  BX, projY


pop  BX
pop  AX
