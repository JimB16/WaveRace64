

.globl Function_0x80071e10
Function_0x80071e10: # 0x80071e10
    addiu   $sp, $sp, -0xa0
    sw      $s4, 0x18($sp)
    lui     $s4, %hi(Unknown_0x801ce398)
    lw      $s4, %lo(Unknown_0x801ce398)($s4)
    addiu   $at, $zero, 0x15
    sw      $ra, 0x2c($sp)
    sw      $fp, 0x28($sp)
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s5, 0x1c($sp)
    sw      $s3, 0x14($sp)
    sw      $s2, 0x10($sp)
    sw      $s1, 0xc($sp)

    bne     $s4, $at, branch_0x80071eb0_DrawNormalRaceObjects
    sw      $s0, 0x8($sp)

    lui     $t6, %hi(0xd01ad10)
    addiu   $t6, $t6, %lo(0xd01ad10)
    lui     $at, %hi(Unknown_0x801c1a30)
    sw      $t6, %lo(Unknown_0x801c1a30)($at)

    lui     $t7, %hi(0xd019ac8)
    addiu   $t7, $t7, %lo(0xd019ac8)
    lui     $at, %hi(Unknown_0x801c1a34)
    sw      $t7, %lo(Unknown_0x801c1a34)($at)

    lui     $at, %hi(Unknown_0x801c1a38)
    sw      $zero, %lo(Unknown_0x801c1a38)($at)
    lui     $at, %hi(Unknown_0x801c1a3c)
    sw      $zero, %lo(Unknown_0x801c1a3c)($at)

    lui     $at, %hi(Unknown_0x801c1a40)
    lui     $t0, %hi(TrackNr_0x800d7ef0)
    lw      $t0, %lo(TrackNr_0x800d7ef0)($t0)
    sw      $zero, %lo(Unknown_0x801c1a40)($at)
    lui     $at, %hi(Unknown_0x801c1a44)
    lui     $s5, %hi(Unknown_0x800da8a8)
    lui     $ra, %hi(TrackNr_0x800d7ef0)
    addiu   $ra, $ra, %lo(TrackNr_0x800d7ef0)
    lw      $s5, %lo(Unknown_0x800da8a8)($s5)
    sw      $zero, %lo(Unknown_0x801c1a44)($at)
    addiu   $s3, $zero, 0x1
    b       branch_0x80071fd4
    sll     $s0, $t0, 2

branch_0x80071eb0_DrawNormalRaceObjects:
    lui     $s5, %hi(Unknown_0x800da8a8)
    lw      $s5, %lo(Unknown_0x800da8a8)($s5)
    addiu   $s3, $zero, 0x1
    lui     $ra, %hi(TrackNr_0x800d7ef0)
    bne     $s3, $s5, branch_0x80071f54_DrawNoTerrain
    addiu   $ra, $ra, %lo(TrackNr_0x800d7ef0)
    
	lui     $ra, %hi(TrackNr_0x800d7ef0)
    addiu   $ra, $ra, %lo(TrackNr_0x800d7ef0)
    lw      $t0, 0x0($ra)
    lui     $t8, %hi(Unknown_0x800d51f0)
    lui     $t9, %hi(Unknown_0x800d5220)
    sll     $s0, $t0, 2				# TrackNr * 4
    addu    $t8, $t8, $s0
    lw      $t8, %lo(Unknown_0x800d51f0)($t8)
    addu    $t9, $t9, $s0
    lw      $t9, %lo(Unknown_0x800d5220)($t9)
    lui     $at, %hi(Unknown_0x801c1a30)
    lui     $t6, %hi(Unknown_0x800d52b0)
    addu    $t6, $t6, $s0
    sw      $t8, %lo(Unknown_0x801c1a30)($at)
    lw      $t6, %lo(Unknown_0x800d52b0)($t6)
    lui     $at, %hi(Unknown_0x801c1a34)
    lui     $t7, %hi(Unknown_0x800d52e0)
    addu    $t7, $t7, $s0
    sw      $t9, %lo(Unknown_0x801c1a34)($at)
    lw      $t7, %lo(Unknown_0x800d52e0)($t7)
    lui     $at, %hi(Unknown_0x801c1a38)
    lui     $t8, %hi(Unknown_0x800d5370)
    addu    $t8, $t8, $s0
    sw      $t6, %lo(Unknown_0x801c1a38)($at)
    lw      $t8, %lo(Unknown_0x800d5370)($t8)
    lui     $at, %hi(Unknown_0x801c1a3c)
    lui     $t9, %hi(Unknown_0x800d53a0)
    sw      $t7, %lo(Unknown_0x801c1a3c)($at)
    lui     $at, %hi(Unknown_0x801c1a40)
    addu    $t9, $t9, $s0
    lw      $t9, %lo(Unknown_0x800d53a0)($t9)
    sw      $t8, %lo(Unknown_0x801c1a40)($at)
    lui     $at, %hi(Unknown_0x801c1a44)
    b       branch_0x80071fd4
    sw      $t9, %lo(Unknown_0x801c1a44)($at)

branch_0x80071f54_DrawNoTerrain:
    lw      $t0, 0x0($ra)
    lui     $t6, %hi(Unknown_0x800d5250)
    lui     $t7, %hi(Unknown_0x800d5280)
    sll     $s0, $t0, 2
    addu    $t6, $t6, $s0
    lw      $t6, %lo(Unknown_0x800d5250)($t6)
    addu    $t7, $t7, $s0
    lw      $t7, %lo(Unknown_0x800d5280)($t7)
    lui     $at, %hi(Unknown_0x801c1a30)
    lui     $t8, %hi(Unknown_0x800d5310)
    addu    $t8, $t8, $s0
    sw      $t6, %lo(Unknown_0x801c1a30)($at)
    lw      $t8, %lo(Unknown_0x800d5310)($t8)
    lui     $at, %hi(Unknown_0x801c1a34)
    lui     $t9, %hi(Unknown_0x800d5340)
    addu    $t9, $t9, $s0
    sw      $t7, %lo(Unknown_0x801c1a34)($at)
    lw      $t9, %lo(Unknown_0x800d5340)($t9)
    lui     $at, %hi(Unknown_0x801c1a38)
    lui     $t6, %hi(Unknown_0x800d53d0)
    addu    $t6, $t6, $s0
    sw      $t8, %lo(Unknown_0x801c1a38)($at)
    lw      $t6, %lo(Unknown_0x800d53d0)($t6)
    lui     $at, %hi(Unknown_0x801c1a3c)
    lui     $t7, %hi(Unknown_0x800d5400)
    addu    $t7, $t7, $s0
    sw      $t9, %lo(Unknown_0x801c1a3c)($at)
    lw      $t7, %lo(Unknown_0x800d5400)($t7)
    lui     $at, %hi(Unknown_0x801c1a40)
    sw      $t6, %lo(Unknown_0x801c1a40)($at)
    lui     $at, %hi(Unknown_0x801c1a44)
    sw      $t7, %lo(Unknown_0x801c1a44)($at)

branch_0x80071fd4:
    bne     $s3, $s5, branch_0x80072028
    lui     $v0, %hi(Unknown_0x800d67dc)
    lui     $t8, %hi(Unknown_0x800d674c)
    addu    $t8, $t8, $s0
    lw      $t8, %lo(Unknown_0x800d674c)($t8)
    lui     $t9, %hi(Unknown_0x800d677c)
    addu    $t9, $t9, $s0
    lw      $t9, %lo(Unknown_0x800d677c)($t9)
    lui     $at, %hi(Unknown_0x80192298)
    lui     $t6, %hi(Unknown_0x800d67ac)
    sw      $t8, %lo(Unknown_0x80192298)($at)
    lui     $at, %hi(Unknown_0x80192294)
    addu    $t6, $t6, $s0
    lw      $t6, %lo(Unknown_0x800d67ac)($t6)
    lui     $v0, %hi(Unknown_0x800d671c)
    sw      $t9, %lo(Unknown_0x80192294)($at)
    addu    $v0, $v0, $s0
    lui     $at, %hi(Unknown_0x80192290)
    lw      $v0, %lo(Unknown_0x800d671c)($v0)
    b       branch_0x8007206c
    sw      $t6, %lo(Unknown_0x80192290)($at)

branch_0x80072028:
    lui     $t7, %hi(Unknown_0x800d680c)
    addu    $t7, $t7, $s0
    lw      $t7, %lo(Unknown_0x800d680c)($t7)
    lui     $t8, %hi(Unknown_0x800d683c)
    addu    $t8, $t8, $s0
    lw      $t8, %lo(Unknown_0x800d683c)($t8)
    lui     $at, %hi(Unknown_0x80192298)
    lui     $t9, %hi(Unknown_0x800d686c)
    addu    $t9, $t9, $s0
    sw      $t7, %lo(Unknown_0x80192298)($at)
    lw      $t9, %lo(Unknown_0x800d686c)($t9)
    lui     $at, %hi(Unknown_0x80192294)
    sw      $t8, %lo(Unknown_0x80192294)($at)
    addu    $v0, $v0, $s0
    lui     $at, %hi(Unknown_0x80192290)
    lw      $v0, %lo(Unknown_0x800d67dc)($v0)
    sw      $t9, %lo(Unknown_0x80192290)($at)

