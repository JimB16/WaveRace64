
.globl Function_0x8007681c_BuoyTimeLapHandling
Function_0x8007681c_BuoyTimeLapHandling: # 0x8007681c
    lui     $t6, %hi(Unknown_0x800d465c)
    lw      $t6, %lo(Unknown_0x800d465c)($t6)
    addiu   $sp, $sp, 0xfee0
    sw      $ra, 0x1c($sp)
    xor     $v0, $a0, $t6
    sltiu   $v0, $v0, 0x1
    beqz    $v0, branch_0x80076844
    sw      $s0, 0x18($sp)

    lui     $at, %hi(Unknown_0x801c23b8)
    sw      $zero, %lo(Unknown_0x801c23b8)($at)
branch_0x80076844:
    bnez    $v0, branch_0x80076874
    or      $v1, $v0, $zero

    lui     $v1, %hi(Unknown_0x800da8a8)
    lw      $v1, %lo(Unknown_0x800da8a8)($v1)
    lui     $t8, %hi(Unknown_0x800d4660)
    xori    $t7, $v1, 0x2
    sltiu   $v1, $t7, 0x1
    beqzl   $v1, branch_0x80076878
    sll     $t9, $a0, 3

    lw      $t8, %lo(Unknown_0x800d4660)($t8)
    xor     $v1, $a0, $t8
    sltiu   $v1, $v1, 0x1
branch_0x80076874:
    sll     $t9, $a0, 3
branch_0x80076878:
    subu    $t9, $t9, $a0
    sll     $t9, $t9, 4
    subu    $t9, $t9, $a0
    lui     $t6, %hi(Unknown_0x801c2698_RaceStruct)
    addiu   $t6, $t6, %lo(Unknown_0x801c2698_RaceStruct)
    sll     $t9, $t9, 3
    sw      $v1, 0x10c($sp)
    addu    $s0, $t9, $t6
    lw      $v0, RaceStruct_300($s0)
    sw      $zero, RaceStruct_314($s0)
    lui     $a3, %hi(TrackNr_0x800d7ef0)
    beqz    $v0, branch_0x800768b0
    addiu   $t7, $v0, -1

    sw      $t7, RaceStruct_300($s0)
branch_0x800768b0:
    lw      $a3, %lo(TrackNr_0x800d7ef0)($a3)
    addiu   $at, $zero, 0x4
    lui     $v0, %hi(Unknown_0x801c1d30)
    bne     $a3, $at, branch_0x800768f4
    addiu   $v0, $v0, %lo(Unknown_0x801c1d30)

    lw      $t8, 0x0($v0)
    bnezl   $t8, branch_0x800768f8
    addiu   $at, $zero, 0x7

    beqzl   $v1, branch_0x800768f8
    addiu   $at, $zero, 0x7

    lw      $t9, RaceStruct_19c($s0)
    li      $at, 0xc351
    addiu   $ra, $zero, 0x1
    slt     $at, $t9, $at
    bnezl   $at, branch_0x800768f8
    addiu   $at, $zero, 0x7

    sw      $ra, 0x0($v0)
branch_0x800768f4:
    addiu   $at, $zero, 0x7
branch_0x800768f8:
    bne     $a3, $at, branch_0x80076944
    addiu   $ra, $zero, 0x1

    lui     $v0, %hi(Unknown_0x801c1d2c_CurLapNr)
    lw      $v0, %lo(Unknown_0x801c1d2c_CurLapNr)($v0)
    lui     $t6, %hi(Unknown_0x801b6d80)
    addiu   $t6, $t6, %lo(Unknown_0x801b6d80)
    slti    $at, $v0, 0x2
    bnez    $at, branch_0x8007692c
    nop

    sw      $t6, RaceStruct_350($s0)
    lui     $a3, %hi(TrackNr_0x800d7ef0)
    b       branch_0x80076944
    lw      $a3, %lo(TrackNr_0x800d7ef0)($a3)

branch_0x8007692c:
    blez    $v0, branch_0x80076944
    lui     $t7, %hi(Unknown_0x801b2c80)

    addiu   $t7, $t7, %lo(Unknown_0x801b2c80)
    sw      $t7, RaceStruct_350($s0)
    lui     $a3, %hi(TrackNr_0x800d7ef0)
    lw      $a3, %lo(TrackNr_0x800d7ef0)($a3)
branch_0x80076944:
    addiu   $at, $zero, 0x9
    bne     $a3, $at, branch_0x8007696c
    lui     $v0, %hi(Unknown_0x801ce388)

    lui     $t8, %hi(Unknown_0x800d4660)
    lw      $t8, %lo(Unknown_0x800d4660)($t8)
    lui     $t9, %hi(Unknown_0x801b2c80)
    addiu   $t9, $t9, %lo(Unknown_0x801b2c80)
    bne     $a0, $t8, branch_0x8007696c
    nop

    sw      $t9, RaceStruct_350($s0)
branch_0x8007696c:
    lh      $v0, %lo(Unknown_0x801ce388)($v0)
    lui     $t6, %hi(Unknown_0x800d465c)
    lui     $t7, %hi(Unknown_0x800da8a8)
    bne     $ra, $v0, branch_0x8007698c
    nop

    lw      $t6, %lo(Unknown_0x800d465c)($t6)
    beql    $a0, $t6, branch_0x800769b8
    lw      $t9, RaceStruct_2ec($s0)

branch_0x8007698c:
    lw      $t7, %lo(Unknown_0x800da8a8)($t7)
    addiu   $at, $zero, 0x2
    lui     $t6, %hi(Unknown_0x801ce398)
    bne     $t7, $at, branch_0x800769d0
    addiu   $at, $zero, 0x2

    bne     $v0, $at, branch_0x800769d0
    lui     $t8, %hi(Unknown_0x800d4660)

    lw      $t8, %lo(Unknown_0x800d4660)($t8)
    bne     $a0, $t8, branch_0x800769d0
    nop

    lw      $t9, RaceStruct_2ec($s0)
branch_0x800769b8:
    bnezl   $t9, branch_0x80077eec
    lw      $ra, 0x1c($sp)

    jal     Function_0x80076270
    or      $a0, $s0, $zero
    b       branch_0x80077eec
    lw      $ra, 0x1c($sp)

branch_0x800769d0:
    lw      $t6, %lo(Unknown_0x801ce398)($t6)
    bnel    $ra, $t6, branch_0x80076a80
    lw      $t8, RaceStruct_c($s0)

    lw      $t7, RaceStruct_2f4($s0)
    bnezl   $t7, branch_0x80076a80
    lw      $t8, RaceStruct_c($s0)

    lw      $t8, RaceStruct_2ec($s0)
    lui     $t9, %hi(Unknown_0x800d7efc)
    bnezl   $t8, branch_0x80076a80
    lw      $t8, RaceStruct_c($s0)

    lw      $t9, %lo(Unknown_0x800d7efc)($t9)
    lui     $t6, %hi(Unknown_0x801c1d34)
    bnezl   $t9, branch_0x80076a80
    lw      $t8, RaceStruct_c($s0)

    lw      $t6, %lo(Unknown_0x801c1d34)($t6)
    bnezl   $t6, branch_0x80076a80
    lw      $t8, RaceStruct_c($s0)

    lw      $t7, RaceStruct_168($s0)
    lui     $v0, %hi(0x927bf)
    ori     $v0, $v0, %lo(0x927bf)
    addiu   $t8, $t7, 0x32
    slt     $at, $t8, $v0
    bnez    $at, branch_0x80076a34
    sw      $t8, RaceStruct_168($s0)

    sw      $v0, RaceStruct_168($s0)
branch_0x80076a34:
    lw      $t6, RaceStruct_19c($s0)
    lui     $t9, %hi(TrackNr_0x800d7ef0)
    addiu   $t7, $t6, 0x32
    slt     $at, $t7, $v0
    bnez    $at, branch_0x80076a6c
    sw      $t7, RaceStruct_19c($s0)

    sw      $v0, RaceStruct_19c($s0)
    lw      $t9, %lo(TrackNr_0x800d7ef0)($t9)
    beqz    $t9, branch_0x80076a6c
    nop

    jal     Function_0x80076270
    or      $a0, $s0, $zero
    b       branch_0x80077eec
    lw      $ra, 0x1c($sp)

branch_0x80076a6c:
    lui     $t6, %hi(Unknown_0x800d4880)
    lw      $t6, %lo(Unknown_0x800d4880)($t6)
    andi    $t7, $t6, 0xffff
    sw      $t7, RaceStruct_16c($s0)
    lw      $t8, RaceStruct_c($s0)
