

.include "source/constants.s"

.section .data, "ax"

.set noreorder


.incbin "./roms/Wave Race 64 (USA).z64", ROM_0x1b9200, ROM_0x1d0f90 - ROM_0x1b9200 # Rest of Overlays


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
#ROM_0x3652B0
#ROM_0x365C80
#ROM_0x366900
#ROM_0x367790
#ROM_0x368270
#ROM_0x3686D0
#ROM_0x368D70
#ROM_0x369280
#ROM_0x369710
#ROM_0x369CA0
#ROM_0x36A270
#ROM_0x36A790
#ROM_0x36AC40
#ROM_0x36B3B0
#ROM_0x36B990
#ROM_0x36BFD0
#ROM_0x36CB80
#ROM_0x36D5E0
#ROM_0x36DDE0
#ROM_0x36E770
#ROM_0x36F070
#ROM_0x36FB00
#ROM_0x370CE0
#ROM_0x371670
#ROM_0x371F70
#ROM_0x372870
#ROM_0x373170
#ROM_0x373690


#ROM_0x373ec0
#ROM_0x37cdc0
#ROM_0x381800
#ROM_0x38a6c0
#ROM_0x38f670
#ROM_0x3985f0
#ROM_0x39d0c0
#ROM_0x3a6300
#ROM_0x3aae20
#ROM_0x3b3c70
#ROM_0x3b86c0
#ROM_0x3c13b0
#ROM_0x3c6350
#ROM_0x3cee60
#ROM_0x3d3850
#ROM_0x3dcab0


#ROM_0x3e1560

.incbin "./roms/Wave Race 64 (USA).z64", ROM_0x3652B0, ROM_0x800000 - ROM_0x3652B0


