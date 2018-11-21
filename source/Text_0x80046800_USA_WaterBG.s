
.set noat


/* Input:
a0: Unknown_0x801ce39c
*/
.globl Function_0x80090cf8_DrawWaterBG
Function_0x80090cf8_DrawWaterBG: # 0x80090cf8
    lui     $t3, %hi(TrackNr_0x800d7ef0)
    addiu   $t3, $t3, %lo(TrackNr_0x800d7ef0)
    lw      $t6, 0x0($t3)
    addiu   $at, $zero, Track_4
    addiu   $sp, $sp, -0x78
    bne     $t6, $at, branch_0x80090d5c
    lui     $t1, %hi(0x6000000)

    lui     $t7, %hi(Unknown_0x800da8a8)
    lw      $t7, %lo(Unknown_0x800da8a8)($t7)
    addiu   $t2, $zero, 0x1
    lui     $t4, %hi(0xb6000000)
    bne     $t2, $t7, branch_0x80090d5c
    addiu   $t5, $zero, 0xffff

    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t9, %hi(0x10205)
    sw      $t4, 0x0($v0)
    sw      $t5, 0x4($v0)
    ori     $t9, $t9, %lo(0x10205)
    lui     $t8, %hi(0xb7000000)
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    b       branch_0x80090d90
    addiu   $a0, $a0, 0x8

branch_0x80090d5c:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t4, %hi(0xb6000000)
    addiu   $t5, $zero, 0xffff
    or      $v1, $a0, $zero
    sw      $t5, 0x4($v0)
    sw      $t4, 0x0($v0)
    lui     $t6, %hi(0xb7000000)
    addiu   $t7, $zero, 0x5
    addiu   $t2, $zero, 0x1
    sw      $t7, 0x4($v1)
    sw      $t6, 0x0($v1)
    addiu   $a0, $a0, 0x8

branch_0x80090d90:
    or      $v0, $a0, $zero
    lui     $t8, %hi(0x1008290)
    addiu   $t8, $t8, %lo(0x1008290)
    sw      $t8, 0x4($v0)
    sw      $t1, 0x0($v0)
    lui     $t9, %hi(Unknown_0x800da8a8)
    lw      $t9, %lo(Unknown_0x800da8a8)($t9)
    addiu   $a0, $a0, 0x8

    lui     $t0, %hi(0xe7000000)
    beq     $t2, $t9, branch_0x80090dd0
    or      $v0, $a0, $zero

    lw      $t6, 0x0($t3)
    addiu   $at, $zero, Track_9
    lui     $t7, 0xfd10
    bne     $t6, $at, branch_0x80091220
    lui     $t9, 0x800