branch_0x80076a80:
    lui     $at, %hi(FLOAT_0_5)
    lui     $t7, %hi(Unknown_0x801aeb80_ObjsStruct)
    sll     $t6, $t8, 6
    addu    $t6, $t6, $t8
    mtc1    $at, $zero
    sll     $t6, $t6, 2
    addiu   $t7, $t7, %lo(Unknown_0x801aeb80_ObjsStruct)
    addu    $t0, $t6, $t7
    lui     $at, %hi(FLOAT_50)
    mtc1    $at, $a2
    lwc1    $f4, ObjsStruct_80($t0)
    lwc1    $f14, ObjsStruct_0($t0)
    lwc1    $f16, ObjsStruct_8($t0)
    mul.s   $f8, $f4, $f6
    lwc1    $f6, ObjsStruct_84($t0)
    sw      $t8, 0x104($sp)
    lw      $t8, ObjsStruct_9c($t0)
    mul.s   $f10, $f8, $f0
    mtc1    $at, $t0
    sub.s   $f4, $f14, $f10
    mul.s   $f10, $f6, $f8
    swc1    $f4, 0x70($sp)
    mul.s   $f4, $f10, $f0
    sub.s   $f6, $f16, $f4
    bne     $ra, $t8, branch_0x80076bfc
    swc1    $f6, 0x6c($sp)

    lwc1    $f8, ObjsStruct_c($t0)
    lwc1    $f10, ObjsStruct_18($t0)
    lwc1    $f4, ObjsStruct_14($t0)
    lwc1    $f6, ObjsStruct_20($t0)
    sub.s   $f14, $f8, $f10
    sw      $a0, 0x120($sp)
    sw      $t0, 0x38($sp)
    sub.s   $f16, $f4, $f6
    mul.s   $f8, $f14, $f14
    swc1    $f14, 0x60($sp)
    mul.s   $f10, $f16, $f16
    swc1    $f16, 0x5c($sp)
    jal     sqrtf
    add.s   $f12, $f8, $f10
    mtc1    $zero, $a0
    lw      $t0, 0x38($sp)
    lwc1    $f14, 0x60($sp)
    c.lt.s  $f4, $f0
    lwc1    $f16, 0x5c($sp)
    lui     $at, 0x801c
    lui     $t9, 0x801c
    bc1f    branch_0x80076b4c
    nop

    div.s   $f14, $f14, $f0
    div.s   $f16, $f16, $f0
branch_0x80076b4c:
    lwc1    $f6, 0x34e0($at)
    lwc1    $f8, ObjsStruct_18($t0)
    lui     $at, 0x801c
    lwc1    $f10, 0x34e8($at)
    sub.s   $f2, $f6, $f8
    lwc1    $f4, ObjsStruct_20($t0)
    lui     $at, 0x801c
    sub.s   $f12, $f10, $f4
    mul.s   $f6, $f2, $f14
    mtc1    $zero, $t2
    mul.s   $f8, $f12, $f16
    add.s   $f18, $f6, $f8
    c.le.s  $f10, $f18
    nop
    bc1f    branch_0x80076b8c
    nop

branch_0x80076b8c:
    lw      $t9, 0x1cf0($t9)
    bnez    $t9, branch_0x80076bd4
    nop

    lui     $at, %hi(0x40000000)
    mtc1    $at, $a2
    lwc1    $f4, ObjsStruct_8c($t0)
    lui     $at, %hi(Unknown_0x801c3724)
    lwc1    $f10, %lo(Unknown_0x801c3724)($at)
    mul.s   $f8, $f4, $f6
    or      $t6, $zero, $zero
    add.s   $f4, $f8, $f10
    c.le.s  $f18, $f4
    nop
    bc1f    branch_0x80076bcc
    nop
    addiu   $t6, $zero, 0x1				# Collision Detection returns true for Buoy passing and Start/Finish line crossing
branch_0x80076bcc:
    b       branch_0x80076c78
    sw      $t6, 0xf4($sp)

branch_0x80076bd4:
    lwc1    $f6, 0x3724($at)
    or      $t7, $zero, $zero
    neg.s   $f8, $f6
    c.le.s $f8, $f18
    nop
    bc1f    branch_0x80076bf4
    nop

    addiu   $t7, $zero, 0x1
branch_0x80076bf4:
    b       branch_0x80076c78
    sw      $t7, 0xf4($sp)

branch_0x80076bfc:
    lw      $v1, ObjsStruct_98($t0)
    addiu   $at, $zero, 0x8
    beq     $v1, $at, branch_0x80076c14
    addiu   $at, $zero, 0x9

    bne     $v1, $at, branch_0x80076c78
    sw      $a0, 0x120($sp)
branch_0x80076c14:
    lui     $at, 0x801c
    lwc1    $f10, 0x34e0($at)
    lwc1    $f6, ObjsStruct_78($t0)
    lui     $at, 0x801c
    sub.s   $f4, $f10, $f14
    lwc1    $f10, 0x34e8($at)
    mul.s   $f8, $f4, $f6
    sub.s   $f4, $f10, $f16
    lwc1    $f6, ObjsStruct_7c($t0)
    mul.s   $f10, $f4, $f6
    mtc1    $zero, $a0
    add.s   $f0, $f8, $f10
    c.le.s $f4, $f0
    nop
    bc1tl   branch_0x80076c5c
    lwc1    $f6, ObjsStruct_8c($t0)

    neg.s   $f0, $f0
    lwc1    $f6, ObjsStruct_8c($t0)
branch_0x80076c5c:
    c.le.s $f0, $f6
    nop
    bc1fl   branch_0x80076c78
    sw      $a0, 0x120($sp)

    b       branch_0x80076c78
    sw      $a0, 0x120($sp)

# 0x80076c74
    sw      $a0, 0x120($sp)
branch_0x80076c78:
    lwc1    $f8, ObjsStruct_70($t0)
    lwc1    $f10, ObjsStruct_74($t0)
    lui     $at, 0x801c
    lwc1    $f4, 0x34e0($at)
    lwc1    $f6, 0x70($sp)
    lui     $at, 0x801c
    swc1    $f8, 0x68($sp)
    swc1    $f10, 0x64($sp)
    sub.s   $f2, $f4, $f6
    lwc1    $f10, 0x6c($sp)
    lwc1    $f8, 0x34e8($at)
    sw      $t0, 0x38($sp)
    mul.s   $f4, $f2, $f2
    sub.s   $f16, $f8, $f10
    swc1    $f2, 0x58($sp)
    mul.s   $f6, $f16, $f16
    swc1    $f16, 0x54($sp)
    jal     sqrtf
    add.s   $f12, $f4, $f6
    mtc1    $zero, $s2
    lw      $t0, 0x38($sp)
    addiu   $ra, $zero, 0x1
    c.lt.s $f18, $f0
    lwc1    $f2, 0x58($sp)
    lwc1    $f16, 0x54($sp)
    lui     $at, 0x801c
    bc1f    branch_0x80076cf0
    addiu   $a2, $sp, 0xec

    div.s   $f2, $f2, $f0
    div.s   $f16, $f16, $f0
branch_0x80076cf0:
    lw      $t8, RaceStruct_1c($s0)
    addiu   $v0, $zero, -1
    lwc1    $f0, 0x68($sp)
    bne     $v0, $t8, branch_0x80076d54
    addiu   $a3, $sp, 0xe8

    mul.s   $f8, $f0, $f2
    lwc1    $f10, 0x64($sp)
    mul.s   $f4, $f10, $f16
    add.s   $f6, $f8, $f4
    c.lt.s $f18, $f6
    nop
    bc1fl   branch_0x80076d58
    lwc1    $f0, 0x68($sp)

    mul.s   $f8, $f10, $f2
    nop
    mul.s   $f4, $f0, $f16
    sub.s   $f6, $f8, $f4
    c.le.s  $f18, $f6
    nop
    bc1f    branch_0x80076d4c
    nop

    b       branch_0x80076d80
    sw      $ra, RaceStruct_1c($s0)

branch_0x80076d4c:
    b       branch_0x80076d80
    sw      $zero, RaceStruct_1c($s0)

branch_0x80076d54:
    lwc1    $f0, 0x68($sp)
branch_0x80076d58:
    lwc1    $f8, 0x64($sp)
    mul.s   $f10, $f0, $f2
    nop
    mul.s   $f4, $f8, $f16
    add.s   $f6, $f10, $f4
    c.le.s $f6, $f18
    nop
    bc1f    branch_0x80076d80
    nop

    sw      $v0, RaceStruct_1c($s0)
