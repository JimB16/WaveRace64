

.include "source/constants.s"

.section .textoverlay4, "ax"

.set noreorder

# Unknown_4_0x802c7538_CourseMenuState
.equ CourseMenuState_chooseCourse,		0
.equ CourseMenuState_1,					1
.equ CourseMenuState_chooseDifficulty,	2
.equ CourseMenuState_3,					3

# Unknown_4_0x802c754c_SelectedDifficulty
.equ Difficulty_0,			0x0
.equ Difficulty_3,			0x3
.equ Difficulty_4,			0x4


Function_0x802c5800: # 0x802c5800
    lui     $t6, %hi(Unknown_0x801ce39c)
    lw      $t6, %lo(Unknown_0x801ce39c)($t6)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    beqz    $t6, branch_0x802c5830
    lui     $t7, %hi(Unknown_0x800da8a4_mainState)

    lw      $t7, %lo(Unknown_0x800da8a4_mainState)($t7)
    addiu   $at, $zero, MainState_14
    bne     $t7, $at, branch_0x802c5830
    nop

    jal     Function_0x802c58f8
    nop
branch_0x802c5830:
    lui     $v0, %hi(Unknown_4_0x802c7530)
    addiu   $v0, $v0, %lo(Unknown_4_0x802c7530)
    lw      $t8, 0x0($v0)
    lui     $t9, %hi(Unknown_0x800da750_TrackNr)
    beqz    $t8, branch_0x802c58b0
    nop

    sw      $zero, 0x0($v0)
    lw      $t9, %lo(Unknown_0x800da750_TrackNr)($t9)
    lui     $t1, %hi(Unknown_0x800da858)
    lui     $a1, %hi(Unknown_0x800da834)
    sll     $t0, $t9, 2
    addu    $t1, $t1, $t0
    lw      $t1, %lo(Unknown_0x800da858)($t1)
    lui     $a0, %hi(Unknown_0x80198070)
    addiu   $a0, $a0, %lo(Unknown_0x80198070)
    sll     $t2, $t1, 2
    addu    $a1, $a1, $t2
    jal     Function_0x800696e0
    lw      $a1, %lo(Unknown_0x800da834)($a1)
    lui     $t3, %hi(Unknown_0x800da750_TrackNr)
    lw      $t3, %lo(Unknown_0x800da750_TrackNr)($t3)
    lui     $t5, %hi(Unknown_0x800da858)
    lui     $a1, %hi(Unknown_4_0x802c760c)
    sll     $t4, $t3, 2
    addu    $t5, $t5, $t4
    lw      $t5, %lo(Unknown_0x800da858)($t5)
    lui     $a0, %hi(Unknown_0x801980b0)
    addiu   $a0, $a0, %lo(Unknown_0x801980b0)
    sll     $t6, $t5, 2
    addu    $a1, $a1, $t6
    jal     Function_0x8006971c
    lw      $a1, %lo(Unknown_4_0x802c760c)($a1)
branch_0x802c58b0:
    lui     $v0, %hi(Unknown_0x801ce358)
    lw      $v0, %lo(Unknown_0x801ce358)($v0)
    lui     $t7, %hi(Unknown_0x80198070)
    lui     $t8, %hi(Unknown_0x801980b0)
    addiu   $t8, $t8, %lo(Unknown_0x801980b0)
    addiu   $t7, $t7, %lo(Unknown_0x80198070)
    lui     $a3, %hi(Unknown_4_0x802c76ac)
    addiu   $a3, $a3, %lo(Unknown_4_0x802c76ac)
    sw      $t7, 0x10($sp)
    sw      $t8, 0x14($sp)
    addiu   $a0, $v0, 0xa80
    addiu   $a1, $v0, 0x1780
    jal     Function_0x80069738
    addiu   $a2, $v0, 0xa40

    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


Function_0x802c58f8: # 0x802c58f8
    lui     $a1, %hi(Unknown_0x801ce368)
    addiu   $a1, $a1, %lo(Unknown_0x801ce368)
    lw      $v1, 0x0($a1)
    addiu   $sp, $sp, -0x10
    addiu   $at, $zero, 0xb
    sw      $s1, 0xc($sp)
    bne     $v1, $at, branch_0x802c5928
    sw      $s0, 0x8($sp)

    addiu   $v0, $zero, 0x1
    lui     $at, %hi(Unknown_4_0x802c7534)
    b       branch_0x802c5934
    sw      $v0, %lo(Unknown_4_0x802c7534)($at)

branch_0x802c5928:
    lui     $at, %hi(Unknown_4_0x802c7534)
    sw      $zero, %lo(Unknown_4_0x802c7534)($at)
    addiu   $v0, $zero, 0x1
branch_0x802c5934:
    lh      $a0, 0x4($a1)
    lui     $t1, %hi(Unknown_0x801cafe8)
    addiu   $t1, $t1, %lo(Unknown_0x801cafe8)
    bne     $v0, $a0, branch_0x802c59a4
    or      $t0, $zero, $zero

    lui     $a1, %hi(Unknown_0x801cafe0)
    lb      $a1, %lo(Unknown_0x801cafe0)($a1)
    lui     $at, %hi(Unknown_4_0x802c76b0)
    sw      $zero, %lo(Unknown_4_0x802c76b0)($at)
    andi    $t6, $a1, 0x8
    beqz    $t6, branch_0x802c5988
    addiu   $s0, $zero, 0x3

    lui     $at, %hi(Unknown_4_0x802c76c8)
    sw      $v0, %lo(Unknown_4_0x802c76c8)($at)
    lui     $at, %hi(Unknown_4_0x802c76d0)
    addiu   $t7, $zero, 0x4
    sw      $t7, %lo(Unknown_4_0x802c76d0)($at)
    lui     $at, %hi(Unknown_4_0x802c76c4)
    sw      $v0, %lo(Unknown_4_0x802c76c4)($at)
    b       branch_0x802c5a00
    addiu   $s0, $zero, 0x3

branch_0x802c5988:
    lui     $at, %hi(Unknown_4_0x802c76c8)
    sw      $zero, %lo(Unknown_4_0x802c76c8)($at)
    lui     $at, %hi(Unknown_4_0x802c76d0)
    sw      $s0, %lo(Unknown_4_0x802c76d0)($at)
    lui     $at, %hi(Unknown_4_0x802c76c4)
    b       branch_0x802c5a00
    sw      $zero, %lo(Unknown_4_0x802c76c4)($at)

branch_0x802c59a4:
    lui     $a1, %hi(Unknown_0x801cafe0)
    lb      $a1, %lo(Unknown_0x801cafe0)($a1)
    addiu   $a2, $zero, 0x2
    lui     $at, %hi(Unknown_4_0x802c76b0)
    andi    $t8, $a1, 0x8
    beqz    $t8, branch_0x802c59e4
    sw      $a2, %lo(Unknown_4_0x802c76b0)($at)

    addiu   $s0, $zero, 0x3
    lui     $at, %hi(Unknown_4_0x802c76c8)
    sw      $s0, %lo(Unknown_4_0x802c76c8)($at)
    lui     $at, %hi(Unknown_4_0x802c76d0)
    addiu   $t9, $zero, 0x4
    sw      $t9, %lo(Unknown_4_0x802c76d0)($at)
    lui     $at, %hi(Unknown_4_0x802c76c4)
    b       branch_0x802c5a00
    sw      $v0, %lo(Unknown_4_0x802c76c4)($at)

branch_0x802c59e4:
    lui     $at, %hi(Unknown_4_0x802c76c8)
    sw      $a2, %lo(Unknown_4_0x802c76c8)($at)
    addiu   $s0, $zero, 0x3
    lui     $at, %hi(Unknown_4_0x802c76d0)
    sw      $s0, %lo(Unknown_4_0x802c76d0)($at)
    lui     $at, %hi(Unknown_4_0x802c76c4)
    sw      $zero, %lo(Unknown_4_0x802c76c4)($at)
branch_0x802c5a00:
    lui     $s1, %hi(Unknown_4_0x802c757c)
    addiu   $s1, $s1, %lo(Unknown_4_0x802c757c)
    or      $a2, $zero, $zero
branch_0x802c5a0c:
    lw      $t2, 0x0($t1)
    addiu   $t1, $t1, 0x4
    or      $t3, $zero, $zero
    addiu   $t2, $t2, 0x1
    blez    $t2, branch_0x802c5a64
    sll     $t6, $a2, 4

    lui     $t7, %hi(Unknown_0x800ea974)
    addiu   $t7, $t7, %lo(Unknown_0x800ea974)
    addu    $t4, $t6, $t7
    sll     $t5, $t2, 1
branch_0x802c5a34:
    bne     $a2, $s0, branch_0x802c5a44
    addiu   $t3, $t3, 0x2

    b       branch_0x802c5a48
    lh      $a3, -0x10($t4)

branch_0x802c5a44:
    lh      $a3, 0x0($t4)
branch_0x802c5a48:
    sll     $t8, $a3, 4
    addu    $t9, $s1, $t8
    slt     $at, $t3, $t5
    addu    $t6, $t9, $t0
    addiu   $t4, $t4, 0x2
    bnez    $at, branch_0x802c5a34
    sw      $v0, 0x0($t6)

branch_0x802c5a64:
    addiu   $a2, $a2, 0x1
    slti    $at, $a2, 0x4
    bnez    $at, branch_0x802c5a0c
    addiu   $t0, $t0, 0x4

    beqz    $v1, branch_0x802c5a80
    or      $a2, $zero, $zero

    bne     $v0, $v1, branch_0x802c5a9c
branch_0x802c5a80:
    andi    $t7, $a1, 0x1
    bnez    $t7, branch_0x802c5a90
    andi    $t8, $a1, 0x2

    sw      $zero, 0x14($s1)
branch_0x802c5a90:
    bnez    $t8, branch_0x802c5a9c
    nop
    sw      $zero, 0x18($s1)
branch_0x802c5a9c:
    lui     $t0, %hi(Unknown_4_0x802c757c)
    lui     $t3, %hi(Unknown_4_0x802c7558_IsTrackUnlocked)
    addiu   $t3, $t3, %lo(Unknown_4_0x802c7558_IsTrackUnlocked)
    addiu   $t0, $t0, %lo(Unknown_4_0x802c757c)
    addiu   $t5, $zero, 0x10
    addiu   $t4, $zero, 0x9
branch_0x802c5ab4:
    or      $a1, $zero, $zero
    or      $t1, $zero, $zero
    or      $t2, $t0, $zero
branch_0x802c5ac0:
    lw      $t9, 0x0($t2)
    addiu   $t1, $t1, 0x4
    beqz    $t9, branch_0x802c5ad8
    nop

    b       branch_0x802c5ae0
    or      $a1, $v0, $zero

branch_0x802c5ad8:
    bne     $t1, $t5, branch_0x802c5ac0
    addiu   $t2, $t2, 0x4

branch_0x802c5ae0:
    beqz    $a1, branch_0x802c5af0
    sll     $t6, $a2, 2

    addu    $t7, $t3, $t6
    sw      $v0, 0x0($t7)
branch_0x802c5af0:
    addiu   $a2, $a2, 0x1
    bne     $a2, $t4, branch_0x802c5ab4
    addiu   $t0, $t0, 0x10

    beqzl   $v1, branch_0x802c5b10
    sw      $zero, 0x0($t3)

    bne     $v0, $v1, branch_0x802c5b10
    nop

    sw      $zero, 0x0($t3)
