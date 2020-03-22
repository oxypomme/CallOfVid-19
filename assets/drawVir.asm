virASSET MACRO xA, yA
    push AX
    push BX

    mov  AX, xA
    mov  BX, yA

    ; l00
    inc  AX

    ; l01
    add  BX, 5
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_

    inc  AX
    mov  BX, yA

    ; l02
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_

    inc  AX
    mov  BX, yA

    ; l03
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _LRED_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _LRED_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_

    inc  AX
    mov  BX, yA

    ; l04
    add  BX, 4
    oxgSHOWPIXEL AX, BX, _LRED_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _LRED_


    inc  AX
    mov  BX, yA

    ; l05
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_

    inc  AX
    mov  BX, yA

    ; l06
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_

    inc  AX
    mov  BX, yA

    ; l07
    add  BX, 4
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_

    inc  AX
    mov  BX, yA

    ; l08
    add  BX, 4
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_

    inc  AX
    mov  BX, yA

    ; l09
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_

    inc  AX
    mov  BX, yA

    ; l10
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _LRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _PURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DPURPLE_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_

    inc  AX
    mov  BX, yA

    ; l11
    add  BX, 4
    oxgSHOWPIXEL AX, BX, _LRED_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _DRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DRED_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _DRED_


    inc  AX
    mov  BX, yA

    ; l12
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _DRED_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _DRED_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_

    inc  AX
    mov  BX, yA

    ; l13
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _YELLOW_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _YELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    add  BX, 2
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_

    inc  AX
    mov  BX, yA

    ; l14
    add  BX, 5
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    add  BX, 3
    oxgSHOWPIXEL AX, BX, _DYELLOW_
    inc  BX
    oxgSHOWPIXEL AX, BX, _DYELLOW_

    pop  BX
    pop  AX
ENDM
