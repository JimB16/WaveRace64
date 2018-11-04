

.include "source/constants.s"

.section .cartridge, "ax"

.set noreorder


.globl ROM_0x1d0f90
ROM_0x1d0f90:
.incbin "build/data/mio0/Track_DolphinPark.mio0" # 0x1d0f90
.globl ROM_0x1d0f90_End
ROM_0x1d0f90_End:

.align 4, 0
.globl ROM_0x1e5620
ROM_0x1e5620:
.incbin "build/data/mio0/Track_SunnyBeach1.mio0" # 0x1e5620
.globl ROM_0x1e5620_End
ROM_0x1e5620_End:

.align 4, 0
.globl ROM_0x1efab0
ROM_0x1efab0:
.incbin "build/data/mio0/Track_SunsetBay1.mio0" # 0x1efab0
.globl ROM_0x1efab0_End
ROM_0x1efab0_End:

.align 4, 0
.globl ROM_0x1fb030
ROM_0x1fb030:
.incbin "build/data/mio0/Track_MarineFortress1.mio0" # 0x1fb030
.globl ROM_0x1fb030_End
ROM_0x1fb030_End:

.align 4, 0
.globl ROM_0x208740
ROM_0x208740:
.incbin "build/data/mio0/Track_DrakeLake1.mio0" # 0x208740
.globl ROM_0x208740_End
ROM_0x208740_End:

.align 4, 0
.globl ROM_0x20f700
ROM_0x20f700:
.incbin "build/data/mio0/Track_PortBlue1.mio0" # 0x20f700
.globl ROM_0x20f700_End
ROM_0x20f700_End:

.align 4, 0
.globl ROM_0x2173f0
ROM_0x2173f0:
.incbin "build/data/mio0/data_2173f0.mio0" # 0x2173f0
.globl ROM_0x2173f0_End
ROM_0x2173f0_End:

.align 4, 0
.globl ROM_0x221820
ROM_0x221820:
.incbin "build/data/mio0/Track_SouthernIsland1.mio0" # 0x221820
.globl ROM_0x221820_End
ROM_0x221820_End:

.align 4, 0
.globl ROM_0x2291a0
ROM_0x2291a0:
.incbin "build/data/mio0/data_2291a0.mio0" # 0x2291a0

.align 4, 0
.globl ROM_0x2341e0
ROM_0x2341e0:
.incbin "build/data/mio0/data_2341e0.mio0" # 0x2341e0

.align 4, 0
.globl ROM_0x240e30
ROM_0x240e30:
.incbin "build/data/mio0/data_240e30.mio0" # 0x240e30

.align 4, 0
.globl ROM_0x243300
ROM_0x243300:
.incbin "build/data/mio0/data_243300.mio0" # 0x243300

.align 4, 0
.globl ROM_0x2451f0
ROM_0x2451f0:
.incbin "build/data/mio0/data_2451f0.mio0" # 0x2451f0

.align 4, 0
.globl ROM_0x2479e0
ROM_0x2479e0:
.incbin "build/data/mio0/data_2479e0.mio0" # 0x2479e0

.align 4, 0
.globl ROM_0x24b200
ROM_0x24b200:
.incbin "build/data/mio0/data_24b200.mio0" # 0x24b200
.align 4, 0
.globl ROM_0x24e330
ROM_0x24e330:
.incbin "build/data/mio0/data_24e330.mio0" # 0x24e330

.align 4, 0
.globl ROM_0x250a70
ROM_0x250a70:
.incbin "build/data/mio0/data_250a70.mio0" # 0x250a70

.align 4, 0
.globl ROM_0x254d30
ROM_0x254d30:
.incbin "build/data/mio0/data_254d30.mio0" # 0x254d30



.align 4, 0
.globl ROM_0x257b00
ROM_0x257b00:
.incbin "build/data/mio0/data_257b00.mio0" # 0x257b00

.align 4, 0
.globl ROM_0x262f90
ROM_0x262f90:
.incbin "build/data/mio0/data_262f90.mio0" # 0x262f90

.align 4, 0
.globl ROM_0x267e00
ROM_0x267e00:
.incbin "build/data/mio0/data_267e00.mio0" # 0x267e00

