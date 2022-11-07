;--------------------------------------------------------------------
; ���ᠭ��: ������� �ࠩ� ���� 8
; ���� ����: ���ᮢ �.�.(Mick),2010
;--------------------------------------------------------------------
Title_init:
		xor	a
		ld	(Title_step),a
		ld	(Title_phase),a
Title_view:
		ld	a,(Title_step)
		inc	a
		and	07h
		ld	(Title_step),a
		ret 	nz
		ld	hl,4001h
		ld	a,(Title_phase)
		inc	a	
		cp	1Eh
		jr	c,Title_next_phase
		xor	a
Title_next_phase:
		ld	(Title_phase),a

		ex	de,hl

		ld	l,a
		ld	c,a
		ld	h,0
		ld	b,h
		add	hl,hl
		add	hl,bc
		ld	bc,Title_table_phase
		add	hl,bc
		ld	a,(hl)
		ld	bc,7ffdh
		out	(c),a
		inc	hl
		ld	a,(hl)
		inc	hl
		ld	h,(hl)
		ld	l,a
		ex	de,hl

		ld	b,38				;ࠧ��୮��� �� Y
Title_loop_Y:
		ld	c,32
		push	hl
		ex	hl,de
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ex	hl,de
		pop	hl
		inc	h
		ld	a,h
		and 	7
		jr	nz,Title_next_line
		ld	a,l
		add	20h
		ld	l,a
		jr	c,Title_next_line
		ld	a,h
		sub	8
		ld	h,a
Title_next_line:
		dec	b
    		jp	nz,Title_loop_Y

		ret	    

Title_step:
		db	0
Title_phase:
		db	0

Title_table_phase:
		db	10h
                dw	Title_phase_00	
		db	10h
                dw	Title_phase_01	
		db	10h
                dw	Title_phase_02	
		db	10h
                dw	Title_phase_03	
		db	90h
                dw	Title_phase_04	
		db	90h
                dw	Title_phase_05	
		db	90h
                dw	Title_phase_06	
		db	90h
                dw	Title_phase_07	
		db	90h
                dw	Title_phase_08	
		db	90h
                dw	Title_phase_09	
		db	90h
                dw	Title_phase_10	
		db	90h
                dw	Title_phase_11	
		db	90h
                dw	Title_phase_12	
		db	90h
                dw	Title_phase_13	
		db	90h
                dw	Title_phase_14	
		db	90h
                dw	Title_phase_15	
		db	90h
                dw	Title_phase_16	
		db	91h
                dw	Title_phase_17	
		db	91h
                dw	Title_phase_18	
		db	91h
                dw	Title_phase_19	
		db	91h
                dw	Title_phase_20	
		db	91h
                dw	Title_phase_21	
		db	91h
                dw	Title_phase_22	
		db	91h
                dw	Title_phase_23	
		db	91h
                dw	Title_phase_24	
		db	91h
                dw	Title_phase_25	
		db	91h
                dw	Title_phase_26	
		db	91h
                dw	Title_phase_27	
		db	91h
                dw	Title_phase_28	
		db	91h
                dw	Title_phase_29	