branch_0x8007206c:
    lw      $t6, 0x0($v0)
    lui     $at, %hi(Unknown_0x80192254)
    lui     $s2, %hi(ListOfWaveData_Unk)
    sw      $t6, %lo(Unknown_0x80192254)($at)
    lw      $t7, 0x4($v0)
    lui     $at, %hi(Unknown_0x80192258)
    lui     $t3, %hi(Unknown_0x801540b0)
    sw      $t7, %lo(Unknown_0x80192258)($at)
    lw      $t8, 0x8($v0)
    lui     $at, %hi(Unknown_0x8019225c)
    lui     $t2, %hi(Unknown_0x801bf7a8)
    sw      $t8, %lo(Unknown_0x8019225c)($at)
    lw      $t9, 0xc($v0)
    lui     $at, %hi(Unknown_0x80192260)
    addu    $s2, $s2, $s0
    sw      $t9, %lo(Unknown_0x80192260)($at)
    lw      $t6, 0x10($v0)
    lui     $at, %hi(Unknown_0x80192264)
    addiu   $t2, $t2, %lo(Unknown_0x801bf7a8)
    sw      $t6, %lo(Unknown_0x80192264)($at)
    lw      $t7, 0x14($v0)
    lui     $at, %hi(Unknown_0x80192268)
    addiu   $t3, $t3, %lo(Unknown_0x801540b0)
    sw      $t7, %lo(Unknown_0x80192268)($at)
    lw      $t8, 0x18($v0)
    lui     $at, %hi(Unknown_0x8019226c)
    addiu   $t4, $zero, 0x24
    sw      $t8, %lo(Unknown_0x8019226c)($at)
    lw      $t9, 0x1c($v0)
    lui     $at, %hi(Unknown_0x80192270)
    sw      $t9, %lo(Unknown_0x80192270)($at)
    lw      $t6, 0x20($v0)
    lui     $at, %hi(Unknown_0x80192274)
    sw      $t6, %lo(Unknown_0x80192274)($at)
    lw      $t7, 0x24($v0)
    lui     $at, %hi(Unknown_0x80192278)
    sw      $t7, %lo(Unknown_0x80192278)($at)
    lw      $t8, 0x28($v0)
    lui     $at, %hi(Unknown_0x8019227c)
    sw      $t8, %lo(Unknown_0x8019227c)($at)
    lw      $t9, 0x2c($v0)
    lui     $at, %hi(Unknown_0x80192280)
    sw      $t9, %lo(Unknown_0x80192280)($at)
    lw      $t6, 0x30($v0)
    lui     $at, %hi(Unknown_0x80192284)
    lui     $t9, %hi(Unknown_0x800d698c)
    sw      $t6, %lo(Unknown_0x80192284)($at)
    lw      $t7, 0x34($v0)
    lui     $at, %hi(Unknown_0x80192288)
    addu    $t9, $t9, $s0
    sw      $t7, %lo(Unknown_0x80192288)($at)
    lwc1    $f4, 0x38($v0)
    lui     $at, %hi(Unknown_0x8019228c)
    lui     $t6, %hi(Unknown_0x800d69bc)
    swc1    $f4, %lo(Unknown_0x8019228c)($at)
    lw      $t8, 0x3c($v0)
    lui     $at, %hi(Unknown_0x80192250)
    bne     $s3, $s5, branch_0x800721a8
    sw      $t8, %lo(Unknown_0x80192250)($at)

    lui     $t9, %hi(Unknown_0x800d68cc)
    addu    $t9, $t9, $s0
    lui     $t6, %hi(Unknown_0x800d68fc)
    lw      $t9, %lo(Unknown_0x800d68cc)($t9)
    addu    $t6, $t6, $s0
    lw      $t6, %lo(Unknown_0x800d68fc)($t6)
    lui     $at, %hi(Unknown_0x801c38e4)
    lui     $t8, %hi(Unknown_0x800d692c)
    sw      $t9, %lo(Unknown_0x801c38e4)($at)
    lui     $at, %hi(Unknown_0x801c38e0)
    addu    $t8, $t8, $s0
    addiu   $t7, $t6, -2
    lw      $t8, %lo(Unknown_0x800d692c)($t8)
    lui     $v0, %hi(Unknown_0x800d689c)
    sw      $t7, %lo(Unknown_0x801c38e0)($at)
    addu    $v0, $v0, $s0
    lui     $at, %hi(Unknown_0x801c38dc)
    lw      $v0, %lo(Unknown_0x800d689c)($v0)
    b       branch_0x800721e8
    sw      $t8, %lo(Unknown_0x801c38dc)($at)

branch_0x800721a8:
    lw      $t9, %lo(Unknown_0x800d698c)($t9)
    addu    $t6, $t6, $s0
    lw      $t6, %lo(Unknown_0x800d69bc)($t6)
    lui     $at, %hi(Unknown_0x801c38e4)
    lui     $t8, %hi(Unknown_0x800d69ec)
    addu    $t8, $t8, $s0
    sw      $t9, %lo(Unknown_0x801c38e4)($at)
    lw      $t8, %lo(Unknown_0x800d69ec)($t8)
    lui     $at, %hi(Unknown_0x801c38e0)
    addiu   $t7, $t6, -2
    lui     $v0, %hi(Unknown_0x800d695c)
    sw      $t7, %lo(Unknown_0x801c38e0)($at)
    addu    $v0, $v0, $s0
    lui     $at, %hi(Unknown_0x801c38dc)
    lw      $v0, %lo(Unknown_0x800d695c)($v0)
    sw      $t8, %lo(Unknown_0x801c38dc)($at)

branch_0x800721e8:
    lui     $at, %hi(Unknown_0x800d5614)
    addu    $at, $at, $s0
    lwc1    $f6, %lo(Unknown_0x800d5614)($at)
    lui     $at, %hi(Unknown_0x800d93b0)
    lui     $a3, %hi(Unknown_0x801bf8c8)
    swc1    $f6, %lo(Unknown_0x800d93b0)($at)
    lw      $t9, 0x0($v0)
    lui     $at, %hi(Unknown_0x801c38a4)
    lui     $s1, %hi(Unknown_0x801bfad0)
    sw      $t9, %lo(Unknown_0x801c38a4)($at)
    lw      $t6, 0x8($v0)
    lui     $at, %hi(Unknown_0x801c38a8)
    addiu   $s1, $s1, %lo(Unknown_0x801bfad0)
    sw      $t6, %lo(Unknown_0x801c38a8)($at)
    lw      $t7, 0x10($v0)
    lui     $at, %hi(Unknown_0x801c38ac)
    addiu   $a3, $a3, %lo(Unknown_0x801bf8c8)
    sw      $t7, %lo(Unknown_0x801c38ac)($at)
    lw      $t8, 0x4($v0)
    lui     $at, %hi(Unknown_0x801c38b0)
    lui     $s6, %hi(Unknown_0x801bae90)
    sw      $t8, %lo(Unknown_0x801c38b0)($at)
    lw      $t9, 0xc($v0)
    lui     $at, %hi(Unknown_0x801c38b4)
    lui     $s7, %hi(Unknown_0x801bae8c)
    sw      $t9, %lo(Unknown_0x801c38b4)($at)
    lw      $t6, 0x14($v0)
    lui     $at, %hi(Unknown_0x801c38b8)
    or      $t1, $zero, $zero
    sw      $t6, %lo(Unknown_0x801c38b8)($at)
    lw      $t7, 0x18($v0)
    lui     $at, %hi(Unknown_0x801c38bc)
    addiu   $s7, $s7, %lo(Unknown_0x801bae8c)
    sw      $t7, %lo(Unknown_0x801c38bc)($at)
    lw      $t8, 0x20($v0)
    lui     $at, %hi(Unknown_0x801c38c0)
    addiu   $s6, $s6, %lo(Unknown_0x801bae90)
    sw      $t8, %lo(Unknown_0x801c38c0)($at)
    lw      $t9, 0x1c($v0)
    lui     $at, %hi(Unknown_0x801c38c4)
    sw      $t9, %lo(Unknown_0x801c38c4)($at)
    lw      $t6, 0x24($v0)
    lui     $at, %hi(Unknown_0x801c38c8)
    sw      $t6, %lo(Unknown_0x801c38c8)($at)
    lw      $t7, 0x28($v0)
    lui     $at, %hi(Unknown_0x801c38cc)
    sw      $t7, %lo(Unknown_0x801c38cc)($at)
    lw      $t8, 0x30($v0)
    lui     $at, %hi(Unknown_0x801c38d0)
    sw      $t8, %lo(Unknown_0x801c38d0)($at)
    lw      $t9, 0x2c($v0)
    lui     $at, %hi(Unknown_0x801c38d4)
    lui     $t8, %hi(Unknown_0x801ce380)
    sw      $t9, %lo(Unknown_0x801c38d4)($at)
    lw      $t6, 0x34($v0)
    lui     $at, %hi(Unknown_0x801c38d8)
    sw      $t6, %lo(Unknown_0x801c38d8)($at)
    lh      $t7, 0x38($v0)
    lui     $at, %hi(Unknown_0x801c38a0)
    lui     $v0, %hi(Unknown_0x800d667c)
    sh      $t7, %lo(Unknown_0x801c38a0)($at)
    addiu   $at, $zero, 0x8
    sw      $zero, 0x0($a3)
    bne     $s4, $at, branch_0x800722fc
    sw      $zero, 0x0($s1)

    addu    $v0, $v0, $s0
    lw      $v0, %lo(Unknown_0x800d667c)($v0)
    b       branch_0x8007233c
    lw      $s2, %lo(ListOfWaveData_Unk)($s2)