branch_0x802c5b10:
    bne     $v0, $a0, branch_0x802c5b3c
    nop

    bnez    $v1, branch_0x802c5b2c
    lui     $v1, %hi(Unknown_4_0x802c76a4)

    addiu   $v1, $v1, %lo(Unknown_4_0x802c76a4)
    b       branch_0x802c5b48
    sw      $v0, 0x0($v1)

branch_0x802c5b2c:
    lui     $v1, %hi(Unknown_4_0x802c76a4)
    addiu   $v1, $v1, %lo(Unknown_4_0x802c76a4)
    b       branch_0x802c5b48
    sw      $zero, 0x0($v1)

branch_0x802c5b3c:
    lui     $v1, %hi(Unknown_4_0x802c76a4)
    addiu   $v1, $v1, %lo(Unknown_4_0x802c76a4)
    sw      $v0, 0x0($v1)
branch_0x802c5b48:
    lui     $a0, %hi(Unknown_0x800da750_TrackNr)
    addiu   $a0, $a0, %lo(Unknown_0x800da750_TrackNr)
    lw      $t8, 0x0($a0)
    lw      $v0, 0x0($v1)
    slt     $at, $t8, $v0
    beqzl   $at, branch_0x802c5b6c
    lw      $s0, 0x8($sp)

    sw      $v0, 0x0($a0)
    lw      $s0, 0x8($sp)
branch_0x802c5b6c:
    lw      $s1, 0xc($sp)
    jr      $ra
    addiu   $sp, $sp, 0x10


/* Input:
a0:
*/
.globl Function_4_0x802c5b78_SelectCourseMain
Function_4_0x802c5b78_SelectCourseMain: # 0x802c5b78
    lui     $v0, %hi(Unknown_0x801ce39c)
    addiu   $v0, $v0, %lo(Unknown_0x801ce39c)
    lw      $t6, 0x0($v0)
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)
    beqz    $t6, branch_0x802c5bc4
    sw      $a0, 0x18($sp)

    sw      $zero, 0x0($v0)
    lui     $t7, %hi(Unknown_0x800da8a4_mainState)
    lw      $t7, %lo(Unknown_0x800da8a4_mainState)($t7)
    addiu   $at, $zero, MainState_14
    bne     $t7, $at, branch_0x802c5bc4
    nop

    jal     osViBlack
    or      $a0, $zero, $zero
    jal     Function_0x800939e4
    lw      $a0, 0x18($sp)
    b       branch_0x802c5cd0
    lw      $ra, 0x14($sp)

branch_0x802c5bc4:
    lui     $t8, %hi(Unknown_0x800da750_TrackNr)
    lw      $t8, %lo(Unknown_0x800da750_TrackNr)($t8)
    lui     $at, %hi(Unknown_4_0x802c76a8)
    lw      $a0, 0x18($sp)
    sw      $t8, %lo(Unknown_4_0x802c76a8)($at)
    lui     $at, %hi(Unknown_0x800da8ac)
    jal     Function_0x8008f914
    sw      $zero, %lo(Unknown_0x800da8ac)($at)
    lui     $a1, %hi(Unknown_0x800d7ef0_TrackNr)
    lw      $a1, %lo(Unknown_0x800d7ef0_TrackNr)($a1)
    jal     Function_0x80094758
    or      $a0, $v0, $zero
    jal     Function_0x80090cf8_DrawWaterBG
    or      $a0, $v0, $zero
    jal     Function_0x802c5cdc_DrawCourseSelectMenu
    or      $a0, $v0, $zero
    addiu   $t9, $v0, 0x8
    sw      $t9, 0x18($sp)
    lui     $t1, %hi(0x106f168)
    addiu   $t1, $t1, %lo(0x106f168)
    lui     $t0, %hi(0x6000000)
    sw      $t0, 0x0($v0)
    sw      $t1, 0x4($v0)
    lui     $t2, %hi(Unknown_0x800da8a4_mainState)
    lw      $t2, %lo(Unknown_0x800da8a4_mainState)($t2)
    addiu   $at, $zero, MainState_14
    lui     $t3, %hi(Unknown_0x802287d6)
    bne     $t2, $at, branch_0x802c5c48
    nop

    jal     Function_0x802c6bac_MenuInput
	nop
    b       branch_0x802c5ccc
    lw      $v0, 0x18($sp)

branch_0x802c5c48:
    lh      $t3, %lo(Unknown_0x802287d6)($t3)
    addiu   $at, $zero, 0x1
    lui     $v0, %hi(Unknown_0x801ce390_MainState)
    bnel    $t3, $at, branch_0x802c5ccc
    lw      $v0, 0x18($sp)

    lw      $v0, %lo(Unknown_0x801ce390_MainState)($v0)
    addiu   $at, $zero, MainState_a
    beq     $v0, $at, branch_0x802c5cc0_StateA
    addiu   $at, $zero, MainState_28

    bne     $v0, $at, branch_0x802c5cc8_notState28
    lui     $t4, %hi(Unknown_0x800da750_TrackNr)

    lw      $t4, %lo(Unknown_0x800da750_TrackNr)($t4)
    lui     $t6, %hi(Unknown_0x800da858)
    lui     $v0, %hi(Unknown_0x800d7ef0_TrackNr)
    sll     $t5, $t4, 2
    addu    $t6, $t6, $t5
    lw      $t6, %lo(Unknown_0x800da858)($t6)
    addiu   $v0, $v0, %lo(Unknown_0x800d7ef0_TrackNr)
    lui     $t7, %hi(Unknown_0x800d7fc0)
    sw      $t6, 0x0($v0)
    lw      $t7, %lo(Unknown_0x800d7fc0)($t7)
    lui     $t8, %hi(Unknown_0x801c3770)
    beqz    $t7, branch_0x802c5cb0
    nop

    lw      $t8, %lo(Unknown_0x801c3770)($t8)
    sw      $t8, 0x0($v0)
branch_0x802c5cb0:
    jal     Function_ChangeStateTo28
    nop
    b       branch_0x802c5ccc
    lw      $v0, 0x18($sp)

branch_0x802c5cc0_StateA:
    jal     Function_ChangeStateToA
    nop
branch_0x802c5cc8_notState28:
    lw      $v0, 0x18($sp)
branch_0x802c5ccc:
    lw      $ra, 0x14($sp)
branch_0x802c5cd0:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x802c5cdc_DrawCourseSelectMenu
Function_0x802c5cdc_DrawCourseSelectMenu: # 0x802c5cdc
    addiu   $sp, $sp, 0xff28
    sw      $s2, 0x48($sp)
    sw      $s1, 0x44($sp)
    sw      $ra, 0x54($sp)
    sw      $s4, 0x50($sp)
    sw      $s3, 0x4c($sp)
    sw      $s0, 0x40($sp)
    lui     $s1, %hi(0x80a6db0)
    lui     $s2, %hi(0x6000000)
    addiu   $s1, $s1, %lo(0x80a6db0)
    sw      $s1, 0x4($a0)
    sw      $s2, 0x0($a0)
    addiu   $v1, $a0, 0x8
    lui     $t6, %hi(0xf647c278)
    lui     $t7, %hi(0x2480d4)
    ori     $t7, $t7, %lo(0x2480d4)
    ori     $t6, $t6, %lo(0xf647c278)
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    jal     Function_0x802c6778_DrawTrackPreview
    addiu   $a0, $v1, 0x8
    lui     $t8, %hi(Unknown_4_0x802c7540)
    lw      $t8, %lo(Unknown_4_0x802c7540)($t8)
    or      $s0, $v0, $zero
    lui     $a1, %hi(Unknown_4_0x802c76b4)
    beqz    $t8, branch_0x802c5dd8
    addiu   $a3, $zero, 0x18

    sw      $s2, 0x0($v0)
    sw      $s1, 0x4($v0)
    addiu   $a1, $a1, %lo(Unknown_4_0x802c76b4)
    lui     $t6, %hi(Unknown_4_0x802c76bc)
    lw      $t6, %lo(Unknown_4_0x802c76bc)($t6)
    lw      $t9, 0x0($a1)
    lui     $a2, %hi(Unknown_4_0x802c76b8)
    addiu   $a2, $a2, %lo(Unknown_4_0x802c76b8)
    addu    $t7, $t9, $t6
    addiu   $t8, $t7, 0x7
    andi    $t9, $t8, 0x3ff
    sll     $t6, $t9, 14
    lui     $t9, %hi(Unknown_4_0x802c76c0)
    lw      $t9, %lo(Unknown_4_0x802c76c0)($t9)
    lw      $t8, 0x0($a2)
    lui     $at, %hi(0xf6000000)
    or      $t7, $t6, $at
    addu    $t6, $t8, $t9
    addiu   $t8, $t6, 0x13
    andi    $t9, $t8, 0x3ff
    addiu   $s0, $v0, 0x8
    sll     $t6, $t9, 2
    or      $t8, $t7, $t6
    or      $a0, $s0, $zero
    sw      $t8, 0x0($a0)
    lw      $t9, 0x0($a1)
    addiu   $s0, $s0, 0x8
    addiu   $t7, $t9, 0x8
    lw      $t9, 0x0($a2)
    andi    $t6, $t7, 0x3ff
    sll     $t8, $t6, 14
    addiu   $t7, $t9, 0x14
    andi    $t6, $t7, 0x3ff
    sll     $t9, $t6, 2
    or      $t7, $t8, $t9
    sw      $t7, 0x4($a0)

branch_0x802c5dd8:
    or      $v0, $s0, $zero
    lui     $t6, %hi(0x106f628)
    addiu   $t6, $t6, %lo(0x106f628)
    sw      $t6, 0x4($v0)
    sw      $s2, 0x0($v0)
    addiu   $t8, $zero, 0x108
    addiu   $t9, $zero, 0x18
    addiu   $a0, $s0, 0x8
    sw      $t9, 0x14($sp)
    sw      $t8, 0x10($sp)
    or      $a1, $zero, $zero
    jal     Function_0x800940d8
    addiu   $a2, $zero, 0x1c

    lui     $t7, %hi(Unknown_0x801ce368)
    lw      $t7, %lo(Unknown_0x801ce368)($t7)
    addiu   $s4, $zero, 0xb
    or      $s0, $v0, $zero
    bne     $s4, $t7, branch_0x802c5e74
    or      $a0, $s0, $zero
    addiu   $t6, $zero, 0x65
    addiu   $t8, $zero, 0xa
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xb9

    addiu   $t9, $zero, 0x65
    addiu   $t7, $zero, 0x10
    sw      $t7, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xc5

    b       branch_0x802c5f04
    or      $s0, $v0, $zero

branch_0x802c5e74:
    addiu   $t6, $zero, 0x65
    addiu   $t8, $zero, 0xc
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xa1

    addiu   $t9, $zero, 0x65
    addiu   $t7, $zero, 0xc
    sw      $t7, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xae

    addiu   $t6, $zero, 0x65
    addiu   $t8, $zero, 0xc
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xbc

    addiu   $t9, $zero, 0x65
    addiu   $t7, $zero, 0xc
    sw      $t7, 0x14($sp)
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xab
    jal     Function_0x800940d8
    addiu   $a3, $zero, 0xc9

    or      $s0, $v0, $zero
branch_0x802c5f04:
    addiu   $a3, $zero, 0x35
    addiu   $t6, $zero, 0x76
branch_0x802c5f0c:
    addiu   $t8, $zero, 0x10
    sw      $t8, 0x14($sp)
    sw      $t6, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x1c
    jal     Function_0x800940d8
    sw      $a3, 0x58($sp)

    lw      $a3, 0x58($sp)
    or      $s0, $v0, $zero
    addiu   $a3, $a3, 0x12
    slti    $at, $a3, 0xd7
    bnezl   $at, branch_0x802c5f0c
    addiu   $t6, $zero, 0x76
    lui     $t9, %hi(Unknown_4_0x802c7548)
    lw      $t9, %lo(Unknown_4_0x802c7548)($t9)
    lui     $v0, %hi(Unknown_4_0x802c76c8)
    beqzl   $t9, branch_0x802c6128
    addiu   $t6, $zero, 0xff

    lw      $v0, %lo(Unknown_4_0x802c76c8)($v0)
    addiu   $at, $zero, 0x1
    or      $a0, $s0, $zero
    beqz    $v0, branch_0x802c5f90
    addiu   $a1, $zero, 0xa2

    beq     $v0, $at, branch_0x802c5f90
    addiu   $at, $zero, 0x2

    beq     $v0, $at, branch_0x802c5fa0
    or      $a0, $s0, $zero

    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x802c5fa4
    addiu   $a1, $zero, 0xa2

    b       branch_0x802c6128
    addiu   $t6, $zero, 0xff

branch_0x802c5f90:
    jal     Function_0x802c69c4
    addiu   $a2, $zero, 0x49
    b       branch_0x802c6124
    or      $s0, $v0, $zero

branch_0x802c5fa0:
    addiu   $a1, $zero, 0xa2
branch_0x802c5fa4:
    jal     Function_0x802c69c4
    addiu   $a2, $zero, 0x37
    lui     $s2, %hi(0x7080200)
    lui     $s1, %hi(0x80a3dd8)
    lui     $ra, %hi(0xfd100075)
    lui     $t4, %hi(0xf5103c00)
    or      $s0, $v0, $zero
    ori     $t4, $t4, %lo(0xf5103c00)
    ori     $ra, $ra, %lo(0xfd100075)
    addiu   $s1, $s1, %lo(0x80a3dd8)
    ori     $s2, $s2, %lo(0x7080200)
    or      $t2, $zero, $zero
    or      $t3, $zero, $zero
    addiu   $a3, $zero, 0x7c
    lui     $s3, %hi(0xe6000000)
    addiu   $t5, $zero, 0x8d
branch_0x802c5fe4:
    beq     $a3, $t5, branch_0x802c5ff4
    or      $v0, $s0, $zero

    b       branch_0x802c5ff8
    addiu   $a2, $zero, 0x11

branch_0x802c5ff4:
    addiu   $a2, $zero, 0x10
branch_0x802c5ff8:
    sll     $t7, $t2, 1
    addu    $t6, $s1, $t7
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    sw      $t6, 0x4($v0)
    addiu   $s0, $s0, 0x8
    sw      $ra, 0x0($v0)
    or      $a0, $s0, $zero
    addiu   $s0, $s0, 0x8
    sw      $s2, 0x4($v1)
    sw      $t4, 0x0($v1)
    addiu   $t0, $a2, -1
    sll     $t9, $t0, 2
    or      $a1, $s0, $zero
    lui     $at, %hi(0x71d4000)
    ori     $at, $at, %lo(0x71d4000)
    andi    $t0, $t9, 0xfff
    sw      $zero, 0x4($a0)
    sw      $s3, 0x0($a0)
    or      $t6, $t0, $at
    addiu   $s0, $s0, 0x8
    lui     $t8, %hi(0xf4000000)
    sw      $t8, 0x0($a1)
    or      $t1, $s0, $zero
    sw      $t6, 0x4($a1)
    addiu   $s0, $s0, 0x8
    lui     $t8, %hi(0xe7000000)
    sw      $t8, 0x0($t1)
    or      $v0, $s0, $zero
    lui     $t9, %hi(0x80200)
    ori     $t9, $t9, %lo(0x80200)
    sw      $zero, 0x4($t1)
    lui     $at, %hi(0x1d4000)
    ori     $at, $at, %lo(0x1d4000)
    sw      $t9, 0x4($v0)
    addiu   $s0, $s0, 0x8
    or      $v1, $s0, $zero
    or      $t6, $t0, $at
    sw      $t4, 0x0($v0)
    lui     $t7, %hi(0xf2000000)
    addu    $t8, $t3, $a2
    sw      $t7, 0x0($v1)
    addiu   $t9, $t8, 0x7c
    sw      $t6, 0x4($v1)
    sll     $t7, $t9, 2
    andi    $t6, $t7, 0xfff
    lui     $at, %hi(0xe4460000)
    addiu   $s0, $s0, 0x8
    or      $t8, $t6, $at
    lui     $at, %hi(0x278000)
    or      $a0, $s0, $zero
    sll     $t9, $a3, 2
    andi    $t7, $t9, 0xfff
    addiu   $s0, $s0, 0x8
    ori     $at, $at, %lo(0x278000)
    or      $t6, $t7, $at
    or      $a1, $s0, $zero
    sw      $t8, 0x0($a0)
    addiu   $s0, $s0, 0x8
    sw      $t6, 0x4($a0)
    or      $v0, $s0, $zero
    lui     $t8, %hi(0xb3000000)
    lui     $t7, %hi(0x4000400)
    addiu   $at, $zero, 0x9e
    addiu   $a3, $a3, 0x11
    ori     $t7, $t7, %lo(0x4000400)
    sw      $t8, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t9, %hi(0xb2000000)
    addiu   $t3, $t3, 0x11
    addiu   $t2, $t2, 0x7d6
    sw      $t9, 0x0($v0)
    sw      $t7, 0x4($v0)
    bne     $a3, $at, branch_0x802c5fe4
    addiu   $s0, $s0, 0x8

branch_0x802c6124:
    addiu   $t6, $zero, 0xff
branch_0x802c6128:
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x24($sp)
    sw      $t8, 0x34($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x20($sp)
    sw      $t6, 0x30($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    addiu   $a3, $zero, 0xff

    addiu   $t9, $zero, 0x1b
    sw      $t9, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    addiu   $a2, $zero, 0x4
    addiu   $a3, $zero, 0x40
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)

    lui     $t7, %hi(Unknown_0x801ce368)
    lw      $t7, %lo(Unknown_0x801ce368)($t7)
    or      $s0, $v0, $zero
    or      $a0, $v0, $zero
    bne     $s4, $t7, branch_0x802c6214
    or      $a1, $zero, $zero
    addiu   $t6, $zero, 0xba
    sw      $t6, 0x10($sp)
    addiu   $a2, $zero, 0x1e
    addiu   $a3, $zero, 0xbf
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)

    lui     $s4, %hi(Unknown_0x800da750_TrackNr)
    addiu   $s4, $s4, %lo(Unknown_0x800da750_TrackNr)
    lw      $t8, 0x0($s4)
    lui     $t7, %hi(Unknown_0x800da858)
    lui     $a2, %hi(Unknown_0x801c2448)
    sll     $t9, $t8, 2
    addu    $t7, $t7, $t9
    lw      $t7, %lo(Unknown_0x800da858)($t7)
    addiu   $t8, $zero, 0xc8
    sw      $t8, 0x10($sp)
    sll     $t6, $t7, 2
    subu    $t6, $t6, $t7
    sll     $t6, $t6, 4
    addu    $a2, $a2, $t6
    lw      $a2, %lo(Unknown_0x801c2448)($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x2
    jal     Function_0x80093fa0
    addiu   $a3, $zero, 0xbf
    b       branch_0x802c637c
    or      $s0, $v0, $zero

branch_0x802c6214:
    addiu   $t9, $zero, 0xa3
    sw      $t9, 0x10($sp)
    or      $a0, $s0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xe
    addiu   $a3, $zero, 0xc3
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)

    addiu   $t7, $zero, 0xbe
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0xd
    addiu   $a3, $zero, 0xc5
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)

    lui     $t6, %hi(Unknown_4_0x802c754c_SelectedDifficulty)
    lw      $t6, %lo(Unknown_4_0x802c754c_SelectedDifficulty)($t6)
    addiu   $at, $zero, Difficulty_3
    or      $s0, $v0, $zero
    bne     $t6, $at, branch_0x802c62e8
    lui     $t8, %hi(Unknown_4_0x802c7548)

    lw      $t8, %lo(Unknown_4_0x802c7548)($t8)
    lui     $s4, %hi(Unknown_0x800da750_TrackNr)
    addiu   $s4, $s4, %lo(Unknown_0x800da750_TrackNr)
    beqz    $t8, branch_0x802c62e8
    or      $a0, $v0, $zero

    lw      $t9, 0x0($s4)
    lui     $t6, %hi(Unknown_0x800da858)
    lui     $a2, %hi(Unknown_0x801c2110)
    sll     $t7, $t9, 2
    addu    $t6, $t6, $t7
    lw      $t6, %lo(Unknown_0x800da858)($t6)
    addiu   $t9, $zero, 0xb0
    sw      $t9, 0x10($sp)
    sll     $t8, $t6, 2
    addu    $t8, $t8, $t6
    sll     $t8, $t8, 2
    addu    $a2, $a2, $t8
    lw      $a2, %lo(Unknown_0x801c2110)($a2)
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e8884
    addiu   $a3, $zero, 0xc3
    lui     $a2, %hi(Unknown_4_0x802c7690)
    addiu   $t7, $zero, 0xcb
    sw      $t7, 0x10($sp)
    addiu   $a2, $a2, %lo(Unknown_4_0x802c7690)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e95e0
    addiu   $a3, $zero, 0xc3
    b       branch_0x802c637c
    or      $s0, $v0, $zero

branch_0x802c62e8:
    lui     $s4, %hi(Unknown_0x800da750_TrackNr)
    addiu   $s4, $s4, %lo(Unknown_0x800da750_TrackNr)
    lw      $t6, 0x0($s4)
    lui     $t9, %hi(Unknown_0x800da858)
    lui     $a2, %hi(Unknown_0x801c1d50)
    sll     $t8, $t6, 2
    addu    $t9, $t9, $t8
    lw      $t9, %lo(Unknown_0x800da858)($t9)
    addiu   $t6, $zero, 0xb0
    sw      $t6, 0x10($sp)
    sll     $t7, $t9, 4
    subu    $t7, $t7, $t9
    sll     $t7, $t7, 2
    addu    $a2, $a2, $t7
    lw      $a2, %lo(Unknown_0x801c1d50)($a2)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e8884
    addiu   $a3, $zero, 0xc3

    lw      $t8, 0x0($s4)
    lui     $t7, %hi(Unknown_0x800da858)
    lui     $a2, %hi(Unknown_0x801c2020)
    sll     $t9, $t8, 2
    addu    $t7, $t7, $t9
    lw      $t7, %lo(Unknown_0x800da858)($t7)
    addiu   $t8, $zero, 0xcb
    sw      $t8, 0x10($sp)
    sll     $t6, $t7, 2
    addu    $t6, $t6, $t7
    sll     $t6, $t6, 2
    addu    $a2, $a2, $t6
    lw      $a2, %lo(Unknown_0x801c2020)($a2)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e8884
    addiu   $a3, $zero, 0xc3

    or      $s0, $v0, $zero
branch_0x802c637c:
    lui     $s2, %hi(Unknown_0x800da858)
    addiu   $s2, $s2, %lo(Unknown_0x800da858)
    or      $s1, $zero, $zero
    addiu   $s3, $zero, 0x38
branch_0x802c638c:
    lw      $t9, 0x0($s4)
    or      $a0, $s0, $zero
    addiu   $a2, $zero, 0x80
    bne     $s1, $t9, branch_0x802c63a8
    addiu   $a3, $zero, 0x80
    b       branch_0x802c63d0
    addiu   $a1, $zero, 0x6			# colour changing palette

branch_0x802c63a8:
    lw      $t7, 0x0($s2)
    lui     $t8, %hi(Unknown_4_0x802c7558_IsTrackUnlocked)
    addiu   $a1, $zero, 0x7			# grey palette
    sll     $t6, $t7, 2
    addu    $t8, $t8, $t6
    lw      $t8, %lo(Unknown_4_0x802c7558_IsTrackUnlocked)($t8)
    beqz    $t8, branch_0x802c63d0
    nop

    b       branch_0x802c63d0
    or      $a1, $zero, $zero		# white palette

branch_0x802c63d0:
    addiu   $t9, $zero, 0x80
    sw      $t9, 0x10($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    sw      $t9, 0x20($sp)
    sw      $t9, 0x30($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x24($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t7, 0x34($sp)

    lw      $v1, 0x0($s2)
    lui     $a3, %hi(Unknown_4_0x802c7660)
    lui     $a2, %hi(Unknown_0x800da790)
    sll     $t6, $v1, 2
    addu    $a3, $a3, $t6
    lw      $a3, %lo(Unknown_4_0x802c7660)($a3)
    addu    $a2, $a2, $t6
    lw      $a2, %lo(Unknown_0x800da790)($a2)
    or      $v1, $t6, $zero
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    sw      $s3, 0x10($sp)
    sw      $zero, 0x14($sp)
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0x30

    addiu   $s1, $s1, 0x1
    slti    $at, $s1, 0x9
    addiu   $s2, $s2, 0x4
    addiu   $s3, $s3, 0x12
    bnez    $at, branch_0x802c638c
    or      $s0, $v0, $zero

    lui     $t8, %hi(Unknown_4_0x802c7548)
    lw      $t8, %lo(Unknown_4_0x802c7548)($t8)
    lui     $t9, %hi(Unknown_0x801ce36c)
    beqzl   $t8, branch_0x802c6758
    lw      $ra, 0x54($sp)

    lh      $t9, %lo(Unknown_0x801ce36c)($t9)
    addiu   $at, $zero, 0x1
    or      $v0, $zero, $zero
    bne     $t9, $at, branch_0x802c64ac
    lui     $t8, %hi(Unknown_4_0x802c76c4)
    lui     $t7, %hi(Unknown_4_0x802c76c4)
    lw      $t7, %lo(Unknown_4_0x802c76c4)($t7)
    addiu   $t6, $zero, 0x41
    beqz    $t7, branch_0x802c64a4
    nop

    addiu   $v0, $zero, 0xfffa
branch_0x802c64a4:
    b       branch_0x802c65fc
    sw      $t6, 0xc8($sp)

branch_0x802c64ac:
    lw      $t8, %lo(Unknown_4_0x802c76c4)($t8)
    addiu   $t9, $zero, 0x2f
    or      $a0, $s0, $zero
    beqz    $t8, branch_0x802c64c4
    or      $a1, $zero, $zero

    addiu   $v0, $zero, 0xfff8
branch_0x802c64c4:
    sw      $t9, 0xc8($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x18($sp)
    sw      $t8, 0x28($sp)
    sw      $t9, 0x1c($sp)
    sw      $t9, 0x2c($sp)
    sw      $t6, 0x14($sp)
    sw      $t6, 0x24($sp)
    sw      $t6, 0x34($sp)
    sw      $t7, 0x10($sp)
    sw      $t7, 0x20($sp)
    sw      $t7, 0x30($sp)
    addiu   $a2, $zero, 0xff
    addiu   $a3, $zero, 0xff
    jal     Function_0x801e91f4_changePalette
    sw      $v0, 0xcc($sp)

    addiu   $t8, $zero, 0x80
    sw      $t8, 0x10($sp)
    or      $a0, $v0, $zero
    or      $a1, $zero, $zero
    addiu   $a2, $zero, 0x20
    addiu   $a3, $zero, 0xc3
    jal     Function_0x801e3c40_DrawCourseNames
    sw      $zero, 0x14($sp)

    lui     $s2, %hi(Unknown_4_0x802c7650)
    lui     $s3, %hi(Unknown_4_0x802c7554)
    or      $s0, $v0, $zero
    addiu   $s3, $s3, %lo(Unknown_4_0x802c7554)
    addiu   $s2, $s2, %lo(Unknown_4_0x802c7650)
    or      $s1, $zero, $zero
branch_0x802c6548:
    lw      $t9, 0x0($s3)
    or      $a0, $s0, $zero
    addiu   $a2, $zero, 0xff
    beqz    $t9, branch_0x802c657c
    addiu   $a3, $zero, 0xff

    lui     $t7, %hi(Unknown_0x800da784)
    lw      $t7, %lo(Unknown_0x800da784)($t7)
    bne     $s1, $t7, branch_0x802c6574
    nop
    b       branch_0x802c6580
    addiu   $a1, $zero, 0x6

branch_0x802c6574:
    b       branch_0x802c6580
    or      $a1, $zero, $zero

branch_0x802c657c:
    or      $a1, $zero, $zero
branch_0x802c6580:
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t7, $zero, 0xff
    sw      $t7, 0x1c($sp)
    sw      $t7, 0x2c($sp)
    sw      $t9, 0x18($sp)
    sw      $t9, 0x28($sp)
    sw      $t8, 0x14($sp)
    sw      $t8, 0x24($sp)
    sw      $t8, 0x34($sp)
    sw      $t6, 0x10($sp)
    sw      $t6, 0x20($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t6, 0x30($sp)

    lh      $a3, 0x0($s2)
    addiu   $t9, $zero, 0x8f
    subu    $t7, $t9, $s1
    lw      $a2, 0x4($s2)
    sw      $zero, 0x14($sp)
    sw      $t7, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xc1

    addiu   $s1, $s1, 0x1
    addiu   $at, $zero, 0x2
    addiu   $s2, $s2, 0x8
    bne     $s1, $at, branch_0x802c6548
    or      $s0, $v0, $zero

    lw      $v0, 0xcc($sp)
branch_0x802c65fc:
    lui     $t6, %hi(Unknown_4_0x802c76d0)
    lw      $t6, %lo(Unknown_4_0x802c76d0)($t6)
    lui     $s2, %hi(Unknown_4_0x802c7630)
    addiu   $s2, $s2, %lo(Unknown_4_0x802c7630)
    blez    $t6, branch_0x802c6754
    or      $s1, $zero, $zero # Difficulty_0

    lw      $t8, 0xc8($sp)
    addu    $s3, $t8, $v0
    addiu   $s3, $s3, 0x14
branch_0x802c6620:
    lui     $t9, %hi(Unknown_4_0x802c7550)
    lw      $t9, %lo(Unknown_4_0x802c7550)($t9)
    or      $a0, $s0, $zero
    addiu   $a2, $zero, 0x80
    beqz    $t9, branch_0x802c6694
    addiu   $a3, $zero, 0x80

    lui     $t7, %hi(Unknown_4_0x802c754c_SelectedDifficulty)
    lw      $t7, %lo(Unknown_4_0x802c754c_SelectedDifficulty)($t7)
    bnel    $s1, $t7, branch_0x802c6654
    lw      $t6, 0x0($s4)
    b       branch_0x802c66d4
    addiu   $a1, $zero, 0x6

# 0x802c6650
    lw      $t6, 0x0($s4)
branch_0x802c6654:
    lui     $t9, %hi(Unknown_0x800da858)
    sll     $t8, $t6, 2
    addu    $t9, $t9, $t8
    lw      $t9, %lo(Unknown_0x800da858)($t9)
    sll     $t6, $s1, 2
    sll     $t7, $t9, 4
    addu    $t8, $t7, $t6
    lui     $t9, %hi(Unknown_4_0x802c757c)
    addu    $t9, $t9, $t8
    lw      $t9, %lo(Unknown_4_0x802c757c)($t9)
    bnez    $t9, branch_0x802c668c
    nop

    b       branch_0x802c66d4
    addiu   $a1, $zero, 0x7

branch_0x802c668c:
    b       branch_0x802c66d4
    or      $a1, $zero, $zero

branch_0x802c6694:
    lw      $t7, 0x0($s4)
    lui     $t8, %hi(Unknown_0x800da858)
    or      $a1, $zero, $zero
    sll     $t6, $t7, 2
    addu    $t8, $t8, $t6
    lw      $t8, %lo(Unknown_0x800da858)($t8)
    sll     $t7, $s1, 2
    sll     $t9, $t8, 4
    addu    $t6, $t9, $t7
    lui     $t8, %hi(Unknown_4_0x802c757c)
    addu    $t8, $t8, $t6
    lw      $t8, %lo(Unknown_4_0x802c757c)($t8)
    bnez    $t8, branch_0x802c66d4
    nop

    b       branch_0x802c66d4
    addiu   $a1, $zero, 0x7

branch_0x802c66d4:
    addiu   $t9, $zero, 0x80
    sw      $t9, 0x10($sp)
    addiu   $t7, $zero, 0xff
    addiu   $t9, $zero, 0xff
    addiu   $t6, $zero, 0xff
    addiu   $t8, $zero, 0xff
    sw      $t8, 0x1c($sp)
    sw      $t8, 0x2c($sp)
    sw      $t6, 0x18($sp)
    sw      $t6, 0x28($sp)
    sw      $t9, 0x20($sp)
    sw      $t9, 0x30($sp)
    sw      $t7, 0x14($sp)
    sw      $t7, 0x24($sp)
    jal     Function_0x801e91f4_changePalette
    sw      $t7, 0x34($sp)

    lh      $a3, 0x0($s2)
    lw      $a2, 0x4($s2)
    sw      $zero, 0x14($sp)
    sw      $s3, 0x10($sp)
    or      $a0, $v0, $zero
    addiu   $a1, $zero, 0x1
    jal     Function_0x801e3c40_DrawCourseNames
    addiu   $a3, $a3, 0xc2

    lui     $t6, %hi(Unknown_4_0x802c76d0)
    lw      $t6, %lo(Unknown_4_0x802c76d0)($t6)
    addiu   $s1, $s1, 0x1
    addiu   $s3, $s3, 0xf
    slt     $at, $s1, $t6
    addiu   $s2, $s2, 0x8
    bnez    $at, branch_0x802c6620
    or      $s0, $v0, $zero

branch_0x802c6754:
    lw      $ra, 0x54($sp)
branch_0x802c6758:
    or      $v0, $s0, $zero
    lw      $s0, 0x40($sp)
    lw      $s1, 0x44($sp)
    lw      $s2, 0x48($sp)
    lw      $s3, 0x4c($sp)
    lw      $s4, 0x50($sp)
    jr      $ra
    addiu   $sp, $sp, 0xd8


Function_0x802c6778_DrawTrackPreview: # 0x802c6778
    lui     $t6, %hi(Unknown_0x800da750_TrackNr)
    lw      $t6, %lo(Unknown_0x800da750_TrackNr)($t6)
    lui     $t8, %hi(Unknown_4_0x802c7534)
    lw      $t8, %lo(Unknown_4_0x802c7534)($t8)
    lui     $a2, %hi(Unknown_0x800da858)
    sll     $t7, $t6, 2
    addu    $a2, $a2, $t7
    bnez    $t8, branch_0x802c67b0
    lw      $a2, %lo(Unknown_0x800da858)($a2)

    lui     $t9, %hi(Unknown_0x800DB378)
    addiu   $t9, $t9, %lo(Unknown_0x800DB378)
    sll     $v0, $a2, 3
    b       branch_0x802c67c0
    addu    $a3, $v0, $t9

branch_0x802c67b0:
    lui     $t5, %hi(Unknown_0x800db450)
    addiu   $t5, $t5, %lo(Unknown_0x800db450)
    sll     $v0, $a2, 3
    addu    $a3, $v0, $t5
branch_0x802c67c0:
    or      $v1, $a0, $zero
    lui     $t6, %hi(0x80a6e00)
    lui     $a1, %hi(0x6000000)
    addiu   $t6, $t6, %lo(0x80a6e00)
    sw      $t6, 0x4($v1)
    sw      $a1, 0x0($v1)
    lui     $t0, %hi(0xe7000000)
    addiu   $a0, $a0, 0x8
    lui     $t7, %hi(0xff10013f)
    addiu   $t2, $a0, 0x8
    sw      $t0, 0x0($a0)
    sw      $zero, 0x4($a0)
    ori     $t7, $t7, %lo(0xff10013f)
    sw      $t7, 0x0($t2)
    lui     $t8, %hi(Unknown_0x801516a8)
    lw      $t8, %lo(Unknown_0x801516a8)($t8)
    lui     $t5, %hi(Unknown_0x80154020)
    lui     $at, %hi(0x80000000)
    sll     $t9, $t8, 2
    addu    $t5, $t5, $t9
    lw      $t5, %lo(Unknown_0x80154020)($t5)
    addiu   $t3, $t2, 0x8
    lui     $t7, %hi(0xb4000000)
    addu    $t6, $t5, $at
    sw      $t6, 0x4($t2)
    sw      $t7, 0x0($t3)
    lui     $t8, %hi(Unknown_4_0x802c76ac)
    lhu     $t8, %lo(Unknown_4_0x802c76ac)($t8)
    addiu   $t4, $t3, 0x8
    lui     $t5, %hi(0x7000a40)
    lui     $t9, %hi(0x1030040)
    sw      $t8, 0x4($t3)
    ori     $t9, $t9, %lo(0x1030040)
    addiu   $t5, $t5, %lo(0x7000a40)
    lui     $t6, %hi(0x1020040)
    sw      $t5, 0x4($t4)
    sw      $t9, 0x0($t4)
    addiu   $v1, $t4, 0x8
    ori     $t6, $t6, %lo(0x1020040)
    sw      $t6, 0x0($v1)
    lui     $t7, %hi(Unknown_0x801ce358)
    lw      $t7, %lo(Unknown_0x801ce358)($t7)
    addiu   $t1, $v1, 0x8
    lui     $t9, %hi(0x3800010)
    addiu   $t8, $t7, 0xa80
    sw      $t8, 0x4($v1)
    lui     $t5, %hi(0x106f738)
    addiu   $t5, $t5, %lo(0x106f738)
    ori     $t9, $t9, %lo(0x3800010)
    sw      $t9, 0x0($t1)
    sw      $t5, 0x4($t1)
    addiu   $a0, $t1, 0x8
    lui     $t6, %hi(0x106f748)
    addiu   $t6, $t6, %lo(0x106f748)
    sw      $t6, 0x4($a0)
    addiu   $t3, $a0, 0x8
    sw      $a1, 0x0($a0)
    addiu   $t4, $t3, 0x8
    addiu   $t8, $zero, 0xffff
    lui     $t7, %hi(0xfb000000)
    sw      $t7, 0x0($t3)
    sw      $t8, 0x4($t3)
    lui     $t5, %hi(0x49027c)
    lui     $t9, %hi(0xed2480d4)
    ori     $t9, $t9, %lo(0xed2480d4)
    ori     $t5, $t5, %lo(0x49027c)
    lui     $t6, %hi(Unknown_0x800DB330)
    sw      $t5, 0x4($t4)
    sw      $t9, 0x0($t4)
    addiu   $t2, $t4, 0x8
    addiu   $t6, $t6, %lo(Unknown_0x800DB330)
    addu    $t1, $v0, $t6
    sw      $a1, 0x0($t2)
    lw      $t7, 0x0($t1)
    sll     $v1, $a2, 15
    lui     $at, 0x1
    addu    $v1, $v1, $at
    addiu   $a0, $t2, 0x8
    addu    $t8, $t7, $v1
    sw      $t8, 0x4($t2)
    or      $v0, $a0, $zero
    lui     $t4, 0x2
    lui     $t9, %hi(0xb6000000)
    sw      $t9, 0x0($v0)
    sw      $t4, 0x4($v0)
    addiu   $a2, $a0, 0x8
    sw      $a1, 0x0($a2)
    lw      $t5, 0x0($a3)
    addiu   $v0, $a2, 0x8
    addiu   $a0, $v0, 0x8
    addu    $t6, $t5, $v1
    sw      $t6, 0x4($a2)
    lui     $t7, %hi(0xb7000000)
    sw      $t7, 0x0($v0)
    sw      $t4, 0x4($v0)
    addiu   $t2, $a0, 0x8
    sw      $zero, 0x4($a0)
    sw      $t0, 0x0($a0)
    lui     $t9, %hi(0x5049d8)
    lui     $t8, %hi(0xb900031d)
    ori     $t8, $t8, %lo(0xb900031d)
    ori     $t9, $t9, %lo(0x5049d8)
    sw      $t9, 0x4($t2)
    sw      $t8, 0x0($t2)
    addiu   $t3, $t2, 0x8
    sw      $a1, 0x0($t3)
    lw      $t5, 0x4($t1)
    addiu   $v0, $t3, 0x8
    lui     $t7, %hi(0xb6000000)
    addu    $t6, $t5, $v1
    sw      $t6, 0x4($t3)
    sw      $t4, 0x4($v0)
    sw      $t7, 0x0($v0)
    addiu   $a2, $v0, 0x8
    sw      $a1, 0x0($a2)
    lw      $t8, 0x4($a3)
    addiu   $a0, $a2, 0x8
    addiu   $a1, $a0, 0x8
    addu    $t9, $t8, $v1
    sw      $t9, 0x4($a2)
    lui     $t6, %hi(0x4ec3bc)
    sw      $zero, 0x4($a0)
    sw      $t0, 0x0($a0)
    ori     $t6, $t6, %lo(0x4ec3bc)
    lui     $t5, %hi(0xed000000)
    sw      $t5, 0x0($a1)
    sw      $t6, 0x4($a1)
    jr      $ra
    addiu   $v0, $a1, 0x8


.globl Function_0x802c69c4
Function_0x802c69c4: # 0x802c69c4
    addiu   $sp, $sp, 0xffd0
    sw      $s0, 0x8($sp)
    addiu   $s0, $a1, 0x76
    sll     $t6, $s0, 2
    sw      $s1, 0xc($sp)
    andi    $t7, $t6, 0xfff
    sw      $fp, 0x28($sp)
    sw      $s5, 0x1c($sp)
    sw      $s4, 0x18($sp)
    sw      $s3, 0x14($sp)
    sll     $s1, $a1, 2
    sw      $ra, 0x2c($sp)
    sw      $s7, 0x24($sp)
    sw      $s6, 0x20($sp)
    sw      $s2, 0x10($sp)
    andi    $t6, $s1, 0xfff
    lui     $s3, %hi(0xfd100075)
    lui     $s4, %hi(0x80a0008)
    lui     $s5, %hi(0x7080200)
    lui     $fp, %hi(0x71d4000)
    sll     $t8, $t7, 12
    lui     $at, %hi(0xe4000000)
    lui     $t5, %hi(0xf5103c00)
    ori     $t5, $t5, %lo(0xf5103c00)
    or      $s0, $t8, $at
    ori     $fp, $fp, %lo(0x71d4000)
    ori     $s5, $s5, %lo(0x7080200)
    addiu   $s4, $s4, %lo(0x80a0008)
    ori     $s3, $s3, %lo(0xfd100075)
    sll     $s1, $t6, 12
    addiu   $s2, $zero, 0x40
    lui     $s6, %hi(0xe6000000)
    lui     $s7, %hi(0xf4000000)
    lui     $ra, %hi(0xe7000000)
    or      $t4, $zero, $zero
    or      $t2, $zero, $zero
    or      $t3, $a2, $zero
branch_0x802c6a58:
    beq     $t2, $s2, branch_0x802c6a68
    or      $v0, $a0, $zero
    b       branch_0x802c6a6c
    addiu   $a3, $zero, 0x10
branch_0x802c6a68:
    addiu   $a3, $zero, 0x3
branch_0x802c6a6c:
    sll     $t8, $t4, 1
    addu    $t9, $s4, $t8
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    sw      $t9, 0x4($v0)
    sw      $s3, 0x0($v0)
    addiu   $a0, $a0, 0x8
    or      $a1, $a0, $zero
    sw      $s5, 0x4($v1)
    sw      $t5, 0x0($v1)
    addiu   $t0, $a3, -1
    sll     $t6, $t0, 2
    addiu   $a0, $a0, 0x8
    or      $a2, $a0, $zero
    andi    $t7, $t6, 0xfff
    or      $t8, $t7, $fp
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($a1)
    sw      $s6, 0x0($a1)
    sw      $t8, 0x4($a2)
    or      $t1, $a0, $zero
    addiu   $a0, $a0, 0x8
    sw      $s7, 0x0($a2)
    or      $v0, $a0, $zero
    lui     $t9, %hi(0x80200)
    ori     $t9, $t9, %lo(0x80200)
    addiu   $a0, $a0, 0x8
    sw      $zero, 0x4($t1)
    sw      $ra, 0x0($t1)
    sw      $t9, 0x4($v0)
    or      $v1, $a0, $zero
    lui     $at, %hi(0x1d4000)
    ori     $at, $at, %lo(0x1d4000)
    sw      $t5, 0x0($v0)
    lui     $t6, %hi(0xf2000000)
    addu    $t8, $t3, $a3
    sw      $t6, 0x0($v1)
    or      $t7, $t7, $at
    sll     $t9, $t8, 2
    sw      $t7, 0x4($v1)
    addiu   $a0, $a0, 0x8
    andi    $t6, $t9, 0xfff
    or      $t7, $s0, $t6
    or      $a1, $a0, $zero
    sll     $t8, $t3, 2
    andi    $t9, $t8, 0xfff
    addiu   $a0, $a0, 0x8
    or      $v0, $a0, $zero
    or      $t6, $s1, $t9
    sw      $t7, 0x0($a1)
    sw      $t6, 0x4($a1)
    addiu   $a0, $a0, 0x8
    or      $v1, $a0, $zero
    lui     $t7, %hi(0xb3000000)
    lui     $t9, %hi(0x4000400)
    addiu   $at, $zero, 0x50
    addiu   $t2, $t2, 0x10
    ori     $t9, $t9, %lo(0x4000400)
    sw      $t7, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t8, %hi(0xb2000000)
    addiu   $t3, $t3, 0x10
    addiu   $t4, $t4, 0x760
    sw      $t8, 0x0($v1)
    sw      $t9, 0x4($v1)
    bne     $t2, $at, branch_0x802c6a58
    addiu   $a0, $a0, 0x8
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x8($sp)
    lw      $s1, 0xc($sp)
    lw      $s2, 0x10($sp)
    lw      $s3, 0x14($sp)
    lw      $s4, 0x18($sp)
    lw      $s5, 0x1c($sp)
    lw      $s6, 0x20($sp)
    lw      $s7, 0x24($sp)
    lw      $fp, 0x28($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    or      $v0, $a0, $zero


.globl Function_0x802c6bac_MenuInput
Function_0x802c6bac_MenuInput: # 0x802c6bac
    lui     $v0, %hi(Unknown_4_0x802c7538_CourseMenuState)
    lw      $v0, %lo(Unknown_4_0x802c7538_CourseMenuState)($v0)
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)
    beqz    $v0, branch_0x802c6be4_chooseCourse
    addiu   $at, $zero, CourseMenuState_1
    beq     $v0, $at, branch_0x802c6bf4
    addiu   $at, $zero, CourseMenuState_chooseDifficulty
    beq     $v0, $at, branch_0x802c6c04_chooseDifficulty
    addiu   $at, $zero, CourseMenuState_3
    beq     $v0, $at, branch_0x802c6c14
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)

branch_0x802c6be4_chooseCourse:
    jal     Function_0x802c6c2c_chooseCourse
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)

branch_0x802c6bf4:
    jal     Function_0x802c6ed0_fromCourseToDifficulty
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)

branch_0x802c6c04_chooseDifficulty:
    jal     Function_0x802c70c0_chooseDifficulty
    nop
    b       branch_0x802c6c20
    lw      $ra, 0x14($sp)

branch_0x802c6c14:
    jal     Function_0x802c7344_fromDifficultyToRace
    nop
    lw      $ra, 0x14($sp)

branch_0x802c6c20:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


Function_0x802c6c2c_chooseCourse: # 0x802c6c2c
    lui     $t6, %hi(Unknown_4_0x802c76b0)
    lw      $t6, %lo(Unknown_4_0x802c76b0)($t6)
    lui     $v0, %hi(Unknown_0x801ce3ba_Input)
    addiu   $sp, $sp, -0x18
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $v0, $v0, $t7
    lhu     $v0, %lo(Unknown_0x801ce3ba_Input)($v0)
    sw      $ra, 0x14($sp)
    lui     $at, %hi(Unknown_0x800d7fc0)
    andi    $t8, $v0, JOY_START|JOY_Z|JOY_A
    beqz    $t8, branch_0x802c6d30_checkBInput
    andi    $t7, $v0, JOY_B

    lui     $t9, %hi(Unknown_0x801ce368)
    lw      $t9, %lo(Unknown_0x801ce368)($t9)
    sw      $zero, %lo(Unknown_0x800d7fc0)($at)
    addiu   $at, $zero, 0xb
    bne     $t9, $at, branch_0x802c6c98
    addiu   $a2, $zero, 0x1					# CourseMenuState_1

    jal     Function_0x802c7474_SetMainState
    addiu   $a0, $zero, MainState_28
    addiu   $a0, $zero, 0x37
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8_noDownInput
    nop

branch_0x802c6c98:
    lui     $t0, %hi(Unknown_0x800da750_TrackNr)
    lw      $t0, %lo(Unknown_0x800da750_TrackNr)($t0)
    lui     $at, %hi(Unknown_4_0x802c7538_CourseMenuState)
    sw      $a2, %lo(Unknown_4_0x802c7538_CourseMenuState)($at)
    lui     $at, %hi(Unknown_4_0x802c753c)
    sw      $zero, %lo(Unknown_4_0x802c753c)($at)
    lui     $t2, %hi(Unknown_0x800da858)
    sll     $t1, $t0, 2
    lui     $at, %hi(Unknown_4_0x802c7540)
    addu    $t2, $t2, $t1
    lw      $t2, %lo(Unknown_0x800da858)($t2)
    sw      $zero, %lo(Unknown_4_0x802c7540)($at)
    lui     $at, %hi(Unknown_4_0x802c7544)
    sw      $a2, %lo(Unknown_4_0x802c7544)($at)
    lui     $t4, %hi(Unknown_4_0x802c757c)
    lui     $at, %hi(Unknown_4_0x802c7550)
    addiu   $t4, $t4, %lo(Unknown_4_0x802c757c)
    sll     $t3, $t2, 4
    sw      $a2, %lo(Unknown_4_0x802c7550)($at)
    addu    $v0, $t3, $t4
    or      $v1, $zero, $zero # Difficulty_0
    addiu   $a0, $zero, Difficulty_4
branch_0x802c6cf0:
    lw      $t5, 0x0($v0)
    bnez    $t5, branch_0x802c6d08
    nop

    addiu   $v1, $v1, 0x1				# go to harder difficulty
    bne     $v1, $a0, branch_0x802c6cf0
    addiu   $v0, $v0, 0x4

branch_0x802c6d08:
    lui     $v0, %hi(Unknown_4_0x802c754c_SelectedDifficulty)
    addiu   $v0, $v0, %lo(Unknown_4_0x802c754c_SelectedDifficulty)
    sw      $v1, 0x0($v0)
    lui     $at, %hi(Unknown_4_0x802c76cc)
    sw      $v1, %lo(Unknown_4_0x802c76cc)($at)
    addiu   $a0, $zero, 0x11
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8_noDownInput
    nop

branch_0x802c6d30_checkBInput:
    beqz    $t7, branch_0x802c6d54_checkUpInput
    andi    $t8, $v0, JOY_UP
    jal     Function_0x802c7474_SetMainState
    addiu   $a0, $zero, MainState_a
    addiu   $a0, $zero, 0x16
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8_noDownInput
    nop

branch_0x802c6d54_checkUpInput:
    beqz    $t8, branch_0x802c6e0c_checkDownInput
    andi    $t9, $v0, JOY_DOWN

    lui     $v1, %hi(Unknown_0x800da750_TrackNr)
    addiu   $v1, $v1, %lo(Unknown_0x800da750_TrackNr)
    lui     $a3, %hi(Unknown_4_0x802c76a4)
    lw      $t9, 0x0($v1)
    addiu   $a3, $a3, %lo(Unknown_4_0x802c76a4)
    lw      $a2, 0x0($a3)
    addiu   $v0, $t9, -1				# go down TrackNr
    sw      $v0, 0x0($v1)
    slt     $at, $v0, $a2
    beqz    $at, branch_0x802c6d90
    addiu   $a3, $zero, 0x8

    addiu   $v0, $zero, 0x8
    sw      $v0, 0x0($v1)
branch_0x802c6d90:
    lui     $a1, %hi(Unknown_0x800da858)
    lui     $a0, %hi(Unknown_4_0x802c7558_IsTrackUnlocked)
    addiu   $a0, $a0, %lo(Unknown_4_0x802c7558_IsTrackUnlocked)
    addiu   $a1, $a1, %lo(Unknown_0x800da858)

checkIfTrackUnlockedDownLoop:
    sll     $t1, $v0, 2
    addu    $t2, $a1, $t1
    lw      $t3, 0x0($t2)
    addiu   $t7, $v0, -1
    slt     $at, $t7, $a2
    sll     $t4, $t3, 2
    addu    $t5, $a0, $t4
    lw      $t6, 0x0($t5)
    bnez    $t6, branch_0x802c6de0
    #b       branch_0x802c6de0 # makes every track selectable, even if locked
    nop

    sw      $t7, 0x0($v1)
    beqz    $at, checkIfTrackUnlockedDownLoop
    or      $v0, $t7, $zero
    sw      $a3, 0x0($v1)
    b       checkIfTrackUnlockedDownLoop
    or      $v0, $a3, $zero

branch_0x802c6de0:
    lui     $t8, %hi(Unknown_4_0x802c76a8)
    lw      $t8, %lo(Unknown_4_0x802c76a8)($t8)
    addiu   $a2, $zero, 0x1
    lui     $at, %hi(Unknown_4_0x802c7530)
    beq     $t8, $v0, branch_0x802c6eb8_noDownInput
    addiu   $a0, $zero, 0x10
    sw      $a2, %lo(Unknown_4_0x802c7530)($at)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c6eb8_noDownInput
    nop

branch_0x802c6e0c_checkDownInput:
    beqz    $t9, branch_0x802c6eb8_noDownInput
    lui     $v1, %hi(Unknown_0x800da750_TrackNr)

    addiu   $v1, $v1, %lo(Unknown_0x800da750_TrackNr)
    lw      $t0, 0x0($v1)
    lui     $a1, %hi(Unknown_0x800da858)
    addiu   $a1, $a1, %lo(Unknown_0x800da858)
    addiu   $v0, $t0, 0x1				# go up TrackNr
    slti    $at, $v0, NrOfTracks
    bnez    $at, branch_0x802c6e44
    sw      $v0, 0x0($v1)

    lui     $a3, %hi(Unknown_4_0x802c76a4)
    addiu   $a3, $a3, %lo(Unknown_4_0x802c76a4)
    lw      $v0, 0x0($a3)
    sw      $v0, 0x0($v1)
branch_0x802c6e44:
    lui     $a3, %hi(Unknown_4_0x802c76a4)
    lui     $a0, %hi(Unknown_4_0x802c7558_IsTrackUnlocked)
    addiu   $a3, $a3, %lo(Unknown_4_0x802c76a4)
    addiu   $a0, $a0, %lo(Unknown_4_0x802c7558_IsTrackUnlocked)

checkIfTrackUnlockedUpLoop:
    sll     $t3, $v0, 2
    addu    $t4, $a1, $t3
    lw      $t5, 0x0($t4)
    addiu   $t9, $v0, 0x1
    slti    $at, $t9, NrOfTracks
    sll     $t6, $t5, 2
    addu    $t7, $a0, $t6
    lw      $t8, 0x0($t7)
    bnez    $t8, branch_TrackIsSelectable
    #b    branch_TrackIsSelectable # makes every track selectable, even if locked
    nop

    sw      $t9, 0x0($v1)
    bnez    $at, checkIfTrackUnlockedUpLoop
    or      $v0, $t9, $zero
    lw      $v0, 0x0($a3)
    b       checkIfTrackUnlockedUpLoop
    sw      $v0, 0x0($v1)

branch_TrackIsSelectable:
    lui     $t1, %hi(Unknown_4_0x802c76a8)
    lw      $t1, %lo(Unknown_4_0x802c76a8)($t1)
    addiu   $a2, $zero, 0x1
    lui     $at, %hi(Unknown_4_0x802c7530)
    beq     $t1, $v0, branch_0x802c6eb8_noDownInput
    addiu   $a0, $zero, 0x10

    sw      $a2, %lo(Unknown_4_0x802c7530)($at)
    jal     Function_0x800c3594
    or      $a1, $zero, $zero

branch_0x802c6eb8_noDownInput:
    jal     Function_0x80047df0
    nop

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


Function_0x802c6ed0_fromCourseToDifficulty: # 0x802c6ed0
    lui     $v0, %hi(Unknown_4_0x802c7544)
    lw      $v0, %lo(Unknown_4_0x802c7544)($v0)
    addiu   $v1, $zero, 0x1
    lui     $a0, %hi(Unknown_4_0x802c753c)
    beq     $v0, $v1, branch_0x802c6efc
    addiu   $a0, $a0, %lo(Unknown_4_0x802c753c)

    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x802c6fe4
    lui     $a0, %hi(Unknown_4_0x802c753c)

    jr      $ra
    nop

branch_0x802c6efc:
    lui     $at, %hi(FLOAT_5)
    mtc1    $at, $f12
    lui     $at, %hi(Unknown_4_0x802c7540)
    sw      $v1, %lo(Unknown_4_0x802c7540)($at)
    lw      $v0, 0x0($a0)
    addiu   $t6, $zero, 0x5
    lui     $at, %hi(FLOAT_71)
    subu    $t7, $t6, $v0
    mtc1    $t7, $f4
    mtc1    $at, $f16
    mtc1    $v0, $f8
    cvt.s.w $f6, $f4
    lui     $at, %hi(Unknown_4_0x802c76b4)
    addiu   $t8, $v0, 0x1
    cvt.s.w $f10, $f8
    div.s   $f0, $f6, $f12
    div.s   $f2, $f10, $f12
    mul.s   $f18, $f16, $f0
    trunc.w.s   $f4, $f18
    mfc1    $t9, $f4
    nop
    addiu   $t0, $t9, 0x8e
    sw      $t0, %lo(Unknown_4_0x802c76b4)($at)
    lui     $at, %hi(FLOAT_53)
    mtc1    $at, $f6
    lui     $at, %hi(Unknown_4_0x802c76b8)
    addiu   $t0, $zero, CourseMenuState_chooseDifficulty
    mul.s   $f8, $f6, $f0
    trunc.w.s   $f10, $f8
    mfc1    $t2, $f10
    nop
    addiu   $t3, $t2, 0x21
    sw      $t3, %lo(Unknown_4_0x802c76b8)($at)
    lui     $at, %hi(FLOAT_142)
    mtc1    $at, $f16
    lui     $at, %hi(Unknown_4_0x802c76bc)
    mul.s   $f18, $f16, $f2
    trunc.w.s   $f4, $f18
    mfc1    $t5, $f4
    nop
    sw      $t5, %lo(Unknown_4_0x802c76bc)($at)
    lui     $at, %hi(FLOAT_106)
    mtc1    $at, $f6
    lui     $at, %hi(Unknown_4_0x802c76c0)
    mul.s   $f8, $f6, $f2
    trunc.w.s   $f10, $f8
    mfc1    $t7, $f10
    nop
    sw      $t7, %lo(Unknown_4_0x802c76c0)($at)
    slti    $at, $t8, 0x6
    bnez    $at, branch_0x802c70b8
    sw      $t8, 0x0($a0)

    lui     $at, %hi(Unknown_4_0x802c7538_CourseMenuState)
    sw      $t0, %lo(Unknown_4_0x802c7538_CourseMenuState)($at)
    sw      $zero, 0x0($a0)
    lui     $at, %hi(Unknown_4_0x802c7548)
    jr      $ra
    sw      $v1, %lo(Unknown_4_0x802c7548)($at)

branch_0x802c6fe4:
    addiu   $a0, $a0, %lo(Unknown_4_0x802c753c)
    lw      $v0, 0x0($a0)
    lui     $at, %hi(FLOAT_5)
    mtc1    $at, $f12
    mtc1    $v0, $f4
    lui     $at, %hi(FLOAT_71)
    mtc1    $at, $f8
    cvt.s.w $f6, $f4
    addiu   $t1, $zero, 0x5
    subu    $t2, $t1, $v0
    mtc1    $t2, $f16
    lui     $at, %hi(Unknown_4_0x802c76b4)
    addiu   $t3, $v0, 0x1
    div.s   $f2, $f6, $f12
    cvt.s.w $f18, $f16
    div.s   $f0, $f18, $f12
    mul.s   $f10, $f8, $f2
    trunc.w.s   $f16, $f10
    mfc1    $t4, $f16
    nop
    addiu   $t5, $t4, 0x8e
    sw      $t5, %lo(Unknown_4_0x802c76b4)($at)
    lui     $at, %hi(FLOAT_53)
    mtc1    $at, $f18
    lui     $at, %hi(Unknown_4_0x802c76b8)
    mul.s   $f4, $f18, $f2
    trunc.w.s   $f6, $f4
    mfc1    $t7, $f6
    nop
    addiu   $t8, $t7, 0x21
    sw      $t8, %lo(Unknown_4_0x802c76b8)($at)
    lui     $at, %hi(FLOAT_142)
    mtc1    $at, $f8
    lui     $at, %hi(Unknown_4_0x802c76bc)
    mul.s   $f10, $f8, $f0
    trunc.w.s   $f16, $f10
    mfc1    $t0, $f16
    nop
    sw      $t0, %lo(Unknown_4_0x802c76bc)($at)
    lui     $at, %hi(FLOAT_106)
    mtc1    $at, $f18
    lui     $at, %hi(Unknown_4_0x802c76c0)
    mul.s   $f4, $f18, $f0
    trunc.w.s   $f6, $f4
    mfc1    $t2, $f6
    nop
    sw      $t2, %lo(Unknown_4_0x802c76c0)($at)
    slti    $at, $t3, 0x6
    bnez    $at, branch_0x802c70b8
    sw      $t3, 0x0($a0)

    lui     $at, %hi(Unknown_4_0x802c7538_CourseMenuState)
    sw      $zero, %lo(Unknown_4_0x802c7538_CourseMenuState)($at) # CourseMenuState_chooseCourse
    sw      $zero, 0x0($a0)

branch_0x802c70b8:
    jr      $ra
    nop


Function_0x802c70c0_chooseDifficulty: # 0x802c70c0
    lui     $t6, %hi(Unknown_4_0x802c76b0)
    lw      $t6, %lo(Unknown_4_0x802c76b0)($t6)
    lui     $v0, %hi(Unknown_0x801ce3ba_Input)
    addiu   $sp, $sp, -0x18
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $v0, $v0, $t7
    lhu     $v0, %lo(Unknown_0x801ce3ba_Input)($v0)
    sw      $ra, 0x14($sp)
    lui     $v1, %hi(Unknown_4_0x802c754c_SelectedDifficulty)
    andi    $t8, $v0, JOY_START|JOY_Z|JOY_A
    beqz    $t8, branch_0x802c718c_checkB
    andi    $t1, $v0, JOY_B

# selected difficulty, change to MainState_28
    addiu   $v1, $v1, %lo(Unknown_4_0x802c754c_SelectedDifficulty)
    lw      $v0, 0x0($v1)
    addiu   $a2, $zero, Difficulty_3 # CourseMenuState_3
    lui     $at, %hi(Unknown_0x801cb098)
    bne     $a2, $v0, branch_0x802c712c
    lui     $t0, %hi(Unknown_0x801ce36c)

    addiu   $t9, $zero, 0x2
    lui     $at, %hi(Unknown_0x801cb098)
    sw      $t9, %lo(Unknown_0x801cb098)($at)
    addiu   $v0, $zero, 0x1
    lui     $at, %hi(Unknown_0x800da8e8)
    b       branch_0x802c713c
    sh      $v0, %lo(Unknown_0x800da8e8)($at)

branch_0x802c712c:
    sw      $v0, %lo(Unknown_0x801cb098)($at)
    lui     $at, %hi(Unknown_0x800da8e8)
    sh      $zero, %lo(Unknown_0x800da8e8)($at)
    addiu   $v0, $zero, 0x1
branch_0x802c713c:
    lh      $t0, %lo(Unknown_0x801ce36c)($t0)
    lui     $at, %hi(Unknown_4_0x802c7554)
    addiu   $a0, $zero, 0x11
    bne     $v0, $t0, branch_0x802c716c
    or      $a1, $zero, $zero

    jal     Function_0x802c7474_SetMainState
    addiu   $a0, $zero, MainState_28
    addiu   $a0, $zero, 0x37
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)

branch_0x802c716c:
    sw      $v0, %lo(Unknown_4_0x802c7554)($at)
    lui     $at, %hi(Unknown_4_0x802c7538_CourseMenuState)
    sw      $a2, %lo(Unknown_4_0x802c7538_CourseMenuState)($at)
    lui     $at, %hi(Unknown_4_0x802c753c)
    jal     Function_0x800c3594
    sw      $zero, %lo(Unknown_4_0x802c753c)($at)
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)

