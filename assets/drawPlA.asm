push AX
push BX

mov  AX, playerX
mov  BX, playerY


add  AX, 2
mov  BX, playerY

add  BX, 9
oxgSHOWPIXEL AX, BX, 007h	; 2-9

inc  AX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 007h	; 3-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-9

inc  AX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 007h	; 4-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 4-9

inc  AX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 007h	; 5-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-9

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 006h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 034h	; 6-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-9
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-10

inc  AX
mov  BX, playerY

add  BX, 4
oxgSHOWPIXEL AX, BX, 007h	; 7-4
add  BX, 2
oxgSHOWPIXEL AX, BX, 006h	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 034h	; 7-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-9
add  BX, 3
oxgSHOWPIXEL AX, BX, 095h	; 7-12
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 7-13
add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 7-15

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 0B8h	; 8-1
inc  BX
oxgSHOWPIXEL AX, BX, 0B8h	; 8-2
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-3
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-4
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-9
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-10
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 8-11
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 8-12
add  BX, 2
oxgSHOWPIXEL AX, BX, 095h	; 8-14
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-15

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 9-1
inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 9-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 9-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 9-4
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 9-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 9-11
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 9-12

inc  AX
mov  BX, playerY

add  BX, 2
oxgSHOWPIXEL AX, BX, 071h	; 10-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-4
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 10-11
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 10-12
add  BX, 3
oxgSHOWPIXEL AX, BX, 01Dh	; 10-15

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 00Ch	; 11-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 11-7
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Fh	; 11-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 11-10
add  BX, 3
oxgSHOWPIXEL AX, BX, 036h	; 11-13
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 11-14
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 11-15

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Ch	; 12-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-8
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 12-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 12-10


pop  BX
pop  AX