branch_0x800722fc:
    lw      $t8, %lo(Unknown_0x801ce380)($t8)
    addiu   $at, $zero, 0xb
    lui     $v0, %hi(Unknown_0x800d662c)
    bne     $t8, $at, branch_0x8007232c
    addu    $v0, $v0, $s0

    lui     $v0, %hi(Unknown_0x800d66cc)
    lui     $s2, %hi(ListOfWaveData_NotNormalMode)
    addu    $v0, $v0, $s0
    addu    $s2, $s2, $s0
    lw      $v0, %lo(Unknown_0x800d66cc)($v0)
    b       branch_0x8007233c
    lw      $s2, %lo(ListOfWaveData_NotNormalMode)($s2)

branch_0x8007232c:
    lui     $s2, %hi(ListOfWaveData_NormalMode)
    addu    $s2, $s2, $s0
    lw      $v0, %lo(Unknown_0x800d662c)($v0)
    lw      $s2, %lo(ListOfWaveData_NormalMode)($s2)

branch_0x8007233c:
    lh      $t9, 0x4($v0)
    addiu   $t5, $zero, 0xffff
    or      $a1, $v0, $zero
    beq     $t5, $t9, branch_0x80072458
    lui     $at, %hi(0x45800000)

    mtc1    $at, $t4
    lui     $at, %hi(0x43b40000)
    mtc1    $at, $v0
    lui     $at, %hi(0x42800000)
    mtc1    $at, $zero
    lw      $a2, 0x0($a3)
branch_0x80072368:
    multu   $a2, $t4
    lh      $t7, 0x0($a1)
    mtc1    $t7, $t0
    nop
    cvt.s.w $f10, $f8
    mflo    $t6
    addu    $a0, $t2, $t6
    swc1    $f10, 0x0($4)
    lh      $t8, 0x2($a1)
    mtc1    $t8, $s0
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x4($4)
    lh      $v1, 0x4($a1)
    mtc1    $v1, $a0
    nop
    cvt.s.w $f6, $f4
    div.s   $f8, $f6, $f2
    mul.s   $f10, $f8, $f12
    trunc.w.s   $f16, $f10
    mfc1    $v0, $s0
    nop
    andi    $t6, $v0, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $t3, $t7
    addiu   $t9, $v0, 0x400
    lwc1    $f18, 0x0($t8)
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $t3, $t7
    mul.s   $f4, $f18, $f0
    lwc1    $f6, 0x0($t8)
    mul.s   $f8, $f6, $f0
    swc1    $f4, 0x8($4)
    swc1    $f8, 0xc($4)
    lh      $t9, 0x6($a1)
    bgez    $t9, branch_0x80072408
    sra     $t6, $t9, 6

    addiu   $at, $t9, 0x3f
    sra     $t6, $at, 6
branch_0x80072408:
    sw      $t6, 0x1c($a0)
    lh      $t7, 0x8($a1)
    addiu   $t6, $a2, 0x1
    slti    $at, $t6, 0x8
    mtc1    $t7, $t2
    or      $a2, $t6, $zero
    cvt.s.w $f16, $f10
    swc1    $f16, 0x10($4)
    lh      $t8, 0xa($a1)
    sw      $t8, 0x14($a0)
    lh      $t9, 0xc($a1)
    sw      $t6, 0x0($a3)
    bnez    $at, branch_0x80072448
    sw      $t9, 0x18($a0)

    b       branch_0x8007245c
    lui     $at, %hi(FLOAT_64)

branch_0x80072448:
    lh      $t7, 0x12($a1)
    addiu   $a1, $a1, 0xe
    bne     $t5, $t7, branch_0x80072368
    nop

branch_0x80072458:
    lui     $at, %hi(FLOAT_64)
branch_0x8007245c:
    mtc1    $at, $zero
    lui     $at, %hi(FLOAT_360)
    lh      $t9, WaveDataStruct_4($s2)
    mtc1    $at, $v0
    lui     $a3, %hi(Unknown_0x801cb098)
    lw      $a3, %lo(Unknown_0x801cb098)($a3)
    lui     $at, %hi(FLOAT_4096)
    mtc1    $at, $t4
    lui     $t3, %hi(Unknown_0x801540b0)
    addiu   $t8, $zero, 0x1
    addiu   $t3, $t3, %lo(Unknown_0x801540b0)
    beq     $t5, $t9, branch_0x80072634
    sllv    $t2, $t8, $a3

    lui     $a2, %hi(Unknown_0x801bf8d0)
    addiu   $a2, $a2, %lo(Unknown_0x801bf8d0)
    or      $a1, $s2, $zero
    lh      $v0, WaveDataStruct_18($a1)
branch_0x800724a0:
    lui     $t7, %hi(Unknown_0x800da8e8)
    and     $t6, $v0, $t2
    bnezl   $t6, branch_0x80072628
    lh      $t7, WaveDataStruct_1e($a1)
    lh      $t7, %lo(Unknown_0x800da8e8)($t7)
    lui     $t8, %hi(Unknown_0x800d7fd0)
    andi    $t9, $v0, 0x8
    bnez    $t7, branch_0x800724d0
    nop
    lw      $t8, %lo(Unknown_0x800d7fd0)($t8)
    beqzl   $t8, branch_0x800724dc
    lh      $t7, WaveDataStruct_0($a1)
branch_0x800724d0:
    bnezl   $t9, branch_0x80072628
    lh      $t7, WaveDataStruct_1e($a1)
    lh      $t7, WaveDataStruct_0($a1)
branch_0x800724dc:
    sll     $t6, $t1, 6
    addu    $a0, $a2, $t6
    mtc1    $t7, $s2
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0($a0)
    lh      $t8, WaveDataStruct_2($a1)
    mtc1    $t8, $a2
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x4($a0)
    lh      $v1, WaveDataStruct_4($a1)
    mtc1    $v1, $t2
    nop
    cvt.s.w $f16, $f10
    div.s   $f18, $f16, $f2
    mul.s   $f4, $f18, $f12
    trunc.w.s   $f6, $f4
    mfc1    $v0, $a2
    nop
    andi    $t6, $v0, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $t3, $t7
    addiu   $t9, $v0, 0x400
    lwc1    $f8, 0x0($t8)
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $t3, $t7
    mul.s   $f10, $f8, $f0
    lwc1    $f16, 0x0($t8)
    mul.s   $f18, $f16, $f0
    swc1    $f10, 0x10($a0)
    swc1    $f18, 0x14($a0)
    lh      $v1, WaveDataStruct_6($a1)
    mtc1    $v1, $a0
    nop
    cvt.s.w $f6, $f4
    div.s   $f8, $f6, $f2
    mul.s   $f10, $f8, $f12
    trunc.w.s   $f16, $f10
    mfc1    $v0, $s0
    nop
    andi    $t6, $v0, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $t3, $t7
    addiu   $t9, $v0, 0x400
    lwc1    $f18, 0x0($t8)
    andi    $t6, $t9, 0xfff
    sll     $t7, $t6, 2
    addu    $t8, $t3, $t7
    mul.s   $f4, $f18, $f0
    lwc1    $f6, 0x0($t8)
    mul.s   $f8, $f6, $f0
    swc1    $f4, 0x8($a0)
    swc1    $f8, 0xc($a0)
    lh      $t9, WaveDataStruct_8($a1)
    mtc1    $t9, $t2
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x18($a0)
    lh      $t6, WaveDataStruct_a($a1)
    sw      $t6, 0x1c($a0)
    lh      $t7, WaveDataStruct_c($a1)
    sw      $t7, 0x20($a0)
    lh      $t8, WaveDataStruct_e($a1)
    sw      $t8, 0x24($a0)
    lh      $t9, WaveDataStruct_10($a1)
    sw      $t9, 0x2c($a0)
    lh      $t6, WaveDataStruct_12($a1)
    sw      $t6, 0x30($a0)
    lh      $t7, WaveDataStruct_14($a1)
    addiu   $t6, $t1, 0x1
    slti    $at, $t6, 0x8
    sw      $t7, 0x34($a0)
    lh      $t8, WaveDataStruct_16($a1)
    sw      $zero, 0x28($a0)
    or      $t1, $t6, $zero
    sw      $t8, 0x38($a0)
    lh      $t9, WaveDataStruct_18($a1)
    sw      $t6, 0x0($s1)
    beqz    $at, branch_0x80072634
    sh      $t9, 0x3c($a0)

    lh      $t7, WaveDataStruct_1e($a1)
branch_0x80072628:
    addiu   $a1, $a1, WaveDataStruct_1a
    bnel    $t5, $t7, branch_0x800724a0
    lh      $v0, WaveDataStruct_18($a1)

