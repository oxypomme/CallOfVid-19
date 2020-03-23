push AX
push BX

mov  AX, playerX
mov  BX, playerY

add  BX, 8
oxgSHOWPIXEL AX, BX, 07Ah	; 0-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 07Ah	; 1-7
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 1-8
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 1-9

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 07Ah	; 2-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 2-7
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 2-8
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 2-9
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 2-10

inc  AX
mov  BX, playerY

add  BX, 5
oxgSHOWPIXEL AX, BX, 07Ah	; 3-5
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 3-6
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 3-7
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 3-8
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 3-9
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 3-10
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 3-11

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 07Ah	; 4-6
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 4-7
inc  BX
oxgSHOWPIXEL AX, BX, 062h	; 4-8
inc  BX
oxgSHOWPIXEL AX, BX, 032h	; 4-9
inc  BX
oxgSHOWPIXEL AX, BX, 07Ah	; 4-10

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 062h	; 5-7
inc  BX
oxgSHOWPIXEL AX, BX, 062h	; 5-8

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 062h	; 6-7
inc  BX
oxgSHOWPIXEL AX, BX, 062h	; 6-8
inc  BX
oxgSHOWPIXEL AX, BX, 01Eh	; 6-9

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 046h	; 7-6
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 7-7
inc  BX
oxgSHOWPIXEL AX, BX, 062h	; 7-8
add  BX, 7
oxgSHOWPIXEL AX, BX, 04Bh	; 7-15

inc  AX
mov  BX, playerY

add  BX, 3
oxgSHOWPIXEL AX, BX, 05Fh	; 8-3
add  BX, 2
oxgSHOWPIXEL AX, BX, 046h	; 8-5
inc  BX
oxgSHOWPIXEL AX, BX, 03Eh	; 8-6
inc  BX
oxgSHOWPIXEL AX, BX, 026h	; 8-7
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 8-8
add  BX, 3
oxgSHOWPIXEL AX, BX, 033h	; 8-11
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 8-12
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 8-13
inc  BX
oxgSHOWPIXEL AX, BX, 033h	; 8-14
inc  BX
oxgSHOWPIXEL AX, BX, 04Ah	; 8-15

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 08Fh	; 9-0
inc  BX
oxgSHOWPIXEL AX, BX, 08Fh	; 9-1
inc  BX
oxgSHOWPIXEL AX, BX, 01Ch	; 9-2
inc  BX
oxgSHOWPIXEL AX, BX, 01Ch	; 9-3
inc  BX
oxgSHOWPIXEL AX, BX, 01Ch	; 9-4
inc  BX
oxgSHOWPIXEL AX, BX, 018h	; 9-5
inc  BX
oxgSHOWPIXEL AX, BX, 03Eh	; 9-6
inc  BX
oxgSHOWPIXEL AX, BX, 026h	; 9-7
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 9-8
inc  BX
oxgSHOWPIXEL AX, BX, 018h	; 9-9
inc  BX
oxgSHOWPIXEL AX, BX, 003h	; 9-10
inc  BX
oxgSHOWPIXEL AX, BX, 003h	; 9-11

inc  AX
mov  BX, playerY

oxgSHOWPIXEL AX, BX, 08Ch	; 10-0
inc  BX
oxgSHOWPIXEL AX, BX, 08Ch	; 10-1
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-2
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-3
inc  BX
oxgSHOWPIXEL AX, BX, 05Ah	; 10-4
inc  BX
oxgSHOWPIXEL AX, BX, 040h	; 10-5
inc  BX
oxgSHOWPIXEL AX, BX, 040h	; 10-6
inc  BX
oxgSHOWPIXEL AX, BX, 056h	; 10-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 10-8
inc  BX
oxgSHOWPIXEL AX, BX, 040h	; 10-9
inc  BX
oxgSHOWPIXEL AX, BX, 035h	; 10-10
inc  BX
oxgSHOWPIXEL AX, BX, 035h	; 10-11
add  BX, 4
oxgSHOWPIXEL AX, BX, 01Dh	; 10-15

inc  AX
mov  BX, playerY

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
inc  BX
oxgSHOWPIXEL AX, BX, 036h	; 11-12
inc  BX
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
add  BX, 2
oxgSHOWPIXEL AX, BX, 00Fh	; 12-8

inc  AX
mov  BX, playerY

add  BX, 6
oxgSHOWPIXEL AX, BX, 00Ch	; 13-6
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 13-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 13-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 13-9

inc  AX
mov  BX, playerY

add  BX, 7
oxgSHOWPIXEL AX, BX, 00Ch	; 14-7
inc  BX
oxgSHOWPIXEL AX, BX, 00Ch	; 14-8
inc  BX
oxgSHOWPIXEL AX, BX, 00Fh	; 14-9

inc  AX
mov  BX, playerY


pop  BX
pop  AX