branch_0x80090dd0:
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t0, 0x0($v0)
    sw      $zero, 0x4($v0)
    addiu   $a0, $a0, 0x8

    lui     $t8, %hi(0x8000400)
    addiu   $t8, $t8, %lo(0x8000400)
    or      $a1, $a0, $zero
    lui     $t7, %hi(0xfd180000)
    sw      $t7, 0x0($v1)
    sw      $t8, 0x4($v1)
    lui     $t6, %hi(0x7080200)
    ori     $t6, $t6, %lo(0x7080200)
    addiu   $a0, $a0, 0x8

    lui     $t9, %hi(0xf5180000)
    sw      $t9, 0x0($a1)
    or      $a2, $a0, $zero
    sw      $t6, 0x4($a1)
    addiu   $a0, $a0, 0x8

    or      $a3, $a0, $zero
    lui     $t7, %hi(0xe6000000)
    sw      $t7, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t9, %hi(0x73ef080)
    ori     $t9, $t9, %lo(0x73ef080)
    addiu   $a0, $a0, 0x8

    lui     $t8, %hi(0xf3000000)
    sw      $t8, 0x0($a3)
    or      $v0, $a0, $zero
    sw      $t9, 0x4($a3)
    addiu   $a0, $a0, 0x8

    or      $v1, $a0, $zero
    lui     $t6, %hi(0xf5181000)
    ori     $t6, $t6, %lo(0xf5181000)
    sw      $zero, 0x4($v0)
    sw      $t0, 0x0($v0)
    lui     $t7, %hi(0x80200)
    ori     $t7, $t7, %lo(0x80200)
    sw      $t6, 0x0($v1)
    addiu   $a0, $a0, 0x8

    or      $a1, $a0, $zero
    sw      $t7, 0x4($v1)
    lui     $t9, %hi(0x6c07c)
    ori     $t9, $t9, %lo(0x6c07c)
    lui     $t8, %hi(0xf2000000)
    sw      $t8, 0x0($a1)
    sw      $t9, 0x4($a1)
    lui     $t6, %hi(Unknown_0x801ce3ac)
    lw      $t6, %lo(Unknown_0x801ce3ac)($t6)
    addiu   $a0, $a0, 0x8

    or      $v0, $a0, $zero
    bne     $t2, $t6, branch_0x80090fb0
    lui     $t8, %hi(0xfb000000)

    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t4, 0x0($v0)
    sw      $t5, 0x4($v0)
    addiu   $a0, $a0, 0x8
    lui     $t7, %hi(0xb7000000)
    addiu   $t8, $zero, 0x5
    or      $a1, $a0, $zero
    sw      $t8, 0x4($v1)
    sw      $t7, 0x0($v1)
    lui     $t9, %hi(0xbb000001)
    lui     $t6, %hi(0x7fff8000)
    ori     $t6, $t6, %lo(0x7fff8000)
    ori     $t9, $t9, %lo(0xbb000001)
    sw      $t9, 0x0($a1)
    sw      $t6, 0x4($a1)
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    lui     $t7, %hi(0xba001402)
    sw      $t0, 0x0($a2)
    sw      $zero, 0x4($a2)
    ori     $t7, $t7, %lo(0xba001402)
    addiu   $a0, $a0, 0x8
    sw      $t7, 0x0($a3)
    or      $v0, $a0, $zero
    lui     $t8, %hi(0xb900031d)
    sw      $zero, 0x4($a3)
    ori     $t8, $t8, %lo(0xb900031d)
    addiu   $a0, $a0, 0x8
    lui     $t9, %hi(0x5049d8)
    ori     $t9, $t9, %lo(0x5049d8)
    sw      $t8, 0x0($v0)
    or      $v1, $a0, $zero
    sw      $t9, 0x4($v0)
    lui     $t7, %hi(0xfffbf279)
    lui     $t6, %hi(0xfcfeffff)
    ori     $t6, $t6, %lo(0xfcfeffff)
    ori     $t7, $t7, %lo(0xfffbf279)
    addiu   $a0, $a0, 0x8
    sw      $t7, 0x4($v1)
    sw      $t6, 0x0($v1)
    or      $a1, $a0, $zero
    lui     $t8, %hi(0xfb000000)
    sw      $t8, 0x0($a1)
    lui     $at, %hi(Unknown_0x801caec0)
    lwc1    $f4, %lo(Unknown_0x801caec0)($at)
    addiu   $a0, $a0, 0x8
    trunc.w.s   $f6, $f4
    mfc1    $a2, $a2
    nop
    andi    $t6, $a2, 0xff
    sll     $t7, $t6, 24
    sll     $t8, $t6, 16
    or      $t9, $t7, $t8
    lui     $t8, %hi(Unknown_0x800d9610)
    lh      $t8, %lo(Unknown_0x800d9610)($t8)
    sll     $t6, $t6, 8
    or      $t7, $t9, $t6
    andi    $t9, $t8, 0xff
    or      $t6, $t7, $t9
    lui     $a2, %hi(Unknown_0x800da8ac)
    addiu   $a2, $a2, %lo(Unknown_0x800da8ac)
    b       branch_0x80091340
    sw      $t6, 0x4($a1)