branch_0x80072634:
    lui     $t8, %hi(Unknown_0x800d5c54)
    addu    $t8, $t8, $s0
    lw      $t8, %lo(Unknown_0x800d5c54)($t8)
    lui     $t9, %hi(Unknown_0x800d5f34)
    addu    $t9, $t9, $s0
    lw      $t9, %lo(Unknown_0x800d5f34)($t9)
    lui     $at, %hi(Unknown_0x801c1ce0)
    lui     $t6, %hi(Unknown_0x800d5ff4)
    lui     $t7, %hi(Unknown_0x800d7fc0)
    sw      $t8, %lo(Unknown_0x801c1ce0)($at)
    lw      $t7, %lo(Unknown_0x800d7fc0)($t7)
    lui     $at, %hi(Unknown_0x801c1ce4)
    addu    $t6, $t6, $s0
    lw      $t6, %lo(Unknown_0x800d5ff4)($t6)
    sw      $t9, %lo(Unknown_0x801c1ce4)($at)
    lui     $at, %hi(Unknown_0x801c1ce8)
    bnez    $t7, branch_0x8007355c
    sw      $t6, %lo(Unknown_0x801c1ce8)($at)

    lui     $a2, %hi(Unknown_0x801bf7a0)
    lui     $t1, %hi(Unknown_0x801bc698)
    lui     $t2, %hi(Unknown_0x801bae88)
    lui     $t4, %hi(Unknown_0x801bae84)
    addiu   $t4, $t4, %lo(Unknown_0x801bae84)
    addiu   $t2, $t2, %lo(Unknown_0x801bae88)
    addiu   $t1, $t1, %lo(Unknown_0x801bc698)
    addiu   $a2, $a2, %lo(Unknown_0x801bf7a0)
    sw      $zero, 0x0($a2)
    sw      $zero, 0x0($t1)
    sw      $zero, 0x0($t2)
    sw      $zero, 0x0($t4)
    lui     $at, %hi(Unknown_0x801bae80)
    sw      $zero, %lo(Unknown_0x801bae80)($at)
    sw      $zero, 0x0($s7)
    sw      $zero, 0x0($s6)
    lui     $at, %hi(Unknown_0x801bae94)
    sw      $zero, %lo(Unknown_0x801bae94)($at)
    addiu   $at, $zero, 0x15
    beq     $s4, $at, branch_0x8007355c
    lui     $v1, %hi(Unknown_0x801ce380)

    lw      $v1, %lo(Unknown_0x801ce380)($v1)
    or      $a1, $zero, $zero
    or      $t2, $zero, $zero
    bne     $s3, $v1, branch_0x80072720
    addiu   $fp, $zero, 0x5

    lui     $t9, %hi(Unknown_0x800d6054)
    addu    $t9, $t9, $s0
    lw      $t9, %lo(Unknown_0x800d6054)($t9)
    mtc1    $zero, $t6
    lui     $s1, %hi(Unknown_0x801c1d1c)
    lw      $t6, 0x0($t9)
    addiu   $s1, $s1, %lo(Unknown_0x801c1d1c)
    lui     $a0, %hi(Unknown_0x801c1cf0)
    swc1    $f14, 0x0($17)
    lwc1    $f18, 0x0($s1)
    addiu   $a0, $a0, %lo(Unknown_0x801c1cf0)
    lui     $at, %hi(Unknown_0x801c1d18)
    sw      $t6, 0x0($a0)
    b       branch_0x80072780
    swc1    $f18, %lo(Unknown_0x801c1d18)($at)

branch_0x80072720:
    lui     $t7, %hi(Unknown_0x800d6024)
    addu    $t7, $t7, $s0
    lw      $t7, %lo(Unknown_0x800d6024)($t7)
    lui     $a0, %hi(Unknown_0x801c1cf0)
    addiu   $a0, $a0, %lo(Unknown_0x801c1cf0)
    lw      $t8, 0x0($t7)
    lui     $v0, %hi(Unknown_0x800d6084)
    addu    $v0, $v0, $s0
    sw      $t8, 0x0($a0)
    lw      $v0, %lo(Unknown_0x800d6084)($v0)
    lui     $at, %hi(Unknown_0x801c1d18)
    lui     $s1, %hi(Unknown_0x801c1d1c)
    lh      $t9, 0x0($v0)
    addiu   $s1, $s1, %lo(Unknown_0x801c1d1c)
    mtc1    $zero, $t6
    mtc1    $t9, $a0
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, %lo(Unknown_0x801c1d18)($at)
    lh      $t6, 0x2($v0)
    mtc1    $t6, $t0
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0($17)
branch_0x80072780:
    addiu   $v0, $zero, 0x8
    beq     $v0, $s4, branch_0x800727b8
    addiu   $s2, $zero, 0x1b

    lui     $t7, %hi(Unknown_0x800da8e8)
    lh      $t7, %lo(Unknown_0x800da8e8)($t7)
    lui     $t8, %hi(Unknown_0x800d7fd0)
    bnezl   $t7, branch_0x800727b0
    lw      $t9, 0x0($a0)
    lw      $t8, %lo(Unknown_0x800d7fd0)($t8)
    beqz    $t8, branch_0x800727b8
    nop

    lw      $t9, 0x0($a0)
branch_0x800727b0:
    xori    $t6, $t9, 0x1
    sw      $t6, 0x0($a0)
branch_0x800727b8:
    beq     $v0, $s4, branch_0x800727d0
    addiu   $s1, $zero, 0x1a

    lui     $t7, %hi(Unknown_0x800d7fc8)
    lw      $t7, %lo(Unknown_0x800d7fc8)($t7)
    addiu   $at, $zero, 0xb
    beqz    $t7, branch_0x80072810
branch_0x800727d0:
    lui     $v0, %hi(Unknown_0x800d6294)
    addu    $v0, $v0, $s0
    lw      $v0, %lo(Unknown_0x800d6294)($v0)
    lui     $t8, %hi(Unknown_0x800d64c4)
    lui     $t9, %hi(Unknown_0x800d6424)
    addu    $t8, $t8, $s0
    addu    $t9, $t9, $s0
    lw      $t8, %lo(Unknown_0x800d64c4)($t8)
    lw      $t9, %lo(Unknown_0x800d6424)($t9)
    addiu   $s4, $zero, 0x2
    sw      $v0, 0x6c($sp)
    sw      $v0, 0x68($sp)
    sw      $v0, 0x64($sp)
    sw      $t8, 0x54($sp)
    b       branch_0x80072ab4
    sw      $t9, 0x5c($sp)

branch_0x80072810:
    beq     $v1, $at, branch_0x80072828
    lui     $t6, %hi(Unknown_0x800d7fcc)

    lw      $t6, %lo(Unknown_0x800d7fcc)($t6)
    lui     $t7, %hi(Unknown_0x800da8e8)
    beqz    $t6, branch_0x80072878
    nop

branch_0x80072828:
    lui     $t7, %hi(Unknown_0x800d62bc)
    lui     $t8, %hi(Unknown_0x800d64ec)
    lui     $t9, %hi(Unknown_0x800d644c)
    lui     $t6, %hi(Unknown_0x800d6604)
    addu    $t7, $t7, $s0
    addu    $t8, $t8, $s0
    addu    $t9, $t9, $s0
    addu    $t6, $t6, $s0
    lw      $t7, %lo(Unknown_0x800d62bc)($t7)
    lw      $t8, %lo(Unknown_0x800d64ec)($t8)
    lw      $t9, %lo(Unknown_0x800d644c)($t9)
    lw      $t6, %lo(Unknown_0x800d6604)($t6)
    sw      $zero, 0x68($sp)
    sw      $zero, 0x64($sp)
    addiu   $s4, $zero, 0x2
    sw      $t7, 0x6c($sp)
    sw      $t8, 0x54($sp)
    sw      $t9, 0x5c($sp)
    b       branch_0x80072ab4
    sw      $t6, 0x58($sp)

branch_0x80072878:
    lh      $t7, %lo(Unknown_0x800da8e8)($t7)
    lui     $t8, %hi(Unknown_0x800d7fd0)
    bnez    $t7, branch_0x80072898
    nop

    lw      $t8, %lo(Unknown_0x800d7fd0)($t8)
    addiu   $s4, $zero, 0x2
    beqz    $t8, branch_0x8007294c
    nop

branch_0x80072898:
    bne     $s3, $s5, branch_0x800728f8
    lui     $t6, %hi(Unknown_0x800d635c)

    lui     $t9, %hi(Unknown_0x800d62e4)
    addu    $t9, $t9, $s0
    lw      $t9, %lo(Unknown_0x800d62e4)($t9)
    lui     $t6, %hi(Unknown_0x800d630c)
    lui     $t7, %hi(Unknown_0x800d6334)
    sw      $t9, 0x6c($sp)
    lui     $t8, %hi(Unknown_0x800d6474)
    lui     $t9, %hi(Unknown_0x800d63d4)
    addu    $t6, $t6, $s0
    addu    $t7, $t7, $s0
    addu    $t8, $t8, $s0
    addu    $t9, $t9, $s0
    lw      $t6, %lo(Unknown_0x800d630c)($t6)
    lw      $t7, %lo(Unknown_0x800d6334)($t7)
    lw      $t8, %lo(Unknown_0x800d6474)($t8)
    lw      $t9, %lo(Unknown_0x800d63d4)($t9)
    addiu   $s4, $zero, 0x2
    sw      $t6, 0x68($sp)
    sw      $t7, 0x64($sp)
    sw      $t8, 0x54($sp)
    b       branch_0x80072ab4
    sw      $t9, 0x5c($sp)

branch_0x800728f8:
    addu    $t6, $t6, $s0
    lw      $t6, %lo(Unknown_0x800d635c)($t6)
    lui     $t7, %hi(Unknown_0x800d6384)
    lui     $t8, %hi(Unknown_0x800d63ac)
    sw      $t6, 0x6c($sp)
    lui     $t9, %hi(Unknown_0x800d649c)
    lui     $t6, %hi(Unknown_0x800d63fc)
    addu    $t7, $t7, $s0
    addu    $t8, $t8, $s0
    addu    $t9, $t9, $s0
    addu    $t6, $t6, $s0
    lw      $t7, %lo(Unknown_0x800d6384)($t7)
    lw      $t8, %lo(Unknown_0x800d63ac)($t8)
    lw      $t9, %lo(Unknown_0x800d649c)($t9)
    lw      $t6, %lo(Unknown_0x800d63fc)($t6)
    sw      $t7, 0x68($sp)
    sw      $t8, 0x64($sp)
    sw      $t9, 0x54($sp)
    sw      $t6, 0x5c($sp)
    b       branch_0x80072ab4
    addiu   $s4, $zero, 0x2