branch_0x802c718c_checkB:
    beqz    $t1, branch_0x802c71d0_checkUp
    andi    $t3, $v0, JOY_UP

    addiu   $v0, $zero, CourseMenuState_1
    lui     $at, %hi(Unknown_4_0x802c7538_CourseMenuState)
    sw      $v0, %lo(Unknown_4_0x802c7538_CourseMenuState)($at)
    lui     $at, %hi(Unknown_4_0x802c753c)
    sw      $zero, %lo(Unknown_4_0x802c753c)($at)
    lui     $at, %hi(Unknown_4_0x802c7544)
    addiu   $t2, $zero, 0x2
    sw      $t2, %lo(Unknown_4_0x802c7544)($at)
    lui     $at, %hi(Unknown_4_0x802c7548)
    sw      $zero, %lo(Unknown_4_0x802c7548)($at)
    addiu   $a0, $zero, 0x16
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)

branch_0x802c71d0_checkUp:
    beqz    $t3, branch_0x802c728c_checkDown
    andi    $t9, $v0, JOY_DOWN

    lui     $v1, %hi(Unknown_4_0x802c754c_SelectedDifficulty)
    addiu   $v1, $v1, %lo(Unknown_4_0x802c754c_SelectedDifficulty)
    lui     $a2, %hi(Unknown_4_0x802c76cc)
    lw      $t4, 0x0($v1)
    addiu   $a2, $a2, %lo(Unknown_4_0x802c76cc)
    lw      $a1, 0x0($a2)
    addiu   $v0, $t4, -1				# go to easier difficulty
    sw      $v0, 0x0($v1)
    slt     $at, $v0, $a1
    beqz    $at, branch_0x802c7218
    lui     $t8, %hi(Unknown_0x800da750_TrackNr)

    lui     $a2, %hi(Unknown_4_0x802c76d0)
    addiu   $a2, $a2, %lo(Unknown_4_0x802c76d0)
    lw      $t6, 0x0($a2)
    addiu   $v0, $t6, -1
    sw      $v0, 0x0($v1)