branch_0x80090fb0:
    addiu   $a0, $a0, 0x8
    sw      $t0, 0x0($v0)
    sw      $zero, 0x4($v0)
    or      $v1, $a0, $zero
    sw      $t8, 0x0($v1)
    lui     $at, %hi(Unknown_0x801caec0)
    lwc1    $f8, %lo(Unknown_0x801caec0)($at)
    addiu   $a0, $a0, 0x8
    addiu   $at, $zero, Track_4
    trunc.w.s   $f10, $f8
    or      $a3, $a0, $zero
    mfc1    $a2, $t2
    nop
    andi    $t9, $a2, 0xff
    sll     $t6, $t9, 24
    sll     $t8, $t9, 16
    or      $t7, $t6, $t8
    lui     $t8, %hi(Unknown_0x800d9610)
    lh      $t8, %lo(Unknown_0x800d9610)($t8)
    sll     $t9, $t9, 8
    or      $t6, $t7, $t9
    andi    $t7, $t8, 0xff
    or      $t9, $t6, $t7
    sw      $t9, 0x4($v1)
    lw      $t8, 0x0($t3)
    lui     $t6, %hi(0xba001402)
    lui     $a2, %hi(Unknown_0x800da8ac)
    bne     $t8, $at, branch_0x800911ac
    ori     $t6, $t6, %lo(0xba001402)

    addiu   $a0, $a0, 0x8
    or      $t3, $a0, $zero
    sw      $t0, 0x0($a3)
    sw      $zero, 0x4($a3)
    addiu   $a0, $a0, 0x8
    lui     $t7, 0x10
    sw      $t7, 0x4($t3)
    sw      $t6, 0x0($t3)
    or      $t4, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t9, %hi(0xb900031d)
    lui     $t8, %hi(0xc81049d8)
    ori     $t8, $t8, %lo(0xc81049d8)
    ori     $t9, $t9, %lo(0xb900031d)
    or      $t5, $a0, $zero
    sw      $t9, 0x0($t4)
    sw      $t8, 0x4($t4)
    lui     $t6, 0xfcff
    lui     $t7, 0xfffc
    ori     $t7, $t7, 0xf238
    ori     $t6, $t6, 0xffff
    sw      $t6, 0x0($t5)
    sw      $t7, 0x4($t5)
    addiu   $a0, $a0, 0x8
    sw      $a0, 0x4($sp)
    lw      $t8, 0x4($sp)
    lui     $t9, %hi(0xf8000000)
    addiu   $a2, $a2, %lo(Unknown_0x800da8ac)
    sw      $t9, 0x0($t8)
    lw      $t6, 0x0($a2)
    addiu   $a1, $zero, 0x110
    lui     $v1, %hi(Unknown_0x801cadb8)
    multu   $t6, $a1
    addiu   $v1, $v1, %lo(Unknown_0x801cadb8)
    addiu   $a0, $a0, 0x8
    or      $a3, $a0, $zero
    lui     $at, %hi(0xf400)
    ori     $at, $at, %lo(0xf400)
    addiu   $a0, $a0, 0x8
    mflo    $t7
    addu    $v0, $v1, $t7
    lw      $t9, 0x94($v0)
    andi    $t6, $t9, 0xff
    lw      $t9, 0x88($v0)
    sll     $t7, $t9, 24
    or      $t9, $t6, $t7
    lw      $t6, 0x8c($v0)
    andi    $t7, $t6, 0xff
    sll     $t6, $t7, 16
    or      $t7, $t9, $t6
    lw      $t9, 0x90($v0)
    andi    $t6, $t9, 0xff
    sll     $t9, $t6, 8
    or      $t6, $t7, $t9
    lui     $t7, %hi(0xbc000008)
    ori     $t7, $t7, %lo(0xbc000008)
    sw      $t6, 0x4($t8)
    sw      $t7, 0x0($a3)
    lw      $t9, 0x0($a2)
    multu   $t9, $a1
    mflo    $t6
    addu    $v0, $v1, $t6
    lw      $t0, 0x98($v0)
    lw      $t8, 0x9c($v0)
    subu    $t7, $zero, $t0
    subu    $t3, $t8, $t0
    sll     $t9, $t7, 8
    addu    $t6, $t9, $at
    div     $zero, $t6, $t3
    lui     $t9, %hi(0xf400)
    ori     $t9, $t9, %lo(0xf400)
    mflo    $t8
    andi    $t7, $t8, 0xffff
    bnez    $t3, branch_0x80091154
    nop
    break   0x7