branch_0x8007294c:
    bne     $s4, $s5, branch_0x800729d8
    lui     $t9, %hi(Unknown_0x800d7fd4)

    bnez    $a3, branch_0x80072970
    lui     $t6, %hi(Unknown_0x800d649c)

    lui     $t7, %hi(Unknown_0x800d621c)
    addu    $t7, $t7, $s0
    lw      $t7, %lo(Unknown_0x800d621c)($t7)
    b       branch_0x80072998
    sw      $t7, 0x6c($sp)

branch_0x80072970:
    bne     $s3, $a3, branch_0x8007298c
    lui     $t9, %hi(Unknown_0x800d626c)

    lui     $t8, %hi(Unknown_0x800d6244)
    addu    $t8, $t8, $s0
    lw      $t8, %lo(Unknown_0x800d6244)($t8)
    b       branch_0x80072998
    sw      $t8, 0x6c($sp)

branch_0x8007298c:
    addu    $t9, $t9, $s0
    lw      $t9, %lo(Unknown_0x800d626c)($t9)
    sw      $t9, 0x6c($sp)
branch_0x80072998:
    lui     $t7, %hi(Unknown_0x800d63fc)
    addu    $t6, $t6, $s0
    addu    $t7, $t7, $s0
    lw      $t6, %lo(Unknown_0x800d649c)($t6)
    lw      $t7, %lo(Unknown_0x800d63fc)($t7)
    addiu   $at, $zero, 0x9
    sw      $t6, 0x54($sp)
    bne     $t0, $at, branch_0x800729cc
    sw      $t7, 0x5c($sp)

    lui     $t8, %hi(Unknown_0x800d5480)
    addiu   $t8, $t8, %lo(Unknown_0x800d5480)
    b       branch_0x800729d0
    sw      $t8, 0x68($sp)

branch_0x800729cc:
    sw      $zero, 0x68($sp)
branch_0x800729d0:
    b       branch_0x80072ab4
    sw      $zero, 0x64($sp)

branch_0x800729d8:
    lw      $t9, %lo(Unknown_0x800d7fd4)($t9)
    lui     $t6, %hi(RawObjectDataNormal_0x800d60b4)
    lui     $v0, %hi(Unknown_0x800d7fd8)
    bnez    $t9, branch_0x800729f4
    addu    $t6, $t6, $s0

    b       branch_0x800729f8
    or      $v0, $a3, $zero

branch_0x800729f4:
    lw      $v0, %lo(Unknown_0x800d7fd8)($v0)
branch_0x800729f8:
    beqz    $v0, branch_0x80072a04
    lui     $t7, %hi(Unknown_0x800d60dc)

    bnez    $t0, branch_0x80072a2c
branch_0x80072a04:
    lui     $t8, %hi(Unknown_0x800d6104)

    addu    $t7, $t7, $s0
    addu    $t8, $t8, $s0
    lw      $t6, %lo(RawObjectDataNormal_0x800d60b4)($t6)
    lw      $t7, %lo(Unknown_0x800d60dc)($t7)
    lw      $t8, %lo(Unknown_0x800d6104)($t8)
    sw      $t6, 0x6c($sp)				# Pointer to raw object data
    sw      $t7, 0x68($sp)				# Pointer to raw object data
    b       branch_0x80072a94
    sw      $t8, 0x64($sp)

branch_0x80072a2c:
    bne     $v0, $s3, branch_0x80072a68
    lui     $t8, %hi(Unknown_0x800d61a4)
    lui     $t9, %hi(Unknown_0x800d612c)
    lui     $t6, %hi(Unknown_0x800d6154)
    lui     $t7, %hi(Unknown_0x800d617c)
    addu    $t9, $t9, $s0
    addu    $t6, $t6, $s0
    addu    $t7, $t7, $s0
    lw      $t9, %lo(Unknown_0x800d612c)($t9)
    lw      $t6, %lo(Unknown_0x800d6154)($t6)
    lw      $t7, %lo(Unknown_0x800d617c)($t7)
    sw      $t9, 0x6c($sp)				# Pointer to raw object data
    sw      $t6, 0x68($sp)				# Pointer to raw object data
    b       branch_0x80072a94
    sw      $t7, 0x64($sp)

branch_0x80072a68:
    lui     $t9, %hi(Unknown_0x800d61cc)
    lui     $t6, %hi(Unknown_0x800d61f4)
    addu    $t8, $t8, $s0
    addu    $t9, $t9, $s0
    addu    $t6, $t6, $s0
    lw      $t8, %lo(Unknown_0x800d61a4)($t8)
    lw      $t9, %lo(Unknown_0x800d61cc)($t9)
    lw      $t6, %lo(Unknown_0x800d61f4)($t6)
    sw      $t8, 0x6c($sp)				# Pointer to raw object data
    sw      $t9, 0x68($sp)				# Pointer to raw object data
    sw      $t6, 0x64($sp)

branch_0x80072a94:
    lui     $t7, %hi(Unknown_0x800d6474)
    lui     $t8, %hi(Unknown_0x800d63d4)
    addu    $t7, $t7, $s0
    addu    $t8, $t8, $s0
    lw      $t7, %lo(Unknown_0x800d6474)($t7)
    lw      $t8, %lo(Unknown_0x800d63d4)($t8)
    sw      $t7, 0x54($sp)
    sw      $t8, 0x5c($sp)
branch_0x80072ab4:
    bne     $s4, $s5, branch_0x80072af0
    addiu   $t4, $zero, 0x5

    lui     $t9, %hi(Unknown_0x800d653c)
    lui     $t6, %hi(Unknown_0x800d65dc)
    lui     $t7, %hi(Unknown_0x800d658c)
    addu    $t9, $t9, $s0
    addu    $t6, $t6, $s0
    addu    $t7, $t7, $s0
    lw      $t9, %lo(Unknown_0x800d653c)($t9)
    lw      $t6, %lo(Unknown_0x800d65dc)($t6)
    lw      $t7, %lo(Unknown_0x800d658c)($t7)
    sw      $t9, 0x50($sp)
    sw      $t6, 0x48($sp)
    b       branch_0x80072b20
    sw      $t7, 0x4c($sp)

branch_0x80072af0:
    lui     $t8, %hi(Unknown_0x800d6514)
    lui     $t9, %hi(Unknown_0x800d65b4)
    lui     $t6, %hi(Unknown_0x800d6564)
    addu    $t8, $t8, $s0
    addu    $t9, $t9, $s0
    addu    $t6, $t6, $s0
    lw      $t8, %lo(Unknown_0x800d6514)($t8)
    lw      $t9, %lo(Unknown_0x800d65b4)($t9)
    lw      $t6, %lo(Unknown_0x800d6564)($t6)
    sw      $t8, 0x50($sp)
    sw      $t9, 0x48($sp)
    sw      $t6, 0x4c($sp)

branch_0x80072b20:
    addiu   $s5, $zero, 0x3
    addiu   $s0, $zero, 0x1b
    addiu   $t1, $zero, 0x4
branch_0x80072b2c:
    beqz    $t2, branch_0x80072b4c # t2 == 0
    lui     $t7, %hi(Unknown_0x801aeb80_ObjsStruct)

    beq     $t2, $s3, branch_0x80072b60 # t2 == 1
    lui     $t9, %hi(Unknown_0x801b2c80)

    beq     $t2, $s4, branch_0x80072b74 # t2 == 2
    lui     $t7, %hi(Unknown_0x801b6d80)

    b       branch_0x80072b88
    lw      $t9, 0x60($sp)

branch_0x80072b4c:
    lw      $t8, 0x6c($sp)
    addiu   $t7, $t7, %lo(Unknown_0x801aeb80_ObjsStruct)
    sw      $t7, 0x30($sp)
    b       branch_0x80072b84
    sw      $t8, 0x60($sp)

branch_0x80072b60:
    lw      $t6, 0x68($sp)
    addiu   $t9, $t9, %lo(Unknown_0x801b2c80)
    sw      $t9, 0x30($sp)
    b       branch_0x80072b84
    sw      $t6, 0x60($sp)

branch_0x80072b74:
    lw      $t8, 0x64($sp)
    addiu   $t7, $t7, %lo(Unknown_0x801b6d80)
    sw      $t7, 0x30($sp)
    sw      $t8, 0x60($sp)
branch_0x80072b84:
    lw      $t9, 0x60($sp)
branch_0x80072b88:
    lw      $t6, 0x60($sp)
    beqzl   $t9, branch_0x80072e50
    addiu   $t2, $t2, 0x1

    lh      $t7, ObjStructRaw_6($t6)
    or      $a3, $zero, $zero
    beq     $t5, $t7, branch_0x80072dc8
    nop

    lw      $a0, 0x30($sp)
    or      $a1, $t6, $zero
    lh      $t8, ObjStructRaw_0($a1)
branch_0x80072bb0:
    mtc1    $t8, $f16
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, ObjsStruct_24($a0)
    lh      $t9, ObjStructRaw_2($a1)
    mtc1    $t9, $f4
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, ObjsStruct_28($a0)
    lh      $v0, ObjStructRaw_4($a1)
    sltiu   $at, $v0, 0x21
    beqz    $at, branch_0x80072bfc_redBuoy
    or      $v1, $v0, $zero

    sll     $t7, $v0, 2
    lui     $at, %hi(SwitchTable_0x800e98f0)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800e98f0)($at)
    jr      $t7
    nop

branch_0x80072bfc_redBuoy:
    b       branch_0x80072c68
    or      $v0, $zero, $zero

branch_0x80072c04_yellowBuoy:
    b       branch_0x80072c68
    or      $v0, $s3, $zero

branch_0x80072c0c_checkpoint:
    b       branch_0x80072c68
    or      $v0, $s4, $zero

branch_0x80072c14:
    b       branch_0x80072c68
    or      $v0, $s5, $zero

branch_0x80072c1c:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0x4

branch_0x80072c24:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0x6

branch_0x80072c2c:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0x7

branch_0x80072c34:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0x8

branch_0x80072c3c:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0x9

branch_0x80072c44:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0xa

branch_0x80072c4c:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0xb

branch_0x80072c54:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0xc

branch_0x80072c5c:
    b       branch_0x80072c68
    addiu   $v0, $zero, 0xd

branch_0x80072c64:
    addiu   $v0, $zero, 0xe
branch_0x80072c68:
    addiu   $a2, $a3, 0x1
    sw      $v0, ObjsStruct_98($a0)
    sw      $a2, ObjsStruct_b4($a0)
    beq     $v1, $t1, branch_0x80072c84
    sw      $t5, ObjsStruct_a4($a0)
    bnel    $v1, $t4, branch_0x80072c90
    sw      $zero, ObjsStruct_bc($a0)
branch_0x80072c84:
    b       branch_0x80072c90
    sw      $s3, ObjsStruct_bc($a0)

.globl Function_0x80072c8c
Function_0x80072c8c: # 0x80072c8c
    sw      $zero, ObjsStruct_bc($a0)
branch_0x80072c90:
    addiu   $t6, $v1, -6
    sltiu   $at, $t6, 0x1b
    beqz    $at, branch_0x80072ce4
    sll     $t6, $t6, 2
    lui     $at, %hi(SwitchTable_0x800e9974)
    addu    $at, $at, $t6
    lw      $t6, %lo(SwitchTable_0x800e9974)($at)
    jr      $t6
    nop

.globl Function_0x80072cb4
Function_0x80072cb4: # 0x80072cb4
    b       branch_0x80072ce8
    or      $v0, $s3, $zero

.globl Function_0x80072cbc
Function_0x80072cbc: # 0x80072cbc
    b       branch_0x80072ce8
    or      $v0, $s4, $zero

.globl Function_0x80072cc4
Function_0x80072cc4: # 0x80072cc4
    b       branch_0x80072ce8
    or      $v0, $s5, $zero

.globl Function_0x80072ccc
Function_0x80072ccc: # 0x80072ccc
    b       branch_0x80072ce8
    addiu   $v0, $zero, 0x4

.globl Function_0x80072cd4
Function_0x80072cd4: # 0x80072cd4
    b       branch_0x80072ce8
    or      $v0, $fp, $zero

.globl Function_0x80072cdc
Function_0x80072cdc: # 0x80072cdc
    b       branch_0x80072ce8
    addiu   $v0, $zero, 0x6
branch_0x80072ce4:
    or      $v0, $zero, $zero
branch_0x80072ce8:
    sw      $v0, ObjsStruct_c0($a0)
    lw      $t0, 0x0($ra)
    slti    $at, $a2, 0x40
    bnez    $t0, branch_0x80072d0c
    nop
    bne     $v1, $s0, branch_0x80072d0c
    nop
    sw      $s3, ObjsStruct_c0($a0)
    lw      $t0, 0x0($ra)
branch_0x80072d0c:
    beqzl   $t0, branch_0x80072d2c
    lh      $v1, 0x6($a1)
    beql    $v1, $s1, branch_0x80072d28
    sw      $s4, ObjsStruct_c0($a0)
    bnel    $v1, $s2, branch_0x80072d2c
    lh      $v1, 0x6($a1)
    sw      $s4, ObjsStruct_c0($a0)
branch_0x80072d28:
    lh      $v1, 0x6($a1)
branch_0x80072d2c:
    mtc1    $v1, $t0
    nop
    cvt.s.w $f0, $f8
    div.s   $f10, $f0, $f2
    swc1    $f0, 0x6c($4)
    mul.s   $f16, $f10, $f12
    trunc.w.s   $f18, $f16
    mfc1    $v0, $s2
    nop
    andi    $t9, $v0, 0xfff
    sll     $t7, $t9, 2
    addu    $t6, $t3, $t7
    lwc1    $f4, 0x0($t6)
    addiu   $t8, $v0, 0x400
    andi    $t9, $t8, 0xfff
    sll     $t7, $t9, 2
    addu    $t6, $t3, $t7
    swc1    $f4, ObjsStruct_70($a0)
    lwc1    $f6, 0x0($t6)
    bnez    $t2, branch_0x80072da0
    swc1    $f6, ObjsStruct_74($a0)
    lw      $v0, ObjsStruct_98($a0)
    bne     $s5, $v0, branch_0x80072d94
    nop
    sw      $a3, 0x0($s7)
    lw      $v0, ObjsStruct_98($a0)
branch_0x80072d94:
    bnel    $fp, $v0, branch_0x80072da4
    or      $a3, $a2, $zero
    sw      $a3, 0x0($s6)
branch_0x80072da0:
    or      $a3, $a2, $zero
branch_0x80072da4:
    bnez    $at, branch_0x80072db4
    addiu   $a0, $a0, ObjsStruct_104
    b       branch_0x80072dc8
    or      $a1, $zero, $zero

branch_0x80072db4:
    lh      $t8, 0xe($a1)
    addiu   $a1, $a1, 0x8
    bnel    $t5, $t8, branch_0x80072bb0
    lh      $t8, 0x0($a1)
    or      $a1, $zero, $zero
branch_0x80072dc8:
    blez    $a3, branch_0x80072de4
    lw      $t9, 0x30($sp)
    sll     $t7, $a3, 6
    addu    $t7, $t7, $a3
    sll     $t7, $t7, 2
    addu    $t6, $t9, $t7
    sw      $zero, -0x50($t6)
branch_0x80072de4:
    bnez    $t2, branch_0x80072df8
    lui     $v0, %hi(Unknown_0x801bae80)
    lui     $at, %hi(Unknown_0x801bae80)
    b       branch_0x80072e4c
    sw      $a3, %lo(Unknown_0x801bae80)($at)
branch_0x80072df8:
    bne     $t2, $s3, branch_0x80072e28
    lw      $v0, %lo(Unknown_0x801bae80)($v0)
    lui     $v1, %hi(Unknown_0x801bae84)
    addiu   $v1, $v1, %lo(Unknown_0x801bae84)
    beq     $v0, $a3, branch_0x80072e4c
    sw      $a3, 0x0($v1)
    lw      $t9, 0x0($ra)
    lui     $at, %hi(Unknown_0x801bae84)
    beqzl   $t9, branch_0x80072e50
    addiu   $t2, $t2, 0x1
    b       branch_0x80072e4c
    sw      $zero, %lo(Unknown_0x801bae84)($at)

branch_0x80072e28:
    lui     $v1, %hi(Unknown_0x801bae88)
    addiu   $v1, $v1, %lo(Unknown_0x801bae88)
    beq     $v0, $a3, branch_0x80072e4c
    sw      $a3, 0x0($v1)
    lw      $t6, 0x0($ra)
    lui     $at, %hi(Unknown_0x801bae88)
    beqzl   $t6, branch_0x80072e50
    addiu   $t2, $t2, 0x1
    sw      $zero, %lo(Unknown_0x801bae88)($at)
branch_0x80072e4c:
    addiu   $t2, $t2, 0x1
branch_0x80072e50:
    slti    $at, $t2, 0x3
    bnez    $at, branch_0x80072b2c
    lw      $v1, 0x5c($sp)
    lh      $t8, 0x8($v1)
    or      $v0, $v1, $zero
    addiu   $t2, $zero, 0xc4
    beq     $t5, $t8, branch_0x80072f5c
    lui     $t1, %hi(Unknown_0x801bc6a0)
    lui     $a3, %hi(Unknown_0x801cb098)
    lui     $a2, %hi(Unknown_0x801bf7a0)
    addiu   $a2, $a2, %lo(Unknown_0x801bf7a0)
    addiu   $a3, $a3, %lo(Unknown_0x801cb098)
    addiu   $t1, $t1, %lo(Unknown_0x801bc6a0)
    lw      $t9, 0x0($a2)
branch_0x80072e88:
    multu   $t9, $t2
    mflo    $t7
    addu    $v1, $t1, $t7
    sw      $s3, 0x4c($v1)
    lh      $t6, 0x0($v0)
    swc1    $f14, 0x28($3)
    mtc1    $t6, $t0
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x24($3)
    lh      $t8, 0x2($v0)
    mtc1    $t8, $s0
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x2c($3)
    lh      $a0, 0x4($v0)
    sw      $a0, 0x50($v1)
    lh      $t7, 0x6($v0)
    sw      $t7, 0x58($v1)
    lh      $t6, 0x8($v0)
    mtc1    $t6, $a0
    nop
    cvt.s.w $f6, $f4
    bne     $s4, $a0, branch_0x80072f08
    swc1    $f6, 0x48($3)
    lw      $t8, 0x0($a3)
    lui     $t9, %hi(Unknown_0x800d7fd4)
    bne     $s3, $t8, branch_0x80072f08
    nop
    lw      $t9, %lo(Unknown_0x800d7fd4)($t9)
    beqzl   $t9, branch_0x80072f4c
    lh      $t6, 0x12($v0)
