

.equ ROM_0x0,					0x0 # ROM Header - 0x1000
.equ ROM_0x1000,				0x1000 # Main Code - 99330
.equ ROM_0xa9330,				0xa9330
.equ ROM_0xf5e50,				0xf5e50
.equ ROM_0xfe0e0,				0xfe0e0
.equ ROM_0x1659c0,				0x1659c0
.equ ROM_0x1ae420,				0x1ae420
.equ ROM_0x1b1d70,				0x1b1d70
.equ ROM_0x1b3c80,				0x1b3c80
.equ ROM_0x1b5360,				0x1b5360
.equ ROM_0x1b9200,				0x1b9200
.equ ROM_0x800000,				0x800000


.equ Code_0x801dad00,			0x801dad00
.equ Code_0x801fc600,			0x801fc600
.equ Code_0x80227820,			0x80227820
.equ Code_0x80228bd0,			0x80228bd0
.equ Code_0x802c5800,			0x802c5800



.equ Unknown_0x80001000,		0x80001000
.equ Unkonwn_0x80045650,		0x80045650

.equ Unknown_0x800da89c,		0x800da89c
.equ Unknown_0x800da8a4,		0x800da8a4

.equ Unknown_0x801516a0,		0x801516a0
.equ Unknown_0x801516a8,		0x801516a8
.equ Unknown_0x801516ac,		0x801516ac
.equ Unknown_0x801516b0,		0x801516b0
.equ Unknown_0x801516b4,		0x801516b4
.equ Unknown_0x801516c0,		0x801516c0
.equ Unknown_0x801516c4,		0x801516c4
.equ Unknown_0x801516c8,		0x801516c8
.equ Unknown_0x801516cc,		0x801516cc
.equ Unknown_0x801516d0,		0x801516d0
.equ Unknown_0x801516d4,		0x801516d4
.equ Unknown_0x801516d8,		0x801516d8 # osVirtualToPhysical(Code_0x802c5800)
.equ Unknown_0x801516dc,		0x801516dc
.equ Unknown_0x801516e0,		0x801516e0
.equ Unknown_0x801516e4,		0x801516e4
.equ Unknown_0x801516e8,		0x801516e8
.equ Unknown_0x801516ec,		0x801516ec
.equ Unknown_0x801516f0,		0x801516f0
.equ Unknown_0x801516f4,		0x801516f4
.equ Unknown_0x80151704,		0x80151704 # osVirtualToPhysical(Unknown_0x80001000)
.equ Unknown_0x80151708,		0x80151708 # osVirtualToPhysical(Unkonwn_0x80045650)
.equ Unknown_0x80151714,		0x80151714
.equ Unknown_0x80151718,		0x80151718
.equ Unknown_0x8015171c,		0x8015171c
.equ Unknown_0x80151720,		0x80151720
.equ Unknown_0x80151724,		0x80151724
.equ Unknown_0x80151728,		0x80151728
.equ Unknown_0x8015172c,		0x8015172c
.equ Unknown_0x80151730,		0x80151730
.equ Unknown_0x80151734,		0x80151734
.equ Unknown_0x80151940,		0x80151940 # Stackpointer
.equ Unknown_0x80153740,		0x80153740

.equ Unknown_0x80153e00,		0x80153e00 # PiManager?
.equ Unknown_0x80153e18,		0x80153e18 # MesgQueue?
.equ Unknown_0x80153e18_8,		0x8
.equ Unknown_0x80153e18_10,		0x10
.equ Unknown_0x80153e30,		0x80153e30
.equ Unknown_0x80153e60,		0x80153e60
.equ Unknown_0x80153e78,		0x80153e78
.equ Unknown_0x80153e90,		0x80153e90
.equ Unknown_0x80153ea8,		0x80153ea8 # PiManager?
.equ Unknown_0x80153fa8,		0x80153fa8 # MesgQueue?
.equ Unknown_0x80154000,		0x80154000

.equ Unknown_0x801ce39c,		0x801ce39c
.equ Unknown_0x801ce718,		0x801ce718

.equ Unknown_0x801d96e0,		0x801d96e0 # OSThread *
.equ Unknown_0x801da8c0,		0x801da8c0
.equ Unknown_0x801da8fc,		0x801da8fc
.equ Unknown_0x801da900,		0x801da900
.equ Unknown_0x801da9f8,		0x801da9f8

.equ Unknown_0x802a0000,		0x802a0000
.equ Unknown_0x802d6800,		0x802d6800
.equ Unknown_0x80316800,		0x80316800
.equ Unknown_0x8038f800,		0x8038f800
.equ Unknown_0x80400000,		0x80400000

.equ OSMesgQueue_mtqueue,		0x0 # OSThread *
.equ OSMesgQueue_fullqueue,		0x4 # OSThread *
.equ OSMesgQueue_validCount,	0x8
.equ OSMesgQueue_first,			0xc
.equ OSMesgQueue_msgCount,		0x10
.equ OSMesgQueue_msg,			0x14 # OSMesg *




.equ RDRAM_BASE_REG,        0xa3f00000
.equ RDRAM_CONFIG_REG,      0xa3f00000
.equ RDRAM_MODE_REG,        0xa3f0000c
.equ RDRAM_RAS_INTERVAL_REG, 0xa3f00018
.equ RDRAM_DEVICE_MANUF_REG, 0xa3f00024

