

.include "source/constants.s"


.section .cartridge, "ax"


.globl ROM_Track_DolphinPark
ROM_Track_DolphinPark:
.incbin "build/data/mio0/Track_DolphinPark.mio0" # 0x1d0f90
.align 4, 0
.globl ROM_Track_DolphinPark_End
ROM_Track_DolphinPark_End:

.align 4, 0
.globl ROM_Track_SunnyBeach1
ROM_Track_SunnyBeach1:
.incbin "build/data/models/Track_SunnyBeach1.mio0" # 0x1e5620
.globl ROM_Track_SunnyBeach1_End
ROM_Track_SunnyBeach1_End:

.align 4, 0
.globl ROM_Track_SunsetBay1
ROM_Track_SunsetBay1:
.incbin "build/data/mio0/Track_SunsetBay1.mio0" # 0x1efab0
.globl ROM_Track_SunsetBay1_End
ROM_Track_SunsetBay1_End:

.align 4, 0
.globl ROM_Track_MarineFortress1
ROM_Track_MarineFortress1:
.incbin "build/data/mio0/Track_MarineFortress1.mio0" # 0x1fb030
.globl ROM_Track_MarineFortress1_End
ROM_Track_MarineFortress1_End:

.align 4, 0
.globl ROM_Track_DrakeLake1
ROM_Track_DrakeLake1:
.incbin "build/data/mio0/Track_DrakeLake1.mio0" # 0x208740
.globl ROM_Track_DrakeLake1_End
ROM_Track_DrakeLake1_End:

.align 4, 0
.globl ROM_Track_PortBlue1
ROM_Track_PortBlue1:
.incbin "build/data/mio0/Track_PortBlue1.mio0" # 0x20f700
.globl ROM_Track_PortBlue1_End
ROM_Track_PortBlue1_End:

.align 4, 0
.globl ROM_Track_TwilightCity1
ROM_Track_TwilightCity1:
.incbin "build/data/mio0/Track_TwilightCity1.mio0" # 0x2173f0
.globl ROM_Track_TwilightCity1_End
ROM_Track_TwilightCity1_End:

.align 4, 0
.globl ROM_Track_SouthernIsland1
ROM_Track_SouthernIsland1:
.incbin "build/data/mio0/Track_SouthernIsland1.mio0" # 0x221820
.globl ROM_Track_SouthernIsland1_End
ROM_Track_SouthernIsland1_End:

.align 4, 0
.globl ROM_Track_GlacierCoast1
ROM_Track_GlacierCoast1:
.incbin "build/data/mio0/Track_GlacierCoast1.mio0" # 0x2291a0
.globl ROM_Track_GlacierCoast1_End
ROM_Track_GlacierCoast1_End:

.align 4, 0
.globl ROM_Track_Unknown
ROM_Track_Unknown:
.incbin "build/data/mio0/Track_Unknown.mio0" # 0x2341e0
.globl ROM_Track_Unknown_End
ROM_Track_Unknown_End:

.align 4, 0
.globl ROM_Track_SunnyBeach2
ROM_Track_SunnyBeach2:
.incbin "build/data/models/Track_SunnyBeach2.mio0" # 0x240e30
.globl ROM_Track_SunnyBeach2_End
ROM_Track_SunnyBeach2_End:

.align 4, 0
.globl ROM_Track_SunsetBay2
ROM_Track_SunsetBay2:
.incbin "build/data/mio0/Track_SunsetBay2.mio0" # 0x243300
.globl ROM_Track_SunsetBay2_End
ROM_Track_SunsetBay2_End:

.align 4, 0
.globl ROM_Track_MarineFortress2
ROM_Track_MarineFortress2:
.incbin "build/data/mio0/Track_MarineFortress2.mio0" # 0x2451f0
.globl ROM_Track_MarineFortress2_End
ROM_Track_MarineFortress2_End:

.align 4, 0
.globl ROM_Track_DrakeLake2
ROM_Track_DrakeLake2:
.incbin "build/data/mio0/Track_DrakeLake2.mio0" # 0x2479e0
.globl ROM_Track_DrakeLake2_End
ROM_Track_DrakeLake2_End:

.align 4, 0
.globl ROM_Track_PortBlue2
ROM_Track_PortBlue2:
.incbin "build/data/mio0/Track_PortBlue2.mio0" # 0x24b200
.globl ROM_Track_PortBlue2_End
ROM_Track_PortBlue2_End:

.align 4, 0
.globl ROM_Track_TwilightCity2
ROM_Track_TwilightCity2:
.incbin "build/data/mio0/Track_TwilightCity2.mio0" # 0x24e330
.globl ROM_Track_TwilightCity2_End
ROM_Track_TwilightCity2_End:

.align 4, 0
.globl ROM_Track_SouthernIsland2
ROM_Track_SouthernIsland2:
.incbin "build/data/mio0/Track_SouthernIsland2.mio0" # 0x250a70
.globl ROM_Track_SouthernIsland2_End
ROM_Track_SouthernIsland2_End:

.align 4, 0
.globl ROM_Track_GlacierCoast2
ROM_Track_GlacierCoast2:
.incbin "build/data/mio0/Track_GlacierCoast2.mio0" # 0x254d30
.globl ROM_Track_GlacierCoast2_End
ROM_Track_GlacierCoast2_End:



.align 4, 0
.globl ROM_Track_SunnyBeachTextures
ROM_Track_SunnyBeachTextures:
.incbin "build/data/mio0/Track_SunnyBeachTextures.mio0" # 0x257b00
.globl ROM_Track_SunnyBeachTextures_End
ROM_Track_SunnyBeachTextures_End:

.align 4, 0
.globl ROM_Track_SunsetBayTextures
ROM_Track_SunsetBayTextures:
.incbin "build/data/mio0/Track_SunsetBayTextures.mio0" # 0x262f90
.globl ROM_Track_SunsetBayTextures_End
ROM_Track_SunsetBayTextures_End:

.align 4, 0
.globl ROM_Track_MarineFortressTextures
ROM_Track_MarineFortressTextures:
.incbin "build/data/mio0/Track_MarineFortressTextures.mio0" # 0x267e00
.globl ROM_Track_MarineFortressTextures_End
ROM_Track_MarineFortressTextures_End:

.align 4, 0
.globl ROM_Track_DrakeLakeTextures
ROM_Track_DrakeLakeTextures:
.incbin "build/data/mio0/Track_DrakeLakeTextures.mio0" # 0x271bc0
.globl ROM_Track_DrakeLakeTextures_End
ROM_Track_DrakeLakeTextures_End:

.align 4, 0
.globl ROM_Track_PortBlueTextures
ROM_Track_PortBlueTextures:
.incbin "build/data/mio0/Track_PortBlueTextures.mio0" # 0x2787a0
.globl ROM_Track_PortBlueTextures_End
ROM_Track_PortBlueTextures_End:

.align 4, 0
.globl ROM_Track_TwilightCityTextures
ROM_Track_TwilightCityTextures:
.incbin "build/data/mio0/Track_TwilightCityTextures.mio0" # 0x282760
.globl ROM_Track_TwilightCityTextures_End
ROM_Track_TwilightCityTextures_End:

.align 4, 0
.globl ROM_Track_SouthernIslandTextures
ROM_Track_SouthernIslandTextures:
.incbin "build/data/mio0/Track_SouthernIslandTextures.mio0" # 0x289330
.globl ROM_Track_SouthernIslandTextures_End
ROM_Track_SouthernIslandTextures_End:

.align 4, 0
.globl ROM_Track_GlacierCoastTextures
ROM_Track_GlacierCoastTextures:
.incbin "build/data/mio0/Track_GlacierCoastTextures.mio0" # 0x295b70
.globl ROM_Track_GlacierCoastTextures_End
ROM_Track_GlacierCoastTextures_End:


# looks like water colour settings
.align 4, 0
.globl ROM_0x29c8c0
ROM_0x29c8c0:
.incbin "build/data/mio0/data_29c8c0.mio0" # 0x29c8c0
.globl ROM_0x29c8c0_End
ROM_0x29c8c0_End:

.align 4, 0
.globl ROM_0x29F5A0
ROM_0x29F5A0:
.incbin "build/data/mio0/data_29F5A0.mio0" # 0x29F5A0
.globl ROM_0x29F5A0_End
ROM_0x29F5A0_End:

.align 4, 0
.globl ROM_0x2A1F10
ROM_0x2A1F10:
.incbin "build/data/mio0/data_2A1F10.mio0" # 0x2A1F10
.align 4, 0
.globl ROM_0x2A1F10_End
ROM_0x2A1F10_End:


