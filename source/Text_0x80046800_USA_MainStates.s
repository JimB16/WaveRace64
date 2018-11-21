
.globl Function_0x80092084_GraphicEngineLoop
Function_0x80092084_GraphicEngineLoop: # 0x80092084
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)

    jal     Function_0x8004a254
    nop

    jal     Function_0x8006a204
    nop

    lui     $t6, %hi(Unknown_0x8011f640)
    lw      $t6, %lo(Unknown_0x8011f640)($t6)
    lui     $t0, %hi(Unknown_0x801ce39c)
    lw      $t0, %lo(Unknown_0x801ce39c)($t0)
    sll     $t7, $t6, 2
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 4
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    lui     $t8, %hi(Unknown_0x801cb428)
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 3
    addiu   $t8, $t8, %lo(Unknown_0x801cb428)
    addu    $t9, $t7, $t8
    lui     $at, %hi(Unknown_0x801ce358)
    beqz    $t0, branch_0x8009213c
    sw      $t9, %lo(Unknown_0x801ce358)($at)

    lui     $v1, %hi(Unknown_0x801cb160)
    lui     $at, %hi(Unknown_0x800d4560)
    addiu   $v1, $v1, %lo(Unknown_0x801cb160)
    addiu   $a0, $zero, 0x23
    sw      $zero, %lo(Unknown_0x800d4560)($at)
    sb      $a0, 0x0($v1)
    lui     $v0, %hi(MainState_0x800da8a4)
    lw      $v0, %lo(MainState_0x800da8a4)($v0)
    lui     $at, %hi(Unknown_0x801cb161)
    sb      $a0, %lo(Unknown_0x801cb161)($at)
    addiu   $at, $zero, MainState_64
    bne     $v0, $at, branch_0x80092124
    addiu   $t1, $zero, 0x32
    b       branch_0x80092134
    sb      $t1, 0x0($v1)

branch_0x80092124:
    addiu   $at, $zero, MainState_a
    bne     $v0, $at, branch_0x80092134
    addiu   $t2, $zero, 0x3c
    sb      $t2, 0x0($v1)
branch_0x80092134:

    jal     Function_0x80092494
    nop

branch_0x8009213c:
    jal     Function_0x800926d8
    nop
    lui     $t3, %hi(MainState_0x800da8a4)
    lw      $t3, %lo(MainState_0x800da8a4)($t3)
    addiu   $t4, $t3, -2
    sltiu   $at, $t4, NrOfMainStates-2
    beqz    $at, branch_0x8009246c
    sll     $t4, $t4, 2
    lui     $at, %hi(SwitchTable_0x800EA9DC)
    addu    $at, $at, $t4
    lw      $t4, %lo(SwitchTable_0x800EA9DC)($at)
    jr      $t4
    nop

branch_0x80092170_MainGraphicEngineLoop: # 0x80092170
    jal     Function_0x80085ee8_SetPositionOfCharacters
    nop
    jal     Function_0x80066550_DrawDrivers
    nop
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop

    lui     $t5, %hi(Unknown_0x801ce398)
    lw      $t5, %lo(Unknown_0x801ce398)($t5)
    addiu   $at, $zero, 0x15
    beq     $t5, $at, branch_0x800921b4
    nop
    jal     Function_0x8006e348
    nop
branch_0x800921b4:

    jal     Function_0x800b285c
    nop
    jal     Function_0x800ad1b8
    nop
    lui     $v0, %hi(Unknown_0x801ce398)
    lw      $v0, %lo(Unknown_0x801ce398)($v0)
    addiu   $at, $zero, 0x1
    lui     $t6, %hi(MainState_0x800da8a4)
    bnel    $v0, $at, branch_0x80092210
    addiu   $at, $zero, 0x8

    lw      $t6, %lo(MainState_0x800da8a4)($t6)
    addiu   $at, $zero, MainState_2d
    bne     $t6, $at, branch_0x800921fc
    nop

    jal     Function_18_0x802c7608
    nop
    b       branch_0x8009246c
    nop

branch_0x800921fc:
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

# 0x8009220c
    addiu   $at, $zero, 0x8
branch_0x80092210:
    bnel    $v0, $at, branch_0x8009222c
    addiu   $at, $zero, 0x15
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

# 0x80092228
    addiu   $at, $zero, 0x15
branch_0x8009222c:
    bne     $v0, $at, branch_0x8009246c
    nop
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x80092244: # 0x80092244
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x8009226c: # 0x8009226c
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x80092294_StateAB: # 0x80092294
    jal     Function_0x80085ee8_SetPositionOfCharacters
    nop
    jal     Function_0x80066550_DrawDrivers
    nop
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     Function_0x8006e348
    nop
    jal     Function_0x800b285c
    nop
    jal     Function_2_0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x800922dc_State1415: # 0x800922dc
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x80092304: # 0x80092304
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x8009232c_State3e3f: # 0x8009232c
    jal     Function_0x80085ee8_SetPositionOfCharacters
    nop
    jal     Function_0x80066550_DrawDrivers
    nop
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     Function_0x8006e348
    nop
    jal     Function_0x800b285c
    nop
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x80092374: # 0x80092374
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x80092384: # 0x80092384
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x80092394: # 0x80092394
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x800923a4: # 0x800923a4
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     0x802c7090
    nop
    b       branch_0x8009246c
    nop

branch_0x800923cc: # 0x800923cc
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     Function_0x801e0ff0
    nop
    b       branch_0x8009246c
    nop

branch_0x800923f4_State56: # 0x800923f4
    jal     Function_0_0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x80092404: # 0x80092404
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    b       branch_0x8009246c
    nop

branch_0x80092424: # 0x80092424
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     0x802c5800
    nop
    b       branch_0x8009246c
    nop

branch_0x8009244c: # 0x8009244c
    jal     Function_0x801ddba8_CameraMovement
    nop
    jal     Function_0x800511d8_ResetFrameBufferDrawWater
    nop
    jal     Function_0x8008e534_DrawSky
    nop
    jal     Function_0x801e2fb0
    nop

branch_0x8009246c:
    jal     Function_0x801e51d0
    nop
    jal     Function_0x801ead3c
    nop
    jal     Function_0x801e6f08
    nop
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x80092494
Function_0x80092494: # 0x80092494
    lui     $t6, %hi(MainState_0x800da8a4)
    lw      $t6, %lo(MainState_0x800da8a4)($t6)
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    addiu   $t7, $t6, -2
    sltiu   $at, $t7, NrOfMainStates-3
    beqz    $at, branch_0x800926c8
    sll     $t7, $t7, 2
    lui     $at, %hi(SwitchTable_0x800eab74)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800eab74)($at)
    jr      $t7
    nop

branch_0x800924c8:
    lui     $a0, %hi(TrackNr_0x800d7ef0)
    jal     Function_0x8006aa6c_InitTrack
    lw      $a0, %lo(TrackNr_0x800d7ef0)($a0)
    jal     Function_0x80067de0
    nop
    lui     $t8, %hi(MainState_0x800da8a4)
    lw      $t8, %lo(MainState_0x800da8a4)($t8)
    addiu   $at, $zero, MainState_66
    or      $a0, $zero, $zero
    bne     $t8, $at, branch_0x8009250c
    lui     $a1, %hi(Unknown_0x800d4730)

    lui     $a1, %hi(Unknown_0x800d4730)
    lw      $a1, %lo(Unknown_0x800d4730)($a1)
    jal     Function_0x8004f980
    addiu   $a0, $zero, 0xff6a
    b       branch_0x80092514
    nop

branch_0x8009250c:
    jal     Function_0x8004f980
    lw      $a1, %lo(Unknown_0x800d4730)($a1)
branch_0x80092514:
    jal     Function_0x8008e250
    nop
    jal     Function_0x801dd784
    nop
    jal     Function_0x800abf24
    nop
    jal     Function_0x800ae564
    nop
    jal     Function_0x80089148
    nop
    jal     Function_0x8009c708
    nop
    lui     $t9, %hi(Unknown_0x800da8a8)
    lw      $t9, %lo(Unknown_0x800da8a8)($t9)
    addiu   $at, $zero, 0x1
    bne     $t9, $at, branch_0x80092560
    nop
    jal     Function_0x8007fd20
    nop
branch_0x80092560:
    lui     $t0, %hi(MainState_0x800da8a4)
    lw      $t0, %lo(MainState_0x800da8a4)($t0)
    addiu   $at, $zero, MainState_28
    bne     $t0, $at, branch_0x800926c8
    lui     $at, 0x801d
    b       branch_0x800926c8
    sw      $zero, -0x1ba8($at)

.globl Function_0x8009257c
Function_0x8009257c: # 0x8009257c
    lui     $a1, %hi(Unknown_0x800d4730)
    lw      $a1, %lo(Unknown_0x800d4730)($a1)
    jal     Function_0x8004f980
    or      $a0, $zero, $zero
    jal     Function_0x8008e250
    nop
    jal     Function_0x801dd784
    nop
    b       branch_0x800926cc
    lw      $ra, 0x14($sp)

.globl Function_0x800925a4
Function_0x800925a4: # 0x800925a4
    lui     $t1, 0x801d
    lw      $t1, -0x1c6c($t1)
    addiu   $at, $zero, 0x64
    or      $a0, $zero, $zero
    beq     $t1, $at, branch_0x800926c8
    lui     $a1, %hi(Unknown_0x800d4730)
    jal     Function_0x8004f980
    lw      $a1, %lo(Unknown_0x800d4730)($a1)
    jal     Function_0x8008e250
    nop
    jal     Function_0x801dd784
    nop
    b       branch_0x800926cc
    lw      $ra, 0x14($sp)

.globl Function_0x800925dc
Function_0x800925dc: # 0x800925dc
    lui     $t2, 0x801d
    lw      $t2, -0x1c6c($t2)
    addiu   $at, $zero, 0x67
    or      $a0, $zero, $zero
    bne     $t2, $at, branch_0x80092618
    lui     $t3, 0x801d
    lui     $a1, %hi(Unknown_0x800d4730)
    jal     Function_0x8004f980
    lw      $a1, %lo(Unknown_0x800d4730)($a1)
    jal     Function_0x8008e250
    nop
    jal     Function_0x801dd784
    nop
    b       branch_0x800926cc
    lw      $ra, 0x14($sp)
branch_0x80092618:
    lw      $t3, -0x1c98($t3)
    or      $a0, $zero, $zero
    lui     $a1, %hi(Unknown_0x800d4730)
    bnezl   $t3, branch_0x800926cc
    lw      $ra, 0x14($sp)
    jal     Function_0x8004f980
    lw      $a1, %lo(Unknown_0x800d4730)($a1)
    jal     Function_0x8008e250
    nop
    jal     Function_0x801dd784
    nop
    b       branch_0x800926cc
    lw      $ra, 0x14($sp)

.globl Function_0x8009264c
Function_0x8009264c: # 0x8009264c
    lui     $t4, 0x801d
    lw      $t4, -0x1c98($t4)
    addiu   $at, $zero, 0x4
    addiu   $v1, $zero, 0x1
    bne     $t4, $at, branch_0x80092680
    lui     $v0, 0x801d
    lui     $t5, 0x801d
    lw      $t5, -0x1c6c($t5)
    addiu   $at, $zero, 0x43
    beq     $t5, $at, branch_0x800926a4
    nop
    b       branch_0x800926a4
    or      $v1, $zero, $zero
branch_0x80092680:
    lw      $v0, -0x1c6c($v0)
    addiu   $at, $zero, 0x64
    beq     $v0, $at, branch_0x800926a0
    addiu   $at, $zero, 0x32
    beq     $v0, $at, branch_0x800926a0
    addiu   $at, $zero, 0x39
    bne     $v0, $at, branch_0x800926a4
    nop
branch_0x800926a0:
    or      $v1, $zero, $zero
branch_0x800926a4:
    beqz    $v1, branch_0x800926c8
    or      $a0, $zero, $zero
    lui     $a1, %hi(Unknown_0x800d4730)
    jal     Function_0x8004f980
    lw      $a1, %lo(Unknown_0x800d4730)($a1)
    jal     Function_0x8008e250
    nop
    jal     Function_0x801dd784
    nop
branch_0x800926c8:
    lw      $ra, 0x14($sp)
branch_0x800926cc:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x800926d8
Function_0x800926d8: # 0x800926d8
    addiu   $sp, $sp, 0xffe8
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)

    lui     $a3, %hi(Unknown_0x801ce3b8)
    addiu   $a3, $a3, %lo(Unknown_0x801ce3b8)
    sw      $s3, 0x14($sp)
    lui     $s0, %hi(Unknown_0x800da890)
    lui     $s1, 0x8015
    lui     $s2, 0x8015
    lui     $t5, 0x8015
    lui     $t3, 0x801d
    lui     $t2, 0x801d
    addiu   $t2, $t2, 0xb160
    addiu   $t3, $t3, 0xb161
    addiu   $t5, $t5, 0x40a4
    addiu   $s2, $s2, 0x4090
    addiu   $s1, $s1, 0x4068
    addiu   $s0, $s0, %lo(Unknown_0x800da890)
    addiu   $s3, $zero, 0xa
    or      $v1, $a3, $zero
    or      $v0, $zero, $zero
    addiu   $t4, $zero, 0x3
    addiu   $t1, $zero, 0x2
    addiu   $t0, $zero, 0x1
branch_0x8009273c:
    lwl     $at, 0x0($v1)
    lwr     $at, 0x3($v1)
    lwl     $t8, 0x4($v1)
    lwr     $t8, 0x7($v1)
    swl     $at, 0xa($v1)
    swr     $at, 0xd($v1)
    lhu     $at, 0x8($v1)
    swl     $t8, 0xe($v1)
    swr     $t8, 0x11($v1)
    beqz    $v0, branch_0x80092780
    sh      $at, 0x12($v1)
    beql    $v0, $t0, branch_0x800927f0
    lw      $a0, 0x0($t5)
    beql    $v0, $t1, branch_0x800928a0
    lw      $t6, 0x0($t5)
    b       branch_0x80092938
    lb      $a0, 0x8($v1)
branch_0x80092780:
    lw      $t9, 0x0($t5)
    bgtzl   $t9, branch_0x800927b4
    lw      $t8, 0x0($s2)
    lw      $at, 0x0($s0)
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lw      $t6, 0x4($s0)
    swl     $t6, 0x4($v1)
    swr     $t6, 0x7($v1)
    lhu     $at, 0x8($s0)
    b       branch_0x80092934
    sh      $at, 0x8($v1)

.globl Function_0x800927b0
Function_0x800927b0: # 0x800927b0
    lw      $t8, 0x0($s2)
branch_0x800927b4:
    multu   $t8, $s3
    mflo    $t9
    addu    $t7, $s1, $t9
    lwl     $at, 0x0($t7)
    lwr     $at, 0x3($t7)
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lwl     $t8, 0x4($t7)
    lwr     $t8, 0x7($t7)
    swl     $t8, 0x4($v1)
    swr     $t8, 0x7($v1)
    lhu     $at, 0x8($t7)
    b       branch_0x80092934
    sh      $at, 0x8($v1)

.globl Function_0x800927ec
Function_0x800927ec: # 0x800927ec
    lw      $a0, 0x0($t5)
branch_0x800927f0:
    bnez    $a0, branch_0x8009281c
    nop
    lw      $at, 0x0($s0)
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lw      $t6, 0x4($s0)
    swl     $t6, 0x4($v1)
    swr     $t6, 0x7($v1)
    lhu     $at, 0x8($s0)
    b       branch_0x80092934
    sh      $at, 0x8($v1)
branch_0x8009281c:
    bnel    $t0, $a0, branch_0x80092864
    lw      $t8, 0x4($s2)
    lw      $t7, 0x0($s2)
    multu   $t7, $s3
    mflo    $t8
    addu    $t9, $s1, $t8
    lwl     $at, 0x0($t9)
    lwr     $at, 0x3($t9)
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lwl     $t7, 0x4($t9)
    lwr     $t7, 0x7($t9)
    swl     $t7, 0x4($v1)
    swr     $t7, 0x7($v1)
    lhu     $at, 0x8($t9)
    b       branch_0x80092934
    sh      $at, 0x8($v1)

.globl Function_0x80092860
Function_0x80092860: # 0x80092860
    lw      $t8, 0x4($s2)
branch_0x80092864:
    multu   $t8, $s3
    mflo    $t6
    addu    $t9, $s1, $t6
    lwl     $at, 0x0($t9)
    lwr     $at, 0x3($t9)
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lwl     $t8, 0x4($t9)
    lwr     $t8, 0x7($t9)
    swl     $t8, 0x4($v1)
    swr     $t8, 0x7($v1)
    lhu     $at, 0x8($t9)
    b       branch_0x80092934
    sh      $at, 0x8($v1)

.globl Function_0x8009289c
Function_0x8009289c: # 0x8009289c
    lw      $t6, 0x0($t5)
branch_0x800928a0:
    bgtzl   $t6, branch_0x800928d0
    lw      $t8, 0x0($s2)
    lw      $at, 0x0($s0)
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lw      $t9, 0x4($s0)
    swl     $t9, 0x4($v1)
    swr     $t9, 0x7($v1)
    lhu     $at, 0x8($s0)
    b       branch_0x80092904
    sh      $at, 0x8($v1)

.globl Function_0x800928cc
Function_0x800928cc: # 0x800928cc
    lw      $t8, 0x0($s2)
branch_0x800928d0:
    multu   $t8, $s3
    mflo    $t6
    addu    $t7, $s1, $t6
    lwl     $at, 0x0($t7)
    lwr     $at, 0x3($t7)
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lwl     $t8, 0x4($t7)
    lwr     $t8, 0x7($t7)
    swl     $t8, 0x4($v1)
    swr     $t8, 0x7($v1)
    lhu     $at, 0x8($t7)
    sh      $at, 0x8($v1)
branch_0x80092904:
    lw      $t6, 0x0($t5)
    slti    $at, $t6, 0x2
    bnezl   $at, branch_0x80092938
    lb      $a0, 0x8($v1)
    lhu     $t9, 0x0($v1)
    lhu     $t7, 0x1c($a3)
    lhu     $t6, 0x2($v1)
    or      $t8, $t9, $t7
    sh      $t8, 0x0($v1)
    lhu     $t9, 0x1e($a3)
    or      $t7, $t6, $t9
    sh      $t7, 0x2($v1)
branch_0x80092934:
    lb      $a0, 0x8($v1)
branch_0x80092938:
    lb      $a1, 0x0($t2)
    addiu   $v0, $v0, 0x1
    slt     $at, $a0, $a1
    bnez    $at, branch_0x8009298c
    subu    $a2, $zero, $a1
    lb      $t8, 0x12($v1)
    slt     $at, $t8, $a1
    beqzl   $at, branch_0x80092974
    lhu     $t7, 0x0($v1)
    lhu     $t6, 0x2($v1)
    sw      $zero, 0x14($v1)
    ori     $t9, $t6, 0x100
    b       branch_0x800929d4
    sh      $t9, 0x2($v1)

.globl Function_0x80092970
Function_0x80092970: # 0x80092970
    lhu     $t7, 0x0($v1)
branch_0x80092974:
    lw      $t6, 0x14($v1)
    ori     $t8, $t7, 0x100
    addiu   $t9, $t6, 0x1
    sh      $t8, 0x0($v1)
    b       branch_0x800929d4
    sw      $t9, 0x14($v1)
branch_0x8009298c:
    slt     $at, $a2, $a0
    bnezl   $at, branch_0x800929d8
    lb      $a0, 0x9($v1)
    lb      $t7, 0x12($v1)
    slt     $at, $a2, $t7
    beqzl   $at, branch_0x800929c0
    lhu     $t9, 0x0($v1)
    lhu     $t8, 0x2($v1)
    sw      $zero, 0x14($v1)
    ori     $t6, $t8, 0x200
    b       branch_0x800929d4
    sh      $t6, 0x2($v1)

.globl Function_0x800929bc
Function_0x800929bc: # 0x800929bc
    lhu     $t9, 0x0($v1)
branch_0x800929c0:
    lw      $t8, 0x14($v1)
    ori     $t7, $t9, 0x200
    addiu   $t6, $t8, 0x1
    sh      $t7, 0x0($v1)
    sw      $t6, 0x14($v1)
branch_0x800929d4:
    lb      $a0, 0x9($v1)
branch_0x800929d8:
    lb      $a1, 0x0($t3)
    slt     $at, $a0, $a1
    bnez    $at, branch_0x80092a28
    subu    $a2, $zero, $a1
    lb      $t9, 0x13($v1)
    slt     $at, $t9, $a1
    beqzl   $at, branch_0x80092a10
    lhu     $t6, 0x0($v1)
    lhu     $t7, 0x2($v1)
    sw      $zero, 0x18($v1)
    ori     $t8, $t7, 0x800
    b       branch_0x80092a70
    sh      $t8, 0x2($v1)

.globl Function_0x80092a0c
Function_0x80092a0c: # 0x80092a0c
    lhu     $t6, 0x0($v1)
branch_0x80092a10:
    lw      $t7, 0x18($v1)
    ori     $t9, $t6, 0x800
    addiu   $t8, $t7, 0x1
    sh      $t9, 0x0($v1)
    b       branch_0x80092a70
    sw      $t8, 0x18($v1)
branch_0x80092a28:
    slt     $at, $a2, $a0
    bnez    $at, branch_0x80092a70
    nop
    lb      $t6, 0x13($v1)
    slt     $at, $a2, $t6
    beqzl   $at, branch_0x80092a5c
    lhu     $t8, 0x0($v1)
    lhu     $t9, 0x2($v1)
    sw      $zero, 0x18($v1)
    ori     $t7, $t9, 0x400
    b       branch_0x80092a70
    sh      $t7, 0x2($v1)

.globl Function_0x80092a58
Function_0x80092a58: # 0x80092a58
    lhu     $t8, 0x0($v1)
branch_0x80092a5c:
    lw      $t9, 0x18($v1)
    ori     $t6, $t8, 0x400
    addiu   $t7, $t9, 0x1
    sh      $t6, 0x0($v1)
    sw      $t7, 0x18($v1)
branch_0x80092a70:
    bne     $v0, $t4, branch_0x8009273c
    addiu   $v1, $v1, 0x1c
    lw      $s0, 0x8($sp)
    lw      $s1, 0xc($sp)
    lw      $s2, 0x10($sp)
    lw      $s3, 0x14($sp)
    jr      $ra
    addiu   $sp, $sp, 0x18


/* Input:
a0:
*/
.globl Function_0x80092a90_CallOverlays
Function_0x80092a90_CallOverlays: # 0x80092a90
    lui     $at, 0x801d
    lui     $v1, %hi(Unknown_0x801ce38a)
    sh      $zero, -0x1c72($at)
    addiu   $v1, $v1, %lo(Unknown_0x801ce38a)
    addiu   $v0, $zero, 0x1
    sh      $v0, 0x0($v1)
    lui     $at, 0x8023
    addiu   $sp, $sp, 0xffd8
    sh      $zero, -0x780a($at)
    sw      $s0, 0x18($sp)
    lui     $at, 0x8023
    lui     $t6, %hi(0xbc001406)
    sw      $ra, 0x1c($sp)
    sw      $zero, -0x7800($at)
    ori     $t6, $t6, %lo(0xbc001406)
    sw      $t6, 0x0($a0)
    addiu   $s0, $a0, 0x8
    or      $a1, $a0, $zero
    lui     $a0, %hi(Unknown_0x801ae6a8)
    lw      $a0, %lo(Unknown_0x801ae6a8)($a0)
    jal     osVirtualToPhysical
    sw      $a1, 0x20($sp)

    lw      $a1, 0x20($sp)
    lui     $t7, %hi(MainState_0x800da8a4)
    lui     $v1, %hi(Unknown_0x801ce38a)
    sw      $v0, 0x4($a1)
    lw      $t7, %lo(MainState_0x800da8a4)($t7)
    addiu   $v1, $v1, %lo(Unknown_0x801ce38a)
    sltiu   $at, $t7, NrOfMainStates
    beqz    $at, branch_0x80092da4
    sll     $t7, $t7, 2
    lui     $at, %hi(SwitchTable_0x800ead08)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800ead08)($at)
    jr      $t7
    nop