.align 4, 0
.globl ROM_0x271bc0
ROM_0x271bc0:
.incbin "build/data/mio0/data_271bc0.mio0" # 0x271bc0

.align 4, 0
.globl ROM_0x2787a0
ROM_0x2787a0:
.incbin "build/data/mio0/data_2787a0.mio0" # 0x2787a0

.align 4, 0
.globl ROM_0x282760
ROM_0x282760:
.incbin "build/data/mio0/data_282760.mio0" # 0x282760

.align 4, 0
.globl ROM_0x289330
ROM_0x289330:
.incbin "build/data/mio0/data_289330.mio0" # 0x289330

.align 4, 0
.globl ROM_0x295b70
ROM_0x295b70:
.incbin "build/data/mio0/data_295b70.mio0" # 0x295b70


# looks like water colour settings
.align 4, 0
.globl ROM_0x29c8c0
ROM_0x29c8c0:
.incbin "build/data/mio0/data_29c8c0.mio0" # 0x29c8c0

.align 4, 0
.globl ROM_0x29F5A0
ROM_0x29F5A0:
.incbin "build/data/mio0/data_29F5A0.mio0" # 0x29F5A0

.align 4, 0
.globl ROM_0x2A1F10
ROM_0x2A1F10:
.incbin "build/data/mio0/data_2A1F10.mio0" # 0x2A1F10



.align 4, 0
.globl ROM_0x2a4c90
ROM_0x2a4c90:
.incbin "data/data_2a4c90.bin" # 0x2a4c90
.globl ROM_0x2a9d30
ROM_0x2a9d30:
.incbin "data/data_2a9d30.bin" # 0x2a9d30
.globl ROM_0x2b3440
ROM_0x2b3440:
.incbin "data/data_2b3440.bin" # 0x2b3440
.globl ROM_0x2b76e0
ROM_0x2b76e0:
.incbin "data/data_2b76e0.bin" # 0x2b76e0
.globl ROM_0x2be960
ROM_0x2be960:
.incbin "data/data_2be960.bin" # 0x2be960
.globl ROM_0x2c1f20
ROM_0x2c1f20:
.incbin "data/data_2c1f20.bin" # 0x2c1f20
.globl ROM_0x2c5870
ROM_0x2c5870:
.incbin "data/data_2c5870.bin" # 0x2c5870
.globl ROM_0x2c8db0
ROM_0x2c8db0:
.incbin "data/data_2c8db0.bin" # 0x2c8db0
.globl ROM_0x2d33b0
ROM_0x2d33b0:
.incbin "data/data_2d33b0.bin" # 0x2d33b0
.globl ROM_0x2de950
ROM_0x2de950:
.incbin "data/data_2de950.bin" # 0x2de950
.globl ROM_0x2e2800
ROM_0x2e2800:
.incbin "data/data_2e2800.bin" # 0x2e2800


.globl ROM_0x2e5d70
ROM_0x2e5d70:
.incbin "build/data/mio0/data_2e5d70.mio0" # 0x2e5d70
.align 4, 0
.globl ROM_0x2f99a0
ROM_0x2f99a0:
.incbin "build/data/mio0/data_2f99a0.mio0" # 0x2f99a0
.align 4, 0


.globl ROM_0x30ba10
ROM_0x30ba10:
.incbin "build/data/mio0/data_30ba10.mio0" # 0x30ba10
.align 4, 0
.globl ROM_0x30e9e0
ROM_0x30e9e0:
.incbin "build/data/mio0/data_30e9e0.mio0" # 0x30e9e0
.align 4, 0
.globl ROM_0x313850
ROM_0x313850:
.incbin "build/data/mio0/data_313850.mio0" # 0x313850
.align 4, 0
.globl ROM_0x317030
ROM_0x317030:
.incbin "build/data/mio0/data_317030.mio0" # 0x317030
.align 4, 0
.globl ROM_0x31cd00
ROM_0x31cd00:
.incbin "build/data/mio0/data_31cd00.mio0" # 0x31cd00
.align 4, 0
.globl ROM_0x320ad0
ROM_0x320ad0:
.incbin "build/data/mio0/data_320ad0.mio0" # 0x320ad0
.align 4, 0
.globl ROM_0x327c50
ROM_0x327c50:
.incbin "build/data/mio0/data_327c50.mio0" # 0x327c50


