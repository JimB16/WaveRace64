

.include "source/constants.s"

.section .trackdata10, "ax"

.set noreorder

.globl PortBlue2_0x80306800
PortBlue2_0x80306800: # 0x0
.incbin "data/TrackData_PortBlue2.bin"