branch_0x80076d80:
    lw      $t9, RaceStruct_20($s0)
    bnez    $t9, branch_0x80076d9c
    nop

    lw      $t6, RaceStruct_1c($s0)
    bne     $v0, $t6, branch_0x80076d9c
    nop

    sw      $ra, RaceStruct_20($s0)
branch_0x80076d9c:
    lwc1    $f12, 0x34e0($at)
    lui     $at, 0x801c
    lwc1    $f14, 0x34e8($at)
    jal     Function_0x80074308
    sw      $t0, 0x38($sp)
    lw      $t0, 0x38($sp)
    addiu   $a2, $sp, 0xe4
    addiu   $a3, $sp, 0xe0
    lwc1    $f12, ObjsStruct_0($t0)
    jal     Function_0x80074308
    lwc1    $f14, ObjsStruct_8($t0)
    lw      $v0, 0xec($sp)
    addiu   $at, $zero, -1
    lw      $t0, 0x38($sp)
    beq     $v0, $at, branch_0x80076dfc
    addiu   $ra, $zero, 0x1

    lw      $t7, 0xe4($sp)
    lw      $t8, 0xe0($sp)
    beq     $v0, $t7, branch_0x80076df4
    nop

    bnel    $v0, $t8, branch_0x80076e00
    lw      $v0, 0xe8($sp)

branch_0x80076df4:
    b       branch_0x80076e28
    or      $a2, $ra, $zero

branch_0x80076dfc:
    lw      $v0, 0xe8($sp)
branch_0x80076e00:
    addiu   $at, $zero, -1
    lw      $t9, 0xe4($sp)
    beq     $v0, $at, branch_0x80076e28
    or      $a2, $zero, $zero

    beq     $v0, $t9, branch_0x80076e20
    lw      $t6, 0xe0($sp)

    bne     $v0, $t6, branch_0x80076e28
    nop

branch_0x80076e20:
    b       branch_0x80076e28
    or      $a2, $ra, $zero

branch_0x80076e28:
    sw      $zero, 0xfc($sp)
    lw      $t7, RaceStruct_20($s0)
    sw      $zero, RaceStruct_28($s0)
    beqzl   $t7, branch_0x800772b8
    lw      $t6, 0xfc($sp)

    lw      $t8, RaceStruct_1c($s0)
    bltzl   $t8, branch_0x800772b8
    lw      $t6, 0xfc($sp)

    lw      $t9, RaceStruct_320($s0)
    lw      $t6, RaceStruct_0($s0)
    lw      $v1, ObjsStruct_98($t0)
    beq     $t9, $t6, branch_0x80076e64
    or      $a0, $v1, $zero

    b       branch_0x800772b4
    sw      $zero, RaceStruct_20($s0)

branch_0x80076e64:
    lw      $t7, ObjsStruct_9c($t0)
    lw      $t8, 0xf4($sp)
    bnel    $ra, $t7, branch_0x80076e88
    lw      $t9, ObjsStruct_c8($t0)

    bnezl   $t8, branch_0x80076e88
    lw      $t9, ObjsStruct_c8($t0)

    b       branch_0x800772b4
    sw      $zero, RaceStruct_20($s0)

# 0x80076e84
    lw      $t9, ObjsStruct_c8($t0)
branch_0x80076e88:
    lui     $t6, %hi(TrackNr_0x800d7ef0)
    beqz    $t9, branch_0x80076ea4
    nop

    bnez    $a2, branch_0x80076ea4
    nop

    b       branch_0x800772b4
    sw      $zero, RaceStruct_20($s0)

branch_0x80076ea4:
    lw      $t6, %lo(TrackNr_0x800d7ef0)($t6)
    addiu   $at, $zero, 0x3
    lui     $t7, 0x801d
    bnel    $t6, $at, branch_0x80076ee4
    sw      $ra, 0xfc($sp)

    lw      $t7, -0x1c80($t7)
    addiu   $at, $zero, 0xb
    beq     $t7, $at, branch_0x80076ee0
    addiu   $at, $zero, 0x4

    bnel    $v1, $at, branch_0x80076ee4
    sw      $ra, 0xfc($sp)

    bnezl   $a2, branch_0x80076ee4
    sw      $ra, 0xfc($sp)

    b       branch_0x800772b4
    sw      $zero, RaceStruct_20($s0)

branch_0x80076ee0:
    sw      $ra, 0xfc($sp)
branch_0x80076ee4:
    sw      $zero, RaceStruct_2f0($s0)
    lw      $t8, ObjsStruct_9c($t0)
    bnezl   $t8, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)

    lw      $t9, RaceStruct_2f4($s0)
    bnezl   $t9, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)

    lw      $t6, RaceStruct_2ec($s0)
    addiu   $at, $zero, 0x8
    bnezl   $t6, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)

    beq     $a0, $at, branch_0x80077120
    addiu   $at, $zero, 0x9

    beql    $a0, $at, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)

    bnez    $a0, branch_0x80076f34
    nop

    lw      $t7, RaceStruct_1c($s0)
    beqzl   $t7, branch_0x80076f4c
    lw      $t9, ObjsStruct_c8($t0)

branch_0x80076f34:
    bne     $a0, $ra, branch_0x80076ff0
    nop

    lw      $t8, RaceStruct_1c($s0)
    bne     $ra, $t8, branch_0x80076ff0
    nop

    lw      $t9, ObjsStruct_c8($t0)
branch_0x80076f4c:
    beqzl   $t9, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)

    lw      $v0, RaceStruct_12c($s0)
    lui     $t8, %hi(Unknown_0x800da8a8)
    slti    $at, $v0, 0x5
    beqz    $at, branch_0x80076f70
    addiu   $t6, $v0, 0x1

    sw      $t6, RaceStruct_12c($s0)
    sw      $ra, RaceStruct_314($s0)
branch_0x80076f70:
    sw      $ra, RaceStruct_28($s0)
    lw      $t7, 0x10c($sp)
    beqzl   $t7, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)

    lw      $t8, %lo(Unknown_0x800da8a8)($t8)
    addiu   $at, $zero, 0x2
    lw      $t9, 0x120($sp)
    bne     $t8, $at, branch_0x80076fa8
    lui     $t6, %hi(Unknown_0x800d4660)

    lw      $t6, %lo(Unknown_0x800d4660)($t6)
    bnel    $t9, $t6, branch_0x80076fac
    or      $a1, $zero, $zero

    b       branch_0x80076fac
    addiu   $a1, $zero, 0x80

branch_0x80076fa8:
    or      $a1, $zero, $zero
branch_0x80076fac:
    bnez    $a0, branch_0x80076fd0
    addiu   $a0, $zero, 0x26

    sw      $a2, 0xdc($sp)
    jal     Function_0x800c3594
    sw      $t0, 0x38($sp)
    lw      $a2, 0xdc($sp)
    lw      $t0, 0x38($sp)
    b       branch_0x80077120
    addiu   $ra, $zero, 0x1
branch_0x80076fd0:
    addiu   $a0, $zero, 0x27
    sw      $a2, 0xdc($sp)
    jal     Function_0x800c3594
    sw      $t0, 0x38($sp)
    lw      $a2, 0xdc($sp)
    lw      $t0, 0x38($sp)
    b       branch_0x80077120
    addiu   $ra, $zero, 0x1

branch_0x80076ff0:
    beqz    $a0, branch_0x80077000
    lui     $t7, 0x801d

    bnel    $a0, $ra, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)

branch_0x80077000:
    lhu     $t7, -0x1b72($t7)
    lui     $t8, %hi(Unknown_0x801ce398)
    beqzl   $t7, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)
    lw      $t8, %lo(Unknown_0x801ce398)($t8)
    bnel    $ra, $t8, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)
    lw      $t9, ObjsStruct_c8($t0)
    lui     $v0, %hi(Unknown_0x800d7ef4)
    lw      $t6, 0x10c($sp)
    beqz    $t9, branch_0x80077120
    addiu   $v0, $v0, %lo(Unknown_0x800d7ef4)

    beqzl   $t6, branch_0x80077054_SkipIncBuoyMissCounter
    lw      $t7, RaceStruct_BuoyMisses($s0)

    lw      $t7, RaceStruct_130($s0)
    lw      $t9, RaceStruct_BuoyMisses($s0)
    addiu   $t8, $t7, 1
    addiu   $t6, $t9, 1					# add 1 to buoy misses
    sw      $t8, RaceStruct_130($s0)
    sw      $t6, RaceStruct_BuoyMisses($s0)
    lw      $t7, RaceStruct_BuoyMisses($s0)