branch_0x80092b20_State0: # 0x80092b20
    sh      $zero, 0x0($v1)
    jal     Function_0x80093d18
    or      $a0, $s0, $zero
    jal     Function_0x80092ea4
    or      $s0, $v0, $zero
    beqz    $v0, branch_0x80092b4c
    nop

    jal     Function_0x801ec884_ChangeStateTo5
    nop
    b       branch_0x80092da4
    nop

branch_0x80092b4c:
    jal     Function_0x801eaf10_ChangeStateTo2
    nop
    b       branch_0x80092da4
    nop

branch_0x80092b5c_State56: # 0x80092b5c
    sh      $zero, 0x0($v1)
    jal     Function_0_0x802c5ba4_Main
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092b70_State2: # 0x80092b70
    sh      $zero, 0x0($v1)
    jal     0x802c5800
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092b84_State3: # 0x80092b84
    sh      $zero, 0x0($v1)
    jal     Function_1_0x802c5a7c
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092b98_State78: # 0x80092b98
    sh      $zero, 0x0($v1)
    jal     Function_18_0x802c913c
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092bac_State4: # 0x80092bac
    sh      $zero, 0x0($v1)
    jal     Function_1_0x802c6944
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092bc0_State28: # 0x80092bc0
    lui     $v0, %hi(Unknown_0x801ce368)
    lw      $v0, %lo(Unknown_0x801ce368)($v0)
    addiu   $at, $zero, 0x4
    lui     $t8, %hi(Unknown_0x801ce3b0)
    beq     $v0, $at, branch_0x80092be0
    addiu   $at, $zero, 0x1

    bne     $v0, $at, branch_0x80092bf4
    nop

branch_0x80092be0:
    lw      $t8, %lo(Unknown_0x801ce3b0)($t8)
    addiu   $at, $zero, 0x3
    beq     $t8, $at, branch_0x80092bf4
    nop

    sh      $zero, 0x0($v1)
branch_0x80092bf4:
    jal     Function_18_802c5ae4_MainState28
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c04: # 0x80092c04
    sh      $zero, 0x0($v1)
    jal     Function_18_802c5ae4_MainState28
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c18: # 0x80092c18
    sh      $zero, 0x0($v1)
    jal     Function_18_0x802c7d00
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c2c: # 0x80092c2c
    sh      $zero, 0x0($v1)
    jal     0x802c5800
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c40: # 0x80092c40
    sh      $zero, 0x0($v1)
    jal     Function_7_0x802c5b74
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c54: # 0x80092c54
    sh      $zero, 0x0($v1)
    jal     Function_16_0x802c5924
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c68_StateAB: # 0x80092c68
    sh      $zero, 0x0($v1)
    jal     Function_2_0x802c5b4c
    or      $a0, $s0, $zero

    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c7c_State1415: # 0x80092c7c
    sh      $zero, 0x0($v1)
    jal     Function_4_0x802c5b78_SelectCourseMain
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092c90: # 0x80092c90
    sh      $zero, 0x0($v1)
    jal     Function_3_0x802c5b40
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092ca4: # 0x80092ca4
    sh      $zero, 0x0($v1)
    jal     0x802c5c1c
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092cb8: # 0x80092cb8
    sh      $zero, 0x0($v1)
    jal     0x802c5800
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092ccc: # 0x80092ccc
    sh      $zero, 0x0($v1)
    jal     Function_10_0x802c5d3c
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092ce0: # 0x80092ce0
    sh      $zero, 0x0($v1)
    jal     Function_11_0x802c5d24
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092cf4: # 0x80092cf4
    sh      $zero, 0x0($v1)
    jal     Function_12_0x802c5968
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d08: # 0x80092d08
    sh      $zero, 0x0($v1)
    jal     0x802c5800
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d1c: # 0x80092d1c
    sh      $zero, 0x0($v1)
    jal     0x802c5800
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d30_State4041: # 0x80092d30
    sh      $zero, 0x0($v1)
    jal     Function_15_0x802c5f6c
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d44_State5a5b: # 0x80092d44
    sh      $zero, 0x0($v1)
    jal     Function_5_0x802c7484
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d58: # 0x80092d58
    sh      $zero, 0x0($v1)
    jal     Function_0x801e1bec
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d6c: # 0x80092d6c
    sh      $zero, 0x0($v1)
    jal     Function_17_0x802c5f50
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d80: # 0x80092d80
    sh      $zero, 0x0($v1)
    jal     Function_8_0x802c583c
    or      $a0, $s0, $zero
    b       branch_0x80092da4
    or      $s0, $v0, $zero

branch_0x80092d94: # 0x80092d94
    sh      $zero, 0x0($v1)
    jal     Function_0x801e3258
    or      $a0, $s0, $zero
    or      $s0, $v0, $zero

branch_0x80092da4:
    lui     $t9, 0x801d
    lhu     $t9, -0x1c10($t9)
    li      $at, 0xf000
    lui     $t1, 0x801d
    andi    $t0, $t9, 0xf000
    bne     $t0, $at, branch_0x80092dd0
    lui     $t2, %hi(Unknown_0x800da8f8)
    lh      $t1, -0x1c7c($t1)
    addiu   $at, $zero, 0xffff
    beq     $t1, $at, branch_0x80092de8
    nop
branch_0x80092dd0:
    lh      $t2, %lo(Unknown_0x800da8f8)($t2)
    bnez    $t2, branch_0x80092de8
    nop
    jal     Function_0x801e41a0
    or      $a0, $s0, $zero
    or      $s0, $v0, $zero
branch_0x80092de8:
    lui     $v1, %hi(Unknown_0x800da8f4)
    addiu   $v1, $v1, %lo(Unknown_0x800da8f4)
    lh      $v0, 0x0($v1)
    addiu   $a1, $zero, 0x1
    lui     $at, %hi(Unknown_0x800da8f8)
    beql    $v0, $a1, branch_0x80092e1c
    sh      $zero, 0x0($v1)
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x80092e30
    sh      $zero, 0x0($v1)
    b       branch_0x80092e40
    nop

# 0x80092e18
    sh      $zero, 0x0($v1)
branch_0x80092e1c:
    jal     Function_0x801e4968
    sh      $a1, %lo(Unknown_0x800da8f8)($at)
    b       branch_0x80092e40
    addiu   $a1, $zero, 0x1

# 0x80092e2c
    sh      $zero, 0x0($v1)
branch_0x80092e30:
    lui     $at, %hi(Unknown_0x800da8f8)
    jal     Function_0x801e4998
    sh      $zero, %lo(Unknown_0x800da8f8)($at)
    addiu   $a1, $zero, 0x1
branch_0x80092e40:
    lui     $at, 0x8023
    sh      $a1, -0x780a($at)
    jal     Function_0x801e7668
    or      $a0, $s0, $zero
    lui     $v1, %hi(Unknown_0x801ce38e)
    addiu   $v1, $v1, %lo(Unknown_0x801ce38e)
    lh      $t3, 0x0($v1)
    or      $s0, $v0, $zero
    beqz    $t3, branch_0x80092e70
    nop

    jal     Function_0x801eaf10_ChangeStateTo2
    sh      $zero, 0x0($v1)

branch_0x80092e70:
    lui     $v0, %hi(Unknown_0x801ce35c)
    addiu   $v0, $v0, %lo(Unknown_0x801ce35c)
    lw      $t4, 0x0($v0)
    addiu   $t5, $t4, 0x1
    slti    $at, $t5, 0x7530 # 30000
    bnez    $at, branch_0x80092e90
    sw      $t5, 0x0($v0)

    sw      $zero, 0x0($v0)

branch_0x80092e90:
    lw      $ra, 0x1c($sp)
    or      $v0, $s0, $zero
    lw      $s0, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28


.globl Function_0x80092ea4
Function_0x80092ea4: # 0x80092ea4
    addiu   $sp, $sp, 0xffd0
    lui     $t6, 0x8015
    lbu     $t6, 0x40a0($t6)
    sw      $ra, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    bnez    $t6, branch_0x80092ed4
    sw      $s0, 0x18($sp)
    b       branch_0x8009300c
    or      $v0, $zero, $zero
branch_0x80092ed4:
    lui     $t7, 0x8015
    lw      $v0, 0x4090($t7)
    lui     $s0, 0x801d
    addiu   $s0, $s0, 0xb164
    lui     $t9, 0x8015
    sll     $t8, $v0, 2
    addu    $t9, $t9, $t8
    sw      $v0, 0x0($s0)
    lbu     $t9, 0x4042($t9)
    sll     $t1, $v0, 2
    addu    $t1, $t1, $v0
    andi    $t0, $t9, 0x1
    bnez    $t0, branch_0x80092f14
    sll     $t1, $t1, 1
    b       branch_0x8009300c
    or      $v0, $zero, $zero
branch_0x80092f14:
    lui     $t2, 0x8015
    addu    $t2, $t2, $t1
    lhu     $t2, 0x4068($t2)
    lui     $s1, %hi(Unknown_0x80153e30)
    addiu   $s1, $s1, %lo(Unknown_0x80153e30)
    andi    $t3, $t2, 0x1000
    bnez    $t3, branch_0x80092f3c
    or      $a0, $s1, $zero
    b       branch_0x8009300c
    or      $v0, $zero, $zero
branch_0x80092f3c:
    lui     $a1, 0x801d
    jal     Function_0x800c8320
    addiu   $a1, $a1, 0xb420
    beqz    $v0, branch_0x80092f58
    lui     $s4, 0x801d
    b       branch_0x8009300c
    or      $v0, $zero, $zero
branch_0x80092f58:
    addiu   $s4, $s4, 0xb3b8
    or      $a1, $s4, $zero
    or      $a0, $s1, $zero
    jal     Function_0x800c8650
    lw      $a2, 0x0($s0)
    beqz    $v0, branch_0x80092f7c
    or      $a0, $s4, $zero
    b       branch_0x8009300c
    or      $v0, $zero, $zero
branch_0x80092f7c:
    lui     $a1, 0x801d
    lui     $a2, 0x801d
    addiu   $a2, $a2, 0xb168
    jal     Function_0x800c9b90
    addiu   $a1, $a1, 0xb16c
    beqz    $v0, branch_0x80092fa0
    or      $s0, $zero, $zero
    b       branch_0x8009300c
    or      $v0, $zero, $zero
branch_0x80092fa0:
    lui     $s1, 0x801d
    lui     $s2, 0x801d
    addiu   $s2, $s2, 0xb178
    addiu   $s1, $s1, 0xb378
    addiu   $s3, $zero, 0x10
branch_0x80092fb4:
    sll     $t4, $s0, 5
    addu    $a2, $s2, $t4
    or      $a0, $s4, $zero
    jal     Function_0x800c9cc0
    or      $a1, $s0, $zero
    addiu   $s0, $s0, 0x1
    addiu   $s1, $s1, 0x4
    bne     $s0, $s3, branch_0x80092fb4
    sw      $v0, -0x4($s1)
    lui     $s0, 0x801d
    addiu   $s0, $s0, 0xb170
    or      $a1, $s0, $zero
    jal     Function_0x800c8970
    or      $a0, $s4, $zero
    beqzl   $v0, branch_0x80093000
    lw      $t5, 0x0($s0)
    b       branch_0x8009300c
    or      $v0, $zero, $zero

.globl Function_0x80092ffc
Function_0x80092ffc: # 0x80092ffc
    lw      $t5, 0x0($s0)
branch_0x80093000:
    addiu   $v0, $zero, 0x1
    sra     $t6, $t5, 8
    sw      $t6, 0x0($s0)
branch_0x8009300c:
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x30


.globl Function_0x8009302c
Function_0x8009302c: # 0x8009302c
    lui     $t6, %hi(Unknown_0x800da8a8)
    lw      $t6, %lo(Unknown_0x800da8a8)($t6)
    addiu   $sp, $sp, 0xffe8
    addiu   $at, $zero, 0x1
    sw      $ra, 0x14($sp)
    bne     $t6, $at, branch_0x800930e4
    sw      $a0, 0x18($sp)
    lui     $at, 0x800e
    jal     Function_0x8008f914
    sw      $zero, -0x5754($at)
    sw      $v0, 0x18($sp)
    jal     Function_0x8006e614
    addiu   $a0, $sp, 0x18
    jal     Function_0x80068744_DrawDriver
    lw      $a0, 0x18($sp)
    sw      $v0, 0x18($sp)
    jal     Function_0x8007ff48
    or      $a0, $v0, $zero
    lui     $v1, %hi(Unknown_0x801ce398)
    lw      $v1, %lo(Unknown_0x801ce398)($v1)
    addiu   $at, $zero, 0x4
    sw      $v0, 0x18($sp)
    beq     $v1, $at, branch_0x800930a0
    addiu   $at, $zero, 0xa
    beq     $v1, $at, branch_0x800930a0
    nop
    jal     Function_0x800add30
    or      $a0, $v0, $zero
    sw      $v0, 0x18($sp)
branch_0x800930a0:
    jal     Function_0x80090cf8_DrawWaterBG
    lw      $a0, 0x18($sp)
    sw      $v0, 0x18($sp)
    jal     Function_0x80069534
    or      $a0, $v0, $zero
    sw      $v0, 0x18($sp)
    jal     Function_0x800684d8
    or      $a0, $v0, $zero
    sw      $v0, 0x18($sp)
    jal     Function_0x8006dfc4
    addiu   $a0, $sp, 0x18
    jal     Function_0x800b2dfc
    addiu   $a0, $sp, 0x18
    jal     Function_0x8008bacc
    lw      $a0, 0x18($sp)
    b       branch_0x80093118
    sw      $v0, 0x18($sp)
branch_0x800930e4:
    lui     $at, 0x800e
    sw      $zero, -0x5754($at)
    jal     Function_0x80093164
    lw      $a0, 0x18($sp)
    addiu   $t7, $zero, 0x1
    lui     $at, 0x800e
    sw      $v0, 0x18($sp)
    sw      $t7, -0x5754($at)
    jal     Function_0x80093164
    or      $a0, $v0, $zero
    lui     $at, 0x800e
    sw      $v0, 0x18($sp)
    sw      $zero, -0x5754($at)
branch_0x80093118:
    jal     Function_0x800514d8
    lw      $a0, 0x18($sp)
    lui     $t8, %hi(MainState_0x800da8a4)
    lw      $t8, %lo(MainState_0x800da8a4)($t8)
    addiu   $at, $zero, 0x2d
    sw      $v0, 0x18($sp)
    bne     $t8, $at, branch_0x80093148
    lui     $t9, 0x8023
    lw      $t9, -0x779c($t9)
    addiu   $at, $zero, 0x2
    beql    $t9, $at, branch_0x80093154
    lw      $ra, 0x14($sp)
branch_0x80093148:
    jal     Function_0x801fc28c
    addiu   $a0, $sp, 0x18
    lw      $ra, 0x14($sp)
