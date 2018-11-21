
# RSP Coprocessor Registers
.equ DMA_CACHE,			$0 # I/DMEM address for DMA
.equ DMA_DRAM,			$1 # DRAM address for DMA
.equ DMA_READ_LENGTH,	$2 # DMA READ length (DRAM -> I/DMEM)
.equ DMA_WRITE_LENGTH,	$3 # DMA WRITE length (DRAM <- I/DMEM)
.equ SP_STATUS,			$4 # RSP Status
.equ DMA_FULL,			$5 # DMA full
.equ DMA_BUSY,			$6 # DMA busy
.equ SP_RESERVED,		$7 # CPU-RSP Semaphore
.equ CMD_START,			$8 # RDP command buffer START
.equ CMD_END,			$9 # RDP command buffer END
.equ CMD_CURRENT,		$10 # RDP command buffer CURRENT
.equ CMD_STATUS,		$11 # RDP Status
.equ CMD_CLOCK,			$12 # RDP clock counter
.equ CMD_BUSY,			$13 # RDP command buffer BUSY
.equ CMD_PIPE_BUSY,		$14 # RDP pipe BUSY
.equ CMD_TMEM_BUSY,		$15 # RDP TMEM BUSY


.equ zero,	0
.equ at,	1
.equ v0,	2
.equ v1,	3
.equ a0,	4
.equ a1,	5
.equ a2,	6
.equ a3,	7
.equ t0,	8
.equ t1,	9
.equ t2,	10
.equ t3,	11
.equ t4,	12
.equ t5,	13
.equ t6,	14
.equ t7,	15
.equ s0,	16
.equ s1,	17
.equ s2,	18
.equ s3,	19
.equ s4,	20
.equ s5,	21
.equ s6,	22
.equ s7,	23
.equ t8,	24
.equ t9,	25
.equ k0,	26
.equ k1,	27
.equ gp,	28
.equ sp,	29
.equ fp,	30
.equ ra,	31

.equ vec0,	0
.equ vec1,	1
.equ vec2,	2
.equ vec3,	3
.equ vec4,	4
.equ vec5,	5
.equ vec6,	6
.equ vec7,	7
.equ vec8,	8
.equ vec9,	9
.equ vec10,	10
.equ vec11,	11
.equ vec12,	12
.equ vec13,	13
.equ vec14,	14
.equ vec15,	15
.equ vec16,	16
.equ vec17,	17
.equ vec18,	18
.equ vec19,	19
.equ vec20,	20
.equ vec21,	21
.equ vec22,	22
.equ vec23,	23
.equ vec24,	24
.equ vec25,	25
.equ vec26,	26
.equ vec27,	27
.equ vec28,	28
.equ vec29,	29
.equ vec30,	30
.equ vec31,	31

.macro vmulf vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 0<<0
.endm
.macro vmudl vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 4<<0
.endm
.macro vmudm vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 5<<0
.endm
.macro vmudn vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 6<<0
.endm
.macro vmudh vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 7<<0
.endm
.macro vmacf vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 8<<0
.endm
.macro vmadl vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 12<<0
.endm
.macro vmadm vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 13<<0
.endm
.macro vmadn vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 14<<0
.endm
.macro vmadh vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 15<<0
.endm
.macro vmadd vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 16<<0
.endm
.macro vmacu vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 17<<0
.endm
.macro vabs vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 19<<0
.endm
.macro vaddc vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 20<<0
.endm
.macro vsubc vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 21<<0
.endm
.macro vsar vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 29<<0
.endm
.macro vlt vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 32<<0
.endm
.macro veq vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 33<<0
.endm
.macro vne vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 34<<0
.endm
.macro vge vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 35<<0
.endm
.macro vcl vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 36<<0
.endm
.macro vch vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 37<<0
.endm
.macro vcr vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 38<<0
.endm
.macro vmrg vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 39<<0
.endm
.macro vand vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 40<<0
.endm
.macro vor vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 42<<0
.endm
.macro vxor vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 44<<0
.endm
.macro vnxor vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 45<<0
.endm
.macro vrcp vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 48<<0
.endm
.macro vrcpl vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 49<<0
.endm
.macro vrcph vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 50<<0
.endm
.macro vmov vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 51<<0
.endm
.macro vrsql vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 53<<0
.endm
.macro vrsqh vd, vs, vt, e
	.word 18<<26 | 1<<25 | \e<<21 | \vt<<16 | \vs<<11 | \vd<<6 | 54<<0
.endm

.macro mfc2_ rt, vd, e
	.word 18<<26 | 0<<21 | \rt<<16 | \vd<<11 | \e<<7 | 0<<0
.endm
.macro mtc2_ rt, vd, e
	.word 18<<26 | 4<<21 | \rt<<16 | \vd<<11 | \e<<7 | 0<<0
.endm

.macro lbv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 0<<11 | \e<<7 | (\offset>>0)<<0
.endm
.macro lsv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 1<<11 | \e<<7 | (\offset>>1)<<0
.endm
.macro llv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 2<<11 | \e<<7 | (\offset>>2)<<0
.endm
.macro ldv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 3<<11 | \e<<7 | (\offset>>3)<<0
.endm
.macro lqv vt, e, offset, base
	.word (50<<26) | (\base<<21) | (\vt<<16) | (4<<11) | (\e<<7) | (\offset<<0)
.endm
.macro lrv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 5<<11 | \e<<7 | \offset<<0
.endm
.macro lpv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 6<<11 | \e<<7 | \offset<<0
.endm
.macro luv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 7<<11 | \e<<7 | \offset<<0
.endm
.macro ltv vt, e, offset, base
	.word 50<<26 | \base<<21 | \vt<<16 | 11<<11 | \e<<7 | \offset<<0
.endm

.macro sbv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 0<<11 | \e<<7 | \offset<<0
.endm
.macro ssv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 1<<11 | \e<<7 | \offset<<0
.endm
.macro slv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 2<<11 | \e<<7 | \offset<<0
.endm
.macro sdv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 3<<11 | \e<<7 | \offset<<0
.endm
.macro sqv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 4<<11 | \e<<7 | \offset<<0
.endm
.macro spv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 6<<11 | \e<<7 | \offset<<0
.endm
.macro suv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 7<<11 | \e<<7 | \offset<<0
.endm
.macro stv vt, e, offset, base
	.word 58<<26 | \base<<21 | \vt<<16 | 11<<11 | \e<<7 | \offset<<0
.endm