branch_0x80077054_SkipIncBuoyMissCounter:
    lw      $t8, 0x0($v0)
    slt     $at, $t7, $t8
    bnez    $at, branch_0x80077090
    addiu   $t7, $zero, 0x2
    sw      $ra, RaceStruct_13c($s0)
    lw      $t9, 0x10c($sp)
    beqzl   $t9, branch_0x80077094
    sw      $t7, RaceStruct_28($s0)
    lw      $t6, 0x0($v0)
    bnezl   $t6, branch_0x80077094
    sw      $t7, RaceStruct_28($s0)
    jal     Function_0x80076270
    or      $a0, $s0, $zero
    b       branch_0x80077eec
    lw      $ra, 0x1c($sp)
branch_0x80077090:
    sw      $t7, RaceStruct_28($s0)
branch_0x80077094:
    lw      $t8, 0x10c($sp)
    lui     $t7, %hi(Unknown_0x800da8a8)
    beqzl   $t8, branch_0x80077124
    lw      $t6, ObjsStruct_a0($t0)
    lw      $t9, 0x0($v0)
    lw      $t6, RaceStruct_BuoyMisses($s0)
    lw      $t8, 0x120($sp)
    subu    $a1, $t9, $t6
    bgez    $a1, branch_0x800770c0
    lui     $t9, %hi(Unknown_0x800d4660)
    or      $a1, $zero, $zero
branch_0x800770c0:
    lw      $t7, %lo(Unknown_0x800da8a8)($t7)
    addiu   $at, $zero, 0x2
    bne     $t7, $at, branch_0x800770e0
    nop
    lw      $t9, %lo(Unknown_0x800d4660)($t9)
    bne     $t8, $t9, branch_0x800770e0
    nop
    addiu   $a1, $a1, 0x80
branch_0x800770e0:
    bnez    $a0, branch_0x80077104
    addiu   $a0, $zero, 0x29
    sw      $a2, 0xdc($sp)
    jal     Function_0x800c3594
    sw      $t0, 0x38($sp)
    lw      $a2, 0xdc($sp)
    lw      $t0, 0x38($sp)
    b       branch_0x80077120
    addiu   $ra, $zero, 0x1
branch_0x80077104:
    addiu   $a0, $zero, 0x28
    sw      $a2, 0xdc($sp)
    jal     Function_0x800c3594
    sw      $t0, 0x38($sp)
    lw      $a2, 0xdc($sp)
    lw      $t0, 0x38($sp)
    addiu   $ra, $zero, 0x1
branch_0x80077120:
    lw      $t6, ObjsStruct_a0($t0)
branch_0x80077124:
    addiu   $t8, $zero, -1
    beqz    $a2, branch_0x80077138
    sw      $t6, RaceStruct_c($s0)

    lw      $t7, 0x104($sp)
    sw      $t7, RaceStruct_310($s0)
branch_0x80077138:
    sw      $t8, RaceStruct_1c($s0)
    sw      $ra, RaceStruct_20($s0)
    lui     $t9, %hi(TrackNr_0x800d7ef0)
    lw      $t9, %lo(TrackNr_0x800d7ef0)($t9)
    addiu   $at, $zero, 0x3
    lui     $t6, 0x801d
    bnel    $t9, $at, branch_0x800772b8
    lw      $t6, 0xfc($sp)

    lw      $t6, -0x4f68($t6)
    lui     $a2, 0x801c
    addiu   $a2, $a2, 0x1d28
    blezl   $t6, branch_0x800772b8
    lw      $t6, 0xfc($sp)

    lw      $t7, 0x0($a2)
    bnezl   $t7, branch_0x800772b8
    lw      $t6, 0xfc($sp)

    lw      $t8, RaceStruct_0($s0)
    lui     $v0, 0x800e
    slti    $at, $t8, 0x2
    bnezl   $at, branch_0x800772b8
    lw      $t6, 0xfc($sp)

    lh      $v0, -0x5718($v0)
    bnez    $v0, branch_0x800771a8
    nop

    lw      $t9, ObjsStruct_98($t0)
    addiu   $at, $zero, 0x6
    beq     $t9, $at, branch_0x800771ac
    nop

branch_0x800771a8:
    beqz    $v0, branch_0x800772b4
branch_0x800771ac:
    lui     $at, 0x800f

    lwc1    $f16, -0x64e4($at)
    sw      $ra, 0x0($a2)
    lui     $t9, 0x8022
    lw      $t9, 0x36f0($t9)
    addiu   $a1, $zero, 0x10c
    lui     $t6, 0x801c
    multu   $t9, $a1
    lw      $t6, 0x3720($t6)
    lui     $a0, 0x8022
    lui     $t8, 0x801c
    sll     $t7, $t6, 2
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 4
    addu    $t7, $t7, $t6
    addiu   $a0, $a0, 0x7a40
    sll     $t7, $t7, 2
    mflo    $t6
    addiu   $t8, $t8, 0xc6a0
    addu    $v0, $t7, $t8
    addu    $v1, $a0, $t6
    lwc1    $f8, 0x4c($v1)
    lwc1    $f0, 0x0($v0)
    lwc1    $f10, 0x54($v1)
    lwc1    $f14, 0x8($v0)
    sub.s   $f2, $f0, $f8
    lui     $t7, %hi(Unknown_0x800da8a8)
    sub.s   $f12, $f14, $f10
    mul.s   $f4, $f2, $f2
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f4, $f6
    c.lt.s  $f8, $f16
    nop
    bc1f    branch_0x80077250
    nop

    jal     Function_0x800c18d0
    sw      $t0, 0x38($sp)
    lw      $t0, 0x38($sp)
    b       branch_0x800772b4
    addiu   $ra, $zero, 0x1

branch_0x80077250:
    lw      $t7, %lo(Unknown_0x800da8a8)($t7)
    addiu   $at, $zero, 0x2
    lui     $t8, 0x8022
    bnel    $t7, $at, branch_0x800772b8
    lw      $t6, 0xfc($sp)

    lw      $t8, 0x36f4($t8)
    multu   $t8, $a1
    mflo    $t9
    addu    $v0, $a0, $t9
    lwc1    $f10, 0x4c($v0)
    lwc1    $f4, 0x54($v0)
    sub.s   $f2, $f0, $f10
    sub.s   $f12, $f14, $f4
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f8, $f12, $f12
    add.s   $f10, $f6, $f8
    c.lt.s $f10, $f16
    nop
    bc1f    branch_0x800772b4
    nop
    jal     Function_0x800c18d0
    sw      $t0, 0x38($sp)
    lw      $t0, 0x38($sp)
    addiu   $ra, $zero, 0x1
branch_0x800772b4:
    lw      $t6, 0xfc($sp)
branch_0x800772b8:
    beqzl   $t6, branch_0x80077a4c
    lw      $v0, RaceStruct_12c($s0)
    lw      $t7, RaceStruct_13c($s0)
    bnezl   $t7, branch_0x80077a4c
    lw      $v0, RaceStruct_12c($s0)
    lw      $t8, RaceStruct_2f4($s0)
    bnezl   $t8, branch_0x80077a4c
    lw      $v0, RaceStruct_12c($s0)
    lw      $t9, RaceStruct_2ec($s0)
    lui     $t6, %hi(TrackNr_0x800d7ef0)
    bnezl   $t9, branch_0x80077a4c
    lw      $v0, RaceStruct_12c($s0)
    lw      $t6, %lo(TrackNr_0x800d7ef0)($t6)
    beqzl   $t6, branch_0x80077a4c
    lw      $v0, RaceStruct_12c($s0)
    lw      $t7, ObjsStruct_9c($t0)
    bne     $ra, $t7, branch_0x80077538
    nop
    lw      $a0, RaceStruct_0($s0)
    lw      $t8, 0x120($sp)
    lui     $at, 0x801c
    blez    $a0, branch_0x80077538
    sll     $t9, $t8, 2
    lwc1    $f14, ObjsStruct_0($t0)
    lwc1    $f4, 0x34e0($at)
    lui     $at, 0x801c
    lwc1    $f6, 0x34e8($at)
    sub.s   $f2, $f4, $f14
    lwc1    $f16, ObjsStruct_8($t0)
    lwc1    $f8, 0x68($sp)
    lwc1    $f4, 0x64($sp)
    sub.s   $f12, $f6, $f16
    mul.s   $f10, $f2, $f8
    subu    $t9, $t9, $t8
    mtc1    $zero, $t0
    mul.s   $f6, $f12, $f4
    sll     $t9, $t9, 3
    subu    $t9, $t9, $t8
    sll     $t9, $t9, 3
    addu    $t9, $t9, $t8
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t8
    add.s   $f18, $f10, $f6
    lui     $t6, %hi(Unknown_0x801923f0_GameStruct)
    addiu   $t6, $t6, %lo(Unknown_0x801923f0_GameStruct)
    sll     $t9, $t9, 3
    c.le.s $f8, $f18
    mov.s   $f0, $f18
    lw      $v1, ObjsStruct_98($t0)
    addu    $v0, $t9, $t6
    bc1tl   branch_0x80077390
    lwc1    $f4, 0xbe4($v0)
    neg.s   $f0, $f18
    lwc1    $f4, 0xbe4($v0)
