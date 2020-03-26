%include oxylib/oxysound.asm
%include oxylib/oxygame.asm
%include oxylib/oxyrand.asm

DSEG        SEGMENT
    playerX         DW ?
    playerY         DW ?
    playerRight     DB ?

    projX           DW ?
    projY           DW ?
    projRight       DB ?

    mobsX           DW ?, ?, ?, ?
    mobsY           DW ?, ?, ?, ?
    mobsShowing     DW ?, ?, ?, ?

    titleLbl        DB "Call Of Vid-19"
    l_titleLbl      EQU $-titleLbl
    playBtn         DB "Play"
    l_playBtn       EQU $-playBtn
    _PLAYy_         EQU 92
    quitBtn         DB "Quit"
    l_quitBtn       EQU $-quitBtn
    _QUITy_         EQU 115

    _g_playerSize   DW 16
    _g_playerSpeed  DW 8
    _g_projSize     DW 16
    _g_projSpeed    DW 2
    _g_virSize      DW 16
    _g_virSpeed     DW 1

    g_projShow      DB 0
    g_altSprite     DB 0
    g_spriteCounter DW 0
    g_fireFrames    DW 60
    g_cursY         DW _PLAYy_
    g_moveFrames    DW 60
    g_lastDepl      DW 0
DSEG        ENDS

g_INIT PROC NEAR
    mov playerX, 32
    mov playerY, 32
    mov playerRight, 1

    mov projX, 0
    mov projY, 0
    mov projRight, 1

    mov mobsX, 65
    mov mobsX+2, 85
    mov mobsX+4, 105
    mov mobsX+6, 125

    mov mobsY, 65
    mov mobsY+2, 85
    mov mobsY+4, 105
    mov mobsY+6, 125

    mov mobsShowing, 1
    mov mobsShowing+2, 1
    mov mobsShowing+4, 1
    mov mobsShowing+6, 1

    mov g_projShow, 0
    mov g_altSprite, 0
    mov g_spriteCounter, 0
    mov g_fireFrames, 60
    mov g_moveFrames, 60
    mov g_lastDepl, 0
    ret
g_INIT ENDP

CLEARVIRUS MACRO X, Y
     oxg_CLEARSOMETHING X, Y, 2, 2
ENDM

CLEARPROJ PROC NEAR
     oxg_CLEARSOMETHING projX, projY, 2, 1
    ret
CLEARPROJ ENDP

CLEARPLAYER PROC NEAR
     oxg_CLEARSOMETHING playerX, playerY, 1, 1
    ret
CLEARPLAYER ENDP

g_DRAWPLAYER PROC NEAR
    cmp  playerRight, 0
    jnz  gPdrawR

    cmp  g_fireFrames, 30
    jbe  gPdrawFireL
    cmp  g_moveFrames, 30
    jbe  gPdrawMoveL
    cmp  g_altSprite, 0
    jnz  gPdrawAltL
    %include assets/drawPl.asm
    jmp  gPdrawEnd
    gPdrawFireL:
         %include assets/drawPlF.asm
         jmp  gPdrawEnd
    gPdrawMoveL:
         cmp g_lastDepl, 1
         je  gPdrawULeft
         cmp g_lastDepl, 2
         je  gPdrawDLeft
         %include assets/drawPMoL.asm
         jmp  gPdrawEnd
         gPdrawULeft:
              %include assets/drawPUpL.asm
              jmp  gPdrawEnd
         gPdrawDLeft:
              %include assets/drawPDoL.asm
              jmp  gPdrawEnd
    gPdrawAltL:
         %include assets/drawPlA.asm
         jmp  gPdrawEnd

    gPdrawR:
         cmp g_fireFrames, 30
         jbe gPdrawFireR
         cmp g_moveFrames, 30
         jbe gPdrawMoveR
         cmp g_altSprite, 0
         jnz gPdrawAltR
         %include assets/drawPr.asm
         jmp  gPdrawEnd
    gPdrawMoveR:
         cmp g_lastDepl, 1
         je  gPdrawURight
         cmp g_lastDepl, 2
         je  gPdrawDRight
         %include assets/drawPMoR.asm
         jmp  gPdrawEnd
         gPdrawURight:
              %include assets/drawPUpR.asm
              jmp  gPdrawEnd
         gPdrawDRight:
              %include assets/drawPDoR.asm
              jmp  gPdrawEnd
    gPdrawFireR:
         %include assets/drawPrF.asm
         jmp  gPdrawEnd
    gPdrawAltR:
         %include assets/drawPrA.asm

    gPdrawEnd:
         ret