Title_phase_00:
    		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,30h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,50h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,2Ah,80h,00h,00h,20h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,7Fh,0DCh,00h,00h,70h,01h,50h,00h,00h,00h,01h,50h,00h,00h,00h,00h,00h,00h,00h,00h,7Fh,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,0FFh,0EAh,80h,00h,0A0h,0Ah,0A8h,00h,00h,00h,0Ah,0A8h,00h,00h,00h,00h,00h,00h,00h,03h,0FFh,0A0h,00h,00h
		db	50h,00h,00h,00h,00h,00h,00h,0FFh,0D5h,0C0h,01h,60h,55h,58h,00h,00h,00h,55h,5Ch,00h,00h,01h,50h,00h,00h,00h,07h,0FFh,0F0h,00h,00h
		db	0FFh,0A0h,00h,00h,00h,00h,00h,0FFh,0EAh,0B8h,02h,0A0h,0EAh,0A8h,00h,00h,00h,0AAh,0AAh,00h,00h,03h,0FAh,80h,00h,00h,02h,0FFh,0F8h,00h,00h
		db	1Fh,0FFh,0D0h,00h,00h,00h,00h,0FFh,0FFh,5Ch,05h,40h,75h,58h,05h,50h,00h,0F5h,54h,00h,00h,01h,77h,0F7h,0C0h,00h,05h,0FFh,0FCh,00h,00h
		db	0Fh,0FFh,0FFh,0A8h,00h,00h,00h,0FFh,0FAh,0AAh,0AAh,0E0h,0Ah,0A8h,02h,0AAh,80h,0Ah,0ABh,83h,0BFh,80h,3Fh,0FFh,0FAh,0A0h,0Ah,0FEh,0FFh,80h,00h
		db	07h,0F5h,7Fh,0F4h,00h,00h,00h,0FFh,0C7h,55h,55h,40h,05h,58h,01h,55h,40h,0Dh,55h,01h,0D5h,0C0h,17h,0FFh,0FFh,0F0h,05h,0FCh,3Fh,0C0h,00h
		db	07h,0FAh,83h,0FAh,00h,00h,00h,0FFh,8Ah,0AEh,0AAh,80h,02h,0A8h,00h,0AAh,80h,0Ah,0AAh,0C0h,0EAh,0C0h,0Bh,0F8h,0Fh,0F0h,0Bh,0F8h,0Fh,0E0h,00h
		db	07h,0F5h,00h,75h,00h,00h,00h,7Fh,0Dh,54h,55h,0C0h,05h,58h,00h,55h,40h,05h,55h,40h,75h,40h,17h,0F8h,07h,0F0h,05h,0F8h,05h,70h,00h
		db	07h,0FAh,80h,3Ah,00h,00h,00h,0FEh,0Ah,0AEh,0Fh,80h,02h,0A8h,00h,2Ah,80h,0Ah,0AAh,0B0h,2Ah,0C0h,0Bh,0F8h,03h,0F0h,0Bh,0F8h,02h,0B8h,00h
		db	07h,0F5h,00h,15h,00h,00h,00h,7Ch,0Dh,54h,00h,00h,05h,5Ch,00h,15h,40h,05h,55h,58h,35h,40h,17h,0F8h,00h,78h,15h,0F8h,01h,0F8h,00h
		db	07h,0FAh,8Ah,0AAh,00h,00h,00h,0F8h,0Eh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0C0h,0Ah,0AAh,0A8h,2Ah,0C0h,0Bh,0F8h,0Ah,0B8h,0Bh,0F8h,01h,0F8h,00h
		db	07h,0F5h,0FFh,0D5h,00h,00h,00h,0F0h,0Fh,54h,00h,00h,0Dh,5Ch,00h,15h,40h,05h,55h,56h,15h,40h,17h,0FFh,0FFh,0D0h,15h,0FCh,00h,00h,00h
		db	07h,0FBh,0FFh,0A8h,00h,00h,00h,0E0h,0Eh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,80h,0Ah,0AAh,0AAh,2Ah,80h,0Bh,0FAh,0FFh,0C0h,0Bh,0FFh,0FFh,0E0h,00h
		db	07h,0FFh,0FFh,0D4h,00h,00h,00h,00h,0Fh,54h,00h,00h,05h,5Ch,00h,15h,40h,0Dh,55h,55h,15h,40h,17h,0FDh,0FFh,0C0h,05h,0FFh,0FFh,0FCh,00h
		db	07h,0FBh,0FFh,0A8h,00h,00h,00h,0BEh,8Fh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AAh,0AAh,0FAh,80h,0Bh,0FBh,0FFh,80h,0Bh,0FFh,0FFh,0FEh,00h
		db	07h,0FFh,0FFh,0D0h,00h,00h,57h,0FFh,4Fh,0D4h,00h,00h,05h,5Ch,00h,15h,60h,0Dh,5Dh,55h,75h,0C0h,17h,0FDh,0FFh,0C0h,05h,0FFh,0FFh,0FFh,00h
		db	03h,0FBh,0FFh,0A8h,00h,0Fh,0FFh,0FEh,8Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AEh,0AAh,0BBh,0C0h,0Bh,0FBh,0FFh,80h,0Bh,0FFh,0FFh,0FFh,80h
		db	07h,0FFh,0FFh,0F0h,00h,7Fh,0FFh,0FFh,4Fh,0D4h,00h,00h,05h,54h,00h,15h,40h,0Dh,57h,55h,5Fh,0C0h,17h,0FFh,0FFh,80h,05h,0FFh,0FFh,0FFh,0C0h
		db	03h,0FFh,0FFh,0E0h,01h,0FFh,0FFh,0A2h,8Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0B3h,0AAh,0ABh,0C0h,0Bh,0FFh,0FFh,00h,03h,0FFh,0FFh,0FFh,0C0h
		db	07h,0FFh,0FCh,00h,01h,0FFh,40h,01h,4Fh,0FCh,00h,00h,05h,54h,00h,15h,40h,0Dh,51h,0D5h,57h,0C0h,17h,0FFh,0C0h,00h,01h,0FFh,0FFh,0FFh,0E0h
		db	03h,0FFh,0C0h,00h,69h,0E0h,00h,00h,8Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0B0h,0EAh,0AFh,0C0h,0Bh,0FEh,00h,02h,0E0h,0FFh,0FFh,0FFh,0E0h
		db	07h,0FDh,40h,00h,0D5h,0C0h,00h,00h,0Fh,0FCh,00h,00h,0Dh,54h,00h,15h,60h,15h,50h,75h,57h,0C0h,17h,0FCh,00h,05h,40h,1Fh,0FFh,0FFh,0E0h
		db	03h,0FAh,80h,00h,0A8h,00h,00h,00h,0Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0B0h,3Ah,0AFh,0C0h,0Bh,0F8h,00h,0Ah,0C2h,0A0h,2Fh,0FFh,0E0h
		db	07h,0FDh,00h,01h,0D0h,00h,00h,00h,0Fh,0FCh,00h,00h,0Dh,54h,00h,15h,60h,15h,50h,1Dh,5Fh,0C0h,17h,0F8h,00h,15h,0C5h,0C0h,05h,7Fh,0C0h
		db	07h,0FAh,80h,03h,0A8h,00h,00h,00h,0Fh,0E8h,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0B0h,0Eh,0BFh,0C0h,0Bh,0F8h,00h,2Bh,8Bh,0E0h,02h,0FFh,0C0h
		db	07h,0FDh,00h,07h,50h,00h,00h,00h,0Fh,0FCh,00h,00h,0Dh,54h,00h,15h,50h,15h,50h,07h,7Fh,0E0h,17h,0F8h,00h,57h,95h,0F0h,05h,7Fh,0C0h
		db	0Fh,0FAh,80h,0Fh,0A0h,00h,00h,00h,0Fh,0E8h,00h,00h,0Ah,0AEh,00h,2Ah,0B0h,1Ah,0B0h,03h,0FFh,0E0h,3Fh,0F8h,00h,0AFh,0ABh,0F8h,0Ah,0FFh,80h
		db	0Fh,0FDh,40h,7Fh,50h,00h,00h,00h,0Fh,0FCh,00h,00h,0Dh,57h,00h,55h,50h,15h,50h,01h,0FFh,0E0h,17h,0FCh,05h,7Fh,57h,0FCh,15h,0FFh,00h
		db	0Fh,0FFh,0FFh,0FEh,0A0h,00h,00h,00h,0Fh,0E8h,00h,00h,0Eh,0AAh,0A2h,0AAh,0A0h,1Ah,0B0h,00h,0FFh,0E0h,3Fh,0FFh,0FFh,0FFh,2Fh,0FFh,0FFh,0FFh,00h
		db	0Fh,0FFh,0FFh,0FFh,40h,00h,00h,00h,0Fh,0F4h,00h,00h,03h,55h,55h,55h,40h,15h,50h,00h,7Fh,0E0h,37h,0FFh,0FFh,0FFh,1Fh,0FFh,0FFh,0FCh,00h
		db	0Fh,0FFh,0FFh,0FEh,0A0h,00h,00h,00h,0Fh,0FAh,80h,00h,01h,0AAh,0AAh,0ABh,80h,1Ah,0AAh,00h,3Fh,0E0h,3Fh,0FFh,0FFh,0FEh,0Fh,0FFh,0FFh,0F8h,00h
		db	0Fh,0FFh,0FFh,0FFh,0C0h,00h,00h,00h,07h,0FDh,40h,00h,00h,75h,55h,54h,00h,1Dh,55h,00h,1Fh,0E0h,1Fh,0FFh,0FFh,0FCh,01h,0FFh,0FFh,0F0h,00h
		db	03h,0FFh,0EAh,0BAh,00h,00h,00h,00h,03h,0FFh,80h,00h,00h,0Fh,0EFh,0A0h,00h,0Fh,0FFh,80h,0Fh,80h,03h,0FFh,0EAh,0B8h,00h,2Fh,0FFh,80h,00h