branch_0x80077390:
    lwc1    $f10, 0xbec($v0)
    lwc1    $f6, 0x68($sp)
    sub.s   $f2, $f4, $f14
    lwc1    $f4, 0x64($sp)
    sub.s   $f12, $f10, $f16
    mul.s   $f8, $f2, $f6
    mtc1    $zero, $a2
    mul.s   $f10, $f12, $f4
    add.s   $f18, $f8, $f10
    c.le.s $f6, $f18
    swc1    $18, 0xa4($29)
    bc1tl   branch_0x800773d0
    lwc1    $f8, 0xa4($sp)
    neg.s   $f4, $f18
    swc1    $4, 0xa4($29)
    lwc1    $f8, 0xa4($sp)
branch_0x800773d0:
    lui     $at, 0x4248
    mtc1    $at, $a2
    add.s   $f10, $f0, $f8
    addiu   $at, $zero, 0x3
    div.s   $f0, $f0, $f10
    mul.s   $f4, $f0, $f6
    trunc.w.s   $f8, $f4
    mfc1    $v0, $t0
    bne     $v1, $at, branch_0x80077400
    sw      $v0, 0xac($sp)
    sw      $zero, RaceStruct_164($s0)
    lw      $a0, RaceStruct_0($s0)
branch_0x80077400:
    lw      $t8, RaceStruct_19c($s0)
    lw      $t7, RaceStruct_164($s0)
    sll     $t9, $a0, 5
    subu    $v1, $t8, $v0
    addu    $t6, $s0, $t9
    sll     $t8, $t7, 2
    addu    $t9, $t6, $t8
    sw      $v1, 0x184($t9)
    lui     $t7, %hi(Unknown_0x801ce398)
    lw      $t7, %lo(Unknown_0x801ce398)($t7)
    lui     $t6, 0x801c
    bne     $ra, $t7, branch_0x80077538
    nop
    lw      $t6, 0x1d24($t6)
    lui     $t8, 0x801c
    bnez    $t6, branch_0x80077538
    nop
    lw      $t8, 0x1d38($t8)
    lui     $a2, 0x801c
    lw      $t9, 0x104($sp)
    bnez    $t8, branch_0x80077538
    nop
    lw      $a2, -0x5174($a2)
    lui     $a3, 0x801d
    addiu   $a3, $a3, 0xe380
    bne     $t9, $a2, branch_0x80077480
    lui     $t6, 0x801d
    lw      $t7, RaceStruct_0($s0)
    lw      $t6, -0x1b78($t6)
    slt     $at, $t7, $t6
    beqz    $at, branch_0x80077538
    nop
branch_0x80077480:
    lw      $v0, 0x0($a3)
    lui     $t8, 0x800e
    bnezl   $v0, branch_0x8007751c
    addiu   $at, $zero, 0x4
    lh      $t8, -0x5718($t8)
    lw      $t9, 0x104($sp)
    bnezl   $t8, branch_0x8007751c
    addiu   $at, $zero, 0x4
    bnel    $t9, $a2, branch_0x8007751c
    addiu   $at, $zero, 0x4
    lw      $a0, RaceStruct_0($s0)
    lui     $t7, %hi(TrackNr_0x800d7ef0)
    slti    $at, $a0, 0x3
    beqzl   $at, branch_0x8007751c
    addiu   $at, $zero, 0x4
    lw      $t7, %lo(TrackNr_0x800d7ef0)($t7)
    sll     $t8, $a0, 2
    lui     $v0, 0x801c
    sll     $t6, $t7, 3
    addu    $t6, $t6, $t7
    sll     $t6, $t6, 2
    addu    $t9, $t6, $t8
    addu    $v0, $v0, $t9
    lw      $v0, 0x21fc($v0)
    addiu   $t9, $zero, 0x28
    blez    $v0, branch_0x80077538
    slt     $at, $v0, $v1
    beqz    $at, branch_0x80077504
    addiu   $t6, $zero, 0x2
    subu    $t7, $v1, $v0
    sw      $ra, RaceStruct_2fc($s0)
    b       branch_0x80077510
    sw      $t7, RaceStruct_2f8($s0)
branch_0x80077504:
    subu    $t8, $v0, $v1
    sw      $t6, RaceStruct_2fc($s0)
    sw      $t8, RaceStruct_2f8($s0)
branch_0x80077510:
    b       branch_0x80077538
    sw      $t9, RaceStruct_300($s0)

.globl Function_0x80077518
Function_0x80077518: # 0x80077518
    addiu   $at, $zero, 0x4
branch_0x8007751c:
    beq     $v0, $at, branch_0x8007752c
    addiu   $t7, $zero, 0xa
    bnel    $ra, $v0, branch_0x80077538
    sw      $zero, RaceStruct_2fc($s0)
branch_0x8007752c:
    b       branch_0x80077538
    sw      $t7, RaceStruct_2fc($s0)

.globl Function_0x80077534
Function_0x80077534: # 0x80077534
    sw      $zero, RaceStruct_2fc($s0)
branch_0x80077538:
    lui     $t8, 0x801c
    lw      $t8, -0x5174($t8)
    lw      $t6, 0x104($sp)
    lui     $a3, 0x801d
    addiu   $a3, $a3, 0xe380
    bnel    $t6, $t8, branch_0x80077a3c
    lw      $t7, 0x104($sp)
    lw      $t9, RaceStruct_0($s0)
    lw      $t6, 0xac($sp)
    blez    $t9, branch_0x800779a4
    nop
    lw      $t7, RaceStruct_168($s0)
    lui     $t9, %hi(Unknown_0x801ce398)
    subu    $t8, $t7, $t6
    sw      $t8, RaceStruct_168($s0)
    lw      $t9, %lo(Unknown_0x801ce398)($t9)
    bnel    $ra, $t9, branch_0x8007778c
    lw      $t8, 0xac($sp)
    lw      $a0, RaceStruct_0($s0)
    or      $t7, $t8, $zero
    or      $v1, $zero, $zero
    slti    $at, $a0, 0xa
    beqz    $at, branch_0x800775c0
    or      $v0, $s0, $zero
    sll     $t6, $a0, 2
    addu    $t8, $s0, $t6
    sw      $t7, 0x174($t8)
    lw      $t6, RaceStruct_0($s0)
    lw      $t9, RaceStruct_130($s0)
    sll     $t7, $t6, 2
    addu    $t8, $s0, $t7
    sw      $t9, 0x13c($t8)
    b       branch_0x80077620
    lw      $v0, RaceStruct_168($s0)
branch_0x800775c0:
    addiu   $a0, $zero, 0x8
branch_0x800775c4:
    lw      $t9, 0x180($v0)
    lw      $t8, 0x148($v0)
    lw      $t6, 0x17c($v0)
    lw      $t7, 0x144($v0)
    sw      $t9, 0x17c($v0)
    sw      $t8, 0x144($v0)
    sw      $t6, 0x178($v0)
    sw      $t7, 0x140($v0)
    lw      $t7, 0x14c($v0)
    lw      $t6, 0x184($v0)
    lw      $t8, 0x150($v0)
    lw      $t9, 0x188($v0)
    addiu   $v1, $v1, 0x4
    addiu   $v0, $v0, 0x10
    sw      $t7, 0x138($v0)
    sw      $t6, 0x170($v0)
    sw      $t8, 0x13c($v0)
    bne     $v1, $a0, branch_0x800775c4
    sw      $t9, 0x174($v0)
    lw      $v0, RaceStruct_168($s0)
    lw      $t6, RaceStruct_130($s0)
    sw      $v0, RaceStruct_198($s0)
    sw      $t6, RaceStruct_160($s0)
branch_0x80077620:
    lw      $t7, RaceStruct_170($s0)
    lui     $t6, %hi(Unknown_0x800d465c)
    slt     $at, $v0, $t7
    beqz    $at, branch_0x80077640
    nop
    lw      $t9, RaceStruct_0($s0)
    sw      $v0, RaceStruct_170($s0)
    sw      $t9, RaceStruct_174($s0)
