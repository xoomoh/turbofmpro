;--------------------------------------------------------------------; ฏจแ ญจฅ: ฅฃใ้ ๏ แโเฎช ; ขโฎเ ฏฎเโ :  เ แฎข ..(Mick),2010;--------------------------------------------------------------------Str_reload:		xor	a		ld	(Str_flg_end),a		scf		retStr_init_load:		ld	hl,Str_addr_load		ld	(Str_addr_work),hl		ld	a,1		ld	(Str_flg_end),a		ld	a,(hl)		ret	Str_init_clear:		ld	hl,Str_addr_clear		ld	(Str_addr_work),hl		ld	a,1		ld	(Str_flg_end),a		ld	a,(hl)		ret	Str_play:		ld	a,(Str_count_bit)		or	a		call	z,Str_next_symol		retStr_next_symol:		ld	hl,(Str_addr_work)		ld	a,(hl)		and	a		jr	z,Str_reload		ret	c		inc	hl		ld	(Str_addr_work),hl		sub	20h		ld	l, a		ld	h, 0		ld	de,Str_addr_font		add	hl,hl		add	hl,hl		add	hl,hl		add	hl,de		ld	de,Str_symbol_buf		ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ld	a,8		ld	(Str_count_bit),a		ret	Str_update_symbol:		ld	de, Str_symbol_buf		ld	b,8		ld	hl,4AC0hloc_0_9BA8:		ld	c,0		ld	a,(de)		rrca		ld	(de),a		jr	nc,loc_0_9C03		ld	c,80h		loc_0_9C03:		ld	a,7Fh		and	(hl)		or	c		ld	(hl),a		inc	h		ld	a,h		and	7		jr	nz,loc_0_9BC2		ld	a,l		add	a,20h		ld	l,a		jr	c,loc_0_9BC2		ld	a,h		sub	8		ld	h,aloc_0_9BC2:		inc	de		djnz	loc_0_9BA8		ld	a,(Str_count_bit)		dec	a		ld	(Str_count_bit),a		retStr_draw_symbol:		ld	hl,4AC0h		ld	b,8Str_draw_line:		push	hl		and	a		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		inc	l		rr	(hl)		pop	hl		inc	h		ld	a,h		and	7		jr	nz,Str_next_line		ld	a,l		add	a,20h		ld	l,a		ld	c,a		jr	c,Str_next_line		ld	a,h		sub	8		ld	h,aStr_next_line:		djnz	Str_draw_line		ret	;-------------------------------------------------------------------; ฎฏจแ ญจฅ: กเ กฎโช  กฅฃใ้ฅฉ แโเฎชจ; ฏ เ ฌฅโเ๋: ญฅโ; ขฎงขเ ้ ฅฌฎฅ  งญ ็ฅญจฅ: ญฅโ;---------------------------------------------------------------------Str_init:		ld	hl,Str_addr_text		ld	(Str_addr_work),hl		xor	a		ld	(Str_count_bit),a		retStr_play_txt:		ld	a,(Str_count_bit)		or	a		jr	nz,Str_next_delay2		ld	hl,(Str_addr_work)		ld	a,(hl)		and	a		jr	nz,Str_next_delay		ld	hl,Str_addr_text		ld	(Str_addr_work),hlStr_next_symtxt:		inc	hl		ld	(Str_addr_work),hl		sub	20h		ld	l, a		ld	h, 0		ld	de,Str_addr_font		add	hl,hl		add	hl,hl		add	hl,hl		add	hl,de		ld	de,Str_symbol_buf		ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ld	a,8		ld	(Str_count_bit),a		ret	Str_next_delay:		add	a,0		nopStr_next_delay1:		jp	Str_next_symtxtStr_next_delay2:		ld 	b,11hStr_next_delay3:		nop		djnz	Str_next_delay3		neg		neg		ret;-------------------------------------------------------------------; ฎฏจแ ญจฅ: กญฎขซฅญจฅ ฏ เ ฌฅโเฎข ฎแญฎขญฎฉ กฅฃใ้ฅฉ แโเฎชจ; ฏ เ ฌฅโเ๋: ญฅโ; ขฎงขเ ้ ฅฌฎฅ  งญ ็ฅญจฅ: ญฅโ;---------------------------------------------------------------------Str_update_symstr:		ld	ix,Str_symbol_buf		ld	bc,0801h		ld	hl,Str_addr_buf + 31		ld	de,20hStr_updating:		ld	a,(ix+0)		rlca		ld	(ix+0),a		jr	nc,Str_update_delay		ld	a,c		or	(hl)		ld	(hl),a		nopStr_update_pixel:		add	hl,de		inc	ix		djnz	Str_updating		ld	a,(Str_count_bit)		dec	a		ld	(Str_count_bit),a		ret	Str_update_delay:		add	a,0		jp	Str_update_pixel;-------------------------------------------------------------------; ฎฏจแ ญจฅ: คขจฃ กใไฅเ  ฎแญฎขญฎฉ แโเฎชจ; ฏ เ ฌฅโเ๋: ญฅโ; ขฎงขเ ้ ฅฌฎฅ  งญ ็ฅญจฅ: ญฅโ;---------------------------------------------------------------------Str_shift_buf:		ld	hl,Str_addr_buf + 31		ld	de,20h		ld	b,8Str_shifting:		push	hl		and	a		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		dec	hl		rl	(hl)		pop	hl		add	hl, de		djnz	Str_shifting		ret;-------------------------------------------------------------------; ฎฏจแ ญจฅ: ็จแโช  ฏฎซ๏ ฎแญฎขญฎฉ แโเฎชจ; ฏ เ ฌฅโเ๋: ญฅโ; ขฎงขเ ้ ฅฌฎฅ  งญ ็ฅญจฅ: ญฅโ;---------------------------------------------------------------------Str_line_clear:		ld	hl,(Str_addr_str)		ld	b,2		call	Str_clear_start		ld	b,6Str_line_clear1:		 		inc	h		ld	a,h		and	7		jr	nz,Str_next_line6		ld	a, l		add	a,20h		ld	l, a		jr	c,Str_next_line6		ld	a,h		sub	8		ld	h,aStr_next_line6:		djnz	Str_line_clear1				ld	b,2Str_clear_start:			ld	c,0		ld	(Str_addr_sp),spStr_clearing:			ld	de,20h		ex	hl,de		add	hl,de		ld	sp,hl		ex	hl,de		ld	e,c		ld	d,c		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de 		inc	h		ld	a,h		and	7		jr	nz,Str_next_line4		ld	a, l		add	a,20h		ld	l, a		jr	c,Str_next_line4		ld	a,h		sub	8		ld	h,aStr_next_line4:			djnz	Str_clearing		ld	sp,(Str_addr_sp)		ret;-------------------------------------------------------------------; ฎฏจแ ญจฅ: ๋ขฎค ญ  ํชเ ญ แฎคฅเฆจฌฎฃฎ กใไฅเ ; ฏ เ ฌฅโเ๋: ญฅโ; ขฎงขเ ้ ฅฌฎฅ  งญ ็ฅญจฅ: ญฅโ;---------------------------------------------------------------------Str_copy_scr:		ld	hl,(Str_addr_str)	  	call	Str_draw_start		ld	de,Str_addr_buf		ex	hl,de		ld	b,8Str_copying:				ld	c,0FFh		push	de		ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi			ldi		pop	de		inc	d		ld	a,d		and	7		jr	nz,Str_next_line5		ld	a,e		add	a,20h ; ' '		ld	e,a		jr	c,Str_next_line5		ld	a,d		sub	8		ld	d,aStr_next_line5:		djnz	Str_copying		ex	hl,de;-------------------------------------------------------------------; ฎฏจแ ญจฅ: ็จแโช  ฏฎซ๏ ฎแญฎขญฎฉ แโเฎชจ; ฏ เ ฌฅโเ๋: ญฅโ; ขฎงขเ ้ ฅฌฎฅ  งญ ็ฅญจฅ: ญฅโ;---------------------------------------------------------------------Str_draw_start:			ld	c,0FFh		ld	(Str_addr_sp),sp		ld	de,20h		ex	hl,de		add	hl,de		ld	sp,hl		ex	hl,de		ld	e,c		ld	d,c		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de		push	de 		inc	h		ld	a,h		and	7		jr	nz,Str_next_line3		ld	a, l		add	a,20h		ld	l, a		jr	c,Str_next_line3		ld	a,h		sub	8		ld	h,aStr_next_line3:			ld	sp,(Str_addr_sp)		ret;-------------------------------------------------------------------; ฎฏจแ ญจฅ: กญฎขซฅญจฅ ฏ เ ฌฅโเฎข ฎแญฎขญฎฉ กฅฃใ้ฅฉ แโเฎชจ; ฏ เ ฌฅโเ๋: ญฅโ; ขฎงขเ ้ ฅฌฎฅ  งญ ็ฅญจฅ: ญฅโ;---------------------------------------------------------------------Str_line_select:			ld	hl,(Str_line_index)		ld	a,(hl)		dec	a		jr	nz,Str_load_index		ld	hl,Str_table_lineStr_load_index:				ld	e,(hl)		inc	hl		ld	d,(hl)		inc	hl		ld	(Str_line_index),hl 		ex	hl,de		ld	(Str_addr_str),hl		retStr_table_line:			dw 	49C0h		dw 	49C0h		dw 	49C0h		dw 	49C0h		dw 	4AC0h		dw 	4AC0h		dw 	4AC0h		dw 	4BC0h		dw 	4BC0h		dw 	4BC0h		dw 	4CC0h		dw 	4CC0h		dw 	4CC0h		dw 	4DC0h		dw 	4DC0h		dw 	4FC0h		dw 	4FC0h		dw	48E0h		dw	48E0h		dw 	4AE0h		dw 	4AE0h		dw 	4CE0h		dw 	4CE0h		dw 	4EE0h		dw 	4EE0h		dw 	5000h		dw 	5000h		dw 	5200h		dw 	5200h		dw 	5400h		dw 	5400h		dw	5500h		dw	5500h		dw	5500h		dw 	5600h		dw 	5600h		dw 	5600h		dw 	5700h		dw 	5700h		dw 	5700h		dw 	5700h		dw 	5600h		dw 	5600h		dw 	5600h		dw	5500h		dw	5500h		dw	5500h		dw 	5400h		dw 	5400h		dw 	5200h		dw 	5200h		dw 	5000h		dw 	5000h		dw 	4EE0h		dw 	4EE0h		dw 	4CE0h		dw 	4CE0h		dw 	4AE0h		dw 	4AE0h		dw	48E0h		dw	48E0h		dw 	4FC0h		dw 	4FC0h		dw 	4DC0h		dw 	4DC0h		dw 	4CC0h		dw 	4CC0h		dw 	4CC0h		dw 	4BC0h		dw 	4BC0h		dw 	4BC0h		dw 	4AC0h		dw 	4AC0h		dw 	4AC0h		db	1Str_line_index:		dw      Str_table_lineStr_symbol_buf:		db 	0,0,0,0,0,0,0,0Str_flg_end:		db 	0Str_count_bit:		db 	0Str_addr_sp:		dw	0Str_addr_str:		dw 	49C0hStr_addr_buf:		ds	8*32Str_addr_work:		dw 	0Str_addr_load:		db	'  GNIDAOL            ',0Str_addr_clear:		db	'                      ',0Str_addr_text:		db	'                MICK!!!       '		db	'      "E-TUNES"   ' 		db	'   .       .   '		db	'      -  .      '		db	' .    .  ,      .'		db	' ,     ,       .  ,  '		db	'  ,      (     ).'		db	'      30    .'		db	'        '		db	' "E-TRACKER"     "SAM COUPE".'		db 	'          200    .'		db	'        .        '		db	'  .'		db	'        "ZXM-SOUNDCARD"    "UNREAL SPECCY",'		db      '   .        '		db	' ,   UNREAL.INI   PRESET=PHOENIX    .    '		db      '   .        '		db	' "SPACE",   TR-DOS    "BREAK"'		db 	'  :         ENTROPY C'		db	'  "SM COUPE",      "E-TUNES"  .'		db	'          SJASMPLUS.'		db	'                !     '		db	'             :)' 		db	'   MOLODCOV_ALEX ( )  .'		db	'    "ZXM-SOUNDCARD".   : AAA, PIROXILIN,   LUZANOV.'		db	'     :)     :))).'		db	'    , ,    .'		db	'        .'		db	'   -   WWW.MICKLAB.NAROD.RU     '		db	'   .       WWW.ZX.PK.RU -  MICK   '		db	' MICKLAB@MAIL.RU    '		db	'   .      .      '		db	' -    ESI.'		db	'      ,      "SAM COUPE".  ,  .' 		db	'  .   . , .......                   '		db	'            JUNE *2010*    GRAPHICS AND CODE BY MICK         '		db	'                                             ',0           		Str_addr_font:		incbin "font.fnt";		.end