Title_phase_01:
    		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,08h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,18h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,38h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,40h,00h,00h,00h,50h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,0FAh,00h,00h,00h,0B0h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,01h,0FFh,0C0h,00h,01h,50h,00h,00h,00h,00h,00h,05h,40h,00h,00h,01h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	0FAh,00h,00h,00h,00h,00h,01h,0FFh,0F8h,00h,02h,0A2h,0AAh,0A0h,00h,00h,03h,0AAh,0A0h,00h,00h,03h,0E8h,00h,00h,00h,02h,0B8h,00h,00h,00h
		db	1Fh,0F0h,00h,00h,00h,00h,01h,0FFh,0DEh,00h,05h,71h,0F5h,50h,00h,00h,01h,0F5h,50h,00h,00h,01h,0FFh,40h,00h,00h,07h,0FFh,00h,00h,00h
		db	0Fh,0FEh,80h,00h,00h,00h,01h,0FFh,0EBh,80h,0Ah,0A0h,1Ah,0A8h,00h,02h,80h,3Ah,0A8h,00h,00h,0C0h,3Fh,0FAh,00h,00h,0Ah,0FFh,80h,00h,00h
		db	0Fh,0FFh,0FCh,00h,00h,00h,01h,0FFh,0FDh,0C0h,15h,60h,15h,5Ch,00h,55h,40h,15h,54h,00h,17h,40h,37h,0FFh,0D0h,00h,15h,0FFh,0F0h,00h,00h
		db	0Fh,0FBh,0FFh,0FAh,00h,00h,00h,0FFh,83h,0AAh,0AAh,0E0h,0Ah,0ACh,02h,0AAh,0A0h,1Ah,0AAh,02h,0AAh,0E0h,2Fh,0FFh,0FFh,0F0h,0Bh,0FFh,0FEh,00h,00h
		db	07h,0F5h,7Fh,0F5h,00h,00h,01h,0FFh,05h,55h,55h,40h,0Dh,5Ch,05h,55h,40h,05h,55h,07h,55h,60h,17h,0FFh,0FFh,0F0h,15h,0F9h,0FFh,80h,00h
		db	0Fh,0FAh,8Fh,0FAh,00h,00h,01h,0FEh,0Ah,0EAh,0AAh,0C0h,0Ah,0ACh,00h,0AAh,0A0h,0Ah,0AAh,80h,0EAh,0A0h,2Fh,0F8h,0FFh,0F0h,0Bh,0F8h,7Fh,0E0h,00h
		db	0Fh,0F5h,07h,0F5h,00h,00h,01h,0FCh,05h,55h,55h,0C0h,0Dh,5Ch,00h,55h,40h,05h,55h,40h,55h,60h,17h,0F8h,3Fh,0F0h,17h,0F0h,1Fh,0F0h,00h
		db	0Fh,0FAh,80h,0FAh,00h,00h,00h,0F8h,0Ah,0ACh,0EFh,80h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AAh,0A0h,2Ah,0A0h,0Fh,0F8h,0Fh,0F0h,0Bh,0F8h,0Eh,0F8h,00h
		db	07h,0F5h,00h,75h,00h,00h,00h,0F0h,0Dh,54h,00h,00h,05h,5Ch,00h,55h,40h,15h,55h,50h,55h,60h,17h,0F8h,01h,0F0h,17h,0FCh,05h,70h,00h
		db	07h,0FAh,0A8h,3Ah,00h,00h,00h,0F0h,0Eh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0AAh,0A8h,2Ah,0A0h,0Bh,0FAh,0A0h,0F0h,0Bh,0FEh,02h,0B0h,00h
		db	07h,0F7h,0FFh,0D5h,00h,00h,00h,70h,0Fh,54h,00h,00h,05h,54h,00h,55h,60h,15h,55h,54h,35h,40h,17h,0FDh,0FFh,70h,15h,0FFh,0D1h,0F0h,00h
		db	07h,0FBh,0FFh,0BAh,00h,00h,00h,0E0h,0Eh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0AAh,0AAh,2Ah,0A0h,0Bh,0FBh,0FFh,0A0h,0Bh,0FFh,0FFh,80h,00h
		db	07h,0F7h,0FFh,0D0h,00h,00h,00h,00h,0Fh,54h,00h,00h,05h,54h,00h,55h,40h,15h,55h,55h,35h,40h,17h,0FDh,0FFh,0C0h,15h,0FFh,0FFh,0F0h,00h
		db	03h,0FBh,0FFh,0A8h,00h,00h,00h,0Ah,0Fh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0BAh,0AAh,0BAh,0E0h,0Bh,0FBh,0FFh,0C0h,0Bh,0FFh,0FFh,0F8h,00h
		db	07h,0FFh,0FFh,0D0h,00h,00h,15h,7Dh,0Fh,0D4h,00h,00h,05h,54h,00h,15h,40h,15h,55h,55h,75h,0E0h,17h,0FDh,0FFh,0C0h,05h,0FFh,0FFh,0FFh,00h
		db	03h,0FFh,0FFh,0A8h,00h,2Fh,0FFh,0FEh,8Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0B0h,1Ah,0B2h,0AAh,0BBh,0E0h,0Bh,0FFh,0FFh,80h,0Bh,0FFh,0FFh,0FFh,00h
		db	07h,0FFh,0FFh,0F0h,00h,0FFh,0FFh,0FFh,4Fh,0DCh,00h,00h,05h,54h,00h,15h,50h,15h,53h,55h,55h,0E0h,17h,0FFh,0FFh,80h,05h,0FFh,0FFh,0FFh,80h
		db	07h,0FFh,0FFh,80h,00h,0FFh,0FFh,82h,8Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0B1h,0AAh,0ABh,0E0h,0Bh,0FFh,0F8h,00h,03h,0FFh,0FFh,0FFh,80h
		db	07h,0FFh,0C0h,00h,01h,0FFh,40h,01h,4Fh,0FCh,00h,00h,05h,54h,00h,15h,50h,15h,50h,0D5h,57h,0E0h,07h,0FEh,00h,00h,01h,0FFh,0FFh,0FFh,0C0h
		db	03h,0FFh,80h,00h,0A9h,0F8h,00h,00h,8Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0B0h,6Ah,0AFh,0E0h,0Bh,0F8h,00h,02h,80h,0FFh,0FFh,0FFh,0E0h
		db	03h,0FDh,40h,00h,0D1h,0F0h,00h,00h,0Fh,0FCh,00h,00h,0Dh,54h,00h,15h,50h,15h,50h,35h,57h,0E0h,07h,0FCh,00h,05h,40h,1Fh,0FFh,0FFh,0C0h
		db	03h,0FAh,80h,00h,0A8h,0A0h,00h,00h,0Fh,0ECh,00h,00h,0Ah,0ACh,00h,2Ah,0B0h,1Ah,0B0h,3Ah,0AFh,0E0h,0Bh,0F8h,00h,0Ah,82h,80h,03h,0FFh,0E0h
		db	03h,0FDh,00h,01h,0D0h,00h,00h,00h,0Fh,0FCh,00h,00h,05h,54h,00h,35h,50h,15h,50h,1Dh,5Fh,0F0h,07h,0F8h,00h,05h,0C5h,60h,05h,7Fh,0C0h
		db	03h,0FAh,80h,03h,0A8h,00h,00h,00h,0Fh,0E8h,00h,00h,02h,0ACh,00h,2Ah,0B0h,1Ah,0B0h,0Eh,0BFh,0F0h,0Bh,0F8h,00h,2Bh,8Ah,0E0h,02h,0BFh,0E0h
		db	07h,0FDh,00h,07h,50h,00h,00h,00h,07h,0FCh,00h,00h,05h,54h,00h,15h,50h,15h,50h,07h,7Fh,0F0h,17h,0F8h,00h,57h,95h,0F0h,05h,7Fh,0C0h
		db	07h,0FAh,80h,0Fh,0A0h,00h,00h,00h,0Fh,0E8h,00h,00h,0Ah,0AEh,00h,2Ah,0B0h,1Ah,0A0h,03h,0FFh,0F0h,0Bh,0F8h,00h,0AFh,0ABh,0F8h,0Ah,0FFh,0C0h
		db	07h,0FDh,40h,7Fh,50h,00h,00h,00h,07h,0FCh,00h,00h,05h,55h,00h,55h,50h,15h,50h,01h,0FFh,0F0h,1Fh,0FCh,17h,7Fh,57h,0FCh,15h,0FFh,0C0h
		db	0Fh,0FFh,0FFh,0FFh,0A0h,00h,00h,00h,0Fh,0E8h,00h,00h,06h,0AAh,0A2h,0AAh,0B0h,1Ah,0A8h,00h,0FFh,0F0h,3Fh,0FFh,0FFh,0FFh,0AFh,0FFh,0FFh,0FFh,80h
		db	0Fh,0FFh,0FFh,0FFh,50h,00h,00h,00h,07h,0F4h,00h,00h,03h,55h,55h,55h,60h,15h,50h,00h,7Fh,0F0h,17h,0FFh,0FFh,0FFh,1Fh,0FFh,0FFh,0FFh,00h
		db	0Fh,0FFh,0FFh,0FFh,0A0h,00h,00h,00h,0Fh,0FAh,80h,00h,00h,0AAh,0AAh,0ABh,80h,1Ah,0AAh,00h,3Fh,0E0h,3Fh,0FFh,0FFh,0FFh,0Fh,0FFh,0FFh,0FCh,00h
		db	07h,0FFh,0FFh,0FFh,0C0h,00h,00h,00h,07h,0FDh,40h,00h,00h,75h,55h,5Ch,00h,0Dh,57h,00h,1Fh,0F0h,1Fh,0FFh,0FFh,0FFh,01h,0FFh,0FFh,0F0h,00h
		db	03h,0FFh,0EAh,0BEh,00h,00h,00h,00h,03h,0FFh,80h,00h,00h,0Bh,0FFh,0A0h,00h,0Fh,0FFh,80h,0Fh,0E0h,03h,0FFh,0EAh,0BAh,00h,2Fh,0FFh,80h,00h
