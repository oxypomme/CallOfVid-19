push AX
push BX

mov  AX, playerX
mov  BX, playerY


add  AX, 5
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 007h	; 5-3
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-4
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-5

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 006h	; 6-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 6-6

inc  AX
mov  BX, playerY

add  BX, 4
oxgSHOWPIXEL AX, BX, 007h	; 7-4
add  BX, 2
oxgSHOWPIXEL AX, BX, 006h	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 7-7
add  BX, 5
oxgSHOWPIXEL AX, BX, 001h	; 7-12
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 7-13
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
oxgSHOWPIXEL AX, BX, 006h	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-9
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-10
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 8-11
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 8-12
add  BX, 2
oxgSHOWPIXEL AX, BX, 001h	; 8-14
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
oxgSHOWPIXEL AX, BX, 00Ch	; 9-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-9
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
oxgSHOWPIXEL AX, BX, 00Ch	; 10-9
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
add  BX, 6
oxgSHOWPIXEL AX, BX, 036h	; 11-13
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 11-14
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 11-15

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 00Ch	; 12-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-6

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 05Ah	; 13-3
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 13-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 13-5


pop  BX
pop  AX
