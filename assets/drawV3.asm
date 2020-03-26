DRAWVIRUSo MACRO xA, yA
	push AX
	push BX

	mov  AX, xA
	mov  BX, yA


	inc  AX
	mov  BX, yA


	inc  AX
	mov  BX, yA

	add  BX, 3
	oxgSHOWPIXEL AX, BX, 00Ch	; 2-3
	add  BX, 3
	oxgSHOWPIXEL AX, BX, 0B8h	; 2-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 2-7
	add  BX, 3
	oxgSHOWPIXEL AX, BX, 004h	; 2-10

	inc  AX
	mov  BX, yA

	add  BX, 4
	oxgSHOWPIXEL AX, BX, 00Ch	; 3-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 3-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 3-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 3-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 3-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 3-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 3-10

	inc  AX
	mov  BX, yA

	add  BX, 5
	oxgSHOWPIXEL AX, BX, 00Ch	; 4-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 4-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 4-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 4-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 4-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 4-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 4-11
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 4-12
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 4-13

	inc  AX
	mov  BX, yA

	add  BX, 3
	oxgSHOWPIXEL AX, BX, 040h	; 5-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 5-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 5-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 5-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 5-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 5-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 5-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 5-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 5-11
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 5-12
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 5-13

	inc  AX
	mov  BX, yA

	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 6-1
	add  BX, 2
	oxgSHOWPIXEL AX, BX, 0B8h	; 6-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 6-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 6-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 6-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 6-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 6-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 6-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 6-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 6-11
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 6-12

	inc  AX
	mov  BX, yA

	add  BX, 2
	oxgSHOWPIXEL AX, BX, 00Ch	; 7-2
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 7-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 7-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 7-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 7-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 7-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 7-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 7-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 7-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 7-11
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 7-12

	inc  AX
	mov  BX, yA

	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 8-1
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 8-2
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 8-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 8-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 8-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 8-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 8-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 8-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 8-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 8-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 8-11
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 8-12
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 8-13

	inc  AX
	mov  BX, yA

	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 9-1
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 9-2
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 9-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 9-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 9-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 9-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 9-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 9-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 9-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 9-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 9-11
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 9-12
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 9-13

	inc  AX
	mov  BX, yA

	add  BX, 2
	oxgSHOWPIXEL AX, BX, 0B8h	; 10-2
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 10-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 10-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 10-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 10-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 10-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 10-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 10-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 00Ch	; 10-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 10-11

	inc  AX
	mov  BX, yA

	add  BX, 2
	oxgSHOWPIXEL AX, BX, 0B8h	; 11-2
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 11-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 11-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 040h	; 11-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 11-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 11-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 11-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 11-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 11-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 11-11
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 11-12

	inc  AX
	mov  BX, yA

	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 12-1
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 12-2
	add  BX, 3
	oxgSHOWPIXEL AX, BX, 004h	; 12-5
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 12-6
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 12-7
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 12-8
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 12-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 12-10
	add  BX, 2
	oxgSHOWPIXEL AX, BX, 0B8h	; 12-12

	inc  AX
	mov  BX, yA

	add  BX, 3
	oxgSHOWPIXEL AX, BX, 0B8h	; 13-3
	inc  BX
	oxgSHOWPIXEL AX, BX, 004h	; 13-4
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 13-5
	add  BX, 2
	oxgSHOWPIXEL AX, BX, 004h	; 13-7
	add  BX, 2
	oxgSHOWPIXEL AX, BX, 0B8h	; 13-9
	inc  BX
	oxgSHOWPIXEL AX, BX, 06Eh	; 13-10
	inc  BX
	oxgSHOWPIXEL AX, BX, 0B8h	; 13-11

	inc  AX
	mov  BX, yA

	add  BX, 4
	oxgSHOWPIXEL AX, BX, 0B8h	; 14-4
	add  BX, 3
	oxgSHOWPIXEL AX, BX, 0B8h	; 14-7
	add  BX, 3
	oxgSHOWPIXEL AX, BX, 0B8h	; 14-10

	inc  AX
	mov  BX, yA


	pop  BX
	pop  AX
ENDM
