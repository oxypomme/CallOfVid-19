; généré avec https://github.com/oxypomme/BMPtoASM
push AX
push BX

mov  AX, playerX
mov  BX, playerY

add  AX, 2
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 006h	; 2-7
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 2-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 2-9

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 006h	; 3-6
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 3-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-8
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 3-9

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 006h	; 4-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 4-6
add  BX, 2
oxgSHOWPIXEL AX, BX, 007h	; 4-8

inc  AX
mov  BX, playerY

inc  BX
oxgSHOWPIXEL AX, BX, 0B8h	; 5-1
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-2
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-3
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-4
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-5
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-6
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-8
inc  BX
oxgSHOWPIXEL AX, BX, 006h	; 5-9
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 5-10
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 5-11
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 5-12
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 5-13
inc  BX
oxgSHOWPIXEL AX, BX, 095h	; 5-14
inc  BX
oxgSHOWPIXEL AX, BX, 007h	; 5-15

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 0D4h	; 6-0
inc  BX
oxgSHOWPIXEL AX, BX, 08Ch	; 6-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 6-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 6-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 6-4
inc  BX
oxgSHOWPIXEL AX, BX, 040h	; 6-5
inc  BX
oxgSHOWPIXEL AX, BX, 040h	; 6-6
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 6-8
inc  BX
oxgSHOWPIXEL AX, BX, 040h	; 6-9
inc  BX
oxgSHOWPIXEL AX, BX, 035h	; 6-10
inc  BX
oxgSHOWPIXEL AX, BX, 035h	; 6-11
add  BX, 4
oxgSHOWPIXEL AX, BX, 01Ah	; 6-15

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 08Ch	; 7-0
inc  BX
oxgSHOWPIXEL AX, BX, 08Ch	; 7-1
inc  BX
oxgSHOWPIXEL AX, BX, 01Eh	; 7-2
inc  BX
oxgSHOWPIXEL AX, BX, 01Eh	; 7-3
inc  BX
oxgSHOWPIXEL AX, BX, 01Eh	; 7-4
inc  BX
oxgSHOWPIXEL AX, BX, 042h	; 7-5
inc  BX
oxgSHOWPIXEL AX, BX, 03Eh	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 026h	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 7-8
inc  BX
oxgSHOWPIXEL AX, BX, 042h	; 7-9
inc  BX
oxgSHOWPIXEL AX, BX, 00Bh	; 7-10
inc  BX
oxgSHOWPIXEL AX, BX, 00Bh	; 7-11

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 01Eh	; 8-3
add  BX, 2
oxgSHOWPIXEL AX, BX, 043h	; 8-5
inc  BX
oxgSHOWPIXEL AX, BX, 03Eh	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 026h	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 8-8
add  BX, 3
oxgSHOWPIXEL AX, BX, 00Bh	; 8-11
add  BX, 3
oxgSHOWPIXEL AX, BX, 00Bh	; 8-14
inc  BX
oxgSHOWPIXEL AX, BX, 01Eh	; 8-15

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 045h	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 9-8
add  BX, 4
oxgSHOWPIXEL AX, BX, 00Bh	; 9-12
inc  BX
oxgSHOWPIXEL AX, BX, 00Bh	; 9-13
add  BX, 2
oxgSHOWPIXEL AX, BX, 01Eh	; 9-15

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 01Eh	; 10-9

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Fh	; 11-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 11-8

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 07Ah	; 12-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 12-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 12-8
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 12-9
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 12-10

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 07Ah	; 13-5
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 13-6
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 13-7
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 13-8
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 13-9
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 13-10
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 13-11

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 07Ah	; 14-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 14-7
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 14-8
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 14-9
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 14-10

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 07Ah	; 15-7
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 15-8
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 15-9

pop  BX
pop  AX