branch_0x80077640:
    lui     $v0, %hi(Unknown_0x800da8a8)
    lw      $v0, %lo(Unknown_0x800da8a8)($v0)
    lw      $t8, 0x120($sp)
    addiu   $at, $zero, 0x2
    bne     $ra, $v0, branch_0x80077744
    nop
    lw      $t6, %lo(Unknown_0x800d465c)($t6)
    lui     $t7, 0x801c
    bne     $t8, $t6, branch_0x80077744
    nop
    lw      $v0, RaceStruct_170($s0)
    lw      $t7, 0x1d40($t7)
    slt     $at, $v0, $t7
    beqz    $at, branch_0x800776ec
    lui     $at, 0x801c
    sw      $v0, 0x1d40($at)
    lui     $at, %hi(Unknown_0x801c23b8)
    sw      $ra, %lo(Unknown_0x801c23b8)($at)
    lw      $t9, 0x0($a3)
    lui     $t6, 0x801d
    lui     $v0, 0x801d
    bnezl   $t9, branch_0x800776b8
    lw      $a0, RaceStruct_0($s0)
    lw      $t8, RaceStruct_0($s0)
    lw      $t6, -0x1b78($t6)
    slt     $at, $t8, $t6
    beqz    $at, branch_0x800776b4
    lui     $at, 0x8023
    sw      $ra, -0x77a8($at)
branch_0x800776b4:
    lw      $a0, RaceStruct_0($s0)
branch_0x800776b8:
    lw      $v0, -0x1b78($v0)
    addiu   $t7, $a0, 0x1
    slt     $at, $a0, $v0
    beqzl   $at, branch_0x8007778c
    lw      $t8, 0xac($sp)
    bne     $v0, $t7, branch_0x800776dc
    or      $a1, $ra, $zero
    b       branch_0x800776dc
    addiu   $a1, $zero, 0x81
branch_0x800776dc:
    jal     Function_0x800c3594
    addiu   $a0, $zero, 0x21
    b       branch_0x80077788
    addiu   $ra, $zero, 0x1
branch_0x800776ec:
    lui     $v0, 0x801d
    lw      $v0, -0x1b78($v0)
    lw      $a0, RaceStruct_0($s0)
    slt     $at, $a0, $v0
    beqz    $at, branch_0x80077788
    addiu   $t9, $a0, 0x1
    bne     $v0, $t9, branch_0x80077714
    or      $a1, $zero, $zero
    b       branch_0x80077714
    addiu   $a1, $zero, 0x80
branch_0x80077714:
    lw      $t8, 0x0($a3)
    bnez    $t8, branch_0x80077734
    nop
    lw      $t6, RaceStruct_2fc($s0)
    addiu   $at, $zero, 0x2
    bne     $t6, $at, branch_0x80077734
    nop
    addiu   $a1, $a1, 0x2
branch_0x80077734:
    jal     Function_0x800c3594
    addiu   $a0, $zero, 0x21
    b       branch_0x80077788
    addiu   $ra, $zero, 0x1
branch_0x80077744:
    bne     $v0, $at, branch_0x80077788
    lw      $t7, 0x10c($sp)
    beqz    $t7, branch_0x80077788
    lui     $v0, 0x801d
    lw      $a0, RaceStruct_0($s0)
    lw      $v0, -0x1b78($v0)
    addiu   $t9, $a0, 0x1
    slt     $at, $a0, $v0
    beqzl   $at, branch_0x8007778c
    lw      $t8, 0xac($sp)
    bne     $v0, $t9, branch_0x8007777c
    or      $a1, $zero, $zero
    b       branch_0x8007777c
    addiu   $a1, $zero, 0x80
branch_0x8007777c:
    jal     Function_0x800c3594
    addiu   $a0, $zero, 0x21
    addiu   $ra, $zero, 0x1
branch_0x80077788:
    lw      $t8, 0xac($sp)
branch_0x8007778c:
    lui     $a3, %hi(TrackNr_0x800d7ef0)
    addiu   $at, $zero, 0x3
    sw      $t8, RaceStruct_168($s0)
    lw      $a3, %lo(TrackNr_0x800d7ef0)($a3)
    lui     $t6, 0x801d
    bnel    $a3, $at, branch_0x800777e8
    addiu   $at, $zero, 0x7
    lw      $t6, -0x4f68($t6)
    lui     $t7, %hi(Unknown_0x800d7fc0)
    blezl   $t6, branch_0x800777e8
    addiu   $at, $zero, 0x7
    lw      $t7, %lo(Unknown_0x800d7fc0)($t7)
    bnezl   $t7, branch_0x800777e8
    addiu   $at, $zero, 0x7
    lw      $t9, RaceStruct_0($s0)
    lui     $t8, %hi(Unknown_0x801b2c80)
    addiu   $t8, $t8, %lo(Unknown_0x801b2c80)
    blezl   $t9, branch_0x800777e8
    addiu   $at, $zero, 0x7
    sw      $t8, RaceStruct_350($s0)
    lui     $a3, %hi(TrackNr_0x800d7ef0)
    lw      $a3, %lo(TrackNr_0x800d7ef0)($a3)
    addiu   $at, $zero, 0x7
branch_0x800777e8:
    bne     $a3, $at, branch_0x8007781c
    lw      $a0, RaceStruct_0($s0)
    lw      $t6, 0x10c($sp)
    lui     $v0, %hi(Unknown_0x801c1d2c_CurLapNr)
    beqzl   $t6, branch_0x80077820
    lw      $t9, 0x10c($sp)
    lw      $v0, %lo(Unknown_0x801c1d2c_CurLapNr)($v0)
    slt     $at, $v0, $a0
    beqz    $at, branch_0x8007781c
    addiu   $t7, $v0, 0x1
    lui     $at, %hi(Unknown_0x801c1d2c_CurLapNr)
    sw      $t7, %lo(Unknown_0x801c1d2c_CurLapNr)($at)
    lw      $a0, RaceStruct_0($s0)
branch_0x8007781c:
    lw      $t9, 0x10c($sp)
branch_0x80077820:
    lui     $t8, 0x801d
    beqz    $t9, branch_0x8007789c
    nop
    lw      $t8, -0x1b78($t8)
    slt     $at, $a0, $t8
    beqz    $at, branch_0x8007789c
    nop
    lw      $v1, RaceStruct_4($s0)
    beqz    $v1, branch_0x80077860
    nop
    beq     $v1, $ra, branch_0x80077874
    addiu   $at, $zero, 0x2
    beq     $v1, $at, branch_0x8007788c
    nop
    b       branch_0x8007789c
    nop
branch_0x80077860:
    jal     Function_0x800c1c58
    addiu   $a0, $zero, 0x2
    addiu   $ra, $zero, 0x1
    b       branch_0x8007789c
    lw      $a0, RaceStruct_0($s0)
branch_0x80077874:
    or      $a0, $ra, $zero
    jal     Function_0x800c1c58
    nop
    addiu   $ra, $zero, 0x1
    b       branch_0x8007789c
    lw      $a0, RaceStruct_0($s0)
branch_0x8007788c:
    jal     Function_0x800c1c58
    or      $a0, $zero, $zero
    addiu   $ra, $zero, 0x1
    lw      $a0, RaceStruct_0($s0)
branch_0x8007789c:
    lui     $t6, 0x801d
    lw      $t6, -0x1b78($t6)
    lui     $t7, %hi(Unknown_0x800d7ef8)
    slt     $at, $a0, $t6
    bnez    $at, branch_0x800779a4
    nop
    lw      $t7, %lo(Unknown_0x800d7ef8)($t7)
    lui     $t9, %hi(Unknown_0x801c1d34)
    bnez    $t7, branch_0x800779a4
    nop
    lw      $t9, %lo(Unknown_0x801c1d34)($t9)
    lui     $v0, 0x801c
    addiu   $v0, $v0, 0x3710
    bnez    $t9, branch_0x800779a4
    or      $a0, $zero, $zero
    sw      $ra, RaceStruct_2f4($s0)
    lwc1    $f10, 0x0($v0)
    lui     $at, 0x800f
    lui     $a1, 0x801d
    swc1    $10, 0x32c($16)
    lwc1    $f6, 0x0($v0)
    lwc1    $f4, -0x64e0($at)
    sub.s   $f8, $f6, $f4
    swc1    $8, 0x0($2)
    lw      $a1, -0x1b78($a1)
    slti    $at, $a1, 0xa
    bnez    $at, branch_0x80077910
    nop
    addiu   $a1, $zero, 0x9
