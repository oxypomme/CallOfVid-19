%include oxylib/oxysound.asm
%include oxylib/oxygame.asm
%include oxylib/oxyrand.asm

%include assets/drawV3.asm
%include assets/drawV3a.asm

DSEG        SEGMENT
     ; position du joueur
    playerX         DW ?
    playerY         DW ?
    ; 1 si le joueur pointe à droite
    playerRight     DB ?

     ; coordonnées du projectile
    projX           DW ?
    projY           DW ?
    ; 1 si le projectile pointe à droite
    projRight       DB ?

     ; position des ennemis
    mobsX           DW 0, 0, 0, 0
    mobsY           DW 0, 0, 0, 0
    ; 1 si les ennemis sont visibles
    mobsShowing     DW 0, 0, 0, 0

     ; titre
    titleLbl        DB "Call Of VID-19"
    l_titleLbl      EQU $-titleLbl
    ; jouer
    playBtn         DB "Play"
    l_playBtn       EQU $-playBtn
    ; ordonnée du bouton jouer
    _PLAYy_         EQU 92
    ; quitter
    quitBtn         DB "Quit"
    l_quitBtn       EQU $-quitBtn
    ; ordonnée du bouton quitter
    _QUITy_         EQU 115
     
     ; taille du joueur
    _g_playerSize   DW 16
    ; pixels par touche appuyés du deplacement du joueur
    _g_playerSpeed  DW 8
    ; taille du projectile
    _g_projSize     DW 16
    ; pixels par mise à jour du jeu du deplacement du projectile
    _g_projSpeed    DW 2
    ; taille du virus en pixel
    _g_virSize      DW 16
    ; pixels par mise à jour du jeu du deplacement des virus
    _g_virSpeed     DW 1

     ; 1 si un projectile est affiché à l'écran
    g_projShow      DB 0
    ; 1 si le joueur doit être affiché dans son sprite alternatif (animation)
    g_altSprite     DB 0
    ; compteur de frames pendant qu'un sprite joueur est affiché (animation)
    g_spriteCounter DW 0
    ; compteur de frames pendant qu'un sprite joueur de recul est affiché (animation)
    g_fireFrames    DW 60
    ; ordonnée du curseur dans le menu
    g_cursY         DW _PLAYy_
    ; compteur de frames après un déplacement du joueur (animation)
    g_moveFrames    DW 60
    ; dernier type de mouvement fait par le joueur (haut, bas, gauche, droite)
    g_lastDepl      DW 0
    ; compteur de frames pendant qu'un sprite ennemi est affiché (animation)
    g_virusAnimFrames  DW 0
DSEG        ENDS

SPAWNVIRUS MACRO virX, virY, show
    push DX

    oxrGETRND 100h, DX
    add  DX, 20h
    mov  virX, DX
    oxrGETRND 88h, DX
    add  DX, 20h
    mov  virY, DX
    mov  show, 1

    pop  DX
ENDM

; g_INIT
;
; initialise une nouvelle partie
g_INIT PROC NEAR
    mov playerX, 16
    mov playerY, 16
    mov playerRight, 1

    mov projX, 0
    mov projY, 0
    mov projRight, 1

    SPAWNVIRUS mobsX, mobsY, mobsShowing
    SPAWNVIRUS mobsX+2, mobsY+2, mobsShowing+2
    SPAWNVIRUS mobsX+4, mobsY+4, mobsShowing+4
    SPAWNVIRUS mobsX+6, mobsY+6, mobsShowing+6

    mov  g_projShow, 0
    mov  g_altSprite, 0
    mov  g_spriteCounter, 0
    mov  g_fireFrames, 60
    mov  g_moveFrames, 60
    mov  g_lastDepl, 0
    mov  g_virusAnimFrames, 0

    ret
g_INIT ENDP

; CLEARVIRUS
;
; efface une zone de la taille d'un virus
; X : absisse du point haut gauche de la zone
; Y : ordonnée du point haut gauche de la zone
CLEARVIRUS MACRO X, Y
    oxg_CLEARSOMETHING X, Y, 2, 2