branch_0x80093154:
    lw      $v0, 0x18($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x80093164
Function_0x80093164: # 0x80093164
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    jal     Function_0x8008f914
    sw      $a0, 0x18($sp)
    sw      $v0, 0x18($sp)
    jal     Function_0x8006e614
    addiu   $a0, $sp, 0x18
    jal     Function_0x80068744_DrawDriver
    lw      $a0, 0x18($sp)
    lui     $v1, %hi(Unknown_0x801ce398)
    lw      $v1, %lo(Unknown_0x801ce398)($v1)
    addiu   $at, $zero, 0x4
    sw      $v0, 0x18($sp)
    beq     $v1, $at, branch_0x800931b4
    addiu   $at, $zero, 0xa
    beq     $v1, $at, branch_0x800931b4
    nop
    jal     Function_0x800add30
    or      $a0, $v0, $zero
    sw      $v0, 0x18($sp)
branch_0x800931b4:
    jal     Function_0x80090cf8_DrawWaterBG
    lw      $a0, 0x18($sp)
    sw      $v0, 0x18($sp)
    jal     Function_0x80069534
    or      $a0, $v0, $zero
    sw      $v0, 0x18($sp)
    jal     Function_0x800684d8
    or      $a0, $v0, $zero
    sw      $v0, 0x18($sp)
    jal     Function_0x8006dfc4
    addiu   $a0, $sp, 0x18
    jal     Function_0x800b2dfc
    addiu   $a0, $sp, 0x18
    lw      $ra, 0x14($sp)
    lw      $v0, 0x18($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_ChangeStateTo28
Function_ChangeStateTo28: # 0x800931fc
    lui     $v1, %hi(MainState_0x800da8a4)
    addiu   $v1, $v1, %lo(MainState_0x800da8a4)
    lw      $t6, 0x0($v1)
    lui     $at, 0x801d
    addiu   $t7, $zero, MainState_28
    sw      $t6, -0x1c6c($at)
    lui     $at, %hi(Unknown_0x801ce390_MainState)
    sw      $zero, %lo(Unknown_0x801ce390_MainState)($at)
    addiu   $a2, $zero, 0x1
    sw      $t7, 0x0($v1)
    lui     $at, %hi(Unknown_0x801ce398)
    sw      $a2, %lo(Unknown_0x801ce398)($at)
    lui     $at, %hi(Unknown_0x801ce39c)
    sw      $a2, %lo(Unknown_0x801ce39c)($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c60($at)
    lui     $at, 0x801d
    sw      $zero, -0x1c5c($at)
    lui     $at, %hi(Unknown_0x800da89c)
    sw      $zero, %lo(Unknown_0x800da89c)($at)
    addiu   $t4, $zero, 0x3
    lui     $at, %hi(Unknown_0x800d439c)
    sw      $t4, %lo(Unknown_0x800d439c)($at)
    lui     $a3, %hi(Unknown_0x801cb098)
    lui     $at, 0x801d
    addiu   $a3, $a3, %lo(Unknown_0x801cb098)
    sw      $zero, -0x1ca0($at)
    lw      $v0, 0x0($a3)
    addiu   $sp, $sp, 0xffb0
    sw      $ra, 0x1c($sp)
    bnez    $v0, branch_0x800932d8
    or      $a0, $zero, $zero

    lui     $a1, %hi(TrackNr_0x800d7ef0)
    jal     Function_0x8009467c
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xb068
    lui     $v1, 0x801d
    lw      $t8, 0x4($a0)
    lw      $t9, 0x8($a0)
    lw      $t6, 0x0($a0)
    addiu   $v1, $v1, 0xe368
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe48c
    sw      $v0, 0x8($v1)
    lui     $a3, %hi(Unknown_0x801cb098)
    lui     $ra, %hi(TrackNr_0x800d7ef0)
    sw      $t8, 0xc($v1)
    sw      $t9, 0x10($v1)
    sh      $t6, 0x0($t0)
    addiu   $a3, $a3, %lo(Unknown_0x801cb098)
    addiu   $a2, $zero, 0x1
    lw      $ra, %lo(TrackNr_0x800d7ef0)($ra)
    b       branch_0x800933e4
    addiu   $t4, $zero, 0x3

branch_0x800932d8:
    bne     $a2, $v0, branch_0x8009333c
    lui     $a1, %hi(TrackNr_0x800d7ef0)
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    jal     Function_0x8009467c
    or      $a0, $a2, $zero
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xb068
    lui     $v1, 0x801d
    lw      $t7, 0x10($a0)
    lw      $t8, 0x14($a0)
    lw      $t9, 0xc($a0)
    addiu   $v1, $v1, 0xe368
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe48c
    sw      $v0, 0x8($v1)
    lui     $a3, %hi(Unknown_0x801cb098)
    lui     $ra, %hi(TrackNr_0x800d7ef0)
    sw      $t7, 0xc($v1)
    sw      $t8, 0x10($v1)
    sh      $t9, 0x0($t0)
    addiu   $a3, $a3, %lo(Unknown_0x801cb098)
    addiu   $a2, $zero, 0x1
    lw      $ra, %lo(TrackNr_0x800d7ef0)($ra)
    b       branch_0x800933e4
    addiu   $t4, $zero, 0x3

branch_0x8009333c:
    lui     $t6, %hi(Unknown_0x800da8e8)
    lh      $t6, %lo(Unknown_0x800da8e8)($t6)
    beqz    $t6, branch_0x80093388
    lui     $ra, %hi(TrackNr_0x800d7ef0)

    lw      $ra, %lo(TrackNr_0x800d7ef0)($ra)
    lui     $t8, %hi(Unknown_0x800ea94c)
    lui     $v1, 0x801d
    sll     $t7, $ra, 1
    addu    $t8, $t8, $t7
    lh      $t8, %lo(Unknown_0x800ea94c)($t8)
    addiu   $v1, $v1, 0xe368
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe48c
    addiu   $t9, $zero, 0x5
    sw      $t9, 0xc($v1)
    sw      $t4, 0x10($v1)
    sh      $zero, 0x0($t0)
    b       branch_0x800933e4
    sw      $t8, 0x8($v1)

branch_0x80093388:
    lui     $a1, %hi(TrackNr_0x800d7ef0)
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    jal     Function_0x8009467c
    addiu   $a0, $zero, 0x2
    lui     $a0, 0x801d
    addiu   $a0, $a0, 0xb068
    lui     $v1, 0x801d
    lw      $t6, 0x1c($a0)
    lw      $t7, 0x20($a0)
    lw      $t8, 0x18($a0)
    addiu   $v1, $v1, 0xe368
    lui     $t0, 0x801d
    addiu   $t0, $t0, 0xe48c
    sw      $v0, 0x8($v1)
    lui     $a3, %hi(Unknown_0x801cb098)
    lui     $ra, %hi(TrackNr_0x800d7ef0)
    sw      $t6, 0xc($v1)
    sw      $t7, 0x10($v1)
    sh      $t8, 0x0($t0)
    addiu   $a3, $a3, %lo(Unknown_0x801cb098)
    addiu   $a2, $zero, 0x1
    lw      $ra, %lo(TrackNr_0x800d7ef0)($ra)
    addiu   $t4, $zero, 0x3

branch_0x800933e4:
    lw      $a0, 0x0($v1)
    lh      $t9, 0x4($v1)
    lui     $t1, 0x801d
    addiu   $t1, $t1, 0xe380
    lui     $at, %hi(Unknown_0x800da8a8)
    sw      $a0, 0x0($t1)
    sw      $t9, %lo(Unknown_0x800da8a8)($at)
    lh      $t6, 0x6($v1)
    lui     $at, %hi(Unknown_0x80198050)
    lui     $v0, %hi(Unknown_0x800d4730)
    sw      $t6, %lo(Unknown_0x80198050)($at)
    lw      $t7, 0xc($v1)
    lui     $at, %hi(Unknown_0x800d7ef4)
    addiu   $v0, $v0, %lo(Unknown_0x800d4730)
    sw      $t7, %lo(Unknown_0x800d7ef4)($at)
    lw      $t8, 0x14($v1)
    lui     $at, %hi(Unknown_0x800d46f0)
    addiu   $t2, $zero, 0x4
    sh      $t8, %lo(Unknown_0x800d46f0)($at)
    lw      $t9, 0x8($v1)
    bne     $t2, $a0, branch_0x80093464
    sw      $t9, 0x0($v0)

    lui     $t6, 0x801d
    lw      $t6, -0x1ba8($t6)
    beqz    $t6, branch_0x8009345c
    nop

    lw      $t7, 0x10($v1)
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe488
    sw      $t7, 0x0($a1)
branch_0x8009345c:
    b       branch_0x800934b4
    addiu   $t3, $zero, 0xb

branch_0x80093464:
    addiu   $t3, $zero, 0xb
    bne     $t3, $a0, branch_0x800934a4
    lui     $a1, 0x801d

    sll     $t8, $ra, 1
    lui     $t9, %hi(Unknown_0x800ea94c)
    lui     $at, 0x801d
    addu    $t9, $t9, $t8
    lh      $t9, %lo(Unknown_0x800ea94c)($t9)
    sw      $zero, -0x1ca0($at)
    addiu   $a1, $a1, 0xe488
    sw      $a2, 0x0($a1)
    sw      $a2, 0x10($v1)
    sh      $zero, 0x0($t0)
    sw      $t9, 0x8($v1)
    b       branch_0x800934b4
    sw      $t9, 0x0($v0)

branch_0x800934a4:
    lw      $t8, 0x10($v1)
    lui     $a1, 0x801d
    addiu   $a1, $a1, 0xe488
    sw      $t8, 0x0($a1)
branch_0x800934b4:
    lui     $at, %hi(Unknown_0x800d7ef8)
    sw      $zero, %lo(Unknown_0x800d7ef8)($at)
    lui     $v0, 0x801d
    lui     $at, 0x801d
    addiu   $v0, $v0, 0xe45c
    sw      $zero, -0x1c54($at)
    bnez    $ra, branch_0x800934e4
    sh      $zero, 0x0($v0)

    lw      $t9, 0x0($t1)
    bne     $t3, $t9, branch_0x800934e4
    nop
    sh      $a2, 0x0($v0)
branch_0x800934e4:
    bnez    $ra, branch_0x8009350c
    nop

    lh      $t6, 0x0($v0)
    lui     $at, 0x801d
    bnez    $t6, branch_0x8009350c
    nop

    sw      $t4, -0x1c50($at)
    lui     $at, 0x801d
    b       branch_0x8009351c
    sw      $t4, -0x1c58($at)

branch_0x8009350c:
    lui     $at, 0x801d
    sw      $zero, -0x1c50($at)
    lui     $at, 0x801d
    sw      $a2, -0x1c58($at)
branch_0x8009351c:
    lui     $at, 0x801d
    beqz    $a0, branch_0x800936b0
    sh      $zero, -0x1bb0($at)

    beq     $a0, $a2, branch_0x80093778
    lui     $v0, %hi(Unknown_0x800da730)

    beq     $a0, $t2, branch_0x80093548
    lui     $t7, %hi(Unknown_0x800da8e8)

    beq     $a0, $t3, branch_0x80093714
    addiu   $at, $zero, 0x5

    b       branch_0x800937dc
    or      $a0, $zero, $zero

branch_0x80093548:
    lh      $t7, %lo(Unknown_0x800da8e8)($t7)
    lui     $a1, 0x801d
    lui     $at, %hi(Unknown_0x800d7fc0)
    beqz    $t7, branch_0x80093564
    addiu   $a1, $a1, 0xb158

    addiu   $t8, $zero, 0x2
    sw      $t8, 0x0($a3)
branch_0x80093564:
    lui     $t6, %hi(Unknown_0x800d465c)
    lw      $t6, %lo(Unknown_0x800d465c)($t6)
    lui     $t9, %hi(Unknown_0x800da730)
    addiu   $a0, $t9, %lo(Unknown_0x800da730)
    lui     $v0, %hi(Unknown_0x801923f0_GameStruct)
    lui     $t4, %hi(Unknown_0x800d9424)
    lui     $t3, %hi(Unknown_0x801caff8)
    lui     $t2, %hi(Unknown_0x800da740)
    lui     $t1, %hi(String_DriverNames)
    lui     $t0, %hi(Unknown_0x801cb08c)
    sll     $t7, $t6, 2
    sw      $zero, %lo(Unknown_0x800d7fc0)($at)
    addu    $a3, $t7, $a0
    addiu   $t0, $t0, %lo(Unknown_0x801cb08c)
    addiu   $t1, $t1, %lo(String_DriverNames)
    addiu   $t2, $t2, %lo(Unknown_0x800da740)
    addiu   $t3, $t3, %lo(Unknown_0x801caff8)
    addiu   $t4, $t4, %lo(Unknown_0x800d9424)
    addiu   $v0, $v0, %lo(Unknown_0x801923f0_GameStruct)
    addiu   $t5, $zero, 0xc
    addiu   $a2, $zero, 0xe
    sw      $t6, 0x24($sp)
branch_0x800935bc:
    lw      $t8, 0x0($a0)
    sh      $zero, 0x0($a1)
    bne     $a0, $a3, branch_0x8009361c
    sw      $t8, GameStruct_Driver2($v0)

    lw      $t6, 0x0($t0)
    bnezl   $t6, branch_0x800935f0
    lw      $t8, GameStruct_Driver2($v0)
    multu   $t8, $a2
    mflo    $t9
    addu    $v1, $t1, $t9
    b       branch_0x80093604
    lb      $t7, 0xb($v1)

# 0x800935ec
    lw      $t8, GameStruct_Driver2($v0)
branch_0x800935f0:
    multu   $t8, $a2
    mflo    $t6
    addu    $v1, $t3, $t6
    nop
    lb      $t7, 0xb($v1)
branch_0x80093604:
    sw      $t7, GameStruct_Handling($v0)
    lb      $t9, 0xc($v1)
    sw      $t9, GameStruct_Engine($v0)
    lb      $t8, 0xd($v1)
    b       branch_0x80093654
    sw      $t8, GameStruct_Grip($v0)

branch_0x8009361c:
    lw      $t9, GameStruct_Driver2($v0)
    sll     $t6, $ra, 2
    subu    $t6, $t6, $ra
    multu   $t9, $t5
    sll     $t6, $t6, 4
    addu    $t7, $t4, $t6
    mflo    $t8
    addu    $v1, $t7, $t8
    lw      $t6, 0x0($v1)
    lw      $t9, 0x4($v1)
    lw      $t7, 0x8($v1)
    sw      $t6, GameStruct_Handling($v0)
    sw      $t9, GameStruct_Engine($v0)
    sw      $t7, GameStruct_Grip($v0)
branch_0x80093654:
    addiu   $a0, $a0, 0x4
    addiu   $a1, $a1, 0x2
    bne     $a0, $t2, branch_0x800935bc
    addiu   $v0, $v0, GameStruct_1718

    lw      $t8, 0x24($sp)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe454
    lh      $t7, 0x0($v1)
    lui     $v0, %hi(Unknown_0x800da730)
    addiu   $v0, $v0, %lo(Unknown_0x800da730)
    sll     $t6, $t8, 2
    addu    $t9, $v0, $t6
    beqz    $t7, branch_0x80093690
    lw      $a1, 0x0($t9)

    addiu   $a1, $a1, 0x4
branch_0x80093690:
    lw      $t8, 0xc($v0)
    or      $a0, $zero, $zero
    lw      $a2, 0x4($v0)
    lw      $a3, 0x8($v0)
    jal     Function_0x80096700
    sw      $t8, 0x10($sp)
    b       branch_0x800937f4
    nop

branch_0x800936b0:
    lui     $t6, %hi(Unknown_0x800da8e8)
    lh      $t6, %lo(Unknown_0x800da8e8)($t6)
    lui     $v0, %hi(Unknown_0x800da730)
    addiu   $v0, $v0, %lo(Unknown_0x800da730)
    beqz    $t6, branch_0x800936d0
    lui     $v1, 0x801d

    addiu   $t9, $zero, 0x2
    sw      $t9, 0x0($a3)
branch_0x800936d0:
    lui     $t7, %hi(Unknown_0x800d465c)
    lw      $t7, %lo(Unknown_0x800d465c)($t7)
    addiu   $v1, $v1, 0xe454
    lh      $t9, 0x0($v1)
    sll     $t8, $t7, 2
    addu    $t6, $v0, $t8
    beqz    $t9, branch_0x800936f4
    lw      $a1, 0x0($t6)

    addiu   $a1, $a1, 0x4
branch_0x800936f4:
    lw      $t7, 0xc($v0)
    or      $a0, $zero, $zero
    lw      $a2, 0x4($v0)
    lw      $a3, 0x8($v0)
    jal     Function_0x80096700
    sw      $t7, 0x10($sp)
    b       branch_0x800937f4
    nop

branch_0x80093714:
    bne     $ra, $at, branch_0x80093724
    lui     $v0, %hi(Unknown_0x800da730)
    b       branch_0x8009372c
    sw      $zero, 0x0($a3)

branch_0x80093724:
    addiu   $t8, $zero, 0x2
    sw      $t8, 0x0($a3)
branch_0x8009372c:
    lui     $t6, %hi(Unknown_0x800d465c)
    lw      $t6, %lo(Unknown_0x800d465c)($t6)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe454
    lh      $t8, 0x0($v1)
    addiu   $v0, $v0, %lo(Unknown_0x800da730)
    sll     $t9, $t6, 2
    addu    $t7, $v0, $t9
    beqz    $t8, branch_0x80093758
    lw      $a1, 0x0($t7)

    addiu   $a1, $a1, 0x4
branch_0x80093758:
    lw      $t6, 0xc($v0)
    or      $a0, $zero, $zero
    lw      $a2, 0x4($v0)
    lw      $a3, 0x8($v0)
    jal     Function_0x80096700
    sw      $t6, 0x10($sp)
    b       branch_0x800937f4
    nop

branch_0x80093778:
    lui     $t9, %hi(Unknown_0x800d465c)
    lw      $t9, %lo(Unknown_0x800d465c)($t9)
    lui     $v1, 0x801d
    addiu   $v1, $v1, 0xe454
    lh      $t6, 0x0($v1)
    addiu   $v0, $v0, %lo(Unknown_0x800da730)
    sll     $t7, $t9, 2
    addu    $t8, $v0, $t7
    beqz    $t6, branch_0x800937a4
    lw      $a1, 0x0($t8)

    addiu   $a1, $a1, 0x4
branch_0x800937a4:
    lui     $t9, %hi(Unknown_0x800d4660)
    lw      $t9, %lo(Unknown_0x800d4660)($t9)
    lh      $t6, 0x2($v1)
    addiu   $a0, $zero, 0x4
    sll     $t7, $t9, 2
    addu    $t8, $v0, $t7
    beqz    $t6, branch_0x800937c8
    lw      $a2, 0x0($t8)

    addiu   $a2, $a2, 0x4
branch_0x800937c8:
    or      $a3, $a1, $zero
    jal     Function_0x80096700
    sw      $a2, 0x10($sp)
    b       branch_0x800937f4
    nop

branch_0x800937dc:
    addiu   $t9, $zero, 0x1
    sw      $t9, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1
    jal     Function_0x80096700
    addiu   $a3, $zero, 0x1
branch_0x800937f4:
    lui     $v0, %hi(TrackNr_0x800d7ef0)
    lw      $v0, %lo(TrackNr_0x800d7ef0)($v0)
    lui     $t8, %hi(Unknown_0x800db2e8)
    addiu   $t8, $t8, %lo(Unknown_0x800db2e8)
    bgez    $v0, branch_0x80093810
    lui     $a0, 0x806

    or      $v0, $zero, $zero
branch_0x80093810:
    slti    $at, $v0, NrOfTracks
    bnezl   $at, branch_0x80093824
    sll     $t7, $v0, 2

    addiu   $v0, $zero, 0x8
    sll     $t7, $v0, 2
branch_0x80093824:
    addu    $v1, $t7, $t8
    lh      $a1, 0x0($v1)
    jal     Function_0x800965ec
    lh      $a2, 0x2($v1)
    addiu   $a0, $zero, 0x2
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $v0, 0x8022
    addiu   $v0, $v0, 0x7a40
    addiu   $t6, $zero, 0x3
    sw      $t6, 0x0($v0)
    lui     $t9, %hi(Unknown_0x800da8a8)
    lw      $t9, %lo(Unknown_0x800da8a8)($t9)
    addiu   $at, $zero, 0x2
    addiu   $a0, $zero, 0x7
    bne     $t9, $at, branch_0x8009387c
    lui     $a1, %hi(TrackNr_0x800d7ef0)

    sw      $t6, 0x10c($v0)
branch_0x8009387c:
    lui     $at, %hi(Unknown_0x800da72c)
    sh      $zero, %lo(Unknown_0x800da72c)($at)
    jal     Function_0x800c1f94
    lw      $a1, %lo(TrackNr_0x800d7ef0)($a1)
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x50
    jr      $ra
    nop


.globl Function_0x8009389c
Function_0x8009389c: # 0x8009389c
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x14($sp)
    addiu   $v1, $a0, 0x8
    lui     $t6, 0xb600
    addiu   $t7, $zero, 0xffff
    sw      $t7, 0x4($a0)
    sw      $t6, 0x0($a0)
    lui     $t8, 0xb700
    sw      $t8, 0x0($v1)
    addiu   $a1, $v1, 0x8
    addiu   $t9, $zero, 0x5
    sw      $t9, 0x4($v1)
    lui     $t1, 0xbb00
    sw      $t1, 0x0($a1)
    sw      $zero, 0x4($a1)
    addiu   $a3, $a1, 0x8
    addiu   $t0, $a3, 0x8
    lui     $t2, 0xe700
    sw      $t2, 0x0($a3)
    sw      $zero, 0x4($a3)
    lui     $t3, 0xba00
    ori     $t3, $t3, 0x1402
    addiu   $v0, $t0, 0x8
    lui     $t4, 0x30
    sw      $t4, 0x4($t0)
    sw      $t3, 0x0($t0)
    lui     $t6, 0xfffc
    lui     $t5, 0xfcff
    ori     $t5, $t5, 0xffff
    ori     $t6, $t6, 0xf279
    addiu   $v1, $v0, 0x8
    sw      $t6, 0x4($v0)
    sw      $t5, 0x0($v0)
    lui     $t8, 0xf0a
    lui     $t7, 0xb900
    ori     $t7, $t7, 0x31d
    ori     $t8, $t8, 0x4000
    addiu   $a2, $v1, 0x8
    sw      $t8, 0x4($v1)
    sw      $t7, 0x0($v1)
    lui     $t9, 0xfe00
    sw      $t9, 0x0($a2)
    addiu   $a1, $a2, 0x8
    sw      $a1, 0x40($sp)
    sw      $a2, 0x20($sp)
    jal     osVirtualToPhysical
    lui     $a0, %hi(RamForCompressedTrackFiles_0x802a0000)

    lw      $a3, 0x40($sp)
    lw      $a2, 0x20($sp)
    lui     $t1, 0xff10
    ori     $t1, $t1, 0x13f
    sw      $v0, 0x4($a2)
    sw      $t1, 0x0($a3)
    addiu   $a1, $a3, 0x8
    sw      $a1, 0x40($sp)
    lui     $a0, %hi(RamForCompressedTrackFiles_0x802a0000)
    jal     osVirtualToPhysical
    sw      $a3, 0x1c($sp)

    lw      $v1, 0x40($sp)
    lw      $a3, 0x1c($sp)
    lui     $t3, 0xfffc
    ori     $t3, $t3, 0xfffc
    sw      $v0, 0x4($a3)
    lui     $t2, 0xf700
    addiu   $a0, $v1, 0x8
    lui     $t5, 0x4f
    sw      $t2, 0x0($v1)
    sw      $t3, 0x4($v1)
    ori     $t5, $t5, 0xc3bc
    lui     $t4, 0xed00
    sw      $t4, 0x0($a0)
    sw      $t5, 0x4($a0)
    addiu   $a2, $a0, 0x8
    lui     $t6, 0xf64f
    ori     $t6, $t6, 0xc3bc
    sw      $t6, 0x0($a2)
    sw      $zero, 0x4($a2)
    lw      $ra, 0x14($sp)
    addiu   $v0, $a2, 0x8
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop


.globl Function_0x800939e4
Function_0x800939e4: # 0x800939e4
    addiu   $sp, $sp, -0x8
    or      $v0, $a0, $zero
    sw      $s0, 0x4($sp)
    addiu   $a0, $a0, 0x8
    lui     $t6, 0xb600
    addiu   $t7, $zero, 0xffff
    or      $a1, $a0, $zero
    sw      $t7, 0x4($v0)
    sw      $t6, 0x0($v0)
    lui     $t8, 0xb700
    sw      $t8, 0x0($a1)
    addiu   $a0, $a0, 0x8
    addiu   $t9, $zero, 0x4
    sw      $t9, 0x4($a1)
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t6, 0xbb00
    sw      $t6, 0x0($a2)
    or      $a3, $a0, $zero
    sw      $zero, 0x4($a2)
    addiu   $a0, $a0, 0x8
    lui     $v1, 0xe700
    or      $t0, $a0, $zero
    sw      $v1, 0x0($a3)
    sw      $zero, 0x4($a3)
    lui     $t7, 0xba00
    ori     $t7, $t7, 0x1402
    addiu   $a0, $a0, 0x8
    lui     $t8, 0x30
    sw      $t8, 0x4($t0)
    sw      $t7, 0x0($t0)
    or      $a1, $a0, $zero
    lui     $t6, 0xfffc
    lui     $t9, 0xfcff
    ori     $t9, $t9, 0xffff
    ori     $t6, $t6, 0xf279
    addiu   $a0, $a0, 0x8
    sw      $t6, 0x4($a1)
    sw      $t9, 0x0($a1)
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t7, 0xb900
    ori     $t7, $t7, 0x31d
    or      $a3, $a0, $zero
    sw      $t7, 0x0($a2)
    sw      $zero, 0x4($a2)
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xb900
    ori     $t8, $t8, 0x2
    or      $t0, $a0, $zero
    sw      $t8, 0x0($a3)
    sw      $zero, 0x4($a3)
    lui     $t6, 0x4f
    ori     $t6, $t6, 0xc3bc
    lui     $t9, 0xed00
    lui     $v0, 0x8015
    lui     $s0, 0x8015
    lui     $t5, 0xf64f
    lui     $t4, 0x1
    lui     $t1, 0xff10
    sw      $t9, 0x0($t0)
    sw      $t6, 0x4($t0)
    addiu   $a0, $a0, 0x8
    ori     $t1, $t1, 0x13f
    ori     $t4, $t4, 0x1
    ori     $t5, $t5, 0xc3bc
    addiu   $s0, $s0, 0x402c
    addiu   $v0, $v0, 0x4020
    lui     $t3, 0xf700
    lui     $t2, 0x8000
branch_0x80093afc:
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $v1, 0x0($a1)
    sw      $zero, 0x4($a1)
    or      $a2, $a0, $zero
    sw      $t1, 0x0($a2)
    lw      $t7, 0x0($v0)
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    addu    $t8, $t7, $t2
    sw      $t8, 0x4($a2)
    addiu   $a0, $a0, 0x8
    or      $t0, $a0, $zero
    addiu   $v0, $v0, 0x4
    sw      $t4, 0x4($a3)
    sw      $t3, 0x0($a3)
    sw      $zero, 0x4($t0)
    sw      $t5, 0x0($t0)
    bne     $v0, $s0, branch_0x80093afc
    addiu   $a0, $a0, 0x8

    lw      $s0, 0x4($sp)
    addiu   $sp, $sp, 0x8
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x80093b5c
Function_0x80093b5c: # 0x80093b5c
    addiu   $sp, $sp, 0xfff0
    sw      $a1, 0x14($sp)
    sw      $a2, 0x18($sp)
    or      $t6, $a1, $zero
    or      $v0, $a0, $zero
    or      $a1, $t6, $zero
    sw      $s1, 0xc($sp)
    sw      $s0, 0x8($sp)
    sw      $a3, 0x1c($sp)
    or      $t7, $a2, $zero
    addiu   $t6, $zero, 0xffff
    addiu   $a0, $a0, 0x8
    lui     $t9, 0xb600
    or      $a2, $t7, $zero
    sw      $t9, 0x0($v0)
    sw      $t6, 0x4($v0)
    or      $v1, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t7, 0xbb00
    sw      $t7, 0x0($v1)
    or      $t1, $a0, $zero
    or      $t8, $a3, $zero
    sw      $zero, 0x4($v1)
    addiu   $a0, $a0, 0x8
    or      $a3, $t8, $zero
    lui     $t0, 0xe700
    or      $t2, $a0, $zero
    sw      $t0, 0x0($t1)
    sw      $zero, 0x4($t1)
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xba00
    ori     $t8, $t8, 0x1402
    lui     $t9, 0x30
    or      $t3, $a0, $zero
    sw      $t9, 0x4($t2)
    sw      $t8, 0x0($t2)
    lui     $t7, 0xfffc
    lui     $t6, 0xfcff
    ori     $t6, $t6, 0xffff
    ori     $t7, $t7, 0xf279
    sw      $t7, 0x4($t3)
    sw      $t6, 0x0($t3)
    addiu   $a0, $a0, 0x8
    or      $t1, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t8, 0xb900
    ori     $t8, $t8, 0x31d
    or      $t2, $a0, $zero
    sw      $t8, 0x0($t1)
    sw      $zero, 0x4($t1)
    lui     $t9, 0xb900
    ori     $t9, $t9, 0x2
    addiu   $a0, $a0, 0x8
    lui     $t6, 0xed02
    sw      $t9, 0x0($t2)
    sw      $zero, 0x4($t2)
    ori     $t6, $t6, 0x50
    or      $t3, $a0, $zero
    lui     $t7, 0x4d
    ori     $t7, $t7, 0x8368
    sw      $t6, 0x0($t3)
    sw      $t7, 0x4($t3)
    sll     $t6, $a2, 3
    andi    $t7, $t6, 0x7c0
    sll     $t8, $a1, 8
    andi    $t9, $t8, 0xf800
    or      $t8, $t9, $t7
    sra     $t6, $a3, 2
    andi    $t9, $t6, 0x3e
    or      $t5, $t8, $t9
    ori     $t7, $t5, 0x1
    sll     $t6, $t7, 16
    lui     $t5, 0xf64d
    lui     $t2, 0xff10
    lui     $v0, 0x8015
    lui     $s0, 0x2
    lui     $s1, 0x8015
    addiu   $a0, $a0, 0x8
    addiu   $s1, $s1, 0x402c
    ori     $s0, $s0, 0x50
    addiu   $v0, $v0, 0x4020
    ori     $t2, $t2, 0x13f
    ori     $t5, $t5, 0x836c
    or      $v1, $t6, $t7
    lui     $t3, 0x8000
    lui     $t4, 0xf700
branch_0x80093cb4:
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t0, 0x0($a1)
    sw      $zero, 0x4($a1)
    or      $a2, $a0, $zero
    sw      $t2, 0x0($a2)
    lw      $t8, 0x0($v0)
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    addu    $t9, $t8, $t3
    sw      $t9, 0x4($a2)
    addiu   $a0, $a0, 0x8
    or      $t1, $a0, $zero
    addiu   $v0, $v0, 0x4
    sw      $v1, 0x4($a3)
    sw      $t4, 0x0($a3)
    sw      $s0, 0x4($t1)
    sw      $t5, 0x0($t1)
    bne     $v0, $s1, branch_0x80093cb4
    addiu   $a0, $a0, 0x8
    lw      $s0, 0x8($sp)
    lw      $s1, 0xc($sp)
    addiu   $sp, $sp, 0x10
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x80093d18
Function_0x80093d18: # 0x80093d18
    or      $v0, $a0, $zero
    addiu   $v1, $a0, 0x8
    lui     $t6, 0xb600
    addiu   $t7, $zero, 0xffff
    sw      $t7, 0x4($v0)
    sw      $t6, 0x0($v0)
    addiu   $a1, $v1, 0x8
    lui     $t8, 0xbb00
    sw      $t8, 0x0($v1)
    sw      $zero, 0x4($v1)
    addiu   $a2, $a1, 0x8
    lui     $t9, 0xe700
    sw      $t9, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t0, 0xba00
    ori     $t0, $t0, 0x1402
    lui     $t1, 0x30
    sw      $t1, 0x4($a2)
    sw      $t0, 0x0($a2)
    addiu   $a3, $a2, 0x8
    lui     $t2, 0xfcff
    lui     $t3, 0xfffc
    ori     $t3, $t3, 0xf279
    ori     $t2, $t2, 0xffff
    addiu   $v0, $a3, 0x8
    sw      $t2, 0x0($a3)
    sw      $t3, 0x4($a3)
    lui     $t4, 0xb900
    ori     $t4, $t4, 0x31d
    addiu   $a0, $v0, 0x8
    sw      $t4, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t5, 0xb900
    ori     $t5, $t5, 0x2
    addiu   $a1, $a0, 0x8
    sw      $t5, 0x0($a0)
    sw      $zero, 0x4($a0)
    lui     $t7, 0x4f
    ori     $t7, $t7, 0xc3bc
    lui     $t6, 0xed00
    lui     $t8, 0xff10
    sw      $t6, 0x0($a1)
    sw      $t7, 0x4($a1)
    addiu   $a2, $a1, 0x8
    ori     $t8, $t8, 0x13f
    sw      $t8, 0x0($a2)
    lui     $t9, 0x8015
    lw      $t9, 0x16a8($t9)
    lui     $t1, 0x8015
    lui     $at, 0x8000
    sll     $t0, $t9, 2
    addu    $t1, $t1, $t0
    lw      $t1, 0x4020($t1)
    addiu   $a3, $a2, 0x8
    lui     $t4, 0x1
    addu    $t2, $t1, $at
    sw      $t2, 0x4($a2)
    ori     $t4, $t4, 0x1
    addiu   $v1, $a3, 0x8
    lui     $t3, 0xf700
    lui     $t5, 0xf64f
    sw      $t3, 0x0($a3)
    sw      $t4, 0x4($a3)
    ori     $t5, $t5, 0xc3bc
    sw      $t5, 0x0($v1)
    sw      $zero, 0x4($v1)
    jr      $ra
    addiu   $v0, $v1, 0x8


.globl Function_0x80093e28
Function_0x80093e28: # 0x80093e28
    srl     $v1, $a0, 24
    slti    $at, $v1, 0x10
    bnez    $at, branch_0x80093e3c
    lui     $t7, %hi(Unknown_0x801ce410)
    or      $v1, $zero, $zero
branch_0x80093e3c:
    sll     $t6, $v1, 2
    addu    $t7, $t7, $t6
    lui     $at, 0xff
    lw      $t7, %lo(Unknown_0x801ce410)($t7)
    ori     $at, $at, 0xffff
    and     $t8, $a0, $at
    lui     $at, %hi(0x80000000)
    addu    $a1, $t7, $t8
    jr      $ra
    addu    $v0, $a1, $at



.include "source/Text_0x80046800_USA_Loading2.s"




.globl Function_0x800965ec
Function_0x800965ec: # 0x800965ec
    addiu   $sp, $sp, 0xfff0
    sw      $s0, 0x4($sp)
    or      $v0, $a0, $zero
    sw      $s2, 0xc($sp)
    sw      $s1, 0x8($sp)

    lui     $a0, 0x800e
    lui     $s0, 0x800e
    lui     $a3, 0x801d
    lui     $t0, 0x800e
    lui     $t5, 0xff
    lui     $t4, %hi(FileList_0x800DB228)
    lui     $t3, 0x800e
    lui     $t2, 0x801d
    addiu   $t2, $t2, 0xe4c8
    addiu   $t3, $t3, 0xb2d8
    addiu   $t4, $t4, %lo(FileList_0x800DB228)
    ori     $t5, $t5, 0xffff
    addiu   $t0, $t0, 0xb2b8
    addiu   $a3, $a3, 0xe538
    addiu   $s0, $s0, 0xcb98
    addiu   $a0, $a0, 0xb2b8
    addiu   $s1, $zero, 0xffc0
    addiu   $s2, $zero, 0x1
    addiu   $t1, $zero, 0xffff
branch_0x8009664c:
    bne     $t0, $a0, branch_0x8009666c
    nop
    beq     $a1, $t1, branch_0x80096680
    or      $v1, $a1, $zero
    sll     $t6, $a1, 1
    addu    $t7, $t2, $t6
    b       branch_0x80096680
    sh      $zero, 0x0($t7)
branch_0x8009666c:
    beq     $a2, $t1, branch_0x80096680
    or      $v1, $a2, $zero
    sll     $t8, $a2, 1
    addu    $t9, $t2, $t8
    sh      $s2, 0x0($t9)

branch_0x80096680:
    sw      $v1, 0x0($a3)
    bne     $v1, $t1, branch_0x80096698
    sw      $v0, 0x4($a3)
    sw      $zero, 0x8($t0)
    b       branch_0x800966e0
    sw      $zero, 0xc($t0)
branch_0x80096698:
    sll     $t6, $v1, 4
    addu    $t7, $t4, $t6
    lw      $at, 0x0($t7)
    sll     $t8, $v1, 2
    and     $t6, $v0, $t5
    sw      $at, 0x0($t0)
    lw      $t9, 0x4($t7)
    sw      $t9, 0x4($t0)
    lw      $at, 0x8($t7)
    sw      $at, 0x8($t0)
    lw      $t9, 0xc($t7)
    addu    $t7, $s0, $t8
    sw      $t9, 0xc($t0)
    lw      $t9, 0x0($t7)
    sw      $t6, 0xc($t0)
    addu    $v0, $v0, $t9
    addiu   $t6, $v0, 0x3f
    and     $v0, $t6, $s1
branch_0x800966e0:
    addiu   $t0, $t0, 0x10
    bne     $t0, $t3, branch_0x8009664c
    addiu   $a3, $a3, 0x8

    lw      $s0, 0x4($sp)
    lw      $s1, 0x8($sp)
    lw      $s2, 0xc($sp)
    jr      $ra
    addiu   $sp, $sp, 0x10



.include "source/Text_0x80046800_USA_Loading.s"



/* Input:
a0: cart adr
a1: ram adr
a2: length
*/
.globl Function_0x80097c68_CopyFromCartToRam
Function_0x80097c68_CopyFromCartToRam: # 0x80097c68
    lui     $a3, %hi(Unknown_0x80153e18)
    addiu   $a3, $a3, %lo(Unknown_0x80153e18)
    lw      $t6, Unknown_0x80153e18_8($a3)
    lw      $t7, Unknown_0x80153e18_10($a3)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x24($sp)
    slt     $at, $t6, $t7
    sw      $a0, 0x28($sp) # a0: cart adr
    sw      $a1, 0x2c($sp) # a1: ram adr
    bnez    $at, branch_0x80097ca8
    sw      $a2, 0x30($sp) # a2: length

    lui     $a1, %hi(Unknown_0x801516b4)
    addiu   $a1, $a1, %lo(Unknown_0x801516b4)
    or      $a0, $a3, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1

branch_0x80097ca8:
    lw      $a0, 0x2c($sp) # a1: ram adr
    jal     osInvalDCache
    lw      $a1, 0x30($sp) # a2: length

    jal     osPhysicalToVirtual
    lw      $a0, 0x2c($sp) # a1: ram adr

    lw      $t8, 0x30($sp) # a2: length
    lui     $t9, %hi(Unknown_0x80153e18)
    addiu   $t9, $t9, %lo(Unknown_0x80153e18)
    lui     $a0, %hi(Unknown_0x80154000)
    addiu   $a0, $a0, %lo(Unknown_0x80154000)
    sw      $t9, 0x18($sp)
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    lw      $a3, 0x28($sp) # a0: cart adr
    sw      $v0, 0x10($sp) # ram adr
    jal     osPiStartDma
    sw      $t8, 0x14($sp) # length

    lui     $a0, %hi(Unknown_0x80153e18)
    lui     $a1, %hi(Unknown_0x801516b4)
    addiu   $a1, $a1, %lo(Unknown_0x801516b4)
    addiu   $a0, $a0, %lo(Unknown_0x80153e18)
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


/* Input:
a0: cart address
a1: ram address
a2: size
*/
.globl Function_0x80097d14_CopyFromCartToRamInChuncks
Function_0x80097d14_CopyFromCartToRamInChuncks: # 0x80097d14 Copy from cart in chuncks of size 0x2800
    addiu   $a3, $zero, 0x2800
    divu    $zero, $a2, $a3
    addiu   $sp, $sp, 0xffc8
    sw      $s3, 0x20($sp)
    mflo    $v0
    mfhi    $v1
    sw      $ra, 0x24($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    sw      $a0, 0x38($sp)
    sw      $a1, 0x3c($sp)
    bnez    $a3, branch_0x80097d50
    nop

    break   0x7
branch_0x80097d50:
    or      $s3, $v0, $zero
    beqz    $v1, branch_0x80097d6c
    sw      $v1, 0x2c($sp)

    sltiu   $at, $v1, 0x10
    beqz    $at, branch_0x80097d6c
    addiu   $t6, $zero, 0x10

    sw      $t6, 0x2c($sp)
branch_0x80097d6c:
    blez    $v0, branch_0x80097da0
    or      $s2, $zero, $zero

    blez    $v0, branch_0x80097da0
    lw      $s0, 0x38($sp)

    lw      $s1, 0x3c($sp)
branch_0x80097d80:
    or      $a0, $s0, $zero # cart adr
    or      $a1, $s1, $zero # ram adr
    jal     Function_0x80097c68_CopyFromCartToRam
    addiu   $a2, $zero, 0x2800 # length

    addiu   $s2, $s2, 0x1
    addiu   $s0, $s0, 0x2800
    bne     $s2, $s3, branch_0x80097d80
    addiu   $s1, $s1, 0x2800

branch_0x80097da0:
    lw      $t7, 0x2c($sp)
    sll     $v0, $s2, 2
    addu    $v0, $v0, $s2
    beqz    $t7, branch_0x80097dcc
    sll     $v0, $v0, 11
    lw      $t8, 0x38($sp)
    lw      $t9, 0x3c($sp)
    or      $a2, $t7, $zero # length
    addu    $a0, $t8, $v0 # cart adr
    jal     Function_0x80097c68_CopyFromCartToRam
    addu    $a1, $t9, $v0 # ram adr

branch_0x80097dcc:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38


.globl Function_0x80097de8
Function_0x80097de8: # 0x80097de8
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)
    sw      $a1, 0x1c($sp)
    bnez    $a0, branch_0x80097e04
    or      $a3, $a0, $zero

    b       branch_0x80097e08
    addiu   $v1, $zero, 0x10

branch_0x80097e04:
    addiu   $v1, $zero, 0xf
branch_0x80097e08:
    lw      $t8, 0x1c($sp)
    sll     $a2, $v1, 2 # length
    subu    $a2, $a2, $v1
    sll     $a2, $a2, 2
    multu   $a2, $t8
    sll     $t6, $a3, 2
    lui     $v0, %hi(Unknown_0x800da6a0)
    addu    $v0, $v0, $t6
    lw      $v0, %lo(Unknown_0x800da6a0)($v0)
    lui     $at, 0xff
    ori     $at, $at, 0xffff
    lui     $t1, %hi(ROM_0x1659c0)
    and     $t7, $v0, $at
    addiu   $t1, $t1, %lo(ROM_0x1659c0)
    mflo    $t9
    addu    $t0, $t7, $t9
    lui     $a1, %hi(Unknown_0x801ce718) # ram adr
    addiu   $a1, $a1, %lo(Unknown_0x801ce718)
    jal     Function_0x80097c68_CopyFromCartToRam
    addu    $a0, $t0, $t1 # cart adr

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x80097e68_Empty
Function_0x80097e68_Empty: # 0x80097e68
    jr      $ra
    nop


.globl Function_0x80097e70
Function_0x80097e70: # 0x80097e70
    lui     $v1, 0x8015
    lui     $a3, 0x8015
    or      $a2, $a0, $zero
    addiu   $a3, $a3, 0x402c
    addiu   $v1, $v1, 0x4020
    li      $a1, 0x9600
    lw      $v0, 0x0($v1)
branch_0x80097e8c:
    or      $a0, $zero, $zero
branch_0x80097e90:
    addiu   $a0, $a0, 0x4
    sw      $zero, 0x0($v0)
    sw      $zero, 0x4($v0)
    sw      $zero, 0x8($v0)
    sw      $zero, 0xc($v0)
    bne     $a0, $a1, branch_0x80097e90
    addiu   $v0, $v0, 0x10
    addiu   $v1, $v1, 0x4
    sltu    $at, $v1, $a3
    bnezl   $at, branch_0x80097e8c
    lw      $v0, 0x0($v1)
    lui     $v1, 0x800e
    addiu   $v1, $v1, 0xcc48
    addiu   $a1, $zero, 0x4600
    li      $t0, 0xe600
    addiu   $a3, $zero, 0x80
    sll     $t6, $a1, 1
branch_0x80097ed4:
    addu    $v0, $t6, $a2
    addiu   $v0, $v0, 0xc0
    or      $a0, $zero, $zero
branch_0x80097ee0:
    lhu     $t7, 0x0($v1)
    addiu   $a0, $a0, 0x4
    addiu   $v0, $v0, 0x8
    sh      $t7, -0x8($v0)
    lhu     $t8, 0x2($v1)
    addiu   $v1, $v1, 0x8
    sh      $t8, -0x6($v0)
    lhu     $t9, -0x4($v1)
    sh      $t9, -0x4($v0)
    lhu     $t1, -0x2($v1)
    bne     $a0, $a3, branch_0x80097ee0
    sh      $t1, -0x2($v0)
    addiu   $a1, $a1, 0x140
    bnel    $a1, $t0, branch_0x80097ed4
    sll     $t6, $a1, 1
    jr      $ra
    nop


.globl Function_0x80097f24
Function_0x80097f24: # 0x80097f24
    nop
    nop
    nop


/* Input:
*/
.globl Function_0x80097f30_CopyCodeToRam
Function_0x80097f30_CopyCodeToRam: # 0x80097f30
    addiu   $sp, $sp, -0x18
    lui     $a0, %hi(Code_0x801dad00)
    lui     $t6, %hi(Code_0x801fc600)
    addiu   $a0, $a0, %lo(Code_0x801dad00)
    sw      $ra, 0x14($sp)
    addiu   $t6, $t6, %lo(Code_0x801fc600)
    jal     osInvalICache
    subu    $a1, $t6, $a0

    lui     $a0, %hi(ROM_0xa9330) # cart adr start
    lui     $t7, %hi(ROM_0xa9330_End) # cart adr end
    addiu   $a0, $a0, %lo(ROM_0xa9330)
    addiu   $t7, $t7, %lo(ROM_0xa9330_End)
    subu    $a2, $t7, $a0 # length
    addiu   $a2, $a2, 0xf
    addiu   $at, $zero, 0xfff0
    and     $t8, $a2, $at
    lui     $a1, %hi(Unknown_0x801516cc)
    lw      $a1, %lo(Unknown_0x801516cc)($a1) # ram adr
    jal     Function_0x80097c68_CopyFromCartToRam
    or      $a2, $t8, $zero

    lui     $a0, %hi(Code_0x80227820)
    lui     $t9, %hi(Code_0x80228bd0)
    addiu   $a0, $a0, %lo(Code_0x80227820)
    addiu   $t9, $t9, %lo(Code_0x80228bd0)
    jal     bzero
    subu    $a1, $t9, $a0

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x80097fa8_LoadOverlay
Function_0x80097fa8_LoadOverlay: # 0x80097fa8
    lui     $t6, %hi(MainState_0x800da8a4)
    lw      $t6, %lo(MainState_0x800da8a4)($t6)
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x24($sp)
    addiu   $t7, $t6, -1
    sltiu   $at, $t7, NrOfMainStates-2
    beqz    $at, loadOverlayData
    or      $v0, $zero, $zero
    sll     $t7, $t7, 2
    lui     $at, %hi(SwitchTable_0x800eb080)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800eb080)($at)
    jr      $t7
    nop

getOverlay0DataPtr: # 0x80097fe0
    lui     $t0, %hi(Overlay0_Data)
    addiu   $t0, $t0, %lo(Overlay0_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay1DataPtr: # 0x80097ff4
    lui     $t0, %hi(Overlay1_Data)
    addiu   $t0, $t0, %lo(Overlay1_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay2DataPtr: # 0x80098008
    lui     $t0, %hi(Overlay2_Data)
    addiu   $t0, $t0, %lo(Overlay2_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay3DataPtr: # 0x8009801c
    lui     $t0, %hi(Overlay3_Data)
    addiu   $t0, $t0, %lo(Overlay3_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay4DataPtr: # 0x80098030
    lui     $t0, %hi(Overlay4_Data)
    addiu   $t0, $t0, %lo(Overlay4_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay5DataPtr: # 0x80098044
    lui     $t0, %hi(Overlay5_Data)
    addiu   $t0, $t0, %lo(Overlay5_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay6DataPtr: # 0x80098058
    lui     $t0, %hi(Overlay6_Data)
    addiu   $t0, $t0, %lo(Overlay6_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay7DataPtr: # 0x8009806c
    lui     $t0, %hi(Overlay7_Data)
    addiu   $t0, $t0, %lo(Overlay7_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay8DataPtr: # 0x80098080
    lui     $t0, %hi(Overlay8_Data)
    addiu   $t0, $t0, %lo(Overlay8_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay9DataPtr: # 0x80098094
    lui     $t0, %hi(Overlay9_Data)
    addiu   $t0, $t0, %lo(Overlay9_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay10DataPtr: # 0x800980a8
    lui     $t0, %hi(Overlay10_Data)
    addiu   $t0, $t0, %lo(Overlay10_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay11DataPtr: # 0x800980bc
    lui     $t0, %hi(Overlay11_Data)
    addiu   $t0, $t0, %lo(Overlay11_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay12DataPtr: # 0x800980d0
    lui     $t0, %hi(Overlay12_Data)
    addiu   $t0, $t0, %lo(Overlay12_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay13DataPtr: # 0x800980e4
    lui     $t0, %hi(Overlay13_Data)
    addiu   $t0, $t0, %lo(Overlay13_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay14DataPtr: # 0x800980f8
    lui     $t0, %hi(Overlay14_Data)
    addiu   $t0, $t0, %lo(Overlay14_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay15DataPtr: # 0x8009810c
    lui     $t0, %hi(Overlay15_Data)
    addiu   $t0, $t0, %lo(Overlay15_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay16DataPtr: # 0x80098120
    lui     $t0, %hi(Overlay16_Data)
    addiu   $t0, $t0, %lo(Overlay16_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay17DataPtr: # 0x80098134
    lui     $t0, %hi(Overlay17_Data)
    addiu   $t0, $t0, %lo(Overlay17_Data)
    addiu   $v0, $zero, 0x1
    b       loadOverlayData
    sw      $t0, 0x28($sp)

getOverlay18DataPtr: # 0x80098148
    lui     $t0, %hi(Overlay18_Data)
    addiu   $t0, $t0, %lo(Overlay18_Data)
    addiu   $v0, $zero, 0x1
    sw      $t0, 0x28($sp) # offset_0: cart adr, offset_18_1c: bss

loadOverlayData: # 0x80098158
    addiu   $at, $zero, 0x1
    bne     $v0, $at, branch_0x8009825c
    lw      $t0, 0x28($sp) # offset_0: cart adr, offset_18_1c: bss
    lw      $t8, 0x4($t0) # CodeStart?
    lw      $t9, 0x0($t0) # CodeEnd?
    lui     $a3, %hi(Unknown_0x80153e18)
    addiu   $a3, $a3, %lo(Unknown_0x80153e18)
    lw      $t2, Unknown_0x80153e18_8($a3)
    lw      $t3, Unknown_0x80153e18_10($a3)
    subu    $v1, $t8, $t9
    addiu   $v1, $v1, 0x1
    addiu   $at, $zero, 0xfffe
    and     $t1, $v1, $at
    slt     $at, $t2, $t3
    bnez    $at, branch_0x800981bc
    or      $v1, $t1, $zero

    lui     $a1, %hi(Unknown_0x801516b4)
    addiu   $a1, $a1, %lo(Unknown_0x801516b4)
    or      $a0, $a3, $zero
    addiu   $a2, $zero, 0x1
    sw      $t1, 0x2c($sp) # length
    jal     osRecvMesg
    sw      $t0, 0x28($sp) # offset_0: cart adr, offset_18_1c: bss

    lw      $v1, 0x2c($sp) # length
    lw      $t0, 0x28($sp) # offset_0: cart adr, offset_18_1c: bss
branch_0x800981bc:
    lw      $v0, 0x8($t0)
    lw      $t4, 0xc($t0)
    sw      $t0, 0x28($sp) # offset_0: cart adr, offset_18_1c: bss
    sw      $v1, 0x2c($sp) # length
    or      $a0, $v0, $zero
    jal     osInvalICache
    subu    $a1, $t4, $v0

    lw      $t0, 0x28($sp) # offset_0: cart adr, offset_18_1c: bss
    lw      $v0, 0x10($t0)
    lw      $t5, 0x14($t0)
    or      $a0, $v0, $zero
    jal     osInvalDCache
    subu    $a1, $t5, $v0

    lw      $t0, 0x28($sp) # offset_0: cart adr, offset_18_1c: bss
    lw      $v1, 0x2c($sp) # length
    lui     $t6, %hi(Code_0x802c5800)
    lui     $t7, %hi(Unknown_0x80153e18)
    lw      $a3, 0x0($t0) # cart adr
    addiu   $t7, $t7, %lo(Unknown_0x80153e18)
    ori     $t6, $t6, %lo(Code_0x802c5800)
    lui     $a0, %hi(Unknown_0x80154000)
    addiu   $a0, $a0, %lo(Unknown_0x80154000)
    sw      $t6, 0x10($sp) # ram adr
    sw      $t7, 0x18($sp)
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     osPiStartDma
    sw      $v1, 0x14($sp) # length

    lw      $t0, 0x28($sp)
    lw      $v0, 0x18($t0)
    lw      $t8, 0x1c($t0)
    or      $a0, $v0, $zero
    jal     bzero
    subu    $a1, $t8, $v0

    lui     $a0, %hi(Unknown_0x80153e18)
    lui     $a1, %hi(Unknown_0x801516b4)
    addiu   $a1, $a1, %lo(Unknown_0x801516b4)
    addiu   $a0, $a0, %lo(Unknown_0x80153e18)
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1

branch_0x8009825c:
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop
