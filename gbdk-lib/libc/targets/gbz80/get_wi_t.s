	.include	"global.s"

	.globl	.get_xy_wtt

	.area	_HOME

_get_win_tiles::
	PUSH	BC

	LDA	HL,4(SP)	; Skip return address and registers
	LD	A,(HL+)		; D = x
	LD	D, A
	LD	E,(HL)		; E = y
	LDA	HL,9(SP)
	LD	A,(HL-)		; BC = tiles
	LD	B, A
	LD	A,(HL-)
	LD	C, A
	LD	A,(HL-)		; A = h
	LD	H,(HL)		; H = w
	LD	L,A		; L = h

	CALL	.get_xy_wtt

	POP	BC
	RET