ENDM

; CLEARPROJ
;
; efface le projectile
CLEARPROJ PROC NEAR
    oxg_CLEARSOMETHING projX, projY, 2, 1
    ret
CLEARPROJ ENDP

; CLEARPLAYER
;
; efface le joueur
CLEARPLAYER PROC NEAR
    oxg_CLEARSOMETHING playerX, playerY, 1, 1
    ret
CLEARPLAYER ENDP

; g_DRAWPLAYER
;
; dessine le joueur
g_DRAWPLAYER PROC FAR
    cmp  playerRight, 0
    jnz  gPdrawR
     ; la magie fait que ça fonctionne
    cmp  g_fireFrames, 30 ; priorité à l'animation de tir
    jbe  gPdrawFireL
    cmp  g_moveFrames, 30 ; animation de déplacement
    jbe  gPdrawMoveL
    cmp  g_altSprite, 0 ;animation idle
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

; g_DRAWBULLET
;
; dessine le projectile
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

; PLAYERCOLLIDEMOB
;
; réalise les tests de collision entre le joueur et les mobs
PLAYERCOLLIDEMOB PROC FAR
     push AX
     push BX

    cmp  mobsShowing, 0
    jz   isOnMobTwo
    mov  AX, mobsX
    cmp  playerX, AX
    jl   playerIsOnMobTwo
    add  AX, _g_virSize
    cmp  playerX, AX
    jg   playerIsOnMobTwo
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY
    sub  AX, BX
    cmp  playerY, AX
    jl   playerIsOnMobTwo
    add  AX, _g_virSize
    cmp  playerY, AX
    jg   playerIsOnMobTwo
     ;collision mob 1

    playerIsOnMobTwo:
    cmp  mobsShowing+2, 0
    jz   playerIsOnMobThr
    mov  AX, mobsX+2
    cmp  playerX, AX
    jl   playerIsOnMobThr
    add  AX, _g_virSize
    cmp  playerX, AX
    jg   playerIsOnMobThr
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY+2
    sub  AX, BX
    cmp  playerY, AX
    jl   playerIsOnMobThr
    add  AX, _g_virSize
    cmp  playerY, AX
    jg   playerIsOnMobThr
    ;collision mob 2

    playerIsOnMobThr:
    cmp  mobsShowing+4, 0
    jz   playerIsOnMobFou
    mov  AX, mobsX+4
    cmp  playerX, AX
    jl   playerIsOnMobFou
    add  AX, _g_virSize
    cmp  playerX, AX
    jg   playerIsOnMobFou
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY+4
    sub  AX, BX
    cmp  playerY, AX
    jl   playerIsOnMobFou
    add  AX, _g_virSize
    cmp  playerY, AX
    jg   playerIsOnMobFou
    ;collision mob 3

    playerIsOnMobFou:
    cmp  mobsShowing+6, 0
    jz   endPlayerCollide
    mov  AX, mobsX+6
    cmp  playerX, AX
    jl   endPlayerCollide
    add  AX, _g_virSize
    cmp  playerX, AX
    jg   endPlayerCollide
    mov  BX, _g_virSize
    sar  BX, 1
    mov  AX, mobsY+6
    sub  AX, BX
    cmp  playerY, AX
    jl   endPlayerCollide
    add  AX, _g_virSize
    cmp  playerY, AX
    jg   endPlayerCollide
    ;collision mob 4

    endPlayerCollide:

     pop BX
     pop AX
     ret
PLAYERCOLLIDEMOB ENDP

; BULLETCOLLIDEMOBS
;
; réalise les tests de collision entre le projectile et les mobs
BULLETCOLLIDEMOBS PROC FAR
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
    mov  g_projShow, 0
    mov  mobsShowing, 0
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
    mov  g_projShow, 0
    mov  mobsShowing+2, 0
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
    mov  g_projShow, 0
    mov  mobsShowing+4, 0
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
    mov  g_projShow, 0
    mov  mobsShowing+6, 0
    CLEARVIRUS mobsX+6, mobsY+6

    endCollide:
    pop  BX
    pop  AX

    ret
