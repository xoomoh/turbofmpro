;--------------------------------------------------------------------; ���ᠭ��: ������� �ࠩ� ���� 8; ���� ����: ���ᮢ �.�.(Mick),2010;--------------------------------------------------------------------Animation_init:		xor	a		ld	(Animation_step),a		ld	(Animation_phase),a		ld	hl,Animation_table_data		ld	(Animation_table_addr),hl		retAnimation_view:		ld	a,(Animation_step)		inc	a		and	07h		ld	(Animation_step),a		ret 	nz		ld	a,(Animation_phase)		inc	a			cp	28h		jr	c,Animation_next_phase		ld	hl,Animation_table_data		ld	(Animation_table_addr),hl		xor	aAnimation_next_phase:		ld	(Animation_phase),a		ld	hl,(Animation_table_addr)		ld	de,40ECh		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		ld	de,480Dh		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		ld	de,482Dh		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		ld	de,484Dh		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		inc	de		inc	de		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		ld	de,486Dh		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		inc	de		inc	de		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		ld	de,488Dh		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl		inc	de		ld	a,(hl)		call	Animation_view_data		inc	hl				ld	(Animation_table_addr),hl		ret;-------------------------------------------------------------------; ���ᠭ��: ���ࠦ���� ����� 䠧�; ��ࠬ����: ���; �����頥���  ���祭��: ���;---------------------------------------------------------------------Animation_view_data		push	hl		push	de		ld	l,a		ld	h,0		add	hl,hl		ld	bc,Animation_table_phase		add	hl,bc		ld	a,(hl)       					inc	hl		ld	h,(hl)		ld	l,a		ld	b,7				Animation_loop_Y:		ld	a,(hl)		ld	(de),a		inc	hl		inc	d		ld	a,d		and 	7		jr	nz,Animation_next_line		ld	a,e		add	20h		ld	e,a		jr	c,Animation_next_line		ld	a,d		sub	8		ld	d,aAnimation_next_line:		djnz	Animation_loop_Y		pop	de		pop	hl		ret	    Animation_step:		db	0Animation_phase:		db	0Animation_table_addr:		dw	0Animation_table_phase:                dw	Animation_phase_00	                dw	Animation_phase_01	                dw	Animation_phase_02	                dw	Animation_phase_03	                dw	Animation_phase_04	Animation_phase_00:		db	6Ch,0D6h,0AAh,54h,0AAh,0D6h,6ChAnimation_phase_01:		db	6Ch,92h,0AAh,54h,0AAh,92h,6ChAnimation_phase_02:		db	6Ch,82h,0AAh,10h,0AAh,82h,6ChAnimation_phase_03:		db	6Ch,82h,82h,10h,82h,82h,6ChAnimation_phase_04:		db	6Ch,82h,82h,00h,82h,82h,6ChAnimation_table_data:                db	0,0,0, 0,0,0,0   	;0                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	1,1,1, 1,1,1,1          ;1                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	2,2,2, 2,2,2,2          ;2                db	  1,1, 1,1                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	3,3,3, 3,3,3,3          ;3                db	  2,2, 2,2                db	  1,1, 1,1,1,1                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	4,4,4, 4,4,4,4          ;4                db	  3,3, 3,3                db	  2,2, 2,2,2,2                db	  1,1,     1,1                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	4,4,4, 4,4,4,4          ;5                db	  4,4, 4,4                db	  3,3, 3,3,3,3                db	  2,2,     2,2                db	  1,1,     1,1                db	  0,0, 0,0,0,0                db	3,3,3, 3,3,3,3          ;6                db	  4,4, 4,4                db	  4,4, 4,4,4,4                db	  3,3,     3,3                db	  2,2,     2,2                db	  1,1, 1,1,1,1                db	2,2,2, 2,2,2,2          ;7                db	  3,3, 3,3                db	  4,4, 4,4,4,4                db	  4,4,     4,4                db	  3,3,     3,3                db	  2,2, 2,2,2,2                db	1,1,1, 1,1,1,1          ;8                db	  2,2, 2,2                db	  3,3, 3,3,3,3                db	  4,4,     4,4                db	  4,4,     4,4                db	  3,3, 3,3,3,3                db	0,0,0, 0,0,0,0          ;9                db	  1,1, 1,1                db	  2,2, 2,2,2,2                db	  3,3,     3,3                db	  4,4,     4,4                db	  4,4, 4,4,4,4                db	0,0,0, 0,0,0,0          ;A                db	  0,0, 0,0                db	  1,1, 1,1,1,1                db	  2,2,     2,2                db	  3,3,     3,3                db	  4,4, 4,4,4,4                db	0,0,0, 0,0,0,0          ;B                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  1,1,     1,1                db	  2,2,     2,2                db	  3,3, 3,3,3,3                db	0,0,0, 0,0,0,0          ;C                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  1,1,     1,1                db	  2,2, 2,2,2,2                db	0,0,0, 0,0,0,0          ;D                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  1,1, 1,1,1,1                db	0,0,0, 0,0,0,0   	;E                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	1,0,1, 0,1,0,1   	;F                db	  0,1, 0,1                db	  0,1, 0,1,0,1                db	  0,1,     0,1                db	  0,1,     0,1                db	  0,1, 0,1,0,1                db	2,1,2, 1,2,1,2   	;10                db	  1,2, 1,2                db	  1,2, 1,2,1,2                db	  1,2,     1,2                db	  1,2,     1,2                db	  1,2, 1,2,1,2                db	3,2,3, 2,3,2,3   	;11                db	  2,3, 2,3                db	  2,3, 2,3,2,3                db	  2,3,     2,3                db	  2,3,     2,3                db	  2,3, 2,3,2,3                db	4,3,4, 3,4,3,4   	;12                db	  3,4, 3,4                db	  3,4, 3,4,3,4                db	  3,4,     3,4                db	  3,4,     3,4                db	  3,4, 3,4,3,4                db	4,4,4, 4,4,4,4   	;13                db	  4,4, 4,4                db	  4,4, 4,4,4,4                db	  4,4,     4,4                db	  4,4,     4,4                db	  4,4, 4,4,4,4                db	3,4,3, 4,3,4,3   	;14                db	  4,3, 4,3                db	  4,3, 4,3,4,3                db	  4,3,     4,3                db	  4,3,     4,3                db	  4,3, 4,3,4,3                db	2,3,2, 3,2,3,2   	;15                db	  3,2, 3,2                db	  3,2, 3,2,3,2                db	  3,2,     3,2                db	  3,2,     3,2                db	  3,2, 3,2,3,2                db	1,2,1, 2,1,2,1   	;16                db	  2,1, 2,1                db	  2,1, 2,1,2,1                db	  2,1,     2,1                db	  2,1,     2,1                db	  2,1, 2,1,2,1                db	0,1,0, 1,0,1,0   	;17                db	  1,0, 1,0                db	  1,0, 1,0,1,0                db	  1,0,     1,0                db	  1,0,     1,0                db	  1,0, 1,0,1,0                db	0,0,0, 0,0,0,0   	;18                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	0,0,0, 0,0,0,0   	;19                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  1,0, 0,0,0,0                db	0,0,0, 0,0,0,0   	;1A                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  1,0,     0,0                db	  2,1, 0,0,0,0                db	0,0,0, 0,0,0,0   	;1B                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  1,0,     0,0                db	  2,1,     0,0                db	  3,2, 1,0,0,0                db	0,0,0, 0,0,0,0   	;1C                db	  0,0, 0,0                db	  1,0, 0,0,0,0                db	  2,1,     0,0                db	  3,2,     0,0                db	  4,3, 2,1,0,0                db	1,0,0, 0,0,0,0   	;1D                db	  1,0, 0,0                db	  2,1, 0,0,0,0                db	  3,2,     0,0                db	  4,3,     0,0                db	  0,4, 3,2,1,0                db	2,1,0, 0,0,0,0   	;1E                db	  2,1, 0,0                db	  3,2, 0,0,0,0                db	  4,3,     0,0                db	  0,4,     0,0                db	  0,0, 4,3,1,0                db	3,2,1, 0,0,0,0   	;1F                db	  3,2, 0,0                db	  4,3, 1,0,0,0                db	  0,4,     0,0                db	  0,0,     1,0                db	  0,0, 4,3,2,1                db	4,3,2, 0,0,0,0   	;20                db	  4,3, 1,0                db	  0,4, 2,1,0,0                db	  0,0,     1,0                db	  0,0,     2,1                db	  0,0, 0,4,3,2                db	0,4,3, 1,0,0,0   	;21                db	  0,4, 2,1                db	  0,0, 3,2,1,0                db	  0,0,     2,1                db	  0,0,     3,2                db	  0,0, 0,0,4,3                db	0,0,4, 2,1,0,0   	;22                db	  0,0, 3,2                db	  0,0, 4,3,2,1                db	  0,0,     3,2                db	  0,0,     4,3                db	  0,0, 0,0,0,4                db	0,0,0, 3,2,1,0   	;23                db	  0,0, 4,3                db	  0,0, 0,4,3,2                db	  0,0,     4,3                db	  0,0,     0,4                db	  0,0, 0,0,0,0                db	0,0,0, 4,3,2,1   	;24                db	  0,0, 0,4                db	  0,0, 0,0,4,3                db	  0,0,     0,4                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	0,0,0, 0,4,3,2   	;25                db	  0,0, 0,0                db	  0,0, 0,0,0,4                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	0,0,0, 0,0,4,3   	;26                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0                db	0,0,0, 0,0,0,4   	;27                db	  0,0, 0,0                db	  0,0, 0,0,0,0                db	  0,0,     0,0                db	  0,0,     0,0                db	  0,0, 0,0,0,0