.align 4, 0
.globl ROM_0x32b680
ROM_0x32b680:
.incbin "build/data/mio0/data_32B680.mio0" # 0x32B680 Unused File?


.align 4, 0
.globl ROM_0x32B6A0
ROM_0x32B6A0:
.incbin "build/data/mio0/data_32B6A0.mio0" # 0x32B6A0


.align 4, 0
.globl ROM_0x330750
ROM_0x330750:
.incbin "build/data/mio0/data_330750.mio0" # 0x330750
.globl ROM_0x330750_End
ROM_0x330750_End:

.align 4, 0
.globl ROM_0x331EA0
ROM_0x331EA0:
.incbin "build/data/mio0/data_331EA0.mio0" # 0x331EA0


.align 4, 0
.globl ROM_0x333100
ROM_0x333100:
.incbin "build/data/mio0/data_333100.mio0" # 0x333100
.align 4, 0
.globl ROM_0x333720
ROM_0x333720:
.incbin "build/data/mio0/data_333720.mio0" # 0x333720


.align 4, 0
.globl ROM_0x333C20
ROM_0x333C20:
.incbin "build/data/mio0/data_333C20.mio0" # 0x333C20


.align 4, 0
.globl ROM_0x336550
ROM_0x336550:
.incbin "build/data/mio0/data_336550.mio0" # 0x336550


.align 4, 0
.incbin "build/data/mio0/data_337540.mio0" # 0x337540
.align 4, 0
.incbin "build/data/mio0/data_338230.mio0" # 0x338230
.align 4, 0
.incbin "build/data/mio0/data_339460.mio0" # 0x339460
.align 4, 0
.incbin "build/data/mio0/data_33AB00.mio0" # 0x33AB00
.align 4, 0
.incbin "build/data/mio0/data_33B5B0.mio0" # 0x33B5B0
.align 4, 0
.incbin "build/data/mio0/data_33BC70.mio0" # 0x33BC70
.align 4, 0
.incbin "build/data/mio0/data_340CE0.mio0" # 0x340CE0


.align 4, 0
.incbin "build/data/mio0/data_3421A0.mio0" # 0x3421A0


.align 4, 0
.globl ROM_0x345B30
ROM_0x345B30:
.incbin "build/data/mio0/data_345B30.mio0" # 0x345B30
.globl ROM_0x345B30_End
ROM_0x345B30_End:

.align 4, 0
.globl ROM_TrackPreview_SunnyBeach
ROM_TrackPreview_SunnyBeach:
.incbin "build/data/mio0/TrackPreview_SunnyBeach.mio0" # 0x351020
.globl ROM_TrackPreview_SunnyBeach_End
ROM_TrackPreview_SunnyBeach_End:

.align 4, 0
.globl ROM_TrackPreview_SunsetBay
ROM_TrackPreview_SunsetBay:
.incbin "build/data/mio0/TrackPreview_SunsetBay.mio0" # 0x352A60
.globl ROM_TrackPreview_SunsetBay_End
ROM_TrackPreview_SunsetBay_End:

.align 4, 0
.globl ROM_TrackPreview_MarineFortress
ROM_TrackPreview_MarineFortress:
.incbin "build/data/mio0/TrackPreview_MarineFortress.mio0" # 0x354050
.globl ROM_TrackPreview_MarineFortress_End
ROM_TrackPreview_MarineFortress_End:

.align 4, 0
.globl ROM_TrackPreview_DrakeLake
ROM_TrackPreview_DrakeLake:
.incbin "build/data/mio0/TrackPreview_DrakeLake.mio0" # 0x3565B0
.globl ROM_TrackPreview_DrakeLake_End
ROM_TrackPreview_DrakeLake_End:

.align 4, 0
.globl ROM_TrackPreview_PortBlue
ROM_TrackPreview_PortBlue:
.incbin "build/data/mio0/TrackPreview_PortBlue.mio0" # 0x358AA0
.globl ROM_TrackPreview_PortBlue_End
ROM_TrackPreview_PortBlue_End:

