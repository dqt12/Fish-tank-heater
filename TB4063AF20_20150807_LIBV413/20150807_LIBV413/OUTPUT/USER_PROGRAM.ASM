; Generated by holtek-gcc v3.14, Fri Apr 07 13:39:10 2017
; 
; Configuration:
;       without long instruction
;       Single ROM, Multi-RAM
;       bits_per_rom_unit:16
;       with mp1
;       with tbhp, address(0x9)
;          Use tabrd-const
;       
;       
;       
; use 'tabrdc' instead of 'tabrd'
;       

#pragma translator "holtek-gcc 4.6.4" "3.14" "build 20130711"
; Rebuild 10

ir equ [2]
mp equ [3]
sbp equ [1]
acc equ [5]
bp equ [4]
tblp equ [7]
tbhp equ [9]
status equ [10]
c equ [10].0
ac equ [10].1
z equ [10].2
ov equ [10].3
intc equ [11]

extern ra:byte
extern rb:byte
extern rc:byte
extern rd:byte
extern re:byte
extern rf:byte
extern rg:byte
extern rh:byte
extern _Crom2Prom:near
extern _Crom2PromNext:near

RAMBANK 0 @HCCINIT, @HCCINIT0

RAMBANK 0 @BITDATASEC, @BITDATASEC1
@HCCINIT	.section 'data'
@HCCINIT0	.section 'data'
@BITDATASEC	 .section 'data'
@BITDATASEC1	 .section 'data'

#pragma debug scope 1 1
	extern __DELAY3:near
	extern __DELAYX3:near
	extern __DELAYX6:near
	extern __DELAYY5:near
	extern __DELAYY3:near
	extern _builtin_holtek_delay_2:byte
public _Interrupt_Extemal
#pragma debug scope 2 1
#line 17 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
@Interrupt_Extemal_code .section at 4 'code'
	mov r1,a
	mov a,status
	mov r2,a
	jmp _Interrupt_Extemal
#pragma debug scope 1 1
@dummy4 proc
	call _Interrupt_Extemal
@dummy4 endp
#pragma debug scope 3 1
_Interrupt_Extemal .section 'code'
_Interrupt_Extemal proc
#line 19 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
;# 19 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C" 1
	nop
	mov a,r2
	mov status,a
	mov a,r1
	reti
_Interrupt_Extemal endp

#line 19 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
#pragma debug scope 1 1
___papu equ [22]
___pac equ [21]
___pa equ [20]
public _USER_PROGRAM_INITIAL
#pragma debug scope 4 1
#line 26 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
_USER_PROGRAM_INITIAL .section 'code'
_USER_PROGRAM_INITIAL proc
#line 28 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	clr [22]
#line 29 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	clr [21]
#line 30 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	clr [20]
	ret
_USER_PROGRAM_INITIAL endp
#line 30 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
#pragma debug scope 1 1
public _USER_PROGRAM
#pragma debug scope 5 1
#line 39 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
_USER_PROGRAM .section 'code'
_USER_PROGRAM proc
#line 40 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	call _GET_KEY_BITMAP
#line 42 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	sz _DATA_BUF[0]
	jmp _LI1
	jmp _L4
_LI1:
#line 44 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	set [20].4
#line 45 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	set [20].1
	jmp _L3
_L4:
#line 48 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	clr [20].4
#line 49 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
	clr [20].1
_L3:
	ret
_USER_PROGRAM endp
#line 49 "D:\HOLTEK Reference\信霖特标规格书\TB4063AF20_20150807_LIBV413--V3\20150807_LIBV413\USER_PROGRAM\USER_PROGRAM.C"
#pragma debug scope 1 1
#pragma debug struct_begin 42 "__pa_bits"
#pragma debug field 21 8 0 1 "__pa0" ;0,1
#pragma debug field 21 8 0 1 "__pa1" ;1,1
#pragma debug field 21 8 0 1 "__pa2" ;2,1
#pragma debug field 21 8 0 1 "__pa3" ;3,1
#pragma debug field 21 8 0 1 "__pa4" ;4,1
#pragma debug field 21 8 0 2 ;5,2
#pragma debug field 21 8 0 1 "__pa7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 43 ""
#pragma debug field 2 42 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 43 1 ___pa "__pa" 1
#pragma debug struct_begin 44 "__pac_bits"
#pragma debug field 21 8 0 1 "__pac0" ;0,1
#pragma debug field 21 8 0 1 "__pac1" ;1,1
#pragma debug field 21 8 0 1 "__pac2" ;2,1
#pragma debug field 21 8 0 1 "__pac3" ;3,1
#pragma debug field 21 8 0 1 "__pac4" ;4,1
#pragma debug field 21 8 0 2 ;5,2
#pragma debug field 21 8 0 1 "__pac7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 45 ""
#pragma debug field 2 44 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 45 1 ___pac "__pac" 1
#pragma debug struct_begin 46 "__papu_bits"
#pragma debug field 21 8 0 1 "__papu0" ;0,1
#pragma debug field 21 8 0 1 "__papu1" ;1,1
#pragma debug field 21 8 0 1 "__papu2" ;2,1
#pragma debug field 21 8 0 1 "__papu3" ;3,1
#pragma debug field 21 8 0 1 "__papu4" ;4,1
#pragma debug field 21 8 0 2 ;5,2
#pragma debug field 21 8 0 1 "__papu7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 47 ""
#pragma debug field 2 46 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 47 1 ___papu "__papu" 1

; output external variables
extern _DATA_BUF:byte
extern r1:byte
extern r2:byte
extern _GET_KEY_BITMAP:near

; 
; Generated by holtek-gcc v3.14, Fri Apr 07 13:39:10 2017
; Rebuild 10
; end of file