branch_0x80072f08:
    bnel    $s5, $a0, branch_0x80072f30
    lw      $t8, 0x0($a2)
    lw      $t7, 0x0($a3)
    lui     $t6, %hi(Unknown_0x800d7fd4)
    bnel    $s4, $t7, branch_0x80072f30
    lw      $t8, 0x0($a2)
    lw      $t6, %lo(Unknown_0x800d7fd4)($t6)
    beqzl   $t6, branch_0x80072f4c
    lh      $t6, 0x12($v0)
    lw      $t8, 0x0($a2)
branch_0x80072f30:
    addiu   $t9, $t8, 0x1
    slti    $at, $t9, 0x40
    bnez    $at, branch_0x80072f48
    sw      $t9, 0x0($a2)
    b       branch_0x80072f5c
    or      $a1, $zero, $zero

branch_0x80072f48:
    lh      $t6, 0x12($v0)
branch_0x80072f4c:
    addiu   $v0, $v0, 0xa
    bnel    $t5, $t6, branch_0x80072e88
    lw      $t9, 0x0($a2)
    or      $a1, $zero, $zero
branch_0x80072f5c:
    lui     $t8, %hi(Unknown_0x801ce380)
    lw      $t8, %lo(Unknown_0x801ce380)($t8)
    lui     $a2, %hi(Unknown_0x801bf7a0)
    lui     $t1, %hi(Unknown_0x801bc6a0)
    addiu   $at, $zero, 0xb
    addiu   $t1, $t1, %lo(Unknown_0x801bc6a0)
    addiu   $a2, $a2, %lo(Unknown_0x801bf7a0)
    beq     $t8, $at, branch_0x80072f90
    addiu   $t2, $zero, 0xc4
    lui     $t9, %hi(Unknown_0x800d7fcc)
    lw      $t9, %lo(Unknown_0x800d7fcc)($t9)
    beqzl   $t9, branch_0x80073064
    lw      $t8, 0x48($sp)
branch_0x80072f90:
    lw      $t7, 0x58($sp)
    addiu   $t0, $zero, 0x8
    lh      $t6, 0xa($t7)
    or      $v0, $t7, $zero
    beql    $t5, $t6, branch_0x80073064
    lw      $t8, 0x48($sp)
    lui     $a0, %hi(Unknown_0x801bae94)
    addiu   $a0, $a0, %lo(Unknown_0x801bae94)
    lw      $a1, 0x0($a2)
branch_0x80072fb4:
    multu   $a1, $t2
    mflo    $t8
    addu    $v1, $t1, $t8
    sw      $t0, 0x4c($v1)
    lh      $t9, 0x0($v0)
    mtc1    $t9, $t0
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x24($3)
    lh      $t6, 0x2($v0)
    mtc1    $t6, $s0
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x28($3)
    lh      $t7, 0x4($v0)
    mtc1    $t7, $a0
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x2c($3)
    lh      $t8, 0x6($v0)
    sw      $t8, 0x50($v1)
    lh      $t9, 0x8($v0)
    sw      $t9, 0xc0($v1)
    lh      $t6, 0xa($v0)
    mtc1    $t6, $t0
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x48($3)
    lw      $t9, 0x0($a2)
    lw      $t7, 0x0($a0)
    addiu   $a1, $t9, 0x1
    slti    $at, $a1, 0x40
    addiu   $t8, $t7, 0x1
    sw      $t8, 0x0($a0)
    bnez    $at, branch_0x8007304c
    sw      $a1, 0x0($a2)
    b       branch_0x80073060
    or      $a1, $zero, $zero
branch_0x8007304c:
    lh      $t7, 0x16($v0)
    addiu   $v0, $v0, 0xc
    bne     $t5, $t7, branch_0x80072fb4
    nop
    or      $a1, $zero, $zero
branch_0x80073060:
    lw      $t8, 0x48($sp)
branch_0x80073064:
    addiu   $t3, $zero, 0x4
    addiu   $t0, $zero, 0x6
    lh      $t9, 0x8($t8)
    addiu   $a3, $zero, 0x7
    beql    $t5, $t9, branch_0x8007321c
    lw      $t7, 0x54($sp)
    lw      $a1, 0x0($a2)
    addiu   $a2, $zero, 0xa
    or      $a0, $t8, $zero
branch_0x80073088:
    multu   $a1, $t2
    lh      $v0, 0x6($a0)
    addiu   $t7, $v0, -1
    sltiu   $at, $t7, 0x15
    sll     $t7, $t7, 2
    mflo    $t6
    addu    $v1, $t1, $t6
    beqz    $at, branch_0x80073188
    lui     $at, %hi(SwitchTable_0x800e99e0)
    addu    $at, $at, $t7
    lw      $t7, %lo(SwitchTable_0x800e99e0)($at)
    jr      $t7
    nop

.globl Function_0x800730bc
Function_0x800730bc: # 0x800730bc
    b       Function_0x80073190
    sw      $s5, 0x4c($v1)

.globl Function_0x800730c4
Function_0x800730c4: # 0x800730c4
    lui     $t9, %hi(Unknown_0x801cb098)
    lw      $t9, %lo(Unknown_0x801cb098)($t9)
    slti    $at, $t9, 0x2
    beqz    $at, branch_0x800730e0
    nop
    b       branch_0x80073208
    lh      $t6, 0x12($a0)
branch_0x800730e0:
    b       Function_0x80073190
    sw      $t3, 0x4c($v1)

.globl Function_0x800730e8
Function_0x800730e8: # 0x800730e8
    b       Function_0x80073190
    sw      $s4, 0x4c($v1)

.globl Function_0x800730f0
Function_0x800730f0: # 0x800730f0
    b       Function_0x80073190
    sw      $fp, 0x4c($v1)

.globl Function_0x800730f8
Function_0x800730f8: # 0x800730f8
    lui     $t8, %hi(Unknown_0x801cb098)
    lw      $t8, %lo(Unknown_0x801cb098)($t8)
    bgtz    $t8, branch_0x80073110
    nop
    b       branch_0x80073208
    lh      $t6, 0x12($a0)
branch_0x80073110:
    b       Function_0x80073190
    sw      $t0, 0x4c($v1)

.globl Function_0x80073118
Function_0x80073118: # 0x80073118
    lui     $t6, %hi(Unknown_0x801cb098)
    lw      $t6, %lo(Unknown_0x801cb098)($t6)
    slti    $at, $t6, 0x2
    beqz    $at, branch_0x80073134
    nop
    b       branch_0x80073208
    lh      $t6, 0x12($a0)
branch_0x80073134:
    b       Function_0x80073190
    sw      $a3, 0x4c($v1)

.globl Function_0x8007313c
Function_0x8007313c: # 0x8007313c
    addiu   $t7, $zero, 0x9
    b       Function_0x80073190
    sw      $t7, 0x4c($v1)

.globl Function_0x80073148
Function_0x80073148: # 0x80073148
    b       Function_0x80073190
    sw      $a2, 0x4c($v1)

.globl Function_0x80073150
Function_0x80073150: # 0x80073150
    addiu   $t9, $zero, 0x8
    b       Function_0x80073190
    sw      $t9, 0x4c($v1)

.globl Function_0x8007315c
Function_0x8007315c: # 0x8007315c
    lui     $t8, %hi(Unknown_0x800da8a8)
    lw      $t8, %lo(Unknown_0x800da8a8)($t8)
    addiu   $t6, $zero, 0xb
    addiu   $t7, $v0, -10
    bnel    $s4, $t8, branch_0x80073180
    sw      $t6, 0x4c($v1)
    b       branch_0x80073208
    lh      $t6, 0x12($a0)

.globl Function_0x8007317c
Function_0x8007317c: # 0x8007317c
    sw      $t6, 0x4c($v1)
branch_0x80073180:
    b       Function_0x80073190
    sw      $t7, 0x50($v1)
branch_0x80073188:
    b       branch_0x80073208
    lh      $t6, 0x12($a0)

.globl Function_0x80073190
Function_0x80073190: # 0x80073190
    lh      $t9, 0x0($a0)
    lui     $v0, %hi(Unknown_0x801bf7a0)
    addiu   $v0, $v0, %lo(Unknown_0x801bf7a0)
    mtc1    $t9, $s0
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x24($3)
    lh      $t8, 0x2($a0)
    mtc1    $t8, $a0
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x28($3)
    lh      $t6, 0x4($a0)
    mtc1    $t6, $t0
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x2c($3)
    lh      $t7, 0x8($a0)
    mtc1    $t7, $s0
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x48($3)
    lw      $t9, 0x0($v0)
    addiu   $a1, $t9, 0x1
    slti    $at, $a1, 0x40
    bnez    $at, branch_0x80073204
    sw      $a1, 0x0($v0)
    b       branch_0x80073218
    or      $a1, $zero, $zero
branch_0x80073204:
    lh      $t6, 0x12($a0)
branch_0x80073208:
    addiu   $a0, $a0, 0xa
    bne     $t5, $t6, branch_0x80073088
    nop
    or      $a1, $zero, $zero
branch_0x80073218:
    lw      $t7, 0x54($sp)
