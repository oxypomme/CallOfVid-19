push AX
push BX

mov  AX, playerX
mov  BX, playerY


inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 006h	; 4-7
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 4-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 4-9
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 4-10

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 006h	; 5-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-7
add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 5-9
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-10
add  BX, 3
oxgSHOWPIXEL AX, BX, 001h	; 5-13
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 5-14
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-15

inc  AX
mov  BX, playerY

add  BX, 2
oxgSHOWPIXEL AX, BX, 0B8h	; 6-2
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-3
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-4
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 6-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 6-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-9
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 6-10
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 6-11
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 6-12
add  BX, 3
oxgSHOWPIXEL AX, BX, 007h	; 6-15

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 0B8h	; 7-1
inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 7-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 7-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 7-4
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 7-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 7-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 7-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 7-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 7-11
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 7-12

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 8-1
inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 8-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 8-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 8-4
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 8-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 8-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 8-11
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 8-12
add  BX, 2
oxgSHOWPIXEL AX, BX, 036h	; 8-14
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 8-15

inc  AX
mov  BX, playerY

add  BX, 4
oxgSHOWPIXEL AX, BX, 05Ah	; 9-4
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Ch	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 034h	; 9-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-9
add  BX, 3
oxgSHOWPIXEL AX, BX, 036h	; 9-12
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 9-13
add  BX, 2
oxgSHOWPIXEL AX, BX, 01Dh	; 9-15

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Ch	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 034h	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-9
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-10

inc  AX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 00Fh	; 11-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 11-9

inc  AX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 00Fh	; 12-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 12-9

inc  AX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 00Fh	; 13-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 13-9

inc  AX
mov  BX, playerY

add  BX, 9
oxgSHOWPIXEL AX, BX, 00Fh	; 14-9

inc  AX
mov  BX, playerY


pop  BX
pop  AX