branch_0x802c7218:
    lw      $t8, %lo(Unknown_0x800da750_TrackNr)($t8)
    lui     $t0, %hi(Unknown_0x800da858)
    lui     $t2, %hi(Unknown_4_0x802c757c)
    sll     $t9, $t8, 2
    addu    $t0, $t0, $t9
    lw      $t0, %lo(Unknown_0x800da858)($t0)
    lui     $a2, %hi(Unknown_4_0x802c76d0)
    addiu   $t2, $t2, %lo(Unknown_4_0x802c757c)
    sll     $t1, $t0, 4
    addiu   $a2, $a2, %lo(Unknown_4_0x802c76d0)
    addu    $a0, $t1, $t2
branch_0x802c7244:
    sll     $t3, $v0, 2
    addu    $t4, $a0, $t3
    lw      $t5, 0x0($t4)
    addiu   $t6, $v0, -1
    or      $v0, $t6, $zero
    bnez    $t5, branch_0x802c7278
    slt     $at, $t6, $a1

    beqz    $at, branch_0x802c7244
    sw      $t6, 0x0($v1)

    lw      $t7, 0x0($a2)
    addiu   $v0, $t7, -1
    b       branch_0x802c7244
    sw      $v0, 0x0($v1)

branch_0x802c7278:
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7338
    lw      $ra, 0x14($sp)

