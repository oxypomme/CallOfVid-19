.286

SSEG     SEGMENT STACK
         DB      32      DUP("STACK---")
SSEG     ENDS

; Data Segment
DSEG     SEGMENT
DSEG     ENDS

; Code Segment
CSEG     SEGMENT 'CODE'
ASSUME   CS:CSEG, DS:DSEG, SS:SSEG

%include game.asm

MAIN     PROC FAR
    ; Sauver l'adresse de retour
    push DS
    push 0

    ; Registre
    mov  AX, DSEG
    mov  DS, AX

    ; Mode Video
    ;   320*200 avec 256 couleurs
    call oxgSETUPGRAPHICS
    push AX
    init_menu:
         call g_MENU
    menu:
         pop  AX
         mov  oxj_framerate, 60
         call oxj_FRM
         
         push AX
         push BX
         push CX
         push DX

         cmp  g_cursY, _PLAYy_
         jne   clearQuitCursor
         mov  DX, _QUITy_
         jmp drawCursor
         clearQuitCursor:
         mov  DX, _PLAYy_

         drawCursor:
         sub  DX, _g_virSize
         CLEARVIRUS 122, DX

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

         call g_ANIMATEVIRUSES

         push AX
         call oxj_GETKEYPRESS
         jz   menu
         ; on récupère la touche appuyée dans AH
         call oxj_GETKEY

         ; si c'est Z
         cmp  AH, _Zkey_
         je   menu_up
         ; si c'est HAUT
         cmp  AH, _Upkey_
         je   menu_up
         ; si c'est S
         cmp  AH, _Skey_
         je   menu_down
         ; si c'est BAS
         cmp  AH, _Downkey_
         je   menu_down
         ; si c'est ENTER
         cmp  AH, _ENTERkey_
         je   menu_next
         ; sinon
         jmp  menu

         menu_down:
              cmp  g_cursY, _PLAYy_
              jne  menu
              mov  g_cursY, _QUITy_
              oxsPLAYSOUND _F_, 1
              jmp  menu
         menu_up:
              cmp  g_cursY, _QUITy_
              jne  menu
              mov  g_cursY, _PLAYy_
              oxsPLAYSOUND _F_, 1
              jmp  menu
         menu_next:
              oxsPLAYSOUND _B_, 1
              cmp  g_cursY, _PLAYy_
              je   init_draw
              jmp  endprog
    init_draw:
         oxgCLEAR
         call g_INIT
    draw:
         pop  AX
         mov  oxj_framerate, 25
         call g_DRAWPLAYER
         call oxj_FRM
         call g_ANIMATEPLAYER
         call g_ANIMATEVIRUSES
         call g_PLAYERCOLLIDEMOB
         call g_CHECKWIN
         ; oxgCLEAR

         cmp  g_playerWin, 2
         je   skipEndGame
         push AX
         oxDELAY 14F0h
         jmp  init_menu

         skipEndGame:
         cmp  g_projShow, 0
         jz  ndrawProj

         call g_DRAWBULLET
         ndrawProj:
              call g_DRAWMOBS
              ; call g_DRAWPLAYER
              push AX
              call oxj_GETKEYPRESS
              jz   draw
         ; on récupère la touche appuyée dans AH
         call oxj_GETKEY

         ; Si c'est Z ou Haut
         cmp  AH, _Zkey_
         je   Zpressed
         cmp  AH, _Upkey_
         je   Zpressed
         ; Si c'est Q ou Gauche
         cmp  AH, _Qkey_
         je   Qpressed
         cmp  AH, _Leftkey_
         je   Qpressed
         ; Si c'est S ou Bas
         cmp  AH, _Skey_
         je   Spressed
         cmp  AH, _Downkey_
         je   Spressed
         ; Si c'est D ou Droite
         cmp  AH, _Dkey_
         je   Dpressed
         cmp  AH, _Rightkey_
         je   Dpressed
         ; Si c'est espace
         cmp  AH, _SPACEkey_
         je   SPACEpressed
         ; Si c'est ECHAP
         cmp  AH, _ESCkey_
         je   init_menu
         ; Sinon
         jmp  draw

         Zpressed:  
              call g_PFORWARD
              jmp  draw
         Qpressed:  
              call g_PLEFTWARD
              jmp  draw
         Spressed: 
              call g_PBACKWARD
              jmp  draw
         Dpressed:  
              call g_PRIGHTWARD  
              jmp  draw
         SPACEpressed:
              call g_SHOOT
              jmp  draw

    endprog:
         oxgCLEAR
         mov AX, 4c00h
         int 21h
         ; Retour
         ret

MAIN     ENDP

CSEG     ENDS
         END MAIN
