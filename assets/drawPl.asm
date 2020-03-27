; généré avec https://github.com/oxypomme/BMPtoASM
push AX
push BX

mov  AX, playerX
mov  BX, playerY

add  AX, 2
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 007h	; 2-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 007h	; 3-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 007h	; 4-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 4-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 007h	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-9

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 006h	; 6-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-8

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 007h	; 7-3
add  BX, 2
oxgSHOWPIXEL AX, BX, 006h	; 7-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-8
add  BX, 3
oxgSHOWPIXEL AX, BX, 001h	; 7-11
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 7-12
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 7-13
add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 7-15

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 0B8h	; 8-0
inc  BX
oxgSHOWPIXEL AX, BX, 0B8h	; 8-1
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-2
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-3
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-4
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-9
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 8-10
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 8-11
add  BX, 3
oxgSHOWPIXEL AX, BX, 001h	; 8-14
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-15

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 071h	; 9-0
inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 9-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 9-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 9-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 9-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-9
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 9-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 9-11

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 10-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-9
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 10-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 10-11
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 10-12
add  BX, 3
oxgSHOWPIXEL AX, BX, 01Dh	; 10-15

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 00Ch	; 11-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 11-6
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Fh	; 11-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 11-9
add  BX, 4
oxgSHOWPIXEL AX, BX, 036h	; 11-13
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 11-14
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 11-15

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 00Ch	; 12-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-7
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Fh	; 12-9

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Ch	; 13-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 13-8
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 13-9

pop  BX
pop  AX