.equ SP_BASE_REG,           0xa4000000
.equ SP_DMEM,               0xa4000000
.equ SP_IMEM,               0xa4001000

.equ SP_STATUS_REG,         0xa4040010
# Values to clear/set bit in status reg (SP_STATUS_REG - write)
.equ SP_CLR_HALT,		0x00001	    # Bit  0: clear halt */
.equ SP_SET_HALT,		0x00002	    # Bit  1: set halt */
.equ SP_CLR_BROKE,		0x00004	    # Bit  2: clear broke */
.equ SP_CLR_INTR,		0x00008	    # Bit  3: clear intr */
.equ SP_SET_INTR,		0x00010	    # Bit  4: set intr */
.equ SP_CLR_SSTEP,		0x00020	    # Bit  5: clear sstep */
.equ SP_SET_SSTEP,		0x00040	    # Bit  6: set sstep */
.equ SP_CLR_INTR_BREAK,	0x00080	    # Bit  7: clear intr on break */
.equ SP_SET_INTR_BREAK,	0x00100	    # Bit  8: set intr on break */
.equ SP_CLR_SIG0,		0x00200	    # Bit  9: clear signal 0 */
.equ SP_SET_SIG0,		0x00400	    # Bit 10: set signal 0 */
.equ SP_CLR_SIG1,		0x00800	    # Bit 11: clear signal 1 */
.equ SP_SET_SIG1,		0x01000	    # Bit 12: set signal 1 */
.equ SP_CLR_SIG2,		0x02000	    # Bit 13: clear signal 2 */
.equ SP_SET_SIG2,		0x04000	    # Bit 14: set signal 2 */
.equ SP_CLR_SIG3,		0x08000	    # Bit 15: clear signal 3 */
.equ SP_SET_SIG3,		0x10000	    # Bit 16: set signal 3 */
.equ SP_CLR_SIG4,		0x20000	    # Bit 17: clear signal 4 */
.equ SP_SET_SIG4,		0x40000	    # Bit 18: set signal 4 */
.equ SP_CLR_SIG5,		0x80000	    # Bit 19: clear signal 5 */
.equ SP_SET_SIG5,	       0x100000	    # Bit 20: set signal 5 */
.equ SP_CLR_SIG6,	       0x200000	    # Bit 21: clear signal 6 */
.equ SP_SET_SIG6,	       0x400000	    # Bit 22: set signal 6 */
.equ SP_CLR_SIG7,	       0x800000	    # Bit 23: clear signal 7 */
.equ SP_SET_SIG7,	      0x1000000	    # Bit 24: set signal 7 */
.equ SP_PC_REG,             0xa4080000

.equ DPC_STATUS_REG,        0xa410000c

# MIPS Interface (MI) Registers 
.equ MI_INIT_MODE_REG,      0xa4300000
# Values to clear/set bit in mode reg (MI_MODE_REG - write)
.equ MI_CLR_INIT,           0x0080		# Bit  7: clear init mode
.equ MI_SET_INIT,           0x0100		# Bit  8: set init mode
.equ MI_CLR_EBUS,           0x0200		# Bit  9: clear ebus test
.equ MI_SET_EBUS,           0x0400		# Bit 10: set ebus test mode
.equ MI_CLR_DP_INTR,        0x0800		# Bit 11: clear dp interrupt
.equ MI_CLR_RDRAM,          0x1000		# Bit 12: clear RDRAM reg
.equ MI_SET_RDRAM,          0x2000		# Bit 13: set RDRAM reg mode
.equ MI_VERSION_REG,        0xa4300004
.equ MI_INTR_MASK_REG,      0xa430000c

.equ AI_STATUS_REG,         0xa450000c

.equ PI_BASE_REG,           0xa4600000
.equ PI_DRAM_ADDR_REG,      0xa4600000
.equ PI_CART_ADDR_REG,      0xa4600004
.equ PI_RD_LEN_REG,         0xa4600008
.equ PI_WR_LEN_REG,         0xa460000c
.equ PI_STATUS_REG,         0xa4600010
# PI status register has 3 bits active when read from (PI_STATUS_REG - read)
.equ PI_STATUS_ERROR,       0x04 # Bit 2: Error    - set when CPU issues IO request while DMA is busy
.equ PI_STATUS_IO_BUSY,     0x02 # Bit 1: IO busy  - set when IO is in progress
.equ PI_STATUS_DMA_BUSY,    0x01 # Bit 0: DMA busy - set when DMA is in progress
# PI status register has 2 bits active when written to:
.equ PI_STATUS_RESET,		0x01 # Bit 0: When set, reset PIC
.equ PI_STATUS_CLR_INTR,	0x02 # Bit 1: When set, clear interrupt flag

.equ RI_BASE_REG,           0xa4700000
.equ RI_MODE_REG,           0xa4700000
.equ RI_CONFIG_REG,         0xa4700004
.equ RI_CURRENT_LOAD_REG,   0xa4700008
.equ RI_SELECT_REG,         0xa470000c
.equ RI_REFRESH_REG,        0xa4700010

.equ SI_STATUS_REG,         0xa4800018

.equ ROM_HEADER_BASE,       0xb0000000
.equ BOOT_ADDRESS_OFFSET,   0xb0000008
.equ CRC1,                  0xb0000010
.equ CRC2,                  0xb0000014
