; généré avec https://github.com/oxypomme/BMPtoASM
push AX
push BX

mov  AX, playerX
mov  BX, playerY

add  AX, 3
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 007h	; 3-3
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 3-4
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 3-5

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 006h	; 4-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 4-6

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 006h	; 5-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-7
add  BX, 6
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
oxgSHOWPIXEL AX, BX, 006h	; 6-9
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
oxgSHOWPIXEL AX, BX, 00Ch	; 7-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 7-9
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
oxgSHOWPIXEL AX, BX, 00Ch	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 8-9
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
add  BX, 5
oxgSHOWPIXEL AX, BX, 036h	; 9-12
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 9-13
add  BX, 2
oxgSHOWPIXEL AX, BX, 01Dh	; 9-15

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 00Ch	; 10-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 10-6

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 05Ah	; 11-3
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 11-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 11-5

pop  BX
pop  AX