branch_0x80077910:
    blez    $a1, branch_0x80077994
    sw      $zero, RaceStruct_19c($s0)
    andi    $a2, $a1, 0x3
    beqz    $a2, branch_0x8007794c
    or      $v1, $a2, $zero
    sll     $t8, $zero, 2
    addu    $v0, $s0, $t8
branch_0x8007792c:
    lw      $t6, RaceStruct_19c($s0)
    lw      $t7, 0x178($v0)
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x4
    addu    $t9, $t6, $t7
    bne     $v1, $a0, branch_0x8007792c
    sw      $t9, RaceStruct_19c($s0)
    beq     $a0, $a1, branch_0x80077994
branch_0x8007794c:
    sll     $t8, $a0, 2
    addu    $v0, $s0, $t8
branch_0x80077954:
    lw      $t6, RaceStruct_19c($s0)
    lw      $t7, 0x178($v0)
    addiu   $a0, $a0, 0x4
    addiu   $v0, $v0, 0x10
    addu    $t9, $t6, $t7
    sw      $t9, RaceStruct_19c($s0)
    lw      $t6, 0x16c($v0)
    addu    $t7, $t9, $t6
    sw      $t7, RaceStruct_19c($s0)
    lw      $t8, 0x170($v0)
    addu    $t6, $t7, $t8
    sw      $t6, RaceStruct_19c($s0)
    lw      $t9, 0x174($v0)
    addu    $t8, $t6, $t9
    bne     $a0, $a1, branch_0x80077954
    sw      $t8, RaceStruct_19c($s0)
branch_0x80077994:
    lw      $t6, 0x10c($sp)
    bnez    $t6, branch_0x800779a4
    nop
    sw      $zero, RaceStruct_12c($s0)
branch_0x800779a4:
    lui     $t7, %hi(Unknown_0x800d7ef8)
    lw      $t7, %lo(Unknown_0x800d7ef8)($t7)
    lui     $t3, 0x801c
    lw      $a0, RaceStruct_0($s0)
    beqz    $t7, branch_0x800779c0
    addiu   $t3, $t3, 0xae80
    bnez    $a0, branch_0x800779e0
branch_0x800779c0:
    lui     $t9, 0x801d
    lw      $t9, -0x1b78($t9)
    addiu   $t8, $a0, 0x1
    slt     $at, $a0, $t9
    beqzl   $at, branch_0x800779e4
    sw      $zero, RaceStruct_130($s0)
    sw      $t8, RaceStruct_0($s0)
    sw      $t8, RaceStruct_320($s0)
branch_0x800779e0:
    sw      $zero, RaceStruct_130($s0)
branch_0x800779e4:
    lw      $t7, 0x0($t3)
    or      $v1, $ra, $zero
    addiu   $v0, $s0, RaceStruct_4
    slti    $at, $t7, 0x2
    bnezl   $at, branch_0x80077a1c
    lw      $t8, RaceStruct_0($s0)
    sw      $zero, 0x2c($v0)
branch_0x80077a00:
    lw      $t9, 0x0($t3)
    addiu   $v1, $v1, 0x1
    addiu   $v0, $v0, 0x4
    slt     $at, $v1, $t9
    bnezl   $at, branch_0x80077a00
    sw      $zero, 0x2c($v0)
    lw      $t8, RaceStruct_0($s0)
branch_0x80077a1c:
    slti    $at, $t8, 0x2
    bnezl   $at, branch_0x80077a3c
    lw      $t7, 0x104($sp)
    lw      $t6, RaceStruct_2f4($s0)
    bnezl   $t6, branch_0x80077a3c
    lw      $t7, 0x104($sp)
    sw      $ra, RaceStruct_308($s0)
    lw      $t7, 0x104($sp)
branch_0x80077a3c:
    sll     $t9, $t7, 2
    addu    $t8, $s0, $t9
    sw      $ra, 0x2c($t8)
    lw      $v0, RaceStruct_12c($s0)
branch_0x80077a4c:
    lw      $a0, RaceStruct_138($s0)
    lui     $t7, %hi(Unknown_0x801ce398)
    lui     $a3, %hi(TrackNr_0x800d7ef0)
    beq     $v0, $a0, branch_0x80077a8c
    subu    $v1, $v0, $a0
    bnez    $v1, branch_0x80077a70
    nop
    b       branch_0x80077a84
    or      $v1, $zero, $zero

branch_0x80077a70:
    blez    $v1, branch_0x80077a80
    addiu   $v0, $zero, -1
    b       branch_0x80077a80
    or      $v0, $ra, $zero

branch_0x80077a80:
    or      $v1, $v0, $zero
branch_0x80077a84:
    addu    $t6, $a0, $v1
    sw      $t6, RaceStruct_138($s0)
branch_0x80077a8c:
    lw      $t7, %lo(Unknown_0x801ce398)($t7)
    bnel    $ra, $t7, branch_0x80077ab0
    mtc1    $zero, $zero
    lw      $a3, %lo(TrackNr_0x800d7ef0)($a3)
    lui     $at, 0x801c
    lui     $a2, 0x801c
    bnez    $a3, branch_0x80077ad0
    lui     $t7, %hi(Unknown_0x801aeb80_ObjsStruct)
    mtc1    $zero, $zero
branch_0x80077ab0:
    sw      $zero, RaceStruct_8($s0)
    lui     $at, 0x801c
    swc1    $0, 0x32c($16)
    lw      $t9, 0x120($sp)
    sll     $t8, $t9, 2
    addu    $at, $at, $t8
    b       branch_0x80077ee8
    swc1    $0, 0x3700($1)
branch_0x80077ad0:
    lwc1    $f10, 0x34e0($at)
    lw      $a2, -0x5174($a2)
    addiu   $t7, $t7, %lo(Unknown_0x801aeb80_ObjsStruct)
    swc1    $10, 0x34($29)
    sll     $t6, $a2, 6
    lw      $a1, RaceStruct_310($s0)
    addu    $t6, $t6, $a2
    sll     $t6, $t6, 2
    addu    $v0, $t6, $t7
    lui     $at, 0x801c
    lwc1    $f14, 0x34e8($at)
    lwc1    $f16, 0x8($v0)
    sll     $t9, $a1, 6
    addu    $t9, $t9, $a1
    sll     $t9, $t9, 2
    sub.s   $f12, $f14, $f16
    lwc1    $f0, 0x0($v0)
    addu    $t8, $t9, $t7
    lw      $t0, 0xa0($t8)
    lwc1    $f6, 0x74($v0)
    sub.s   $f2, $f10, $f0
    lwc1    $f8, 0x70($v0)
    mul.s   $f4, $f6, $f12
    sll     $t6, $t0, 6
    addu    $t6, $t6, $t0
    sll     $t6, $t6, 2
    mul.s   $f10, $f2, $f8
    addu    $t9, $t6, $t7
    lw      $t1, 0xa0($t9)
    mtc1    $zero, $t0
    or      $t5, $zero, $zero
    sll     $t8, $t1, 6
    addu    $t8, $t8, $t1
    sll     $t8, $t8, 2
    add.s   $f6, $f4, $f10
    addu    $t6, $t8, $t7
    lw      $t2, 0xa0($t6)
    xor     $v1, $a2, $a1
    c.lt.s $f8, $f6
    sll     $t9, $t2, 6
    addu    $t9, $t9, $t2
    sll     $t9, $t9, 2
    addu    $t8, $t9, $t7
    bc1f    branch_0x80077b88
    lw      $t4, 0xa0($t8)
    addiu   $t5, $zero, 0x1
branch_0x80077b88:
    sltiu   $v1, $v1, 0x1
    bnez    $v1, branch_0x80077b9c
    or      $a0, $zero, $zero
    xor     $v1, $t0, $a2
    sltiu   $v1, $v1, 0x1
branch_0x80077b9c:
    addiu   $at, $zero, 0x2
    bne     $a3, $at, branch_0x80077bdc
    or      $a1, $v1, $zero
    sltu    $v1, $zero, $a1
    bnezl   $v1, branch_0x80077be0
    mfc1    $a2, $zero
    xor     $v1, $t1, $a2
    sltiu   $v1, $v1, 0x1
    bnezl   $v1, branch_0x80077be0
    mfc1    $a2, $zero
    xor     $v1, $t2, $a2
    sltiu   $v1, $v1, 0x1
    bnezl   $v1, branch_0x80077be0
    mfc1    $a2, $zero
    xor     $v1, $t4, $a2
    sltiu   $v1, $v1, 0x1
branch_0x80077bdc:
    mfc1    $a2, $zero
