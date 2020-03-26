.286


SSEG     SEGMENT STACK
         DB      32      DUP("STACK---")
SSEG     ENDS

; Data Segment
DSEG     SEGMENT
    keyPressed      DB 0
    tmp             DW 0
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
    menu:
         pop  AX
         mov  oxj_framerate, 25
         call oxj_FRM

         oxgFILLS 0, 0, 39, 24, _WHITE_

         call g_MENU

         push AX
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
         call oxj_FRM
         call g_ANIMATEPLAYER
         call PLAYERCOLLIDEMOB
         ; oxgCLEAR

         cmp  g_projShow, 0
         jz  ndrawProj

         call g_DRAWBULLET
         ndrawProj:
              call g_DRAWMOBS
              ; call g_DRAWPLAYER
              push AX
              mov  AH, 01h ; on veut vérifier si une touche est appuyée
              int  16h     ; on vérifie si une touche est appuyée
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
         je   menu
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
