%include oxylib/oxygame.asm

DSEG        SEGMENT
    playerX         DW 32
    playerY         DW 32
    playerRight     DB 1

    projX           DW 0
    projY           DW 0
    projRight       DB 1

    titleLbl        DB "Call Of Vid-19"
    l_titleLbl      EQU $-titleLbl
    playBtn         DB "Play"
    l_playBtn       EQU $-playBtn
    quitBtn         DB "Quit"
    l_quitBtn       EQU $-quitBtn

    g_playerSize    DW 16
    g_playerSpeed   DW 8
    g_projSize      DW 16
    g_projSpeed     DW 1
    g_projShow      DB 0
    g_altSprite     DB 0
    g_spriteCounter DW 0
DSEG        ENDS

g_DRAWPLAYER PROC NEAR
    cmp  playerRight, 0
    jnz  gPdrawR

    cmp g_altSprite, 0
    jnz gPdrawAltL
    %include assets/drawPl.asm
    jmp gPdrawEnd
    gPdrawAltL:
        %include assets/drawPr.asm
        jmp  gPdrawEnd

    gPdrawR:
        cmp g_altSprite, 0
        jnz gPdrawAltR
        %include assets/drawPl.asm
        jmp  gPdrawEnd
    gPdrawAltR:
        %include assets/drawPr.asm

    gPdrawEnd:
         ret
g_DRAWPLAYER ENDP

g_DRAWBULLET PROC NEAR
    cmp  projRight, 0
    jnz  gBdrawR

    %include assets/drawSerL.asm
    call ANIMATEBULLETL
    jmp  gBdrawEnd

    gBdrawR:
         %include assets/drawSerR.asm
         call ANIMATEBULLETR
    
    gBdrawEnd:
         ret
g_DRAWBULLET ENDP

ANIMATEBULLETR PROC NEAR
    push AX

    mov  AX, projX
    add  AX, g_projSpeed
    mov  projX, AX
    mov  AX, 140h
    sub  AX, g_projSize
    cmp  projX, AX
    jl   endBAnimR

    mov  g_projShow, 0

    endBAnimR:
         pop  AX
         ret
ANIMATEBULLETR ENDP

ANIMATEBULLETL PROC NEAR
    push AX

    mov  AX, projX
    sub  AX, g_projSpeed
    mov  projX, AX
    mov  AX, 0h
    ;add  AX, g_projSize
    cmp  projX, AX
    jg   endBAnimL

    mov  g_projShow, 0

    endBAnimL:
        pop  AX
        ret
ANIMATEBULLETL ENDP

%include assets/drawVir.asm

g_PFORWARD PROC NEAR
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
g_PFORWARD ENDP

g_ANIMATEPLAYER PROC NEAR
    inc g_spriteCounter
    cmp g_spriteCounter, 20
    jne gAnimRet
    xor g_altSprite, 1
    mov g_spriteCounter, 0
    gAnimRet:
        ret
g_ANIMATEPLAYER ENDP

g_PLEFTWARD PROC NEAR
    push AX
    push BX
    mov playerRight, 0

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
g_PLEFTWARD ENDP

g_PBACKWARD PROC NEAR
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
g_PBACKWARD ENDP

g_PRIGHTWARD PROC NEAR
    push AX
    push BX
    mov playerRight, 1

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
g_PRIGHTWARD ENDP

g_SHOOT PROC NEAR
    push AX
    push BX
    
    mov  AL, playerRight
    mov  projRight, AL

    mov  AX, playerX
    mov  BX, g_playerSize
    sar  BX, 1      ; div by 2
    cmp  playerRight, 0
    jz   shootLeft
    add  AX, BX
    jmp  shootNext
    shootLeft:
         sub AX, BX
    shootNext:
    mov  projX, AX

    mov  AX, playerY
    mov  projY, AX

    pop  BX
    pop  AX

    mov g_projShow, 1

    ret
g_SHOOT ENDP

g_MENU PROC NEAR
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
    g_DRAWVIRUS 122, DX

    pop  DX
    pop  CX
    pop  BX
    pop  AX
    ret
g_MENU ENDP