Title_phase_02:
    		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,28h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,38h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,28h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,50h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,03h,0E8h,00h,00h,00h,0B8h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	0FCh,00h,00h,00h,00h,00h,03h,0FFh,00h,00h,01h,51h,40h,00h,00h,00h,07h,40h,00h,00h,00h,07h,0D4h,00h,00h,00h,00h,00h,00h,00h,00h
		db	3Fh,0E8h,00h,00h,00h,00h,03h,0FFh,80h,00h,0Ah,0B0h,0EAh,00h,00h,00h,0E3h,0EAh,00h,00h,00h,0E3h,0FFh,0A0h,00h,00h,00h,00h,00h,00h,00h
		db	1Fh,0FFh,40h,00h,00h,00h,03h,0FFh,0F0h,00h,15h,50h,15h,40h,00h,05h,50h,75h,40h,00h,05h,70h,7Fh,0FDh,00h,00h,05h,50h,00h,00h,00h
		db	1Fh,0FFh,0FEh,0Ah,00h,00h,03h,0FFh,0F8h,00h,2Ah,0B0h,0Ah,0A0h,00h,2Ah,0B0h,3Ah,0A0h,00h,0Ah,0B0h,2Fh,0FFh,0F8h,38h,0Bh,0FAh,00h,00h,00h
		db	0Fh,0FFh,0FFh,0F5h,00h,00h,01h,0FFh,0F7h,01h,55h,70h,15h,50h,01h,55h,50h,15h,50h,00h,75h,50h,17h,0FFh,0FFh,0F8h,17h,0FFh,00h,00h,00h
		db	0Fh,0FFh,0FFh,0FAh,80h,00h,03h,0FFh,0AAh,0FAh,0AAh,0A0h,1Ah,0ACh,02h,0AAh,0A0h,0Ah,0A8h,06h,0AAh,0B0h,2Fh,0FFh,0FFh,0F8h,2Bh,0FFh,0E8h,00h,00h
		db	0Fh,0FFh,0FFh,0F5h,00h,00h,01h,0FCh,07h,55h,55h,60h,15h,54h,07h,55h,50h,15h,54h,07h,0D5h,50h,17h,0FFh,0FFh,0F0h,17h,0FFh,0FFh,0C0h,00h
		db	0Fh,0FAh,0FFh,0FAh,00h,00h,01h,0F8h,0Fh,0AAh,0ABh,0C0h,0Ah,0ACh,00h,0AAh,0A0h,0Ah,0AAh,00h,0EAh,0B0h,2Fh,0FFh,0FFh,0F8h,2Bh,0FBh,0FFh,0E0h,00h
		db	07h,0F5h,5Fh,0F5h,00h,00h,01h,0F0h,0Dh,0D5h,57h,80h,05h,54h,00h,55h,50h,15h,55h,00h,75h,50h,17h,0F9h,0FFh,0F8h,17h,0F0h,0FFh,0F0h,00h
		db	0Fh,0FAh,8Fh,0FAh,00h,00h,00h,0E0h,0Ah,0AFh,0FAh,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AAh,80h,2Ah,0A0h,2Fh,0F8h,3Fh,0F8h,2Bh,0F8h,3Fh,0F8h,00h
		db	0Fh,0F5h,00h,75h,00h,00h,01h,0F0h,0Dh,5Ch,00h,00h,0Dh,54h,00h,55h,50h,15h,55h,50h,55h,50h,17h,0F8h,03h,0F0h,17h,0FCh,1Fh,0F0h,00h
		db	07h,0FAh,80h,3Ah,00h,00h,01h,0E0h,0Eh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AAh,0A0h,2Ah,0A0h,0Bh,0F8h,80h,0F0h,2Bh,0FFh,8Ah,0F0h,00h
		db	07h,0F7h,0FCh,15h,00h,00h,00h,0E0h,0Dh,5Ch,00h,00h,05h,54h,00h,55h,50h,15h,55h,50h,35h,50h,17h,0FDh,0D0h,70h,17h,0FFh,0D5h,70h,00h
		db	07h,0FBh,0FFh,8Ah,00h,00h,00h,00h,0Eh,0ACh,00h,00h,0Ah,0ACh,00h,6Ah,0A0h,1Ah,0BAh,0A8h,2Ah,0B0h,0Bh,0FBh,0FAh,20h,0Bh,0FFh,0FFh,0E0h,00h
		db	07h,0F7h,0FFh,0F0h,00h,00h,00h,00h,0Fh,5Ch,00h,00h,05h,54h,00h,15h,50h,15h,5Dh,54h,15h,70h,17h,0FDh,0FFh,00h,17h,0FFh,0FFh,0C0h,00h
		db	03h,0FFh,0FFh,0A8h,00h,00h,00h,00h,0Fh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,1Ah,0AEh,0ABh,0AAh,0F0h,0Bh,0FBh,0FFh,80h,0Bh,0FFh,0FFh,0E0h,00h
		db	07h,0FFh,0FFh,50h,00h,00h,00h,04h,0Fh,0DCh,00h,00h,05h,54h,00h,15h,50h,15h,57h,55h,0D5h,0F0h,17h,0FFh,0FFh,80h,15h,0FFh,0FFh,0F8h,00h
		db	07h,0FFh,0FFh,0A8h,00h,0FFh,0FFh,0FAh,8Fh,0ACh,00h,00h,0Ah,0ACh,00h,2Ah,0B0h,1Ah,0B3h,0AAh,0FBh,0F0h,0Bh,0FFh,0FFh,80h,0Bh,0FFh,0FFh,0FEh,00h
		db	07h,0FFh,0FFh,0F0h,01h,0FFh,0FFh,0FDh,0Fh,0DCh,00h,00h,05h,54h,00h,15h,50h,15h,51h,55h,75h,0F0h,17h,0FFh,0FFh,80h,05h,0FFh,0FFh,0FFh,00h
		db	03h,0FFh,0E8h,00h,00h,0FFh,0FFh,0AAh,8Fh,0ECh,00h,00h,02h,0ACh,00h,2Ah,0B0h,1Ah,0B0h,0AAh,0BBh,0F0h,0Bh,0FFh,0A0h,00h,03h,0FFh,0FFh,0FFh,00h
		db	03h,0FFh,0C0h,00h,01h,0FDh,00h,01h,47h,0FCh,00h,00h,05h,54h,00h,15h,50h,15h,50h,55h,5Fh,0F0h,07h,0FCh,00h,00h,01h,0FFh,0FFh,0FFh,80h
		db	03h,0FAh,80h,00h,01h,0F0h,00h,02h,8Fh,0ECh,00h,00h,06h,0ACh,00h,2Ah,0B0h,1Ah,0B0h,2Ah,0AFh,0F0h,0Bh,0F8h,00h,00h,00h,0FFh,0FFh,0FFh,80h
		db	03h,0FDh,00h,00h,0F1h,0F0h,00h,00h,07h,0FCh,00h,00h,05h,54h,00h,15h,50h,15h,50h,15h,57h,0F0h,05h,0F8h,00h,05h,00h,00h,07h,0FFh,0C0h
		db	03h,0FAh,80h,01h,0A0h,0A0h,00h,00h,0Fh,0ECh,00h,00h,06h,0ACh,00h,2Ah,0B0h,1Ah,0B0h,0Ah,0AFh,0F0h,0Bh,0F8h,00h,0Ah,80h,80h,02h,0BFh,0C0h
		db	01h,0FDh,00h,01h,50h,00h,00h,00h,07h,0FCh,00h,00h,05h,54h,00h,15h,50h,1Dh,50h,0Dh,5Fh,0F0h,05h,0F8h,00h,05h,01h,60h,01h,7Fh,0E0h
		db	03h,0FAh,80h,03h,0A0h,00h,00h,00h,0Fh,0ECh,00h,00h,02h,0ACh,00h,2Ah,0B0h,1Ah,0A8h,06h,0BFh,0F0h,0Bh,0F8h,00h,2Bh,8Ah,0E0h,02h,0BFh,0E0h
		db	03h,0FDh,00h,07h,50h,00h,00h,00h,07h,0FCh,00h,00h,05h,54h,00h,15h,50h,1Dh,58h,03h,7Fh,0F0h,07h,0F8h,00h,57h,05h,0F0h,05h,7Fh,0E0h
		db	03h,0FAh,80h,2Fh,0A0h,00h,00h,00h,0Fh,0ECh,00h,00h,02h,0AEh,00h,0Ah,0A0h,0Ah,0A8h,01h,0FFh,0F8h,0Bh,0F8h,00h,0AFh,8Bh,0F8h,0Ah,0FFh,0C0h
		db	07h,0FDh,41h,7Fh,50h,00h,00h,00h,0Fh,0FCh,00h,00h,05h,55h,00h,55h,50h,0Dh,58h,00h,0FFh,0F8h,1Fh,0FCh,5Fh,0FFh,17h,0FCh,15h,0FFh,0C0h
		db	03h,0FFh,0FFh,0FFh,0A0h,00h,00h,00h,0Fh,0ECh,00h,00h,02h,0AAh,0AAh,0AAh,0B0h,0Ah,0A8h,00h,0FFh,0F8h,0Bh,0FFh,0FFh,0FFh,0ABh,0FFh,0FFh,0FFh,80h
		db	07h,0FFh,0FFh,0FFh,50h,00h,00h,00h,0Fh,0F4h,00h,00h,01h,55h,55h,55h,70h,0Dh,58h,00h,7Fh,0F8h,1Fh,0FFh,0FFh,0FFh,9Fh,0FFh,0FFh,0FFh,00h
		db	07h,0FFh,0FFh,0FFh,0A0h,00h,00h,00h,0Fh,0FAh,80h,00h,00h,0EAh,0AAh,0ABh,80h,0Ah,0AAh,00h,3Fh,0F8h,1Fh,0FFh,0FFh,0FFh,8Fh,0FFh,0FFh,0FEh,00h
		db	07h,0FFh,0FFh,0FFh,0F0h,00h,00h,00h,07h,0FDh,40h,00h,00h,75h,55h,5Fh,00h,05h,57h,00h,1Fh,0F8h,1Fh,0FFh,0FFh,0FFh,01h,0FFh,0FFh,0F0h,00h
		db	03h,0FFh,0FFh,0FEh,00h,00h,00h,00h,03h,0FFh,0A0h,00h,00h,0Bh,0FFh,0E0h,00h,03h,0FFh,80h,03h,0F0h,03h,0FFh,0FFh,0FEh,00h,0Fh,0FFh,80h,00h
