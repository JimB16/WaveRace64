

.include "source/constants.s"

.section .data, "ax"

.set noreorder


.incbin "./roms/Wave Race 64 (USA).z64", ROM_0x1c6490, ROM_0x1d0f90 - ROM_0x1c6490 # Rest of Overlays


.incbin "data/data_1d0f90.mio0" # 0x1d0f90
.incbin "data/data_1e5620.mio0" # 0x1e5620
.incbin "data/data_1efab0.mio0" # 0x1efab0
.incbin "data/data_1fb030.mio0" # 0x1fb030
.incbin "data/data_208740.mio0" # 0x208740
.incbin "data/data_20f700.mio0" # 0x20f700
.incbin "data/data_2173f0.mio0" # 0x2173f0
.incbin "data/data_221820.mio0" # 0x221820
.incbin "data/data_2291a0.mio0" # 0x2291a0
.incbin "data/data_2341e0.mio0" # 0x2341e0
.incbin "data/data_240e30.mio0" # 0x240e30
.incbin "data/data_243300.mio0" # 0x243300
.incbin "data/data_2451f0.mio0" # 0x2451f0
.incbin "data/data_2479e0.mio0" # 0x2479e0
.incbin "data/data_24b200.mio0" # 0x24b200
.incbin "data/data_24e330.mio0" # 0x24e330
.incbin "data/data_250a70.mio0" # 0x250a70
.incbin "data/data_254d30.mio0" # 0x254d30


.incbin "data/data_257b00.mio0" # 0x257b00
.incbin "data/data_262f90.mio0" # 0x262f90
.incbin "data/data_267e00.mio0" # 0x267e00
.incbin "data/data_271bc0.mio0" # 0x271bc0
.incbin "data/data_2787a0.mio0" # 0x2787a0
.incbin "data/data_282760.mio0" # 0x282760
.incbin "data/data_289330.mio0" # 0x289330
.incbin "data/data_295b70.mio0" # 0x295b70


# looks like water colour settings
.incbin "data/data_29c8c0.mio0" # 0x29c8c0
.incbin "data/data_29F5A0.mio0" # 0x29F5A0
.incbin "data/data_2A1F10.mio0" # 0x2A1F10


.incbin "data/data_2a4c90.bin" # 0x2a4c90
.incbin "data/data_2a9d30.bin" # 0x2a9d30
.incbin "data/data_2b3440.bin" # 0x2b3440
.incbin "data/data_2b76e0.bin" # 0x2b76e0
.incbin "data/data_2be960.bin" # 0x2be960
.incbin "data/data_2c1f20.bin" # 0x2c1f20
.incbin "data/data_2c5870.bin" # 0x2c5870
.incbin "data/data_2c8db0.bin" # 0x2c8db0
.incbin "data/data_2d33b0.bin" # 0x2d33b0
.incbin "data/data_2de950.bin" # 0x2de950
.incbin "data/data_2e2800.bin" # 0x2e2800


.incbin "data/data_2e5d70.mio0" # 0x2e5d70
.incbin "data/data_2f99a0.mio0" # 0x2f99a0


.incbin "data/data_30ba10.mio0" # 0x30ba10
.incbin "data/data_30e9e0.mio0" # 0x30e9e0
.incbin "data/data_313850.mio0" # 0x313850
.incbin "data/data_317030.mio0" # 0x317030
.incbin "data/data_31cd00.mio0" # 0x31cd00
.incbin "data/data_320ad0.mio0" # 0x320ad0
.incbin "data/data_327c50.mio0" # 0x327c50


.incbin "data/data_32B680.mio0" # 0x32B680 Unused File?


.incbin "data/data_32B6A0.mio0" # 0x32B6A0


.incbin "data/data_330750.mio0" # 0x330750
.incbin "data/data_331EA0.mio0" # 0x331EA0


.incbin "data/data_333100.mio0" # 0x333100
.incbin "data/data_333720.mio0" # 0x333720


.incbin "data/data_333C20.mio0" # 0x333C20


.incbin "data/data_336550.mio0" # 0x336550


.incbin "data/data_337540.mio0" # 0x337540
.incbin "data/data_338230.mio0" # 0x338230
.incbin "data/data_339460.mio0" # 0x339460
.incbin "data/data_33AB00.mio0" # 0x33AB00
.incbin "data/data_33B5B0.mio0" # 0x33B5B0
.incbin "data/data_33BC70.mio0" # 0x33BC70
.incbin "data/data_340CE0.mio0" # 0x340CE0


.incbin "data/data_3421A0.mio0" # 0x3421A0


.incbin "data/data_345B30.mio0" # 0x345B30
.incbin "data/data_351020.mio0" # 0x351020
.incbin "data/data_352A60.mio0" # 0x352A60
.incbin "data/data_354050.mio0" # 0x354050
.incbin "data/data_3565B0.mio0" # 0x3565B0
.incbin "data/data_358AA0.mio0" # 0x358AA0
.incbin "data/data_35A840.mio0" # 0x35A840
.incbin "data/data_35C280.mio0" # 0x35C280
.incbin "data/data_35E130.mio0" # 0x35E130
.incbin "data/data_35FA70.mio0" # 0x35FA70


# Textures
.incbin "data/data_361850.mio0" # 0x361850 16 bit RGBA, 4x64
.incbin "data/data_361960.mio0" # 0x361960 looks like skybox texture
.incbin "data/data_3619F0.mio0" # 0x3619F0
.incbin "data/data_361AE0.mio0" # 0x361AE0
.incbin "data/data_361B70.mio0" # 0x361B70
.incbin "data/data_361C80.mio0" # 0x361C80
.incbin "data/data_361D70.mio0" # 0x361D70
.incbin "data/data_361E70.mio0" # 0x361E70
.incbin "data/data_362BA0.mio0" # 0x362BA0
.incbin "data/data_363B20.mio0" # 0x363B20
.incbin "data/data_364710.mio0" # 0x364710
.incbin "data/data_3652B0.mio0" # 0x3652B0
.incbin "data/data_365C80.mio0" # 0x365C80
.incbin "data/data_366900.mio0" # 0x366900
.incbin "data/data_367790.mio0" # 0x367790
.incbin "data/data_368270.mio0" # 0x368270
.incbin "data/data_3686D0.mio0" # 0x3686D0
.incbin "data/data_368D70.mio0" # 0x368D70
.incbin "data/data_369280.mio0" # 0x369280
.incbin "data/data_369710.mio0" # 0x369710
.incbin "data/data_369CA0.mio0" # 0x369CA0
.incbin "data/data_36A270.mio0" # 0x36A270
.incbin "data/data_36A790.mio0" # 0x36A790
.incbin "data/data_36AC40.mio0" # 0x36AC40
.incbin "data/data_36B3B0.mio0" # 0x36B3B0
.incbin "data/data_36B990.mio0" # 0x36B990
.incbin "data/data_36BFD0.mio0" # 0x36BFD0
.incbin "data/data_36CB80.mio0" # 0x36CB80
.incbin "data/data_36D5E0.mio0" # 0x36D5E0
.incbin "data/data_36DDE0.mio0" # 0x36DDE0
.incbin "data/data_36E770.mio0" # 0x36E770
.incbin "data/data_36F070.mio0" # 0x36F070
.incbin "data/data_36FB00.mio0" # 0x36FB00
.incbin "data/data_370CE0.mio0" # 0x370CE0
.incbin "data/data_371670.mio0" # 0x371670
.incbin "data/data_371F70.mio0" # 0x371F70
.incbin "data/data_372870.mio0" # 0x372870
.incbin "data/data_373170.mio0" # 0x373170
.incbin "data/data_373690.mio0" # 0x373690


.incbin "data/data_373ec0.mio0" # 0x373ec0
.incbin "data/data_37cdc0.mio0" # 0x37cdc0
.incbin "data/data_381800.mio0" # 0x381800
.incbin "data/data_38a6c0.mio0" # 0x38a6c0
.incbin "data/data_38f670.mio0" # 0x38f670
.incbin "data/data_3985f0.mio0" # 0x3985f0
.incbin "data/data_39d0c0.mio0" # 0x39d0c0
.incbin "data/data_3a6300.mio0" # 0x3a6300
.incbin "data/data_3aae20.mio0" # 0x3aae20
.incbin "data/data_3b3c70.mio0" # 0x3b3c70
.incbin "data/data_3b86c0.mio0" # 0x3b86c0
.incbin "data/data_3c13b0.mio0" # 0x3c13b0
.incbin "data/data_3c6350.mio0" # 0x3c6350
.incbin "data/data_3cee60.mio0" # 0x3cee60
.incbin "data/data_3d3850.mio0" # 0x3d3850
.incbin "data/data_3dcab0.mio0" # 0x3dcab0


.incbin "data/data_3e1560.mio0" # 0x3e1560
.incbin "data/data_3E8CA0.mio0" # 0x3E8CA0
.incbin "data/data_3EAAB0.mio0" # 0x3EAAB0
.incbin "data/data_3ECA20.mio0" # 0x3ECA20
.incbin "data/data_3EE5F0.mio0" # 0x3EE5F0
.incbin "data/data_3EEDF0.mio0" # 0x3EEDF0
.incbin "data/data_3EF680.mio0" # 0x3EF680
.incbin "data/data_3F1190.mio0" # 0x3F1190
.incbin "data/data_3F44B0.mio0" # 0x3F44B0


.incbin "data/data_3F57F0.mio0" # 0x3F57F0


.incbin "data/data_4055d0.mio0" # 0x4055d0


.incbin "data/data_40b2f0.bin" # 0x40b2f0
.incbin "data/data_4289f0.bin" # 0x4289f0
.incbin "data/data_7ae670.bin" # 0x7ae670
.incbin "data/data_7c4930.bin" # 0x7c4930

#.equ ROM_0x7c4930,				0x7c4930 # seems to be the last file


.incbin "./roms/Wave Race 64 (USA).z64", ROM_0x7c49d0, ROM_0x800000 - ROM_0x7c49d0