BULLETCOLLIDEMOBS ENDP

; ANIMATEBULLETR
;
; réalise les animation du projectile quand il va vers la droite
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

; ANIMATEBULLETL
;
; réalise les animation du projectile quand il va vers la gauche
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

; g_ANIMATEPLAYER
;
; mets à jour les variables d'animation du joueur
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

; g_ANIMATEVIRUSES
;
; anime les virus
g_ANIMATEVIRUSES PROC NEAR
     inc g_virusAnimFrames
     cmp g_virusAnimFrames, 60
     jne gAnimVirusFramesEnd
     mov g_virusAnimFrames, 0
     gAnimVirusFramesEnd:
          ret
g_ANIMATEVIRUSES ENDP

; g_PFORWARD
;
; code exécuté quand la touche du haut est pressée
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

; g_PLEFTWARD
;
; code exécuté quand la touche de gauche est pressée
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

; g_PBACKWARD
;
; code exécuté quand la touche du bas est pressée
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

; g_PRIGHTWARD
;
; code exécuté quand la touche de droite est pressée
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

; g_SHOOT
;
; code exécuté lorsque le joueur tire
g_SHOOT PROC NEAR
    cmp  g_fireFrames, 50
    jl  endShoot

    ;oxsPLAYSOUND _A_, 1
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

; g_MENU
;
; gestion du menu
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
    CLEARVIRUS 122, DX
    cmp g_virusAnimFrames, 30
    ja drawAltMenuVirus
    DRAWVIRUSo 122, DX
    jmp finallyMenu
    drawAltMenuVirus:
    DRAWVIRao 122, DX

    finallyMenu:
    pop  DX
    pop  CX
    pop  BX
    pop  AX
    ret
g_MENU ENDP

; g_DRAWMOBS
;
; dessine les virus
g_DRAWMOBS PROC FAR
     cmp g_virusAnimFrames, 30
     ja drawAltVir
    cmp  mobsShowing, 0
    jz   drawSecVirus
     
     CLEARVIRUS mobsX, mobsY
     DRAWVIRUSo mobsX, mobsY
    drawSecVirus:
         cmp  mobsShowing+2, 0
         jz   drawThiVirus
         CLEARVIRUS mobsX+2, mobsY+2
         DRAWVIRUSo mobsX+2, mobsY+2
    drawThiVirus:
         cmp  mobsShowing+4, 0
         jz   drawFouVirus
         CLEARVIRUS mobsX+4, mobsY+4
         DRAWVIRUSo mobsX+4, mobsY+4
    drawFouVirus:
         cmp  mobsShowing+6, 0
         jz   nextDraw
         CLEARVIRUS mobsX+6, mobsY+6
         DRAWVIRUSo mobsX+6, mobsY+6
     jmp nextDraw
     drawAltVir:
          cmp  mobsShowing, 0
          jz   drawAltSecVirus
          CLEARVIRUS mobsX, mobsY
          DRAWVIRao mobsX, mobsY
          drawAltSecVirus:
               cmp  mobsShowing+2, 0
               jz   drawAltThiVirus
               CLEARVIRUS mobsX+2, mobsY+2
               DRAWVIRao mobsX+2, mobsY+2
          drawAltThiVirus:
               cmp  mobsShowing+4, 0
               jz   drawAltFouVirus
               CLEARVIRUS mobsX+4, mobsY+4
               DRAWVIRao mobsX+4, mobsY+4
          drawAltFouVirus:
               cmp  mobsShowing+6, 0
               jz   nextDraw
               CLEARVIRUS mobsX+6, mobsY+6
               DRAWVIRao mobsX+6, mobsY+6
    nextDraw:
    ret
g_DRAWMOBS ENDP