branch_0x80091154:

    addiu   $at, $zero, 0xffff
    bne     $t3, $at, branch_0x8009116c
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x8009116c
    nop
    break   0x6
branch_0x8009116c:

    div     $zero, $t9, $t3
    mflo    $t6
    andi    $t8, $t6, 0xffff
    bnez    $t3, branch_0x80091184
    nop
    break   0x7
branch_0x80091184:

    addiu   $at, $zero, 0xffff
    bne     $t3, $at, branch_0x8009119c
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x8009119c
    nop
    break   0x6
branch_0x8009119c:

    sll     $t9, $t8, 16
    or      $t6, $t7, $t9
    b       branch_0x80091340
    sw      $t6, 0x4($a3)

branch_0x800911ac:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t8, %hi(0xba001402)
    sw      $t0, 0x0($v0)
    sw      $zero, 0x4($v0)
    ori     $t8, $t8, %lo(0xba001402)
    addiu   $a0, $a0, 0x8
    sw      $t8, 0x0($v1)
    or      $a1, $a0, $zero
    sw      $zero, 0x4($v1)
    lui     $t7, %hi(0xb900031d)
    lui     $t9, %hi(0x5049d8)
    ori     $t9, $t9, %lo(0x5049d8)
    ori     $t7, $t7, %lo(0xb900031d)
    addiu   $a0, $a0, 0x8
    sw      $t7, 0x0($a1)
    sw      $t9, 0x4($a1)
    or      $a2, $a0, $zero
    lui     $t8, 0xfffc
    lui     $t6, 0xfcff
    ori     $t6, $t6, 0xffff
    ori     $t8, $t8, 0xf279
    sw      $t8, 0x4($a2)
    sw      $t6, 0x0($a2)
    lui     $a2, %hi(Unknown_0x800da8ac)
    addiu   $a2, $a2, %lo(Unknown_0x800da8ac)
    b       branch_0x80091340
    addiu   $a0, $a0, 0x8

branch_0x80091220:
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t0, %hi(0xe7000000)
    or      $v1, $a0, $zero
    sw      $t0, 0x0($v0)
    sw      $zero, 0x4($v0)
    addiu   $a0, $a0, 0x8
    addiu   $t9, $t9, 0x400
    sw      $t9, 0x4($v1)
    or      $a1, $a0, $zero
    sw      $t7, 0x0($v1)
    addiu   $a0, $a0, 0x8
    lui     $t6, %hi(0xf5100000)
    lui     $t8, %hi(0x7080200)
    ori     $t8, $t8, %lo(0x7080200)
    sw      $t6, 0x0($a1)
    or      $a2, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t8, 0x4($a1)
    or      $a3, $a0, $zero
    lui     $t7, %hi(0xe6000000)
    sw      $t7, 0x0($a2)
    sw      $zero, 0x4($a2)
    lui     $t6, %hi(0x73ef100)
    ori     $t6, $t6, %lo(0x73ef100)
    lui     $t9, %hi(0xf3000000)
    sw      $t9, 0x0($a3)
    sw      $t6, 0x4($a3)
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t8, %hi(0xf5101000)
    ori     $t8, $t8, %lo(0xf5101000)
    addiu   $a0, $a0, 0x8
    sw      $t0, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t7, %hi(0x80200)
    ori     $t7, $t7, %lo(0x80200)
    sw      $t8, 0x0($v1)
    or      $a1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $t7, 0x4($v1)
    lui     $t6, %hi(0x6c07c)
    ori     $t6, $t6, %lo(0x6c07c)
    lui     $t9, %hi(0xf2000000)
    or      $a2, $a0, $zero
    lui     $t8, %hi(0xba001402)
    sw      $t9, 0x0($a1)
    sw      $t6, 0x4($a1)
    ori     $t8, $t8, %lo(0xba001402)
    sw      $t8, 0x0($a2)
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a2)
    or      $a3, $a0, $zero
    addiu   $a0, $a0, 0x8
    lui     $t9, %hi(0x552078)
    lui     $t7, %hi(0xb900031d)
    ori     $t7, $t7, %lo(0xb900031d)
    ori     $t9, $t9, %lo(0x552078)
    or      $v0, $a0, $zero
    sw      $t9, 0x4($a3)
    sw      $t7, 0x0($a3)
    lui     $t8, 0xfffc
    lui     $t6, 0xfcff
    ori     $t6, $t6, 0xffff
    ori     $t8, $t8, 0xf279
    lui     $a2, %hi(Unknown_0x800da8ac)
    addiu   $a2, $a2, %lo(Unknown_0x800da8ac)
    sw      $t8, 0x4($v0)
    sw      $t6, 0x0($v0)
    addiu   $a0, $a0, 0x8