g_DRAWPLAYER ENDP

g_DRAWBULLET PROC NEAR
     call CLEARPROJ

    cmp  projRight, 0
    jnz  gBanimR
    call ANIMATEBULLETL
    jmp  gBanimEnd
    gBanimR:
         call ANIMATEBULLETR

    gBanimEnd:
    cmp g_projShow, 0
    je gBdrawEnd
    cmp  projRight, 0

    jnz  gBdrawR

    %include assets/drawSerL.asm
    jmp  gBdrawEnd

    gBdrawR:
         %include assets/drawSerR.asm
    
    gBdrawEnd:
         ret
g_DRAWBULLET ENDP

BULLETCOLLIDEMOBS PROC NEAR
    push AX
    push BX

    cmp  mobsShowing, 0
    jz   isOnMobTwo
    mov  AX, mobsX
    cmp  projX, AX
    jl   isOnMobTwo
    add  AX, _g_virSize
    cmp  projX, AX
    jg   isOnMobTwo
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY
    sub  AX, BX
    cmp  projY, AX
    jl   isOnMobTwo
    add  AX, _g_virSize
    cmp  projY, AX
    jg   isOnMobTwo
    mov  mobsShowing, 0
    mov  g_projShow, 0
    CLEARVIRUS mobsX, mobsY


    isOnMobTwo:
    cmp  mobsShowing+2, 0
    jz   isOnMobThr
    mov  AX, mobsX+2
    cmp  projX, AX
    jl   isOnMobThr
    add  AX, _g_virSize
    cmp  projX, AX
    jg   isOnMobThr
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY+2
    sub  AX, BX
    cmp  projY, AX
    jl   isOnMobThr
    add  AX, _g_virSize
    cmp  projY, AX
    jg   isOnMobThr
    mov  mobsShowing+2, 0
    mov  g_projShow, 0
    CLEARVIRUS mobsX+2, mobsY+2

    isOnMobThr:
    cmp  mobsShowing+4, 0
    jz   isOnMobFou
    mov  AX, mobsX+4
    cmp  projX, AX
    jl   isOnMobFou
    add  AX, _g_virSize
    cmp  projX, AX
    jg   isOnMobFou
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY+4
    sub  AX, BX
    cmp  projY, AX
    jl   isOnMobFou
    add  AX, _g_virSize
    cmp  projY, AX
    jg   isOnMobFou
    mov  mobsShowing+4, 0
    mov  g_projShow, 0
    CLEARVIRUS mobsX+4, mobsY+4

    isOnMobFou:
    cmp  mobsShowing+6, 0
    jz   endCollide
    mov  AX, mobsX+6
    cmp  projX, AX
    jl   endCollide
    add  AX, _g_virSize
    cmp  projX, AX
    jg   endCollide
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY+6
    sub  AX, BX
    cmp  projY, AX
    jl   endCollide
    add  AX, _g_virSize
    cmp  projY, AX
    jg   endCollide
    mov  mobsShowing+6, 0
    mov  g_projShow, 0
    CLEARVIRUS mobsX+6, mobsY+6

    endCollide:
    pop  BX
    pop  AX

    ret
BULLETCOLLIDEMOBS ENDP

ANIMATEBULLETR PROC NEAR
    push AX

    mov  AX, projX
    add  AX, _g_projSpeed
    mov  projX, AX
    mov  AX, 140h
    sub  AX, _g_projSize
    cmp  projX, AX
    jl   endBAnimR

    mov  g_projShow, 0
    call CLEARPROJ

    endBAnimR:
    call BULLETCOLLIDEMOBS

    pop  AX
    ret
ANIMATEBULLETR ENDP

ANIMATEBULLETL PROC NEAR
    push AX

    mov  AX, projX
    sub  AX, _g_projSpeed
    mov  projX, AX
    mov  AX, 0h
    ;add  AX, _g_projSize
    cmp  projX, AX
    jg   endBAnimL

    mov  g_projShow, 0

    call CLEARPROJ

    endBAnimL:
    call BULLETCOLLIDEMOBS

    pop  AX
    ret
ANIMATEBULLETL ENDP