Title_phase_03:
    		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,10h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,0B8h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,01h,0D0h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,02h,0B8h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h,00h
		db	0FDh,00h,00h,00h,00h,00h,03h,0F0h,00h,00h,05h,51h,00h,00h,00h,01h,57h,00h,00h,00h,01h,0F7h,0D5h,00h,00h,00h,00h,00h,00h,00h,00h
		db	0FFh,0FFh,0A0h,0Ah,00h,00h,03h,0FEh,00h,00h,3Ah,0B8h,0E0h,00h,00h,0Ah,0A3h,0E0h,00h,00h,0Ah,0B3h,0FFh,0FAh,0A0h,38h,00h,00h,00h,00h,00h
		db	3Fh,0FFh,0FFh,0FDh,00h,00h,03h,0FFh,00h,00h,55h,50h,14h,00h,00h,15h,50h,74h,00h,00h,15h,59h,0FFh,0FFh,0FFh,0FCh,00h,00h,00h,00h,00h
		db	0Fh,0FFh,0FFh,0FAh,80h,00h,03h,0FFh,0E0h,02h,0AAh,0B8h,0Ah,80h,00h,0AAh,0A0h,3Ah,80h,00h,0AAh,0B8h,7Fh,0FFh,0FFh,0F8h,00h,00h,00h,00h,00h
		db	0Fh,0FFh,0FFh,0FDh,00h,00h,03h,0FFh,0F0h,15h,55h,70h,15h,40h,05h,55h,50h,15h,40h,05h,55h,58h,37h,0FFh,0FFh,0FCh,15h,0F0h,00h,00h,00h
		db	0Fh,0FFh,0FFh,0FAh,80h,00h,03h,0FFh,0EEh,0AAh,0AAh,0E0h,1Ah,0A8h,07h,0AAh,0A0h,0Ah,0A8h,03h,0EAh,0B8h,2Fh,0FFh,0FFh,0FCh,2Bh,0FFh,0AFh,80h,00h
		db	0Fh,0FFh,0FFh,0FDh,00h,00h,01h,0F8h,55h,55h,55h,0C0h,05h,54h,00h,55h,50h,15h,54h,00h,75h,58h,17h,0FFh,0FFh,0F8h,57h,0FFh,0FFh,0F0h,00h
		db	0Fh,0FFh,0FFh,0FAh,80h,00h,03h,0E0h,0Eh,0AAh,0AFh,80h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AAh,00h,2Ah,0A8h,2Fh,0FFh,0FFh,0F8h,2Fh,0FFh,0FFh,0F8h,00h
		db	0Fh,0FFh,0FFh,0FDh,00h,00h,01h,0E0h,05h,55h,7Ch,00h,05h,54h,00h,55h,50h,15h,55h,00h,35h,58h,17h,0FFh,0FFh,0F8h,57h,0FFh,0FFh,0F8h,00h
		db	0Fh,0FAh,0BFh,0FAh,80h,00h,03h,0E0h,0Fh,0EFh,0E0h,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AAh,80h,2Ah,0A8h,2Fh,0FBh,0FFh,0F8h,2Fh,0F8h,0FFh,0F8h,00h
		db	07h,0F5h,00h,35h,00h,00h,01h,0C0h,0Dh,5Ch,00h,00h,0Dh,54h,00h,55h,50h,15h,55h,40h,35h,58h,17h,0F8h,01h,0F0h,57h,0FCh,1Fh,0F0h,00h
		db	07h,0FAh,80h,1Ah,00h,00h,03h,80h,0Ah,0A8h,00h,00h,0Ah,0ACh,00h,2Ah,0B0h,1Ah,0AAh,0A0h,2Ah,0A8h,0Bh,0F8h,00h,0F8h,2Fh,0FEh,0Fh,0F0h,00h
		db	07h,0F5h,0D0h,05h,00h,00h,00h,00h,0Dh,5Ch,00h,00h,05h,54h,00h,15h,50h,15h,55h,50h,35h,58h,17h,0FDh,00h,78h,17h,0FFh,0C5h,0F0h,00h
		db	07h,0FBh,0FEh,00h,00h,00h,00h,00h,0Eh,0A8h,00h,00h,0Ah,0ACh,00h,2Ah,0B0h,1Ah,0BAh,0A8h,2Ah,0B8h,0Bh,0FBh,0A0h,00h,2Bh,0FFh,0E2h,0E0h,00h
		db	07h,0F7h,0FFh,80h,00h,00h,00h,00h,07h,5Ch,00h,00h,05h,54h,00h,15h,50h,15h,5Dh,54h,35h,78h,17h,0FDh,0F4h,00h,17h,0FFh,0FDh,0E0h,00h
		db	03h,0FFh,0FFh,0A0h,00h,00h,00h,00h,0Fh,0A8h,00h,00h,0Ah,0ACh,00h,2Ah,0A0h,0Ah,0AEh,0AAh,2Ah,0F8h,0Bh,0FBh,0FFh,00h,0Bh,0FFh,0FFh,80h,00h
		db	07h,0FFh,0FFh,50h,01h,0FFh,0D0h,00h,07h,0DCh,00h,00h,05h,54h,00h,15h,50h,0Dh,57h,55h,35h,0F8h,17h,0FFh,0FFh,00h,15h,0FFh,0FFh,0C0h,00h
		db	07h,0FFh,0FFh,0A0h,01h,0FFh,0FFh,0AAh,0Fh,0ACh,00h,00h,02h,0ACh,00h,2Ah,0A0h,0Ah,0A3h,0AAh,0ABh,0F8h,0Bh,0FFh,0FFh,80h,0Bh,0FFh,0FFh,0F8h,00h
		db	07h,0FFh,0FFh,50h,01h,0FFh,0FFh,0FDh,07h,0DCh,00h,00h,05h,54h,00h,15h,50h,0Dh,51h,0D5h,55h,0F8h,17h,0FFh,0FFh,00h,07h,0FFh,0FFh,0FCh,00h
		db	03h,0FFh,0CBh,0A0h,01h,0FFh,0FFh,0FAh,0Fh,0ECh,00h,00h,06h,0ACh,00h,2Ah,0A0h,0Ah,0B0h,0EAh,0ABh,0F8h,0Bh,0FCh,2Fh,80h,03h,0FFh,0FFh,0FEh,00h
		db	03h,0FDh,40h,00h,01h,0F0h,00h,05h,07h,0FCh,00h,00h,05h,54h,00h,15h,50h,0Dh,50h,75h,57h,0F8h,07h,0F8h,00h,00h,01h,0FFh,0FFh,0FFh,00h
		db	03h,0FAh,80h,00h,00h,0E0h,00h,02h,8Fh,0ECh,00h,00h,02h,0ACh,00h,2Ah,0A0h,0Ah,0B0h,3Ah,0AFh,0F8h,0Bh,0F8h,00h,00h,00h,2Ah,0AFh,0FFh,00h
		db	03h,0FDh,00h,00h,41h,0E0h,00h,01h,07h,0F4h,00h,00h,05h,54h,00h,15h,50h,0Dh,50h,1Dh,57h,0F8h,07h,0F8h,00h,04h,00h,00h,07h,0FFh,00h
		db	03h,0FAh,80h,00h,0A0h,0A0h,00h,00h,0Fh,0ECh,00h,00h,02h,0ACh,00h,0Ah,0A0h,0Ah,0B0h,0Eh,0AFh,0F8h,0Bh,0F8h,00h,0Ah,02h,80h,02h,0BFh,80h
		db	01h,0FDh,00h,01h,50h,00h,00h,00h,0Fh,0F4h,00h,00h,05h,54h,00h,15h,50h,0Dh,50h,07h,5Fh,0F8h,05h,0F8h,00h,15h,01h,60h,01h,5Fh,0C0h
		db	03h,0FAh,80h,03h,0A0h,00h,00h,00h,0Fh,0ECh,00h,00h,02h,0ACh,00h,0Ah,0A0h,0Ah,0A0h,03h,0BFh,0F8h,0Bh,0F8h,00h,2Bh,02h,0E0h,02h,0BFh,0C0h
		db	03h,0FDh,00h,07h,50h,00h,00h,00h,0Fh,0F4h,00h,00h,01h,54h,00h,15h,50h,0Dh,50h,01h,0FFh,0F8h,07h,0F8h,00h,57h,05h,0F0h,05h,7Fh,0C0h
		db	03h,0FAh,80h,2Fh,0A0h,00h,00h,00h,0Fh,0ECh,00h,00h,02h,0AEh,00h,1Ah,0A0h,0Ah,0A8h,00h,0FFh,0F8h,0Bh,0F8h,02h,0AFh,8Ah,0F8h,0Ah,0FFh,0C0h
		db	03h,0FDh,55h,0FFh,50h,00h,00h,00h,0Fh,0F4h,00h,00h,03h,57h,00h,55h,50h,0Dh,58h,00h,7Fh,0F8h,0Fh,0FDh,7Fh,0FFh,15h,0FCh,15h,0FFh,0C0h
		db	03h,0FFh,0FFh,0FFh,0A8h,00h,00h,00h,0Fh,0FAh,00h,00h,02h,0AAh,0AAh,0AAh,0B0h,0Ah,0A8h,00h,7Fh,0F8h,0Bh,0FFh,0FFh,0FFh,8Bh,0FFh,0FFh,0FFh,80h
		db	03h,0FFh,0FFh,0FFh,50h,00h,00h,00h,07h,0F5h,00h,00h,01h,55h,55h,55h,60h,0Dh,58h,00h,1Fh,0F8h,0Fh,0FFh,0FFh,0FFh,9Fh,0FFh,0FFh,0FFh,00h
		db	03h,0FFh,0FFh,0FFh,0B8h,00h,00h,00h,07h,0FAh,80h,00h,00h,0EAh,0AAh,0AAh,0C0h,0Ah,0AAh,00h,1Fh,0F8h,0Bh,0FFh,0FFh,0FFh,83h,0FFh,0FFh,0FEh,00h
		db	03h,0FFh,0FFh,0FFh,0F0h,00h,00h,00h,07h,0FDh,40h,00h,00h,55h,55h,5Fh,00h,05h,57h,00h,07h,0F8h,0Fh,0FFh,0FFh,0FFh,81h,0FFh,0FFh,0F8h,00h
		db	03h,0FFh,0FFh,0FEh,80h,00h,00h,00h,03h,0FFh,0A0h,00h,00h,0Fh,0FFh,0E8h,00h,03h,0FFh,80h,03h,0F8h,03h,0FFh,0FFh,0FEh,00h,0Fh,0FFh,80h,00h

Title_end:
