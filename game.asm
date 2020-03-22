%include oxylib/oxygraph.asm

DSEG        SEGMENT
    ; Define few keys
    _Zkey_          EQU 2Ch
    _Qkey_          EQU 10h
    _Skey_          EQU 1Fh
    _Dkey_          EQU 20h
    _Upkey_         EQU 48h
    _Leftkey_       EQU 4Bh
    _Downkey_       EQU 50h
    _Rightkey_      EQU 4Dh
    _ESCkey_        EQU 01h
    _ENTERkey_      EQU 1Ch

    playerX         DW 32
    playerY         DW 32

    projX           DW 0
    projY           DW 0

    titleLbl        DB "Call Of Vid-19"
    l_titleLbl      EQU $-titleLbl
    playBtn         DB "Play"
    l_playBtn       EQU $-playBtn
    quitBtn         DB "Quit"
    l_quitBtn       EQU $-quitBtn

    oxj_framerate   DW 0

    g_playerSize    DW 16
    g_playerSpeed   DW 8
    g_projSize      DW 16
    g_projSpeed     DW 5
    g_playerRight   DB 1
DSEG        ENDS

oxj_FRM PROC NEAR
    cmp  oxj_framerate, 25
    jg   midfrm
    jmp  lowfrm
    lowfrm:
         oxDELAY 0FA0h
         jmp finnalyFrm
    midfrm:
         oxDELAY 0BB8h
         jmp finnalyFrm
    highfrm:
         oxDELAY 0FA0h
         jmp finnalyFrm
    finnalyFrm:
         ret
oxj_FRM ENDP

oxj_GETKEY PROC NEAR
    mov  AH, 10h
    int  16h
oxj_GETKEY ENDP

oxj_DRAWPLAYER PROC NEAR
    cmp  g_playerRight, 0
    jnz  oxjDrawR

    %include assets/drawPl.asm
    jmp  oxjDrawEnd

    oxjDrawR:
         %include assets/drawPr.asm

    oxjDrawEnd:
         ret
oxj_DRAWPLAYER ENDP

oxj_PFORWARD PROC NEAR
    push AX
    push BX

    mov  AX, playerY
    mov  BX, 0h
    ;add  BX, g_playerSize
    cmp  AX, BX
    jne  moveFor
    jmp  finallyFor

    moveFor:
        sub  AX, g_playerSpeed  
        mov  playerY, AX

    finallyFor:
        pop  BX
        pop  AX

        ret
oxj_PFORWARD ENDP

oxj_PLEFTWARD PROC NEAR
    push AX
    push BX
    mov g_playerRight, 0

    mov  AX, playerX
    mov  BX, 0h
    ;add  BX, g_playerSize
    cmp  AX, BX
    jne  moveRig
    jmp  finallyRig

    moveRig:
        sub  AX, g_playerSpeed  
        mov  playerX, AX

    finallyRig:
        pop  BX
        pop  AX

        ret
oxj_PLEFTWARD ENDP

oxj_PBACKWARD PROC NEAR
    push AX
    push BX

    mov  AX, playerY
    mov  BX, 0B8h
    ;sub  BX, g_playerSize
    cmp  AX, BX
    jne  moveBac
    jmp  finallyBac
    
    moveBac:
        add  AX, g_playerSpeed  
        mov  playerY, AX

    finallyBac:
        pop  BX
        pop  AX

        ret
oxj_PBACKWARD ENDP

oxj_PRIGHTWARD PROC NEAR
    push AX
    push BX
    mov g_playerRight, 1

    mov  AX, playerX
    mov  BX, 140h
    sub  BX, g_playerSize
    ;sub  BX, g_playerSize
    cmp  AX, BX
    jne  moveLef
    jmp  finallyLef

    moveLef:
        add  AX, g_playerSpeed  
        mov  playerX, AX

    finallyLef:
        pop  BX
        pop  AX

        ret
oxj_PRIGHTWARD ENDP

oxj_SHOOT PROC NEAR
    push AX
    
    mov  AX, projX
    add  AX, g_projSpeed
    mov  projX, AX

    mov  AX, g_playerSize
    sar  AX, 1      ; div by 2
    add  AX, playerY
    mov  projY, AX

    pop  AX

    oxgSHOWHORLINE projX, projY, g_projSize, _WHITE_

    ret
oxj_SHOOT ENDP

oxjDRAWVIRUS MACRO xA, yA
    %include assets/drawVir.asm
    virASSET xA, yA
ENDM


oxj_MENU PROC NEAR
    push AX
    push BX
    push CX
    push DX

    oxgFILLS 11, 5, 28, 15, _BLACK_

    ; on écrit le titre
    oxgSETCURSOR 13, 7
    mov  BX, 0001h
    lea  DX, titleLbl
    mov  CX, l_titleLbl
    mov  AH, 40h
    int  21h

    ; on écrit le premier boutton (jouer)
    oxgSETCURSOR 18, 10
    mov  BX, 0001h
    lea  DX, playBtn
    mov  CX, l_playBtn
    mov  AH, 40h
    int  21h

    ; on écrit le deuxième boutton (quitter) 
    oxgSETCURSOR 18, 13
    mov  BX, 0001h
    lea  DX, quitBtn
    mov  CX, l_quitBtn
    mov  AH, 40h
    int  21h
    oxgSETCURSOR 0, 0

    ; on affiche le selecteur
    mov  DX, cursY
    sub  DX, 16
    oxjDRAWVIRUS 122, DX

    pop  DX
    pop  CX
    pop  BX
    pop  AX
    ret
oxj_MENU ENDP
