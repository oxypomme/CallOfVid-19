; généré avec https://github.com/oxypomme/BMPtoASM
push AX
push BX

mov  AX, playerX
mov  BX, playerY

add  AX, 4
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 007h	; 4-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 007h	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 007h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 007h	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 7-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 7-9
add  BX, 6
oxgSHOWPIXEL AX, BX, 007h	; 7-15

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 006h	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-8
add  BX, 6
oxgSHOWPIXEL AX, BX, 001h	; 8-14
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 8-15

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 007h	; 9-3
add  BX, 2
oxgSHOWPIXEL AX, BX, 006h	; 9-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-8
add  BX, 3
oxgSHOWPIXEL AX, BX, 001h	; 9-11
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 9-12
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 9-13

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 0B8h	; 10-0
inc  BX
oxgSHOWPIXEL AX, BX, 0B8h	; 10-1
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 10-2
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 10-3
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 10-4
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 10-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 10-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 10-9
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 10-10
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 10-11

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 071h	; 11-0
inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 11-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 11-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 11-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 11-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 11-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 11-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 11-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 11-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 11-9
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 11-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 11-11

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 12-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 12-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 12-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 12-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 12-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-9
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 12-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 12-11
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 12-12

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 00Ch	; 13-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 13-6
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Fh	; 13-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 13-9
add  BX, 4
oxgSHOWPIXEL AX, BX, 036h	; 13-13
add  BX, 2
oxgSHOWPIXEL AX, BX, 01Dh	; 13-15

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 00Ch	; 14-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 14-7
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Fh	; 14-9
add  BX, 5
oxgSHOWPIXEL AX, BX, 036h	; 14-14
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 14-15

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Ch	; 15-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 15-8
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 15-9

pop  BX
pop  AX