.align 4, 0
.globl ROM_0x35A840
ROM_0x35A840:
.incbin "build/data/mio0/data_35A840.mio0" # 0x35A840
.globl ROM_0x35A840_End
ROM_0x35A840_End:

.align 4, 0
.globl ROM_0x35C280
ROM_0x35C280:
.incbin "build/data/mio0/data_35C280.mio0" # 0x35C280
.globl ROM_0x35C280_End
ROM_0x35C280_End:

.align 4, 0
.globl ROM_0x35E130
ROM_0x35E130:
.incbin "build/data/mio0/data_35E130.mio0" # 0x35E130
.globl ROM_0x35E130_End
ROM_0x35E130_End:

.align 4, 0
.globl ROM_TrackPreview_DolphinPark
ROM_TrackPreview_DolphinPark:
.incbin "build/data/mio0/TrackPreview_DolphinPark.mio0" # 0x35FA70
.globl ROM_TrackPreview_DolphinPark_End
ROM_TrackPreview_DolphinPark_End:


# Textures
.align 4, 0
.incbin "build/data/mio0/data_361850.mio0" # 0x361850 16 bit RGBA, 4x64
.align 4, 0
.incbin "build/data/mio0/data_361960.mio0" # 0x361960 looks like skybox texture
.align 4, 0
.incbin "build/data/mio0/data_3619F0.mio0" # 0x3619F0
.align 4, 0
.incbin "build/data/mio0/data_361AE0.mio0" # 0x361AE0
.align 4, 0
.incbin "build/data/mio0/data_361B70.mio0" # 0x361B70
.align 4, 0
.incbin "build/data/mio0/data_361C80.mio0" # 0x361C80
.align 4, 0
.incbin "build/data/mio0/data_361D70.mio0" # 0x361D70
.align 4, 0
.incbin "build/data/mio0/data_361E70.mio0" # 0x361E70
.align 4, 0
.incbin "build/data/mio0/data_362BA0.mio0" # 0x362BA0
.align 4, 0
.incbin "build/data/mio0/data_363B20.mio0" # 0x363B20
.align 4, 0
.incbin "build/data/mio0/data_364710.mio0" # 0x364710
.align 4, 0
.incbin "build/data/mio0/data_3652B0.mio0" # 0x3652B0
.align 4, 0
.incbin "build/data/mio0/data_365C80.mio0" # 0x365C80
.align 4, 0
.incbin "build/data/mio0/data_366900.mio0" # 0x366900
.align 4, 0
.incbin "build/data/mio0/data_367790.mio0" # 0x367790
.align 4, 0
.incbin "build/data/mio0/data_368270.mio0" # 0x368270
.align 4, 0
.incbin "build/data/mio0/data_3686D0.mio0" # 0x3686D0
.align 4, 0
.incbin "build/data/mio0/data_368D70.mio0" # 0x368D70
.align 4, 0
.incbin "build/data/mio0/data_369280.mio0" # 0x369280
.align 4, 0
.incbin "build/data/mio0/data_369710.mio0" # 0x369710
.align 4, 0
.incbin "build/data/mio0/data_369CA0.mio0" # 0x369CA0
.align 4, 0
.incbin "build/data/mio0/data_36A270.mio0" # 0x36A270
.align 4, 0
.incbin "build/data/mio0/data_36A790.mio0" # 0x36A790
.align 4, 0
.incbin "build/data/mio0/data_36AC40.mio0" # 0x36AC40
.align 4, 0
.incbin "build/data/mio0/data_36B3B0.mio0" # 0x36B3B0
.align 4, 0
.incbin "build/data/mio0/data_36B990.mio0" # 0x36B990
.align 4, 0
.incbin "build/data/mio0/data_36BFD0.mio0" # 0x36BFD0
.align 4, 0
.incbin "build/data/mio0/data_36CB80.mio0" # 0x36CB80
.align 4, 0
.incbin "build/data/mio0/data_36D5E0.mio0" # 0x36D5E0
.align 4, 0
.incbin "build/data/mio0/data_36DDE0.mio0" # 0x36DDE0
.align 4, 0
.incbin "build/data/mio0/data_36E770.mio0" # 0x36E770
.align 4, 0
.incbin "build/data/mio0/data_36F070.mio0" # 0x36F070
.align 4, 0
.incbin "build/data/mio0/data_36FB00.mio0" # 0x36FB00
.align 4, 0
.incbin "build/data/mio0/data_370CE0.mio0" # 0x370CE0
.align 4, 0
.incbin "build/data/mio0/data_371670.mio0" # 0x371670
.align 4, 0
.incbin "build/data/mio0/data_371F70.mio0" # 0x371F70
.align 4, 0
.incbin "build/data/mio0/data_372870.mio0" # 0x372870
.align 4, 0
.incbin "build/data/mio0/data_373170.mio0" # 0x373170
.align 4, 0
.incbin "build/data/mio0/data_373690.mio0" # 0x373690
.align 4, 0


.incbin "build/data/mio0/DriverHayami1.mio0" # 0x373ec0
.align 4, 0
.incbin "build/data/mio0/data_37cdc0.mio0" # 0x37cdc0
.align 4, 0
.incbin "build/data/mio0/DriverStewart1.mio0" # 0x381800
.align 4, 0
.incbin "build/data/mio0/data_38a6c0.mio0" # 0x38a6c0
.align 4, 0
.incbin "build/data/mio0/DriverJeter1.mio0" # 0x38f670
.align 4, 0
.incbin "build/data/mio0/data_3985f0.mio0" # 0x3985f0
.align 4, 0
.incbin "build/data/mio0/DriverMariner1.mio0" # 0x39d0c0
.align 4, 0
.incbin "build/data/mio0/data_3a6300.mio0" # 0x3a6300
.align 4, 0
.incbin "build/data/mio0/DriverHayami2.mio0" # 0x3aae20
.align 4, 0
.incbin "build/data/mio0/data_3b3c70.mio0" # 0x3b3c70
.align 4, 0
.incbin "build/data/mio0/DriverStewart2.mio0" # 0x3b86c0
.align 4, 0
.incbin "build/data/mio0/data_3c13b0.mio0" # 0x3c13b0
.align 4, 0
.incbin "build/data/mio0/DriverJeter2.mio0" # 0x3c6350
.align 4, 0
.incbin "build/data/mio0/data_3cee60.mio0" # 0x3cee60
.align 4, 0
.incbin "build/data/mio0/DriverMariner2.mio0" # 0x3d3850
.align 4, 0
.incbin "build/data/mio0/data_3dcab0.mio0" # 0x3dcab0
.align 4, 0


.incbin "build/data/mio0/data_3e1560.mio0" # 0x3e1560
.align 4, 0
.incbin "build/data/mio0/data_3E8CA0.mio0" # 0x3E8CA0
.align 4, 0
.incbin "build/data/mio0/data_3EAAB0.mio0" # 0x3EAAB0
.align 4, 0
.incbin "build/data/mio0/data_3ECA20.mio0" # 0x3ECA20
.align 4, 0
.incbin "build/data/mio0/data_3EE5F0.mio0" # 0x3EE5F0
.align 4, 0
.incbin "build/data/mio0/data_3EEDF0.mio0" # 0x3EEDF0
.align 4, 0
.incbin "build/data/mio0/data_3EF680.mio0" # 0x3EF680
.align 4, 0
.incbin "build/data/mio0/data_3F1190.mio0" # 0x3F1190
.align 4, 0
.incbin "build/data/mio0/data_3F44B0.mio0" # 0x3F44B0
.align 4, 0


.incbin "build/data/mio0/data_3F57F0.mio0" # 0x3F57F0
.align 4, 0


.incbin "build/data/mio0/data_4055d0.mio0" # 0x4055d0
.align 4, 0


.incbin "data/Sound1.bin" # 0x40b2f0
.incbin "data/Sound2.bin" # 0x4289f0
.incbin "data/Sound3.bin" # 0x7ae670

.incbin "data/data_7c4930.bin" # 0x7c4930

#.equ ROM_0x7c4930,				0x7c4930 # seems to be the last file


.incbin "./roms/Wave Race 64 (USA).z64", ROM_0x7c49d0, ROM_0x800000 - ROM_0x7c49d0


