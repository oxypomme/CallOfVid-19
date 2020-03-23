push AX
push BX

mov  AX, playerX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 006h	; 0-7
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 0-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 0-9

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 006h	; 1-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 1-7
add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 1-9
add  BX, 5
oxgSHOWPIXEL AX, BX, 001h	; 1-14
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 1-15

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 006h	; 2-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 2-6
add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 2-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 2-9
add  BX, 4
oxgSHOWPIXEL AX, BX, 001h	; 2-13
add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 2-15

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 0B8h	; 3-1
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-2
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-3
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-4
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 3-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 3-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 3-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-8
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 3-9
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 3-10
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 3-11
inc  BX
oxgSHOWPIXEL AX, BX, 001h	; 3-12

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 0B8h	; 4-0
inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 4-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 4-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 4-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 4-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 4-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 4-6
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 4-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 4-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 4-9
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 4-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 4-11

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 071h	; 5-0
inc  BX
oxgSHOWPIXEL AX, BX, 071h	; 5-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 5-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 5-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 5-4
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 5-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 5-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 5-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 5-9
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 5-10
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 5-11

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 05Ah	; 6-3
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Ch	; 6-5
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 6-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-8
add  BX, 3
oxgSHOWPIXEL AX, BX, 036h	; 6-11
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 6-12
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 6-13

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 00Ch	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 7-8
add  BX, 6
oxgSHOWPIXEL AX, BX, 036h	; 7-14
inc  BX
oxgSHOWPIXEL AX, BX, 01Dh	; 7-15

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 8-8
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 8-9
add  BX, 6
oxgSHOWPIXEL AX, BX, 01Dh	; 8-15

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8

inc  AX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 00Fh	; 11-8

inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY


inc  AX
mov  BX, playerY


pop  BX
pop  AX
