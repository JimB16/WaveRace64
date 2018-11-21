
.set noat


/* Input:
a0: DrawListPtr
*/
.globl Function_0x8008f914
Function_0x8008f914: # 0x8008f914
    addiu   $sp, $sp, -0x1c0
    lui     $t7, %hi(Unknown_0x800da634)
    sw      $ra, 0x14($sp)
    addiu   $t7, $t7, %lo(Unknown_0x800da634)
    lw      $at, 0x0($t7)
    addiu   $t6, $sp, 0x1b0
    lw      $t9, 0x4($t7)
    sw      $at, 0x0($t6)
    lw      $at, 0x8($t7)
    lui     $t8, %hi(Unknown_0x8011f640)
    sw      $t9, 0x4($t6)
    sw      $at, 0x8($t6)
    lw      $t8, %lo(Unknown_0x8011f640)($t8)
    lui     $t7, %hi(Unknown_0x801c4158)
    addiu   $t7, $t7, %lo(Unknown_0x801c4158)
    sll     $t6, $t8, 3
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 3
    addu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 4
    or      $a2, $a0, $zero
    addu    $a1, $t6, $t7
    sw      $a1, 0x1a8($sp)
    sw      $a2, 0x1c0($sp)
    jal     Function_0x8004c938
    or      $a0, $zero, $zero

    lw      $a1, 0x1a8($sp)
    or      $a0, $zero, $zero
    jal     Function_0x8004c170
    addiu   $a1, $a1, 0x1c0

    lui     $t9, %hi(Unknown_0x800da8a8)
    lw      $t9, %lo(Unknown_0x800da8a8)($t9)
    addiu   $at, $zero, 0x2
    lw      $a2, 0x1c0($sp)
    bne     $t9, $at, branch_0x8008f9d8
    lui     $t8, %hi(TrackNr_0x800d7ef0)
    lw      $t8, %lo(TrackNr_0x800d7ef0)($t8)
    addiu   $at, $zero, Track_9
    addiu   $a0, $zero, 0x1
    bne     $t8, $at, branch_0x8008f9d8
    lw      $a1, 0x1a8($sp)

    addiu   $a1, $a1, 0x70
    jal     Function_0x8004c938
    sw      $a2, 0x1c0($sp)
    lw      $a2, 0x1c0($sp)
branch_0x8008f9d8:
    lui     $t6, %hi(UpperWord(G_MOVEWORD(0,0x1806)))
    ori     $t6, $t6, %lo(UpperWord(G_MOVEWORD(0,0x1806)))
    or      $v0, $a2, $zero
    sw      $t6, DrawList_0($v0)
    lui     $t7, %hi(Unknown_0x8011f640)
    lw      $t7, %lo(Unknown_0x8011f640)($t7)
    lui     $t8, %hi(Unknown_0x801c4158)
    addiu   $t8, $t8, %lo(Unknown_0x801c4158)
    sll     $t9, $t7, 3
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 3
    addu    $t9, $t9, $t7
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 4
    addu    $t6, $t9, $t8
    sw      $t6, DrawList_4($v0)
    lui     $v1, %hi(Unknown_0x801ce398)
    lw      $v1, %lo(Unknown_0x801ce398)($v1)
    addiu   $t0, $zero, 0x4
    addiu   $a2, $a2, DrawList_8

    beq     $t0, $v1, branch_0x8008fa48
    lui     $ra, %hi(UpperWord(G_DL(0,0)))

    addiu   $at, $zero, 0xa
    bne     $v1, $at, branch_0x8008fc44
    lui     $t9, %hi(Unknown_0x800da8a8)