branch_0x802c728c_checkDown:
    beqz    $t9, branch_0x802c7334
    lui     $v1, %hi(Unknown_4_0x802c754c_SelectedDifficulty)

    addiu   $v1, $v1, %lo(Unknown_4_0x802c754c_SelectedDifficulty)
    lui     $a2, %hi(Unknown_4_0x802c76d0)
    lw      $t0, 0x0($v1)
    addiu   $a2, $a2, %lo(Unknown_4_0x802c76d0)
    lw      $a1, 0x0($a2)
    addiu   $v0, $t0, 0x1				# go to harder difficulty
    sw      $v0, 0x0($v1)
    slt     $at, $v0, $a1
    bnez    $at, branch_0x802c72cc_DifficultyIsSelectable
    lui     $t3, %hi(Unknown_0x800da750_TrackNr)

    lui     $a2, %hi(Unknown_4_0x802c76cc)
    addiu   $a2, $a2, %lo(Unknown_4_0x802c76cc)
    lw      $v0, 0x0($a2)
    sw      $v0, 0x0($v1)

branch_0x802c72cc_DifficultyIsSelectable:
    lw      $t3, %lo(Unknown_0x800da750_TrackNr)($t3)
    lui     $t5, %hi(Unknown_0x800da858)
    lui     $t7, %hi(Unknown_4_0x802c757c)
    sll     $t4, $t3, 2
    addu    $t5, $t5, $t4
    lw      $t5, %lo(Unknown_0x800da858)($t5)
    lui     $a2, %hi(Unknown_4_0x802c76cc)
    addiu   $t7, $t7, %lo(Unknown_4_0x802c757c)
    sll     $t6, $t5, 4
    addiu   $a2, $a2, %lo(Unknown_4_0x802c76cc)
    addu    $a0, $t6, $t7