branch_0x80077be0:
    mfc1    $a3, $s0
    lwc1    $f12, 0x34($sp)
    sw      $v1, 0x48($sp)
    sw      $a0, 0x11c($sp)
    jal     Function_0x800761e0
    sw      $t5, 0xc4($sp)
    lui     $t3, 0x801c
    addiu   $t3, $t3, 0xae80
    lw      $v1, 0x48($sp)
    lw      $a0, 0x11c($sp)
    lw      $t5, 0xc4($sp)
    beqz    $v0, branch_0x80077c78
    addiu   $ra, $zero, 0x1
    beqzl   $v1, branch_0x80077c7c
    sw      $t5, RaceStruct_324($s0)
    beqz    $t5, branch_0x80077c50
    nop
    lw      $t6, RaceStruct_324($s0)
    bnez    $t6, branch_0x80077c50
    nop
    lw      $v0, RaceStruct_320($s0)
    lw      $t9, RaceStruct_0($s0)
    addiu   $t7, $v0, 0x1
    slt     $at, $v0, $t9
    beqz    $at, branch_0x80077c50
    nop
    b       branch_0x80077c78
    sw      $t7, RaceStruct_320($s0)
branch_0x80077c50:
    bnezl   $t5, branch_0x80077c7c
    sw      $t5, RaceStruct_324($s0)
    lw      $t8, RaceStruct_324($s0)
    beqzl   $t8, branch_0x80077c7c
    sw      $t5, RaceStruct_324($s0)
    lw      $v0, RaceStruct_320($s0)
    slti    $at, $v0, 0xffcf
    bnez    $at, branch_0x80077c78
    addiu   $t6, $v0, -1
    sw      $t6, RaceStruct_320($s0)
branch_0x80077c78:
    sw      $t5, RaceStruct_324($s0)
branch_0x80077c7c:
    lw      $v0, 0x0($t3)
    mtc1    $zero, $a0
    lw      $a2, RaceStruct_310($s0)
    mtc1    $zero, $s2
    blez    $v0, branch_0x80077e3c
    swc1    $4, 0x90($29)
    lui     $at, 0x801c
    lwc1    $f12, 0x34e0($at)
    lui     $at, 0x801c
    lui     $a3, %hi(Unknown_0x801aeb80_ObjsStruct)
    addiu   $a3, $a3, %lo(Unknown_0x801aeb80_ObjsStruct)
    lwc1    $f14, 0x34e8($at)
    addiu   $t0, $zero, 0x104
branch_0x80077cb0:
    multu   $a2, $t0
    mtc1    $zero, $a2
    addiu   $a0, $a0, 0x1
    slt     $at, $a0, $v0
    mflo    $t9
    addu    $v1, $a3, $t9
    lwc1    $f8, 0x8($v1)
    lwc1    $f10, 0x0($v1)
    lwc1    $f4, 0x74($v1)
    sub.s   $f16, $f14, $f8
    lwc1    $f8, 0x70($v1)
    sub.s   $f2, $f12, $f10
    mul.s   $f10, $f4, $f16
    nop
    mul.s   $f4, $f2, $f8
    add.s   $f8, $f10, $f4
    c.le.s $f8, $f6
    nop
    bc1t    branch_0x80077e34
    nop
    lui     $t7, %hi(TrackNr_0x800d7ef0)
    lw      $t7, %lo(TrackNr_0x800d7ef0)($t7)
    addiu   $at, $zero, 0x3
    lw      $a0, 0xa0($v1)
    bne     $t7, $at, branch_0x80077d78
    nop
    lw      $t8, 0x98($v1)
    addiu   $at, $zero, 0x4
    bne     $t8, $at, branch_0x80077d78
    nop
    lw      $t6, 0xc0($v1)
    bne     $ra, $t6, branch_0x80077d78
    nop
    sw      $v1, 0x2c($sp)
    sw      $a0, 0xb8($sp)
    sw      $a2, 0xc0($sp)
    swc1    $2, 0x58($29)
    jal     Function_0x800743e8
    swc1    $16, 0x54($29)
    lw      $v1, 0x2c($sp)
    lw      $a0, 0xb8($sp)
    lw      $a2, 0xc0($sp)
    lwc1    $f2, 0x58($sp)
    beqz    $v0, branch_0x80077d78
    lwc1    $f16, 0x54($sp)
    lui     $a3, %hi(Unknown_0x801aeb80_ObjsStruct)
    addiu   $a3, $a3, %lo(Unknown_0x801aeb80_ObjsStruct)
    lw      $a1, 0xa8($v1)
    b       branch_0x80077d88
    addiu   $t0, $zero, 0x104

branch_0x80077d78:
    lui     $a3, %hi(Unknown_0x801aeb80_ObjsStruct)
    addiu   $a3, $a3, %lo(Unknown_0x801aeb80_ObjsStruct)
    addiu   $t0, $zero, 0x104
    or      $a1, $a2, $zero
branch_0x80077d88:
    multu   $a0, $t0
    sw      $a2, 0xc0($sp)
    swc1    $2, 0x58($29)
    swc1    $16, 0x54($29)
    mflo    $t9
    addu    $v0, $a3, $t9
    lwc1    $f10, 0x0($v0)
    multu   $a1, $t0
    lwc1    $f6, 0x8($v0)
    mflo    $t7
    addu    $v1, $a3, $t7
    lwc1    $f4, 0x0($v1)
    lwc1    $f8, 0x8($v1)
    sub.s   $f0, $f10, $f4
    sub.s   $f14, $f6, $f8
    mul.s   $f10, $f0, $f0
    swc1    $0, 0x68($29)
    mul.s   $f4, $f14, $f14
    swc1    $14, 0x64($29)
    jal     sqrtf
    add.s   $f12, $f10, $f4
    mtc1    $zero, $a2
    lw      $a2, 0xc0($sp)
    lwc1    $f2, 0x58($sp)
    c.lt.s $f6, $f0
    lwc1    $f16, 0x54($sp)
    mov.s   $f18, $f0
    lwc1    $f8, 0x68($sp)
    bc1fl   branch_0x80077e18
    lwc1    $f8, 0x68($sp)
    lwc1    $f4, 0x64($sp)
    div.s   $f10, $f8, $f0
    div.s   $f6, $f4, $f0
    swc1    $10, 0x68($29)
    swc1    $6, 0x64($29)
    lwc1    $f8, 0x68($sp)
branch_0x80077e18:
    lwc1    $f4, 0x64($sp)
    mul.s   $f10, $f2, $f8
    nop
    mul.s   $f6, $f16, $f4
    add.s   $f8, $f10, $f6
    b       branch_0x80077e3c
    swc1    $8, 0x90($29)
branch_0x80077e34:
    bnez    $at, branch_0x80077cb0
    lw      $a2, 0xa8($v1)
branch_0x80077e3c:
    mtc1    $zero, $a0
    lui     $at, 0x3f80
    sw      $a2, RaceStruct_8($s0)
    c.lt.s $f4, $f18
    mtc1    $at, $v0
    lwc1    $f10, 0x90($sp)
    bc1fl   branch_0x80077e68
    mtc1    $zero, $zero
    b       branch_0x80077e6c
    div.s   $f0, $f10, $f18

.globl Function_0x80077e64
Function_0x80077e64: # 0x80077e64
    mtc1    $zero, $zero
branch_0x80077e68:
    nop
branch_0x80077e6c:
    c.le.s $f2, $f0
    nop
    bc1fl   branch_0x80077e84
    lw      $t8, RaceStruct_2f4($s0)
    mov.s   $f0, $f2
    lw      $t8, RaceStruct_2f4($s0)
branch_0x80077e84:
    bnezl   $t8, branch_0x80077eec
    lw      $ra, 0x1c($sp)
    lw      $t6, RaceStruct_2ec($s0)
    sll     $t8, $a2, 2
    bnezl   $t6, branch_0x80077eec
    lw      $ra, 0x1c($sp)
    lw      $t9, RaceStruct_320($s0)
    addu    $t8, $t8, $a2
    sll     $t8, $t8, 1
    sll     $t7, $t9, 5
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 2
    addu    $t7, $t7, $t9
    sll     $t7, $t7, 3
    addu    $t6, $t7, $t8
    mtc1    $t6, $a2
    lui     $at, 0x801c
    cvt.s.w $f8, $f6
    add.s   $f4, $f8, $f0
    swc1    $4, 0x32c($16)
    lw      $t9, 0x120($sp)
    lwc1    $f10, 0x90($sp)
    sll     $t7, $t9, 2
    addu    $at, $at, $t7
    swc1    $10, 0x3700($1)
branch_0x80077ee8:
    lw      $ra, 0x1c($sp)
branch_0x80077eec:
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x120
    jr      $ra
    nop