branch_0x8007321c:
    lui     $s4, %hi(Unknown_0x801ce398)
    lui     $s0, %hi(Unknown_0x801cb098)
    lh      $t9, 0x4($t7)
    addiu   $t0, $zero, 0x6
    addiu   $s0, $s0, %lo(Unknown_0x801cb098)
    beq     $t5, $t9, branch_0x800733bc
    lw      $s4, %lo(Unknown_0x801ce398)($s4)
    lui     $t4, %hi(Unknown_0x800da8e8)
    lui     $t3, %hi(Unknown_0x800d7fd0)
    lui     $t1, %hi(Unknown_0x800d7fd4)
    lui     $a2, %hi(Unknown_0x801bae98)
    addiu   $a2, $a2, %lo(Unknown_0x801bae98)
    addiu   $t1, $t1, %lo(Unknown_0x800d7fd4)
    addiu   $t3, $t3, %lo(Unknown_0x800d7fd0)
    addiu   $t4, $t4, %lo(Unknown_0x800da8e8)
    or      $a1, $t7, $zero
    lh      $v1, 0x4($t7)
    addiu   $a3, $zero, 0x18
    sltiu   $at, $v1, 0x5
branch_0x80073268:
    beqz    $at, branch_0x80073288
    or      $v0, $v1, $zero
    sll     $t8, $v1, 2
    lui     $at, %hi(SwitchTable_0x800e9a34)
    addu    $at, $at, $t8
    lw      $t8, %lo(SwitchTable_0x800e9a34)($at)
    jr      $t8
    nop
branch_0x80073288:
    lui     $a0, %hi(Unknown_0x801bc698)
    or      $v0, $zero, $zero
    b       branch_0x80073350
    lw      $a0, %lo(Unknown_0x801bc698)($a0)

.globl Function_0x80073298
Function_0x80073298: # 0x80073298
    lui     $a0, %hi(Unknown_0x801bc698)
    or      $v0, $s3, $zero
    b       branch_0x80073350
    lw      $a0, %lo(Unknown_0x801bc698)($a0)

.globl Function_0x800732a8
Function_0x800732a8: # 0x800732a8
    lw      $t6, 0x0($s0)
    addiu   $v0, $zero, 0x2
    bgtz    $t6, branch_0x800732d0
    nop
    lw      $t9, 0x0($t1)
    lui     $t2, %hi(Unknown_0x801bc698)
    bnez    $t9, branch_0x800732d0
    nop
    b       branch_0x800733a8
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
branch_0x800732d0:
    lui     $a0, %hi(Unknown_0x801bc698)
    b       branch_0x80073350
    lw      $a0, %lo(Unknown_0x801bc698)($a0)

.globl Function_0x800732dc
Function_0x800732dc: # 0x800732dc
    lw      $t7, 0x0($s0)
    slti    $at, $t7, 0x2
    beqzl   $at, branch_0x80073308
    lw      $t6, 0x0($ra)
    lw      $t8, 0x0($t1)
    lui     $t2, %hi(Unknown_0x801bc698)
    bnezl   $t8, branch_0x80073308
    lw      $t6, 0x0($ra)
    b       branch_0x800733a8
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)

.globl Function_0x80073304
Function_0x80073304: # 0x80073304
    lw      $t6, 0x0($ra)
branch_0x80073308:
    addiu   $v0, $zero, 0x3
    bne     $t0, $t6, branch_0x80073338
    nop
    lh      $t9, 0x0($t4)
    lui     $t2, %hi(Unknown_0x801bc698)
    bnez    $t9, branch_0x80073330
    nop
    lw      $t7, 0x0($t3)
    beqz    $t7, branch_0x80073338
    nop
branch_0x80073330:
    b       branch_0x800733a8
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
branch_0x80073338:
    lui     $a0, %hi(Unknown_0x801bc698)
    b       branch_0x80073350
    lw      $a0, %lo(Unknown_0x801bc698)($a0)

.globl Function_0x80073344
Function_0x80073344: # 0x80073344
    lui     $a0, %hi(Unknown_0x801bc698)
    addiu   $v0, $zero, 0x4
    lw      $a0, %lo(Unknown_0x801bc698)($a0)
branch_0x80073350:
    multu   $a0, $a3
    lui     $t2, %hi(Unknown_0x801bc698)
    addiu   $t7, $a0, 0x1
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
    slti    $at, $t7, 0x100
    mflo    $t8
    addu    $v1, $a2, $t8
    sw      $v0, 0x10($v1)
    lh      $t6, 0x0($a1)
    mtc1    $t6, $a0
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0($3)
    lh      $t9, 0x2($a1)
    sw      $t7, 0x0($t2)
    mtc1    $t9, $t0
    nop
    cvt.s.w $f10, $f8
    bnez    $at, branch_0x800733a8
    swc1    $f10, 0x8($3)
    b       branch_0x800733bc
    or      $a1, $zero, $zero
branch_0x800733a8:
    lh      $v1, 0xa($a1)
    addiu   $a1, $a1, 0x6
    bnel    $t5, $v1, branch_0x80073268
    sltiu   $at, $v1, 0x5
    or      $a1, $zero, $zero
branch_0x800733bc:
    lw      $t3, 0x50($sp)
    lui     $a2, %hi(Unknown_0x801bae98)
    lui     $t2, %hi(Unknown_0x801bc698)
    lh      $t6, 0x0($t3)
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
    addiu   $a2, $a2, %lo(Unknown_0x801bae98)
    bne     $t5, $t6, branch_0x800733e4
    addiu   $a3, $zero, 0x18
    lh      $t9, 0x2($t3)
    beq     $t5, $t9, branch_0x8007347c
branch_0x800733e4:
    lui     $t1, %hi(Unknown_0x801bc698)
    addiu   $t1, $t1, %lo(Unknown_0x801bc698)
    lw      $a0, 0x0($t1)
    sll     $t8, $a1, 2
    addu    $v0, $t3, $t8
    multu   $a0, $a3
    mflo    $t7
    addu    $v1, $a2, $t7
    sw      $s3, 0x10($v1)
    lh      $t6, 0x0($v0)
    addiu   $t7, $a0, 0x1
    slti    $at, $t7, 0x100
    mtc1    $t6, $s0
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0($3)
    lh      $t9, 0x2($v0)
    sw      $t7, 0x0($t1)
    mtc1    $t9, $a0
    nop
    cvt.s.w $f6, $f4
    bnez    $at, branch_0x80073450
    swc1    $f6, 0x8($3)
    lui     $t2, %hi(Unknown_0x801bc698)
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
    b       branch_0x8007347c
    or      $a1, $zero, $zero
branch_0x80073450:
    lh      $t6, 0x4($v0)
    addiu   $a1, $a1, 0x1
    addiu   $v0, $v0, 0x4
    bne     $t5, $t6, branch_0x800733e4
    nop
    lh      $t9, 0x2($v0)
    bne     $t5, $t9, branch_0x800733e4
    nop
    lui     $t2, %hi(Unknown_0x801bc698)
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
    or      $a1, $zero, $zero
branch_0x8007347c:
    lw      $t1, 0x4c($sp)
    lh      $t7, 0x0($t1)
    bne     $t5, $t7, branch_0x80073498
    nop
    lh      $t8, 0x4($t1)
    beql    $t5, $t8, branch_0x80073548
    addiu   $at, $zero, 0x15
branch_0x80073498:
    lui     $t2, %hi(Unknown_0x801bc698)
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
    lw      $a0, 0x0($t2)
    slti    $at, $a0, 0x100
    beqzl   $at, branch_0x80073548
    addiu   $at, $zero, 0x15
    multu   $a0, $a3
    lui     $at, %hi(Unknown_0x801bc698)
    mflo    $t6
    addu    $v1, $a2, $t6
    sw      $fp, 0x10($v1)
    multu   $a1, $t0
    addiu   $a1, $a1, 0x1
    mflo    $t9
    addu    $v0, $t1, $t9
    lh      $t7, 0x0($v0)
    multu   $a1, $t0
    addiu   $t9, $a0, 0x1
    mtc1    $t7, $t0
    nop
    cvt.s.w $f10, $f8
    mflo    $t7
    swc1    $f10, 0x0($3)
    lh      $t8, 0x2($v0)
    mtc1    $t8, $s0
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x4($3)
    lh      $t6, 0x4($v0)
    addu    $v0, $t1, $t7
    mtc1    $t6, $a0
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x8($3)
    sw      $t9, %lo(Unknown_0x801bc698)($at)
    lh      $t8, 0x0($v0)
    bne     $t5, $t8, branch_0x80073498
    nop
    lh      $t6, 0x4($v0)
    bne     $t5, $t6, branch_0x80073498
    nop
    lui     $t2, %hi(Unknown_0x801bc698)
    addiu   $t2, $t2, %lo(Unknown_0x801bc698)
    addiu   $at, $zero, 0x15
branch_0x80073548:
    bnel    $s4, $at, branch_0x80073560
    lw      $ra, 0x2c($sp)
    sw      $zero, 0x0($t2)
    lui     $at, %hi(Unknown_0x801bf7a0)
    sw      $zero, %lo(Unknown_0x801bf7a0)($at)
branch_0x8007355c:
    lw      $ra, 0x2c($sp)
branch_0x80073560:
    lw      $s0, 0x8($sp)
    lw      $s1, 0xc($sp)
    lw      $s2, 0x10($sp)
    lw      $s3, 0x14($sp)
    lw      $s4, 0x18($sp)
    lw      $s5, 0x1c($sp)
    lw      $s6, 0x20($sp)
    lw      $s7, 0x24($sp)
    lw      $fp, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0xa0

