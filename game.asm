%include oxylib/oxysound.asm
%include oxylib/oxygame.asm

DSEG        SEGMENT
    playerX         DW 32
    playerY         DW 32
    playerRight     DB 1

    projX           DW 0
    projY           DW 0
    projRight       DB 1

    mobsX           DW   5,  25,  45,  65
    mobsY           DW 100, 100, 100, 100
    mobsShowing     DB 1, 1, 1, 1

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
    add  AX, _g_projSpeed
    mov  projX, AX
    mov  AX, 140h
    sub  AX, _g_projSize
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
    sub  AX, _g_projSpeed
    mov  projX, AX
    mov  AX, 0h
    ;add  AX, _g_projSize
    cmp  projX, AX
    jg   endBAnimL

    mov  g_projShow, 0

    endBAnimL:
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
        ret
g_ANIMATEPLAYER ENDP

%include assets/drawVir.asm

g_PFORWARD PROC NEAR
    push AX
    push BX
    
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
         pop  BX
         pop  AX
 
         ret
g_PFORWARD ENDP

g_PLEFTWARD PROC NEAR
    push AX
    push BX
    mov  playerRight, 0
 
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
         pop  BX
         pop  AX

         ret
g_PLEFTWARD ENDP

g_PBACKWARD PROC NEAR
    push AX
    push BX

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
         pop  BX
         pop  AX

         ret
g_PBACKWARD ENDP

g_PRIGHTWARD PROC NEAR
    push AX
    push BX
    mov  playerRight, 1

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
         pop  BX
         pop  AX
 
         ret
g_PRIGHTWARD ENDP

g_SHOOT PROC NEAR
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
    jne  drawFirVirus
    cmp  mobsShowing+2, 0
    jne  drawSecVirus
    cmp  mobsShowing+4, 0
    jne  drawThiVirus
    cmp  mobsShowing+6, 0
    jne  drawFouVirus

    drawFirVirus:
         g_DRAWVIRUS mobsX, mobsY
         jmp  nextDraw
    drawSecVirus:
         g_DRAWVIRUS mobsX+2, mobsY+2
         jmp  nextDraw
    drawThiVirus:
         g_DRAWVIRUS mobsX+4, mobsY+4
         jmp  nextDraw
    drawFouVirus:
         g_DRAWVIRUS mobsX+6, mobsY+6
         jmp  nextDraw

    nextDraw:
         
    ret
g_DRAWMOBS ENDP