branch_0x8008fa48:
    lui     $t7, %hi(Unknown_0x801ce36c)
    lh      $t7, %lo(Unknown_0x801ce36c)($t7)
    addiu   $t3, $zero, 0x1
    lui     $t2, %hi(UpperWord(G_RDPPIPESYNC))
    bne     $t3, $t7, branch_0x8008faf8
    lui     $v0, %hi(Unknown_0x800da8ac)

    or      $v1, $a2, $zero
    lui     $t9, %hi(UpperWord(G_RDPHALF_1))
    sw      $t9, DrawList_0($v1)
    lui     $t8, %hi(Unknown_0x802236f0)
    lw      $t8, %lo(Unknown_0x802236f0)($t8)
    lui     $t7, %hi(Unknown_0x80227b24)
    addiu   $a2, $a2, DrawList_8

    sll     $t6, $t8, 4
    addu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    addu    $t7, $t7, $t6
    lhu     $t7, %lo(Unknown_0x80227b24)($t7)
    or      $a0, $a2, $zero
    addiu   $a2, $a2, DrawList_8

    sw      $t7, DrawList_4($v1)
    lui     $t8, %hi(Unknown_0x800da670)
    lui     $t9, %hi(0x3800010)
    ori     $t9, $t9, %lo(0x3800010)
    addiu   $t8, $t8, %lo(Unknown_0x800da670)
    or      $a1, $a2, $zero
    sw      $t8, DrawList_4($a0)
    sw      $t9, DrawList_0($a0)
    addiu   $a2, $a2, DrawList_8

    sw      $zero, DrawList_4($a1)
    sw      $t2, DrawList_0($a1)
    or      $a3, $a2, $zero
    lui     $t7, %hi(LowerWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    lui     $t6, %hi(UpperWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    ori     $t6, $t6, %lo(UpperWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    ori     $t7, $t7, %lo(LowerWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    sw      $t7, DrawList_4($a3)
    sw      $t6, DrawList_0($a3)
    lui     $v0, %hi(Unknown_0x800da8ac)
    lw      $v0, %lo(Unknown_0x800da8ac)($v0)
    b       branch_0x8008fe2c
    addiu   $a2, $a2, DrawList_8

branch_0x8008faf8:
    lw      $v0, %lo(Unknown_0x800da8ac)($v0)
    lui     $t2, %hi(UpperWord(G_RDPPIPESYNC))
    or      $v1, $a2, $zero
    beqz    $v0, branch_0x8008fb1c
    lui     $t9, %hi(UpperWord(G_RDPHALF_1))

    beq     $v0, $t3, branch_0x8008fbac
    lui     $t2, %hi(UpperWord(G_RDPPIPESYNC))

    b       branch_0x8008fe2c
    lui     $t2, %hi(UpperWord(G_RDPPIPESYNC))

branch_0x8008fb1c:
    sw      $t9, DrawList_0($v1)
    lui     $t8, %hi(Unknown_0x802236f0)
    lw      $t8, %lo(Unknown_0x802236f0)($t8)
    lui     $t7, %hi(Unknown_0x80227b24)
    addiu   $a2, $a2, 0x8
    sll     $t6, $t8, 4
    addu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    addu    $t7, $t7, $t6
    lhu     $t7, %lo(Unknown_0x80227b24)($t7)
    or      $a0, $a2, $zero
    addiu   $a2, $a2, DrawList_8

    sw      $t7, DrawList_4($v1)
    lui     $t8, %hi(Unknown_0x800da680)
    lui     $t9, %hi(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    ori     $t9, $t9, %lo(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    addiu   $t8, $t8, %lo(Unknown_0x800da680)
    or      $a1, $a2, $zero
    sw      $t8, DrawList_4($a0)
    sw      $t9, DrawList_0($a0)
    addiu   $a2, $a2, DrawList_8

    sw      $zero, DrawList_4($a1)
    sw      $t2, DrawList_0($a1)
    or      $a3, $a2, $zero
    lui     $t7, %hi(LowerWord(G_SETSCISSOR(0x05c,0x180,0,0x270,0x35c)))
    lui     $t6, %hi(UpperWord(G_SETSCISSOR(0x05c,0x180,0,0x270,0x35c)))
    ori     $t6, $t6, %lo(UpperWord(G_SETSCISSOR(0x05c,0x180,0,0x270,0x35c)))
    ori     $t7, $t7, %lo(LowerWord(G_SETSCISSOR(0x05c,0x180,0,0x270,0x35c)))
    sw      $t7, DrawList_4($a3)
    sw      $t6, DrawList_0($a3)
    lui     $v0, %hi(Unknown_0x800da8ac)
    addiu   $a2, $a2, DrawList_8
    b       branch_0x8008fe2c
    lw      $v0, %lo(Unknown_0x800da8ac)($v0)

branch_0x8008fbac:
    or      $v1, $a2, $zero
    lui     $t9, %hi(UpperWord(G_RDPHALF_1))
    sw      $t9, DrawList_0($v1)
    lui     $t8, %hi(Unknown_0x802236f4)
    lw      $t8, %lo(Unknown_0x802236f4)($t8)
    lui     $t7, %hi(Unknown_0x80227b24)
    addiu   $a2, $a2, DrawList_8

    sll     $t6, $t8, 4
    addu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    subu    $t6, $t6, $t8
    sll     $t6, $t6, 2
    addu    $t7, $t7, $t6
    lhu     $t7, %lo(Unknown_0x80227b24)($t7)
    or      $a0, $a2, $zero
    addiu   $a2, $a2, DrawList_8
    sw      $t7, DrawList_4($v1)
    lui     $t8, %hi(Unknown_0x800da670)
    lui     $t9, %hi(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    ori     $t9, $t9, %lo(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    addiu   $t8, $t8, %lo(Unknown_0x800da670)
    or      $a1, $a2, $zero
    sw      $t8, DrawList_4($a0)
    sw      $t9, DrawList_0($a0)
    addiu   $a2, $a2, DrawList_8

    sw      $zero, DrawList_4($a1)
    sw      $t2, DrawList_0($a1)
    or      $a3, $a2, $zero
    lui     $t7, %hi(LowerWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    lui     $t6, %hi(UpperWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    ori     $t6, $t6, %lo(UpperWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    ori     $t7, $t7, %lo(LowerWord(G_SETSCISSOR(0x284,0x180,0,0x478,0x35c)))
    sw      $t7, DrawList_4($a3)
    sw      $t6, DrawList_0($a3)
    lui     $v0, %hi(Unknown_0x800da8ac)
    addiu   $a2, $a2, DrawList_8
    b       branch_0x8008fe2c
    lw      $v0, %lo(Unknown_0x800da8ac)($v0)

branch_0x8008fc44:
    lw      $t9, %lo(Unknown_0x800da8a8)($t9)
    addiu   $t3, $zero, 0x1
    lui     $t2, %hi(UpperWord(G_RDPPIPESYNC))
    bne     $t3, $t9, branch_0x8008fcf0
    lui     $t8, %hi(Unknown_0x800da8ac)

    or      $v1, $a2, $zero
    lui     $t8, %hi(UpperWord(G_RDPHALF_1))
    sw      $t8, DrawList_0($v1)
    lui     $t6, %hi(Unknown_0x802236f0)
    lw      $t6, %lo(Unknown_0x802236f0)($t6)
    lui     $t9, %hi(Unknown_0x80227b24)
    addiu   $a2, $a2, 0x8
    sll     $t7, $t6, 4
    addu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    subu    $t7, $t7, $t6
    sll     $t7, $t7, 2
    addu    $t9, $t9, $t7
    lhu     $t9, %lo(Unknown_0x80227b24)($t9)
    or      $a0, $a2, $zero
    addiu   $a2, $a2, DrawList_8

    sw      $t9, DrawList_4($v1)
    lui     $t6, %hi(Unknown_0x800da640)
    lui     $t8, %hi(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    ori     $t8, $t8, %lo(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    addiu   $t6, $t6, %lo(Unknown_0x800da640)
    or      $a1, $a2, $zero
    sw      $t6, DrawList_4($a0)
    sw      $t8, DrawList_0($a0)
    addiu   $a2, $a2, DrawList_8

    sw      $zero, DrawList_4($a1)
    sw      $t2, DrawList_0($a1)
    or      $a3, $a2, $zero
    lui     $t9, %hi(LowerWord(G_SETSCISSOR(0x020,0x50,0,0x4cc,0x36c)))
    lui     $t7, %hi(UpperWord(G_SETSCISSOR(0x020,0x50,0,0x4cc,0x36c)))
    ori     $t7, $t7, %lo(UpperWord(G_SETSCISSOR(0x020,0x50,0,0x4cc,0x36c)))
    ori     $t9, $t9, %lo(LowerWord(G_SETSCISSOR(0x020,0x50,0,0x4cc,0x36c)))
    sw      $t9, DrawList_4($a3)
    sw      $t7, DrawList_0($a3)
    lui     $v0, %hi(Unknown_0x800da8ac)
    lw      $v0, %lo(Unknown_0x800da8ac)($v0)
    b       branch_0x8008fe2c
    addiu   $a2, $a2, DrawList_8

branch_0x8008fcf0:
    lw      $t8, %lo(Unknown_0x800da8ac)($t8)
    lui     $t2, 0xe700
    or      $v1, $a2, $zero
    bnez    $t8, branch_0x8008fda0
    lui     $t6, 0xb400

    or      $v1, $a2, $zero
    lui     $t6, 0xb400
    sw      $t6, DrawList_0($v1)
    lui     $t7, %hi(Unknown_0x802236f0)
    lw      $t7, %lo(Unknown_0x802236f0)($t7)
    lui     $t8, %hi(Unknown_0x80227b24)
    addiu   $a2, $a2, 0x8
    sll     $t9, $t7, 4
    addu    $t9, $t9, $t7
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 2
    addu    $t8, $t8, $t9
    lhu     $t8, %lo(Unknown_0x80227b24)($t8)
    or      $a0, $a2, $zero
    addiu   $a2, $a2, DrawList_8

    sw      $t8, DrawList_4($v1)
    lui     $t7, %hi(Unknown_0x800da650)
    lui     $t6, %hi(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    ori     $t6, $t6, %lo(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    addiu   $t7, $t7, %lo(Unknown_0x800da650)
    or      $a1, $a2, $zero
    sw      $t7, DrawList_4($a0)
    sw      $t6, DrawList_0($a0)
    lui     $t2, %hi(UpperWord(G_RDPPIPESYNC))
    addiu   $a2, $a2, DrawList_8

    sw      $t2, DrawList_0($a1)
    sw      $zero, DrawList_4($a1)
    or      $a3, $a2, $zero
    lui     $t8, %hi(LowerWord(G_SETSCISSOR(0x020,0x30,0,0x4cc,0x1e0)))
    lui     $t9, %hi(UpperWord(G_SETSCISSOR(0x020,0x30,0,0x4cc,0x1e0)))
    ori     $t9, $t9, %lo(UpperWord(G_SETSCISSOR(0x020,0x30,0,0x4cc,0x1e0)))
    ori     $t8, $t8, %lo(LowerWord(G_SETSCISSOR(0x020,0x30,0,0x4cc,0x1e0)))
    sw      $t8, DrawList_4($a3)
    sw      $t9, DrawList_0($a3)
    lui     $v0, %hi(Unknown_0x800da8ac)
    lw      $v0, %lo(Unknown_0x800da8ac)($v0)
    b       branch_0x8008fe2c
    addiu   $a2, $a2, DrawList_8

branch_0x8008fda0:
    sw      $t6, DrawList_0($v1)
    lui     $t7, %hi(Unknown_0x802236f4)
    lw      $t7, %lo(Unknown_0x802236f4)($t7)
    lui     $t8, %hi(Unknown_0x80227b24)
    addiu   $a2, $a2, 0x8
    sll     $t9, $t7, 4
    addu    $t9, $t9, $t7
    sll     $t9, $t9, 2
    subu    $t9, $t9, $t7
    sll     $t9, $t9, 2
    addu    $t8, $t8, $t9
    lhu     $t8, %lo(Unknown_0x80227b24)($t8)
    or      $a0, $a2, $zero
    addiu   $a2, $a2, DrawList_8

    sw      $t8, DrawList_4($v1)
    lui     $t7, %hi(Unknown_0x800da660)
    lui     $t6, %hi(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    ori     $t6, $t6, %lo(UpperWord(G_MOVEMEM(0x80,0,0x10)))
    addiu   $t7, $t7, %lo(Unknown_0x800da660)
    or      $a1, $a2, $zero
    sw      $t7, DrawList_4($a0)
    sw      $t6, DrawList_0($a0)
    addiu   $a2, $a2, DrawList_8

    sw      $zero, DrawList_4($a1)
    sw      $t2, DrawList_0($a1)
    or      $a3, $a2, $zero
    lui     $t8, %hi(LowerWord(G_SETSCISSOR(0x020,0x1e8,0,0x4cc,0x394)))
    lui     $t9, %hi(UpperWord(G_SETSCISSOR(0x020,0x1e8,0,0x4cc,0x394)))
    ori     $t9, $t9, %lo(UpperWord(G_SETSCISSOR(0x020,0x1e8,0,0x4cc,0x394)))
    ori     $t8, $t8, %lo(LowerWord(G_SETSCISSOR(0x020,0x1e8,0,0x4cc,0x394)))
    sw      $t8, DrawList_4($a3)
    sw      $t9, DrawList_0($a3)
    lui     $v0, %hi(Unknown_0x800da8ac)
    lw      $v0, %lo(Unknown_0x800da8ac)($v0)
    addiu   $a2, $a2, DrawList_8
branch_0x8008fe2c:
    beqz    $v0, branch_0x8008fe44
    lui     $a0, 0x300

    beq     $v0, $t3, branch_0x8008feac
    lui     $a0, 0x300

    b       branch_0x8008ff10
    nop

branch_0x8008fe44:
    lui     $t6, 0x103
    ori     $t6, $t6, 0x40
    or      $v0, $a2, $zero
    sw      $t6, DrawList_0($v0)
    lui     $t7, %hi(Unknown_0x802236f0)
    lw      $t7, %lo(Unknown_0x802236f0)($t7)
    addiu   $a0, $a0, 0x0
    li      $at, 0xe008
    sll     $t9, $t7, 6
    addu    $t8, $a0, $t9
    addu    $t6, $t8, $at
    addiu   $a2, $a2, 0x8
    lui     $t7, 0x101
    sw      $t6, DrawList_4($v0)
    ori     $t7, $t7, 0x40
    or      $v1, $a2, $zero
    sw      $t7, DrawList_0($v1)
    lui     $t9, %hi(Unknown_0x802236f0)
    lw      $t9, %lo(Unknown_0x802236f0)($t9)
    li      $at, 0xe088
    addiu   $a2, $a2, DrawList_8

    sll     $t8, $t9, 6
    addu    $t6, $a0, $t8
    addu    $t7, $t6, $at
    b       branch_0x8008ff10
    sw      $t7, DrawList_4($v1)

branch_0x8008feac:
    lui     $t9, 0x103
    ori     $t9, $t9, 0x40
    or      $v0, $a2, $zero
    sw      $t9, 0x0($v0)
    lui     $t8, 0x8022
    lw      $t8, 0x36f4($t8)
    addiu   $a0, $a0, 0x0
    li      $at, 0xe008
    sll     $t6, $t8, 6
    addu    $t7, $a0, $t6
    addu    $t9, $t7, $at
    addiu   $a2, $a2, 0x8
    lui     $t8, 0x101
    sw      $t9, 0x4($v0)
    ori     $t8, $t8, 0x40
    or      $v1, $a2, $zero
    sw      $t8, 0x0($v1)
    lui     $t6, 0x8022
    lw      $t6, 0x36f4($t6)
    li      $at, 0xe088
    addiu   $a2, $a2, 0x8
    sll     $t7, $t6, 6
    addu    $t9, $a0, $t7
    addu    $t8, $t9, $at
    sw      $t8, 0x4($v1)
branch_0x8008ff10:
    lui     $t6, %hi(TrackNr_0x800d7ef0)
    lw      $t6, %lo(TrackNr_0x800d7ef0)($t6)
    lui     $t7, 0x800e
    or      $v0, $a2, $zero
    bne     $t0, $t6, branch_0x8008ff6c
    lui     $t9, 0xb600

    lw      $t7, -0x5758($t7)
    addiu   $t8, $zero, 0xffff
    lui     $t6, 0xb700
    bnel    $t3, $t7, branch_0x8008ff70
    addiu   $a2, $a2, 0x8

    or      $v0, $a2, $zero
    addiu   $a2, $a2, 0x8
    lui     $t9, 0xb600
    or      $v1, $a2, $zero
    lui     $t7, 0x1
    sw      $t9, 0x0($v0)
    sw      $t8, 0x4($v0)
    ori     $t7, $t7, 0x204
    sw      $t7, 0x4($v1)
    sw      $t6, 0x0($v1)
    b       branch_0x8008ff94
    addiu   $a2, $a2, 0x8

branch_0x8008ff6c:
    addiu   $a2, $a2, 0x8
branch_0x8008ff70:
    addiu   $t8, $zero, 0xffff
    or      $v1, $a2, $zero
    sw      $t8, 0x4($v0)
    sw      $t9, 0x0($v0)
    lui     $t6, 0xb700
    addiu   $t7, $zero, 0x204
    sw      $t7, 0x4($v1)
    sw      $t6, 0x0($v1)
    addiu   $a2, $a2, 0x8
branch_0x8008ff94:
    or      $v0, $a2, $zero
    lui     $t9, 0x101
    addiu   $t9, $t9, 0x2d0
    sw      $t9, 0x4($v0)
    sw      $ra, 0x0($v0)
    lui     $t8, %hi(TrackNr_0x800d7ef0)
    lw      $t8, %lo(TrackNr_0x800d7ef0)($t8)
    addiu   $a2, $a2, 0x8
    or      $v1, $a2, $zero
    bne     $t0, $t8, branch_0x80090154
    lui     $t6, 0xba00
    addiu   $a2, $a2, 0x8
    or      $a0, $a2, $zero
    sw      $t2, 0x0($v1)
    sw      $zero, 0x4($v1)
    addiu   $a2, $a2, 0x8
    ori     $t6, $t6, 0x1402
    lui     $t7, 0x10
    or      $a1, $a2, $zero
    sw      $t7, 0x4($a0)
    sw      $t6, 0x0($a0)
    lui     $t9, 0xb900
    lui     $t8, 0xcb02
    ori     $t8, $t8, 0x4000
    ori     $t9, $t9, 0x31d
    addiu   $a2, $a2, 0x8
    sw      $t9, 0x0($a1)
    sw      $t8, 0x4($a1)
    or      $a3, $a2, $zero
    lui     $t6, 0xfcff
    lui     $t7, 0xfffc
    ori     $t7, $t7, 0xf238
    ori     $t6, $t6, 0xffff
    addiu   $a2, $a2, 0x8
    sw      $t6, 0x0($a3)
    sw      $t7, 0x4($a3)
    or      $t0, $a2, $zero
    lui     $t9, 0xf800
    sw      $t9, 0x0($t0)
    lui     $t8, 0x800e
    lw      $t8, -0x5754($t8)
    addiu   $t5, $zero, 0x110
    lui     $t7, 0x801d
    multu   $t8, $t5
    addiu   $t7, $t7, 0xadb8
    addiu   $a2, $a2, 0x8
    or      $v1, $a2, $zero
    lui     $at, 0x1
    ori     $at, $at, 0xf400
    addiu   $a2, $a2, 0x8
    mflo    $t6
    addu    $v0, $t6, $t7
    lw      $t9, 0x94($v0)
    lw      $t7, 0x88($v0)
    andi    $t8, $t9, 0xff
    sll     $t9, $t7, 24
    lw      $t7, 0x8c($v0)
    or      $t6, $t8, $t9
    andi    $t8, $t7, 0xff
    sll     $t9, $t8, 16
    lw      $t8, 0x90($v0)
    or      $t7, $t6, $t9
    andi    $t6, $t8, 0xff
    sll     $t9, $t6, 8
    or      $t8, $t7, $t9
    lui     $t6, 0xbc00
    sw      $t8, 0x4($t0)
    ori     $t6, $t6, 0x8
    sw      $t6, 0x0($v1)
    lui     $t7, 0x800e
    lw      $t7, -0x5754($t7)
    lui     $t8, 0x801d
    addiu   $t8, $t8, 0xadb8
    multu   $t7, $t5
    mflo    $t9
    addu    $v0, $t9, $t8
    lw      $a0, 0x98($v0)
    lw      $t6, 0x9c($v0)
    subu    $t7, $zero, $a0
    subu    $a1, $t6, $a0
    sll     $t9, $t7, 8
    addu    $t8, $t9, $at
    div     $zero, $t8, $a1
    lui     $t9, 0x1
    ori     $t9, $t9, 0xf400
    mflo    $t6
    andi    $t7, $t6, 0xffff
    bnez    $a1, branch_0x800900fc
    nop
    break   0x7
branch_0x800900fc:

    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x80090114
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x80090114
    nop
    break   0x6
branch_0x80090114:

    div     $zero, $t9, $a1
    mflo    $t8
    andi    $t6, $t8, 0xffff
    bnez    $a1, branch_0x8009012c
    nop
    break   0x7
branch_0x8009012c:

    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x80090144
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x80090144
    nop
    break   0x6
branch_0x80090144:

    sll     $t9, $t6, 16
    or      $t8, $t7, $t9
    b       branch_0x800901c0
    sw      $t8, 0x4($v1)

branch_0x80090154:
    or      $v0, $a2, $zero
    addiu   $a2, $a2, 0x8
    or      $v1, $a2, $zero
    lui     $t6, 0xba00
    sw      $t2, 0x0($v0)
    sw      $zero, 0x4($v0)
    ori     $t6, $t6, 0x1402
    addiu   $a2, $a2, 0x8
    sw      $t6, 0x0($v1)
    or      $a0, $a2, $zero
    sw      $zero, 0x4($v1)
    addiu   $a2, $a2, 0x8
    lui     $t7, 0xb900
    lui     $t9, 0xf0a
    ori     $t9, $t9, 0x4000
    ori     $t7, $t7, 0x31d
    or      $a1, $a2, $zero
    sw      $t7, 0x0($a0)
    sw      $t9, 0x4($a0)
    lui     $t6, 0xfffc
    lui     $t8, 0xfcff
    ori     $t8, $t8, 0xffff
    ori     $t6, $t6, 0xf279
    sw      $t6, 0x4($a1)
    sw      $t8, 0x0($a1)
    addiu   $a2, $a2, 0x8
    addiu   $t5, $zero, 0x110
branch_0x800901c0:
    lui     $t7, 0x800e
    lw      $t7, -0x5758($t7)
    lui     $t4, 0x708
    ori     $t4, $t4, 0x200
    bne     $t3, $t7, branch_0x800901e4
    lui     $t1, 0xfd10
    lui     $t9, 0x801d
    lw      $t9, -0x1c54($t9)
    bne     $t3, $t9, branch_0x800901f4
branch_0x800901e4:
    lui     $t8, %hi(TrackNr_0x800d7ef0)
    lw      $t8, %lo(TrackNr_0x800d7ef0)($t8)
    addiu   $at, $zero, Track_9
    bne     $t8, $at, branch_0x800902f8
branch_0x800901f4:
    or      $v0, $a2, $zero
    addiu   $a2, $a2, 0x8
    or      $v1, $a2, $zero
    sw      $t2, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t6, 0xfd10
    lui     $t7, 0x800
    addiu   $t7, $t7, 0x1400
    ori     $t6, $t6, 0xf
    addiu   $a2, $a2, 0x8
    or      $a0, $a2, $zero
    sw      $t6, 0x0($v1)
    sw      $t7, 0x4($v1)
    lui     $t9, 0x701
    lui     $t0, 0xf510
    ori     $t9, $t9, 0xc140
    addiu   $a2, $a2, 0x8
    ori     $t0, $t0, 0x800
    or      $a1, $a2, $zero
    sw      $t9, 0x4($a0)
    addiu   $a2, $a2, 0x8
    sw      $t0, 0x0($a0)
    lui     $t8, 0xe600
    sw      $t8, 0x0($a1)
    or      $a3, $a2, $zero
    sw      $zero, 0x4($a1)
    lui     $t7, 0x703
    ori     $t7, $t7, 0xc1fc
    addiu   $a2, $a2, 0x8
    lui     $t6, 0xf400
    sw      $t6, 0x0($a3)
    or      $v0, $a2, $zero
    sw      $t7, 0x4($a3)
    addiu   $a2, $a2, 0x8
    or      $v1, $a2, $zero
    lui     $t9, 0x1
    ori     $t9, $t9, 0xc140
    addiu   $a2, $a2, 0x8
    sw      $zero, 0x4($v0)
    sw      $t2, 0x0($v0)
    sw      $t9, 0x4($v1)
    or      $a0, $a2, $zero
    sw      $t0, 0x0($v1)
    lui     $t6, 0x3
    ori     $t6, $t6, 0xc1fc
    addiu   $a2, $a2, 0x8
    lui     $t8, 0xf200
    sw      $t8, 0x0($a0)
    sw      $t6, 0x4($a0)
    or      $a1, $a2, $zero
    lui     $t7, 0x101
    addiu   $t7, $t7, 0x3f0
    sw      $t7, 0x4($a1)
    sw      $ra, 0x0($a1)
    lui     $t9, %hi(TrackNr_0x800d7ef0)
    lw      $t9, %lo(TrackNr_0x800d7ef0)($t9)
    addiu   $a2, $a2, 0x8
    addiu   $at, $zero, Track_9
    bne     $t9, $at, branch_0x800902f8
    or      $v0, $a2, $zero
    lui     $t8, 0x101
    addiu   $t8, $t8, 0x430
    sw      $t8, 0x4($v0)
    addiu   $a2, $a2, 0x8
    sw      $ra, 0x0($v0)
branch_0x800902f8:

    lui     $t6, 0x800e
    lw      $t6, -0x5754($t6)
    or      $v1, $a2, $zero
    lui     $t8, 0x101
    multu   $t6, $t5
    addiu   $t8, $t8, 0x330
    addiu   $a2, $a2, 0x8
    sw      $t8, 0x4($v1)
    or      $a0, $a2, $zero
    sw      $ra, 0x0($v1)
    addiu   $a2, $a2, 0x8
    lui     $t9, 0x801d
    or      $a1, $a2, $zero
    lui     $t6, 0x800
    addiu   $t9, $t9, 0xadb8
    mflo    $t7
    sw      $zero, 0x4($a0)
    sw      $t2, 0x0($a0)
    addiu   $t6, $t6, 0x0
    addiu   $a2, $a2, 0x8
    addu    $v0, $t7, $t9
    or      $a3, $a2, $zero
    sw      $t6, 0x4($a1)
    lui     $t7, 0xf510
    sw      $t1, 0x0($a1)
    sw      $t7, 0x0($a3)
    addiu   $a2, $a2, 0x8
    or      $t0, $a2, $zero
    sw      $t4, 0x4($a3)
    addiu   $a2, $a2, 0x8
    lui     $t9, 0xe600
    sw      $t9, 0x0($t0)
    or      $v1, $a2, $zero
    addiu   $a2, $a2, 0x8
    sw      $zero, 0x4($t0)
    lui     $t8, 0xf300
    lui     $t5, 0x70f
    ori     $t5, $t5, 0xf800
    sw      $t8, 0x0($v1)
    or      $a0, $a2, $zero
    addiu   $a2, $a2, 0x8
    sw      $t5, 0x4($v1)
    or      $a1, $a2, $zero
    lui     $t6, 0xf510
    ori     $t6, $t6, 0x200
    sw      $zero, 0x4($a0)
    sw      $t2, 0x0($a0)
    lui     $t7, 0x8
    ori     $t7, $t7, 0x200
    sw      $t6, 0x0($a1)
    addiu   $a2, $a2, 0x8
    or      $a3, $a2, $zero
    sw      $t7, 0x4($a1)
    li      $t8, 0xc0fc
    lui     $t9, 0xf200
    sw      $t9, 0x0($a3)
    sw      $t8, 0x4($a3)
    lui     $t6, 0x800e
    lw      $t6, -0x5758($t6)
    lui     $t9, 0xba00
    addiu   $a2, $a2, 0x8
    bne     $t3, $t6, branch_0x80090978
    ori     $t9, $t9, 0x1402
    or      $v1, $a2, $zero
    addiu   $a2, $a2, 0x8
    lui     $t7, 0x800
    addiu   $t7, $t7, 0x200
    or      $a0, $a2, $zero
    lui     $t9, 0xf510
    ori     $t9, $t9, 0x100
    addiu   $a2, $a2, 0x8
    sw      $t7, 0x4($v1)
    sw      $t1, 0x0($v1)
    sw      $t9, 0x0($a0)
    or      $a1, $a2, $zero
    addiu   $a2, $a2, 0x8
    sw      $t4, 0x4($a0)
    or      $a3, $a2, $zero
    lui     $t8, 0xe600
    sw      $t8, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t6, 0xf300
    sw      $t6, 0x0($a3)
    addiu   $a2, $a2, 0x8
    or      $t0, $a2, $zero
    sw      $t5, 0x4($a3)
    addiu   $a2, $a2, 0x8
    or      $a0, $a2, $zero
    lui     $t7, 0xf510
    ori     $t7, $t7, 0x300
    addiu   $a2, $a2, 0x8
    sw      $zero, 0x4($t0)
    sw      $t2, 0x0($t0)
    lui     $t9, 0x108
    ori     $t9, $t9, 0x200
    sw      $t7, 0x0($a0)
    or      $a1, $a2, $zero
    sw      $t9, 0x4($a0)
    lui     $t6, 0x100
    ori     $t6, $t6, 0xc0fc
    addiu   $a2, $a2, 0x8
    lui     $t8, 0xf200
    sw      $t8, 0x0($a1)
    sw      $t6, 0x4($a1)
    or      $a3, $a2, $zero
    lui     $t7, 0xfb00
    sw      $t7, 0x0($a3)
    lwc1    $f4, 0x108($v0)
    addiu   $a2, $a2, 0x8
    trunc.w.s   $f6, $f4
    mfc1    $v1, $a2
    nop
    andi    $t8, $v1, 0xff
    sll     $t6, $t8, 24
    sll     $t7, $t8, 16
    or      $t9, $t6, $t7
    sll     $t8, $t8, 8
    or      $t6, $t9, $t8
    ori     $t7, $t6, 0xff
    sw      $t7, 0x4($a3)
    lui     $t9, 0x800e
    lb      $t9, -0x69f8($t9)
    lui     $t8, 0x801c
    beqzl   $t9, branch_0x8009092c
    or      $v0, $a2, $zero
    lw      $t8, 0x1d30($t8)
    beqzl   $t8, branch_0x80090544
    lwc1    $f10, 0x108($v0)
    lui     $at, 0x437f
    mtc1    $at, $t4
    lwc1    $f0, 0x108($v0)
    c.lt.s $f0, $f12
    nop
    bc1fl   branch_0x80090544
    lwc1    $f10, 0x108($v0)
    lui     $at, 0x3fc0
    mtc1    $at, $t0
    nop
    add.s   $f2, $f0, $f8
    c.lt.s $f12, $f2
    nop
    bc1fl   branch_0x80090540
    swc1    $2, 0x108($v0)
    b       branch_0x80090540
    swc1    $12, 0x108($v0)

# 0x8009053c
    swc1    $2, 0x108($v0)
branch_0x80090540:
    lwc1    $f10, 0x108($v0)
branch_0x80090544:
    lw      $a1, 0x18($v0)
    lw      $t7, 0x30($v0)
    trunc.w.s   $f16, $f10
    addiu   $a0, $zero, 0xff
    subu    $t9, $t7, $a1
    lw      $a3, 0x1c($v0)
    mfc1    $v1, $s0
    lw      $t0, 0x20($v0)
    lw      $t1, 0x24($v0)
    multu   $t9, $v1
    lw      $t9, 0x34($v0)
    mflo    $t8
    nop
    nop
    div     $zero, $t8, $a0
    mflo    $t6
    addu    $t7, $t6, $a1
    bnez    $a0, branch_0x80090594
    nop
    break   0x7
branch_0x80090594:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x800905ac
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x800905ac
    nop
    break   0x6
branch_0x800905ac:

    subu    $t8, $t9, $a3
    multu   $t8, $v1
    lw      $t8, 0x38($v0)
    sw      $t7, 0x0($v0)
    lw      $a1, 0x28($v0)
    mflo    $t6
    nop
    nop
    div     $zero, $t6, $a0
    mflo    $t7
    addu    $t9, $t7, $a3
    bnez    $a0, branch_0x800905e4
    nop
    break   0x7
branch_0x800905e4:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x800905fc
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x800905fc
    nop
    break   0x6
branch_0x800905fc:

    subu    $t6, $t8, $t0
    multu   $t6, $v1
    lw      $t6, 0x3c($v0)
    sw      $t9, 0x4($v0)
    lw      $a3, 0x2c($v0)
    mflo    $t7
    nop
    nop
    div     $zero, $t7, $a0
    mflo    $t9
    addu    $t8, $t9, $t0
    bnez    $a0, branch_0x80090634
    nop
    break   0x7
branch_0x80090634:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x8009064c
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x8009064c
    nop
    break   0x6
branch_0x8009064c:

    subu    $t7, $t6, $t1
    multu   $t7, $v1
    lw      $t7, 0x40($v0)
    sw      $t8, 0x8($v0)
    lw      $t0, 0x58($v0)
    mflo    $t9
    nop
    nop
    div     $zero, $t9, $a0
    mflo    $t8
    addu    $t6, $t8, $t1
    bnez    $a0, branch_0x80090684
    nop
    break   0x7
branch_0x80090684:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x8009069c
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x8009069c
    nop
    break   0x6
branch_0x8009069c:

    subu    $t9, $t7, $a1
    multu   $t9, $v1
    lw      $t9, 0x44($v0)
    sw      $t6, 0xc($v0)
    lw      $t1, 0x5c($v0)
    mflo    $t8
    nop
    nop
    div     $zero, $t8, $a0
    mflo    $t6
    addu    $t7, $t6, $a1
    bnez    $a0, branch_0x800906d4
    nop
    break   0x7
branch_0x800906d4:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x800906ec
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x800906ec
    nop
    break   0x6
branch_0x800906ec:

    subu    $t8, $t9, $a3
    multu   $t8, $v1
    lw      $t8, 0x68($v0)
    sw      $t7, 0x10($v0)
    lw      $a1, 0x60($v0)
    mflo    $t6
    nop
    nop
    div     $zero, $t6, $a0
    mflo    $t7
    addu    $t9, $t7, $a3
    bnez    $a0, branch_0x80090724
    nop
    break   0x7
branch_0x80090724:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x8009073c
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x8009073c
    nop
    break   0x6
branch_0x8009073c:

    subu    $t6, $t8, $t0
    multu   $t6, $v1
    lw      $t6, 0x6c($v0)
    sw      $t9, 0x14($v0)
    mflo    $t7
    nop
    nop
    div     $zero, $t7, $a0
    mflo    $t9
    addu    $t8, $t9, $t0
    bnez    $a0, branch_0x80090770
    nop
    break   0x7
branch_0x80090770:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x80090788
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x80090788
    nop
    break   0x6
branch_0x80090788:

    subu    $t7, $t6, $t1
    multu   $t7, $v1
    lw      $t7, 0x70($v0)
    sw      $t8, 0x48($v0)
    mflo    $t9
    nop
    nop
    div     $zero, $t9, $a0
    mflo    $t8
    addu    $t6, $t8, $t1
    bnez    $a0, branch_0x800907bc
    nop
    break   0x7
branch_0x800907bc:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x800907d4
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x800907d4
    nop
    break   0x6
branch_0x800907d4:

    subu    $t9, $t7, $a1
    multu   $t9, $v1
    sw      $t6, 0x4c($v0)
    sll     $t9, $v1, 4
    mflo    $t8
    nop
    nop
    div     $zero, $t8, $a0
    mflo    $t6
    addu    $t7, $t6, $a1
    bnez    $a0, branch_0x80090808
    nop
    break   0x7
branch_0x80090808:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x80090820
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x80090820
    nop
    break   0x6
branch_0x80090820:

    div     $zero, $t9, $a0
    sw      $t7, 0x50($v0)
    mflo    $t8
    sll     $t7, $v1, 3
    addu    $t7, $t7, $v1
    sll     $t7, $t7, 2
    div     $zero, $t7, $a0
    bnez    $a0, branch_0x80090848
    nop
    break   0x7
branch_0x80090848:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x80090860
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x80090860
    nop
    break   0x6
branch_0x80090860:

    mflo    $t9
    addiu   $t6, $t8, 0x3d4
    sw      $t6, 0x78($v0)
    sll     $t6, $v1, 2
    addu    $t6, $t6, $v1
    sll     $t6, $t6, 2
    div     $zero, $t6, $a0
    addiu   $t8, $t9, 0x3ac
    sw      $t8, 0x98($v0)
    sll     $t8, $v1, 4
    addu    $t8, $t8, $v1
    sll     $t8, $t8, 2
    addu    $t8, $t8, $v1
    sll     $t8, $t8, 2
    subu    $t8, $t8, $v1
    sll     $t8, $t8, 3
    bnez    $a0, branch_0x800908ac
    nop
    break   0x7
branch_0x800908ac:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x800908c4
    lui     $at, 0x8000
    bne     $t7, $at, branch_0x800908c4
    nop
    break   0x6
branch_0x800908c4:

    mflo    $t7
    addiu   $t9, $t7, 0x3d4
    bnez    $a0, branch_0x800908d8
    nop
    break   0x7
branch_0x800908d8:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x800908f0
    lui     $at, 0x8000
    bne     $t6, $at, branch_0x800908f0
    nop
    break   0x6
branch_0x800908f0:

    div     $zero, $t8, $a0
    mflo    $t6
    addiu   $t7, $t6, 0x64
    sw      $t9, 0x9c($v0)
    bnez    $a0, branch_0x8009090c
    nop
    break   0x7
branch_0x8009090c:

    addiu   $at, $zero, 0xffff
    bne     $a0, $at, branch_0x80090924
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x80090924
    nop
    break   0x6
branch_0x80090924:

    sw      $t7, 0xa0($v0)
    or      $v0, $a2, $zero
branch_0x8009092c:
    addiu   $a2, $a2, 0x8
    or      $v1, $a2, $zero
    sw      $t2, 0x0($v0)
    sw      $zero, 0x4($v0)
    addiu   $a2, $a2, 0x8
    lui     $t9, 0xba00
    ori     $t9, $t9, 0x1402
    lui     $t8, 0x10
    or      $a0, $a2, $zero
    lui     $t6, 0xfc22
    lui     $t7, 0x1ffc
    sw      $t8, 0x4($v1)
    sw      $t9, 0x0($v1)
    ori     $t7, $t7, 0xfa38
    ori     $t6, $t6, 0xffff
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    b       branch_0x800909b8
    addiu   $a2, $a2, 0x8

branch_0x80090978:
    or      $v0, $a2, $zero
    addiu   $a2, $a2, 0x8
    or      $v1, $a2, $zero
    sw      $t2, 0x0($v0)
    sw      $zero, 0x4($v0)
    addiu   $a2, $a2, 0x8
    or      $a0, $a2, $zero
    sw      $zero, 0x4($v1)
    sw      $t9, 0x0($v1)
    lui     $t8, 0xfcff
    lui     $t6, 0xfffc
    ori     $t6, $t6, 0xf279
    ori     $t8, $t8, 0xffff
    sw      $t8, 0x0($a0)
    sw      $t6, 0x4($a0)
    addiu   $a2, $a2, 0x8
branch_0x800909b8:
    lui     $t7, 0x800e
    lw      $t7, -0x5754($t7)
    or      $v0, $a2, $zero
    lui     $t6, 0x400
    bnez    $t7, branch_0x800909f4
    lui     $v1, 0x800e
    or      $v0, $a2, $zero
    lui     $t9, 0x400
    lui     $t8, 0x600
    addiu   $t8, $t8, 0xe0
    ori     $t9, $t9, 0xe6f
    sw      $t9, 0x0($v0)
    sw      $t8, 0x4($v0)
    b       branch_0x80090a0c
    addiu   $a2, $a2, 0x8

branch_0x800909f4:
    lui     $t7, 0x600
    addiu   $t7, $t7, 0x150
    ori     $t6, $t6, 0xe6f
    sw      $t6, 0x0($v0)
    sw      $t7, 0x4($v0)
    addiu   $a2, $a2, 0x8
branch_0x80090a0c:
    or      $v0, $a2, $zero
    lui     $t9, 0x101
    addiu   $t9, $t9, 0x3b8
    sw      $t9, 0x4($v0)
    sw      $ra, 0x0($v0)
    lw      $v1, -0x5758($v1)
    addiu   $a2, $a2, 0x8
    lui     $v0, %hi(TrackNr_0x800d7ef0)
    bne     $t3, $v1, branch_0x80090ae4
    nop
    lw      $v0, %lo(TrackNr_0x800d7ef0)($v0)
    addiu   $at, $zero, Track_2
    beqz    $v0, branch_0x80090a64 # Track_0
    nop
    beq     $v0, $at, branch_0x80090a64
    addiu   $at, $zero, Track_6
    beq     $v0, $at, branch_0x80090a88
    addiu   $at, $zero, Track_7
    beq     $v0, $at, branch_0x80090ab4
    lui     $t8, %hi(Unknown_0x801ce398)
    b       branch_0x80090ae4
    nop

branch_0x80090a64:
    jal     Function_0x8008d6ec
    or      $a0, $a2, $zero
    lui     $v1, 0x800e
    lui     $t2, 0xe700
    addiu   $t3, $zero, 0x1
    lui     $ra, 0x600
    or      $a2, $v0, $zero
    b       branch_0x80090ae4
    lw      $v1, -0x5758($v1)

branch_0x80090a88:
    jal     Function_0x8008cd8c
    or      $a0, $a2, $zero
    jal     Function_0x8008d1f4
    or      $a0, $v0, $zero
    lui     $v1, 0x800e
    lui     $t2, 0xe700
    addiu   $t3, $zero, 0x1
    lui     $ra, 0x600
    or      $a2, $v0, $zero
    b       branch_0x80090ae4
    lw      $v1, -0x5758($v1)

branch_0x80090ab4:
    lw      $t8, %lo(Unknown_0x801ce398)($t8)
    addiu   $at, $zero, 0x15
    bne     $t8, $at, branch_0x80090ae4
    nop
    jal     Function_0x8008dd70
    or      $a0, $a2, $zero
    lui     $v1, 0x800e
    lw      $v1, -0x5758($v1)
    lui     $t2, 0xe700
    addiu   $t3, $zero, 0x1
    lui     $ra, 0x600
    or      $a2, $v0, $zero
branch_0x80090ae4:
    bne     $t3, $v1, branch_0x80090ce4
    lui     $v0, 0x801d

    lw      $v0, -0x1c54($v0)
    addiu   $at, $zero, 0x2
    beql    $t3, $v0, branch_0x80090ce8
    lw      $ra, 0x14($sp)

    beq     $v0, $at, branch_0x80090ce4
    lui     $t6, 0xb600

    or      $v0, $a2, $zero
    addiu   $a2, $a2, 0x8
    addiu   $t7, $zero, 0xffff
    sw      $t7, 0x4($v0)
    sw      $t6, 0x0($v0)
    or      $v1, $a2, $zero
    addiu   $a2, $a2, 0x8
    lui     $t9, 0xb700
    addiu   $t8, $zero, 0x204
    or      $a0, $a2, $zero
    sw      $t8, 0x4($v1)
    sw      $t9, 0x0($v1)
    lui     $t6, 0xbb00
    lui     $t7, 0x8000
    ori     $t7, $t7, 0x8000
    ori     $t6, $t6, 0x1
    addiu   $a2, $a2, 0x8
    sw      $t6, 0x0($a0)
    sw      $t7, 0x4($a0)
    or      $a1, $a2, $zero
    addiu   $a2, $a2, 0x8
    or      $a3, $a2, $zero
    sw      $t2, 0x0($a1)
    sw      $zero, 0x4($a1)
    lui     $t9, 0xba00
    ori     $t9, $t9, 0x1301
    addiu   $a2, $a2, 0x8
    lui     $t8, 0x8
    sw      $t8, 0x4($a3)
    sw      $t9, 0x0($a3)
    or      $v0, $a2, $zero
    addiu   $a2, $a2, 0x8
    lui     $t6, 0xba00
    ori     $t6, $t6, 0x1402
    or      $v1, $a2, $zero
    sw      $t6, 0x0($v0)
    sw      $zero, 0x4($v0)
    lui     $t9, 0xff87
    lui     $t7, 0xfc11
    ori     $t7, $t7, 0xc223
    ori     $t9, $t9, 0xffff
    addiu   $a2, $a2, 0x8
    lui     $t0, 0x801d
    sw      $t9, 0x4($v1)
    sw      $t7, 0x0($v1)
    or      $a0, $a2, $zero
    lui     $t8, 0xfa00
    addiu   $t0, $t0, 0xadb8
    sw      $t8, 0x0($a0)
    lw      $t6, 0xc0($t0)
    addiu   $a2, $a2, 0x8
    or      $a1, $a2, $zero
    andi    $t7, $t6, 0xff
    lw      $t6, 0xb8($t0)
    sll     $t9, $t7, 8
    addiu   $a2, $a2, 0x8
    sll     $t7, $t6, 24
    lw      $t6, 0xbc($t0)
    or      $t8, $t9, $t7
    or      $a3, $a2, $zero
    andi    $t9, $t6, 0xff
    sll     $t7, $t9, 16
    or      $t6, $t8, $t7
    sw      $t6, 0x4($a0)
    lui     $t8, 0x50
    lui     $t9, 0xb900
    ori     $t9, $t9, 0x31d
    ori     $t8, $t8, 0x4240
    sw      $t8, 0x4($a1)
    sw      $t9, 0x0($a1)
    lui     $t6, 0x800
    addiu   $a2, $a2, 0x8
    or      $v0, $a2, $zero
    addiu   $t6, $t6, 0x7400
    lui     $t7, 0xfd70
    sw      $t7, 0x0($a3)
    sw      $t6, 0x4($a3)
    lui     $t8, 0x701
    ori     $t8, $t8, 0x4060
    addiu   $a2, $a2, 0x8
    lui     $t9, 0xf570
    sw      $t9, 0x0($v0)
    or      $v1, $a2, $zero
    sw      $t8, 0x4($v0)
    addiu   $a2, $a2, 0x8
    lui     $t7, 0xe600
    sw      $t7, 0x0($v1)
    or      $a0, $a2, $zero
    sw      $zero, 0x4($v1)
    lui     $t9, 0x77f
    ori     $t9, $t9, 0xf080
    addiu   $a2, $a2, 0x8
    lui     $t6, 0xf300
    sw      $t6, 0x0($a0)
    or      $a1, $a2, $zero
    sw      $t9, 0x4($a0)
    addiu   $a2, $a2, 0x8
    or      $a3, $a2, $zero
    lui     $t8, 0xf570
    ori     $t8, $t8, 0x2000
    addiu   $a2, $a2, 0x8
    sw      $zero, 0x4($a1)
    sw      $t2, 0x0($a1)
    lui     $t7, 0x1
    ori     $t7, $t7, 0x4060
    sw      $t8, 0x0($a3)
    or      $v0, $a2, $zero
    addiu   $a2, $a2, 0x8
    sw      $t7, 0x4($a3)
    lui     $t9, 0xf
    ori     $t9, $t9, 0xc07c
    lui     $t6, 0xf200
    or      $v1, $a2, $zero
    sw      $t6, 0x0($v0)
    sw      $t9, 0x4($v0)
    lui     $t8, 0x101
    addiu   $t8, $t8, 0x470
    sw      $t8, 0x4($v1)
    sw      $ra, 0x0($v1)
    addiu   $a2, $a2, 0x8
branch_0x80090ce4:
    lw      $ra, 0x14($sp)
branch_0x80090ce8:
    addiu   $sp, $sp, 0x1c0
    or      $v0, $a2, $zero
    jr      $ra
    nop

