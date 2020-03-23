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


inc  AX
mov  BX, playerY

add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 5-2
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-3
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-4
add  BX, 10
oxgSHOWPIXEL AX, BX, 007h	; 5-14

inc  AX
mov  BX, playerY

add  BX, 4
oxgSHOWPIXEL AX, BX, 006h	; 6-4
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 6-5
add  BX, 6
oxgSHOWPIXEL AX, BX, 001h	; 6-11
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 6-12
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 6-13
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 6-14

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 007h	; 7-3
add  BX, 2
oxgSHOWPIXEL AX, BX, 006h	; 7-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 7-6
add  BX, 5
oxgSHOWPIXEL AX, BX, 001h	; 7-11

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
oxgSHOWPIXEL AX, BX, 006h	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 8-9
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 8-10
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 8-11

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
oxgSHOWPIXEL AX, BX, 00Ch	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 9-8
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
oxgSHOWPIXEL AX, BX, 00Ch	; 10-8
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
add  BX, 7
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
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 12-8
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 12-9

inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY


pop  BX
pop  AX
