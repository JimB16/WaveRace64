

.include "source/constants.s"

.section .data_230e60, "ax"

.set noreorder


# ROM_0xfe0e0 - copied to [Unknown_0x801516ec] = 0x230e60
.incbin "./roms/Wave Race 64 (USA).z64", ROM_0xfe0e0, ROM_0x1659c0 - ROM_0xfe0e0

.incbin "./roms/Wave Race 64 (USA).z64", ROM_0x1659c0, ROM_0x1ae420 - ROM_0x1659c0

# ROM_0x1ae420
.incbin "data/data_1ae420.mio0" # 0x1ae420 - 0x1b1d70

