

.include "source/constants.s"

.section .trackdata5, "ax"

.set noreorder

.globl PortBlue_0x80306800
PortBlue_0x80306800: # 0x0
.incbin "data/TrackData_PortBlue.bin"