branch_0x802c72f8:
    sll     $t8, $v0, 2
    addu    $t9, $a0, $t8
    lw      $t0, 0x0($t9)
    addiu   $t1, $v0, 0x1
    or      $v0, $t1, $zero
    bnez    $t0, branch_0x802c7328
    slt     $at, $t1, $a1

    bnez    $at, branch_0x802c72f8
    sw      $t1, 0x0($v1)

    lw      $v0, 0x0($a2)
    b       branch_0x802c72f8
    sw      $v0, 0x0($v1)

branch_0x802c7328:
    addiu   $a0, $zero, 0x10
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c7334:
    lw      $ra, 0x14($sp)
branch_0x802c7338:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


Function_0x802c7344_fromDifficultyToRace: # 0x802c7344
    lui     $t6, %hi(Unknown_4_0x802c76b0)
    lw      $t6, %lo(Unknown_4_0x802c76b0)($t6)
    lui     $v0, %hi(Unknown_0x801ce3ba_Input)
    addiu   $sp, $sp, -0x18
    sll     $t7, $t6, 3
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $v0, $v0, $t7
    lhu     $v0, %lo(Unknown_0x801ce3ba_Input)($v0)
    sw      $ra, 0x14($sp)
    andi    $t8, $v0, JOY_START|JOY_Z|JOY_A
    beqz    $t8, branch_0x802c73c0_checkBInput
    andi    $t1, $v0, JOY_B

    lui     $v0, %hi(Unknown_0x800da784)
    addiu   $v0, $v0, %lo(Unknown_0x800da784)
    lw      $t9, 0x0($v0)
    addiu   $t0, $zero, 0x1
    lui     $at, %hi(Unknown_0x801ce37c)
    bnez    $t9, branch_0x802c73a0
    nop

    lui     $at, %hi(Unknown_0x801ce37c)
    b       branch_0x802c73a4
    sw      $t0, %lo(Unknown_0x801ce37c)($at)

branch_0x802c73a0:
    sw      $zero, %lo(Unknown_0x801ce37c)($at)
branch_0x802c73a4:
    jal     Function_0x802c7474_SetMainState
    addiu   $a0, $zero, MainState_28
    addiu   $a0, $zero, 0x37
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7468
    lw      $ra, 0x14($sp)

branch_0x802c73c0_checkBInput:
    beqz    $t1, branch_0x802c73f8_checkLeftInput
    andi    $t3, $v0, JOY_LEFT

    lui     $at, %hi(Unknown_4_0x802c7554)
    sw      $zero, %lo(Unknown_4_0x802c7554)($at)
    lui     $at, %hi(Unknown_4_0x802c7538_CourseMenuState)
    addiu   $t2, $zero, CourseMenuState_chooseDifficulty
    sw      $t2, %lo(Unknown_4_0x802c7538_CourseMenuState)($at)
    lui     $at, %hi(Unknown_4_0x802c753c)
    sw      $zero, %lo(Unknown_4_0x802c753c)($at)
    addiu   $a0, $zero, 0x16
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7468
    lw      $ra, 0x14($sp)

branch_0x802c73f8_checkLeftInput:
    beqz    $t3, branch_0x802c7434_checkRightInput
    andi    $t8, $v0, JOY_RIGHT

    lui     $v0, %hi(Unknown_0x800da784)
    addiu   $v0, $v0, %lo(Unknown_0x800da784)
    lw      $t4, 0x0($v0)
    addiu   $t7, $zero, 0x1
    addiu   $a0, $zero, 0x10
    addiu   $t5, $t4, -1
    bgez    $t5, branch_0x802c7424
    sw      $t5, 0x0($v0)

    sw      $t7, 0x0($v0)
branch_0x802c7424:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
    b       branch_0x802c7468
    lw      $ra, 0x14($sp)

branch_0x802c7434_checkRightInput:
    beqz    $t8, branch_0x802c7464
    lui     $v0, %hi(Unknown_0x800da784)

    addiu   $v0, $v0, %lo(Unknown_0x800da784)
    lw      $t9, 0x0($v0)
    addiu   $a0, $zero, 0x10
    addiu   $t0, $t9, 0x1
    slti    $at, $t0, 0x2
    bnez    $at, branch_0x802c745c
    sw      $t0, 0x0($v0)

    sw      $zero, 0x0($v0)
branch_0x802c745c:
    jal     Function_0x800c3594
    or      $a1, $zero, $zero
branch_0x802c7464:
    lw      $ra, 0x14($sp)
branch_0x802c7468:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


/* Input:
a0: MainSate
*/
Function_0x802c7474_SetMainState: # 0x802c7474
    lui     $v0, %hi(Unknown_0x800da8a4_mainState)
    addiu   $v0, $v0, %lo(Unknown_0x800da8a4_mainState)
    lw      $t6, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce394_oldMainState)
    addiu   $t7, $zero, 0x15
    sw      $t6, %lo(Unknown_0x801ce394_oldMainState)($at)
    lui     $at, %hi(Unknown_0x801ce390_MainState)
    sw      $a0, %lo(Unknown_0x801ce390_MainState)($at)
    sw      $t7, 0x0($v0)
    lui     $at, %hi(Unknown_0x801ce398)
    addiu   $t8, $zero, 0x5
    sw      $t8, %lo(Unknown_0x801ce398)($at)
    lui     $at, %hi(Unknown_0x801ce39c)
    addiu   $t9, $zero, 0x1
    sw      $t9, %lo(Unknown_0x801ce39c)($at)
    lui     $at, %hi(Unknown_0x801ce3a0)
    sw      $zero, %lo(Unknown_0x801ce3a0)($at)
    lui     $at, %hi(Unknown_0x801ce3a4)
    sw      $zero, %lo(Unknown_0x801ce3a4)($at)
    lui     $at, %hi(Unknown_0x800da89c)
    addiu   $sp, $sp, -0x18
    sw      $zero, %lo(Unknown_0x800da89c)($at)
    sw      $ra, 0x14($sp)
    lui     $at, %hi(Unknown_0x800d439c)
    addiu   $t0, $zero, 0x2
    sw      $t0, %lo(Unknown_0x800d439c)($at)
    addiu   $a0, $zero, 0x1
    addiu   $a1, $zero, 0x4
    jal     Function_0x801e6d10
    or      $a2, $zero, $zero
    or      $a0, $zero, $zero
    jal     Function_0x801e67ac
    or      $a1, $zero, $zero
    lui     $t1, %hi(Unknown_0x801ce390_MainState)
    lw      $t1, %lo(Unknown_0x801ce390_MainState)($t1)
    addiu   $at, $zero, MainState_28
    bnel    $t1, $at, branch_0x802c7518
    lw      $ra, 0x14($sp)

    jal     Function_0x800c1d00
    addiu   $a0, $zero, 0x7
    lw      $ra, 0x14($sp)
branch_0x802c7518:
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


Unknown_4_0x802c7524: # 0x1bfb94
.word 0, 0, 0

Unknown_4_0x802c7530: # 0x1bfba0
.word 1

Unknown_4_0x802c7534: # 0x1bfba4
.word 0

Unknown_4_0x802c7538_CourseMenuState: # 0x1bfba8
.word 0

Unknown_4_0x802c753c: # 0x1bfbac
.word 0

Unknown_4_0x802c7540: # 0x1bfbb0
.word 0

Unknown_4_0x802c7544: # 0x1bfbb4
.word 0

Unknown_4_0x802c7548: # 0x1bfbb8
.word 0

Unknown_4_0x802c754c_SelectedDifficulty: # 0x1bfbbc
.word 0

Unknown_4_0x802c7550: # 0x1bfbc0
.word 1

Unknown_4_0x802c7554: # 0x1bfbc4
.word 0

Unknown_4_0x802c7558_IsTrackUnlocked: # 0x1bfbc8
.word 0, 0, 0, 0, 0, 0, 0, 0, 0

Unknown_4_0x802c757c: # 0x1bfbec
.word 0

.incbin "./roms/Wave Race 64 (USA).z64", 0x1bfbf0, 0x1bfc7c - 0x1bfbf0

Unknown_4_0x802c760c: # 0x1bfc7c
.incbin "./roms/Wave Race 64 (USA).z64", 0x1bfc7c, 0x1bfca0 - 0x1bfc7c

Unknown_4_0x802c7630: # 0x1bfca0
.incbin "./roms/Wave Race 64 (USA).z64", 0x1bfca0, 0x1bfcc0 - 0x1bfca0

Unknown_4_0x802c7650: # 0x1bfcc0
.incbin "./roms/Wave Race 64 (USA).z64", 0x1bfcc0, 0x1bfcd0 - 0x1bfcc0

Unknown_4_0x802c7660: # 0x1bfcd0
.incbin "./roms/Wave Race 64 (USA).z64", 0x1bfcd0, 0x1bfd00 - 0x1bfcd0

Unknown_4_0x802c7690: # 0x1bfd00
.incbin "./roms/Wave Race 64 (USA).z64", 0x1bfd00, ROM_0x1bfd10 - 0x1bfd00

Unknown_4_0x802c76a0: # 0x1bfd10