g_ANIMATEPLAYER PROC NEAR
    inc  g_spriteCounter
    cmp  g_fireFrames, 60
    ja   gAnimSkipFireFrames
    inc  g_fireFrames
    gAnimSkipFireFrames:
         cmp g_moveFrames, 60
         ja gAnimSkipMoveFrames
         inc g_moveFrames
         gAnimSkipMoveFrames:
              cmp g_spriteCounter, 40
              jne gAnimRet
              xor g_altSprite, 1
              mov g_spriteCounter, 0
    gAnimRet:
         call CLEARPLAYER
         call g_DRAWPLAYER

         ret
g_ANIMATEPLAYER ENDP

%include assets/drawVir.asm

g_PFORWARD PROC NEAR
    push AX
    push BX

    call CLEARPLAYER

    mov  g_lastDepl, 1
    mov  g_moveFrames, 0
    mov  AX, playerY
    mov  BX, 0h
    ;add  BX, _g_playerSize
    cmp  AX, BX
    jne  moveFor
    jmp  finallyFor

    moveFor:        
         sub  AX, _g_playerSpeed 
         mov  playerY, AX
    finallyFor: 
         call g_DRAWPLAYER       
         pop  BX
         pop  AX
 
         ret
g_PFORWARD ENDP

g_PLEFTWARD PROC NEAR
    push AX
    push BX
    mov  playerRight, 0

    call CLEARPLAYER

    mov  g_lastDepl, 0
    mov  g_moveFrames, 0
    mov  AX, playerX
    mov  BX, 0h
    ;add  BX, _g_playerSize
    cmp  AX, BX
    jne  moveRig
    jmp  finallyRig

    moveRig:        
         sub  AX, _g_playerSpeed 
         mov  playerX, AX
    finallyRig:
         call g_DRAWPLAYER       
         pop  BX
         pop  AX

         ret
g_PLEFTWARD ENDP

g_PBACKWARD PROC NEAR
    push AX
    push BX

    call CLEARPLAYER

    mov g_lastDepl, 2
    mov g_moveFrames, 0
    mov  AX, playerY
    mov  BX, 0B8h
    ;sub  BX, _g_playerSize
    cmp  AX, BX
    jne  moveBac
    jmp  finallyBac
    
    moveBac:        
         add  AX, _g_playerSpeed 
         mov  playerY, AX
    finallyBac:
         call g_DRAWPLAYER       
         pop  BX
         pop  AX

         ret
g_PBACKWARD ENDP

g_PRIGHTWARD PROC NEAR
    push AX
    push BX
    mov  playerRight, 1

    call CLEARPLAYER

    mov  g_lastDepl, 0
    mov  g_moveFrames, 0
    mov  AX, playerX
    mov  BX, 140h
    sub  BX, _g_playerSize
    ;sub  BX, _g_playerSize
    cmp  AX, BX
    jne  moveLef
    jmp  finallyLef

    moveLef:
         add  AX, _g_playerSpeed 
         mov  playerX, AX
    finallyLef:
         call g_DRAWPLAYER       
         pop  BX
         pop  AX
 
         ret
g_PRIGHTWARD ENDP

g_SHOOT PROC NEAR
    cmp  g_fireFrames, 50
    jl  endShoot

    oxsPLAYSOUND _A_, 1
     call CLEARPROJ
    push AX
    push BX
    
    mov  g_fireFrames, 0

    mov  AL, playerRight
    mov  projRight, AL

    mov  AX, playerX
    mov  BX, _g_playerSize
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

    endShoot:
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


    mov  DX, g_cursY
    sub  DX, _g_virSize
    g_DRAWVIRUS 122, DX

    pop  DX
    pop  CX
    pop  BX
    pop  AX
    ret
g_MENU ENDP

g_DRAWMOBS PROC NEAR
    cmp  mobsShowing, 0
    jz   drawSecVirus
    g_DRAWVIRUS mobsX, mobsY
    drawSecVirus:
         cmp  mobsShowing+2, 0
         jz   drawThiVirus
         g_DRAWVIRUS mobsX+2, mobsY+2
    drawThiVirus:
         cmp  mobsShowing+4, 0
         jz   drawFouVirus
         g_DRAWVIRUS mobsX+4, mobsY+4
    drawFouVirus:
         cmp  mobsShowing+6, 0
         jz   nextDraw
         g_DRAWVIRUS mobsX+6, mobsY+6

    nextDraw:
    ret
g_DRAWMOBS ENDP