branch_0x80091340:
    lui     $t7, %hi(Unknown_0x800d9614)
    lw      $t7, %lo(Unknown_0x800d9614)($t7)
    lui     $v0, %hi(Unknown_0x801ce3ac)
    addiu   $sp, $sp, 0x78
    beqz    $t7, branch_0x8009144c
    nop

    lw      $v0, %lo(Unknown_0x801ce3ac)($v0)
    lui     $t7, %hi(Unknown_0x800da8a8)
    beqz    $v0, branch_0x800913ec
    nop

    beq     $v0, $t2, branch_0x80091384
    lui     $t9, %hi(0x10082f0)

    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x800913a0
    lw      $v0, 0x0($a2)

    b       branch_0x8009144c
    nop

branch_0x80091384:
    or      $v0, $a0, $zero
    addiu   $t9, $t9, %lo(0x10082f0)
    sw      $t9, 0x4($v0)
    sw      $t1, 0x0($v0)
    b       branch_0x8009144c
    addiu   $a0, $a0, 0x8

# 0x8009139c
    lw      $v0, 0x0($a2)
branch_0x800913a0:
    lui     $t6, %hi(0x100d258)
    addiu   $t6, $t6, %lo(0x100d258)
    beqzl   $v0, branch_0x800913c4
    or      $v0, $a0, $zero

    beq     $v0, $t2, branch_0x800913d4
    lui     $t8, %hi(0x100e680)

    b       branch_0x8009144c
    nop

# 0x800913c0
    or      $v0, $a0, $zero
branch_0x800913c4:
    sw      $t1, 0x0($v0)
    sw      $t6, 0x4($v0)
    b       branch_0x8009144c
    addiu   $a0, $a0, 0x8

branch_0x800913d4:
    or      $v0, $a0, $zero
    addiu   $t8, $t8, %lo(0x100e680)
    sw      $t8, 0x4($v0)
    sw      $t1, 0x0($v0)
    b       branch_0x8009144c
    addiu   $a0, $a0, 0x8

branch_0x800913ec:
    lw      $t7, %lo(Unknown_0x800da8a8)($t7)
    lui     $t9, %hi(0x100b590)
    addiu   $t9, $t9, %lo(0x100b590)
    bne     $t2, $t7, branch_0x80091410
    or      $v0, $a0, $zero

    addiu   $a0, $a0, 0x8
    sw      $t1, 0x0($v0)
    b       branch_0x8009144c
    sw      $t9, 0x4($v0)

branch_0x80091410:
    lw      $t6, 0x0($a2)
    lui     $t7, %hi(0x100e680)
    addiu   $t7, $t7, %lo(0x100e680)
    bnez    $t6, branch_0x80091440
    or      $v0, $a0, $zero

    or      $v0, $a0, $zero
    lui     $t8, %hi(0x100d258)
    addiu   $t8, $t8, %lo(0x100d258)
    sw      $t8, 0x4($v0)
    sw      $t1, 0x0($v0)
    b       branch_0x8009144c
    addiu   $a0, $a0, 0x8

branch_0x80091440:
    addiu   $a0, $a0, 0x8
    sw      $t1, 0x0($v0)
    sw      $t7, 0x4($v0)
branch_0x8009144c:
    jr      $ra
    or      $v0, $a0, $zero

