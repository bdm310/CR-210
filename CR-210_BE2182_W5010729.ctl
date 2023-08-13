;
; CR-210_BE2182_W5010729.CTL - Control File for 80C535 in Becker CR-210 radio
;
; LC3564M-10 8kB SRAM
;
; I2C Bus 0
; P4.1 SDA
; P4.0 SCL
; U4280BM on RF board address 11001000?
;
; I2C Bus 1
; P5.1 SDA
; P5.0 SCL
; 85C92 EEPROM 4kb on main board address 1010000
; PCF8574 on face plate address 0100001
; PCF8574 on sub face plate address 0100000
; PCF8576 on sub face plate address 0111000
; TDA7310 on main board address 10001000?
;
; labels for interrupt vectors
;
L 0	reset
L 3	ie0vec
L b	tf0vec
L 13	ie1vec
L 1b	tf1vec
L 23	servec
L 2b	tf2vec
L 43	iadcvec
L 4b	iex2
L 53	iex3
L 5b	iex4
L 63	iex5
L 6b	iex6
;
; tell D52 to disassemble code at interrupt vector locations
;
C 3	; external 0 interrupt
C b	; timer 0 overflow interrupt
C 13	; external 1 interrupt
C 1b	; timer 1 overflow interrupt
C 23	; serial xmit/recv interrupt
C 2b	; timer 2 overflow interrupt
C 43	; A/D interrupt
C 4b	; external 2 interrupt
C 53	; external 3 interrupt
C 5b	; external 4 interrupt
C 63	; external 5 interrupt
C 6b	; external 6 interrupt
;
; SFR definitions
;
F 80	P0
F 81	SP
F 82	DPL
F 83	DPH
F 87	PCON
F 88	TCON
F 89	TMOD
F 8a	TL0
F 8b	TL1
F 8c	TH0
F 8d	TH1
F 90	P1
F 98	SCON
F 99	SBUF
F a0	P2
F a8	IEN0
F a9	IP0
F b0	P3
F b8	IEN1
F b9	IP1
F c0	IRCON
F c1	CCEN
F c2	CCL1
F c3	CCH1
F c4	CCL2
F c5	CCH2
F c6	CCL3
F c7	CCH3
F c8	T2CON
F ca	CRCL
F cb	CRCH
F cc	TL2
F cd	TH2
F d0	PSW
F d8	ADCON
F d9	ADDAT
F da	DAPR
F db	P6
F e0	ACC
F e8	P4
F f0	B
F f8	P5
;
; SFR bit definitions
;
K 80	P0.0
K 81	P0.1
K 82	P0.2
K 83	P0.3
K 84	P0.4
K 85	P0.5
K 86	P0.6
K 87	P0.7
K 90	P1.0
K 91	P1.1
K 92	P1.2
K 93	P1.3
K 94	P1.4
K 95	P1.5
K 96	P1.6
K 97	P1.7
K a0	P2.0
K a1	P2.1
K a2	P2.2
K a3	P2.3
K a4	P2.4
K a5	P2.5
K a6	P2.6
K a7	P2.7
K b0	P3.0
K b1	P3.1
K b2	P3.2
K b3	P3.3
K b4	P3.4
K b5	P3.5
K b6	P3.6
K b7	P3.7
K 88	TCON.IT0
K 89	TCON.IE0
K 8a	TCON.IT1
K 8b	TCON.IE1
K 8c	TCON.TR0
K 8d	TCON.TF0
K 8e	TCON.TR1
K 8f	TCON.TF1
K 98	SCON.RI
K 99	SCON.TI
K 9a	SCON.RB8
K 9b	SCON.TB8
K 9c	SCON.REN
K 9d	SCON.SM2
K 9e	SCON.SM1
K 9f	SCON.SM0
K a8	IEN0.EX0
K a9	IEN0.ET0
K aa	IEN0.EX1
K ab	IEN0.ET1
K ac	IEN0.ES
K ad	IEN0.ET2
K ae	IEN0.WDT
K af	IEN0.EAL
K b8	IEN1.EADC
K b9	IEN1.EX2
K ba	IEN1.EX3
K bb	IEN1.EX4
K bc	IEN1.EX5
K bd	IEN1.EX6
K be	IEN1.SWDT
K bf	IEN1.EXEN2
K c0	IRCON.IADC
K c1	IRCON.IEX2
K c2	IRCON.IEX3
K c3	IRCON.IEX4
K c4	IRCON.IEX5
K c5	IRCON.IEX6
K c6	IRCON.TF2
K c7	IRCON.EXF2
K c8	T2CON.T2I0
K c9	T2CON.T2I1
K ca	T2CON.T2CM
K cb	T2CON.T2R0
K cc	T2CON.T2R1
K cd	T2CON.I2FR
K ce	T2CON.I3FR
K cf	T2CON.T2PS
K d0	PSW.P
K d1	PSW.F1
K d2	PSW.OV
K d3	PSW.RS0
K d4	PSW.RS1
K d5	PSW.F0
K d6	PSW.AC
K d7	PSW.CY
K d8	ADCON.MX0
K d9	ADCON.MX1
K da	ADCON.MX2
K db	ADCON.ADM
K dc	ADCON.BSY
K dd	ADCON.5
K de	ADCON.CLK
K df	ADCON.BD
K e0	ACC.0
K e1	ACC.1
K e2	ACC.2
K e3	ACC.3
K e4	ACC.4
K e5	ACC.5
K e6	ACC.6
K e7	ACC.7
K e8	P4.0
K e9	P4.1
K ea	P4.2
K eb	P4.3
K ec	P4.4
K ed	P4.5
K ee	P4.6
K ef	P4.7
K f0	B.0
K f1	B.1
K f2	B.2
K f3	B.3
K f4	B.4
K f5	B.5
K f6	B.6
K f7	B.7
K f8	P5.0
K f9	P5.1
K fa	P5.2
K fb	P5.3
K fc	P5.4
K fd	P5.5
K fe	P5.6
K ff	P5.7
;
; Main
;
L 9bd6	main
L 9bd5	mainintclr
! 9c41	clear memory from 01-b0 skipping 20
L 9c44	mainmemclrloop
L 9c49	maindoclr
L 9c4a	mainskpclr
;
; I2C
;
L 9b04	i2c11
L 9b0f	i2c12
L 9b37	i2c13
L 9b3a	i2c13loop
L 9b4e	i2c14
L 9b63	i2c15
L 9b67	i2c15loop
C 9b07-9b0b
C 9b15-9b19
C 9b20-9b24
C 9b2e-9b32
C 9b40-9b42
C 9b54-9b56
C 9b6d-9b70
C 9b7c-9b80
C 9b89-9b8d
;
; end of control file
;

