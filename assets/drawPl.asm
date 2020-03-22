push AX
push BX

mov AX, playerX ; point haut gauche
mov BX, playerY

add AX, 8;cheveux
oxgSHOWPIXEL AX, BX, 0bah
inc AX
oxgSHOWPIXEL AX, BX, 06h
inc BX
mov AX, playerX;;;;;;;;;;;;;
add AX, 8
oxgSHOWPIXEL AX, BX, 0bah
inc AX
oxgSHOWPIXEL AX, BX, 06h
inc AX
oxgSHOWPIXEL AX, BX, 06h
inc BX;visage
mov AX, playerX
add AX, 8
oxgSHOWPIXEL AX, BX, 41h
inc AX
oxgSHOWPIXEL AX, BX, 59h
inc AX
oxgSHOWPIXEL AX, BX, 59h
inc BX
mov AX, playerX;;;;;;;;;;;;;
add AX, 7
oxgSHOWPIXEL AX, BX, 41h
inc AX
oxgSHOWPIXEL AX, BX, 41h
inc AX
oxgSHOWPIXEL AX, BX, 59h
inc AX
oxgSHOWPIXEL AX, BX, 59h
inc BX
mov AX, playerX;;;;;;;;;;
add AX, 8
oxgSHOWPIXEL AX, BX, 41h
inc AX
oxgSHOWPIXEL AX, BX, 59h
inc AX
oxgSHOWPIXEL AX, BX, 59h
inc BX; corps
mov AX, playerX
add AX, 7
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc BX
mov AX, playerX;;;;;;;;;;;;;;
add AX, 6
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc BX
mov AX, playerX;;;;;;;;;;;;;
add AX, 5
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 04h
add AX, 2
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
add AX, 2
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc BX
mov AX, playerX;;;;;;;;;;;;;;;;
add AX, 5
oxgSHOWPIXEL AX, BX, 04h
add AX, 3
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
add AX, 3
oxgSHOWPIXEL AX, BX, 0ch
inc BX
mov AX, playerX;;;;;;;;;;;;;;;;
add AX, 5
oxgSHOWPIXEL AX, BX, 41h
add AX, 3
oxgSHOWPIXEL AX, BX, 04h
inc AX
oxgSHOWPIXEL AX, BX, 0ch
inc AX
oxgSHOWPIXEL AX, BX, 0ch
add AX, 3
oxgSHOWPIXEL AX, BX, 59h
inc BX; pantalon
mov AX, playerX
add AX, 8
oxgSHOWPIXEL AX, BX, 69h
inc AX
oxgSHOWPIXEL AX, BX, 36h
inc AX
oxgSHOWPIXEL AX, BX, 36h
inc BX
mov AX, playerX;;;;;;;;;;;;;;
add AX, 7
oxgSHOWPIXEL AX, BX, 69h
inc AX
oxgSHOWPIXEL AX, BX, 69h
inc AX
oxgSHOWPIXEL AX, BX, 36h
inc AX
oxgSHOWPIXEL AX, BX, 36h
inc BX
mov AX, playerX;;;;;;;;;;;;;;
add AX, 7
oxgSHOWPIXEL AX, BX, 69h
add AX, 3
oxgSHOWPIXEL AX, BX, 36h
inc BX
mov AX, playerX;;;;;;;;;;;;;;;
add AX, 7
oxgSHOWPIXEL AX, BX, 69h
add AX, 4
oxgSHOWPIXEL AX, BX, 36h
inc BX
mov AX, playerX;;;;;;;;;;;;;;;
add AX, 8
oxgSHOWPIXEL AX, BX, 69h
add AX, 3
oxgSHOWPIXEL AX, BX, 36h
inc BX
mov AX, playerX
add AX, 7
oxgSHOWPIXEL AX, BX, 19h
inc AX
oxgSHOWPIXEL AX, BX, 19h
add AX, 2
oxgSHOWPIXEL AX, BX, 1dh
inc AX
oxgSHOWPIXEL AX, BX, 1dh


pop BX
pop AX
