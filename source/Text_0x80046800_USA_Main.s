


.globl Function_0x80047430
Function_0x80047430: # 0x80047430
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)

    jal     osSpTaskYield2
    nop
    lw      $ra, 0x14($sp)
    addiu   $v0, $zero, 0x1
    lui     $at, %hi(Unknown_0x800d4380)
    sw      $v0, %lo(Unknown_0x800d4380)($at)
    lui     $at, %hi(Unknown_0x800d4384)
    sw      $v0, %lo(Unknown_0x800d4384)($at)

    jr      $ra
    addiu   $sp, $sp, 0x18


.globl Function_0x80047460
Function_0x80047460: # 0x80047460
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)

    lui     $a0, %hi(Unknown_0x80154018)
    jal     osSpTaskLoad
    lw      $a0, %lo(Unknown_0x80154018)($a0)

    lui     $a0, %hi(Unknown_0x80154018)
    jal     Function_0x800c601c
    lw      $a0, %lo(Unknown_0x80154018)($a0)

    lw      $ra, 0x14($sp)
    addiu   $t6, $zero, 0x2
    lui     $at, %hi(Unknown_0x800d4380)
    sw      $t6, %lo(Unknown_0x800d4380)($at)
    lui     $at, %hi(Unknown_0x800d4384)
    addiu   $t7, $zero, 0x1
    sw      $t7, %lo(Unknown_0x800d4384)($at)

    jr      $ra
    addiu   $sp, $sp, 0x18


.globl Function_0x800474a4
Function_0x800474a4: # 0x800474a4
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)
    jal     Set_DPC_STATUS_REG
    addiu   $a0, $zero, 0x3c0

    lui     $a0, %hi(Unknown_0x80154014)
    jal     osSpTaskLoad
    lw      $a0, %lo(Unknown_0x80154014)($a0)

    lui     $a0, %hi(Unknown_0x80154014)
    jal     Function_0x800c601c
    lw      $a0, %lo(Unknown_0x80154014)($a0)

    lw      $ra, 0x14($sp)
    addiu   $t6, $zero, 0x3
    lui     $at, %hi(Unknown_0x800d4380)
    sw      $t6, %lo(Unknown_0x800d4380)($at)
    lui     $at, %hi(Unknown_0x800d4384)
    addiu   $t7, $zero, 0x1
    sw      $t7, %lo(Unknown_0x800d4384)($at)

    jr      $ra
    addiu   $sp, $sp, 0x18


.globl Fnct2
Fnct2: # 0x800474f0
    addiu   $sp, $sp, 0xffb0
    sw      $a0, 0x50($sp)
    sw      $ra, 0x3c($sp)

    lui     $a0, %hi(Unknown_0x80153e18)
    lui     $a1, %hi(Unknown_0x80153fa8)
    sw      $s7, 0x38($sp)
    sw      $s6, 0x34($sp)
    sw      $s5, 0x30($sp)
    sw      $s4, 0x2c($sp)
    sw      $s3, 0x28($sp)
    sw      $s2, 0x24($sp)
    sw      $s1, 0x20($sp)
    sw      $s0, 0x1c($sp)
    addiu   $a1, $a1, %lo(Unknown_0x80153fa8)
    addiu   $a0, $a0, %lo(Unknown_0x80153e18)
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1

    lui     $s0, %hi(Unknown_0x80153e30)
    addiu   $s0, $s0, %lo(Unknown_0x80153e30)
    lui     $a1, %hi(Unknown_0x80153fac)
    addiu   $a1, $a1, %lo(Unknown_0x80153fac)
    or      $a0, $s0, $zero
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1

    lui     $a0, %hi(0x80153e48)
    lui     $a1, %hi(Unknown_0x80153fb0)
    addiu   $a1, $a1, %lo(Unknown_0x80153fb0)
    addiu   $a0, $a0, %lo(0x80153e48)
    jal     osCreateMesgQueue

    addiu   $a2, $zero, 0x1
    lui     $a0, %hi(Unknown_0x80153e60)
    lui     $a1, %hi(Unknown_0x80153fb4)
    addiu   $a1, $a1, %lo(Unknown_0x80153fb4)
    addiu   $a0, $a0, %lo(Unknown_0x80153e60)
    jal     osCreateMesgQueue

    addiu   $a2, $zero, 0x1
    lui     $a0, %hi(Unknown_0x80153e78)
    lui     $a1, %hi(Unknown_0x80153fb8)
    addiu   $a1, $a1, %lo(Unknown_0x80153fb8)
    addiu   $a0, $a0, %lo(Unknown_0x80153e78)
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1

    lui     $a0, %hi(Unknown_0x80153e90)
    lui     $a1, %hi(Unknown_0x80153fc0)
    addiu   $a1, $a1, %lo(Unknown_0x80153fc0)
    addiu   $a0, $a0, %lo(Unknown_0x80153e90)
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x10

    addiu   $a0, $zero, 0x5
    or      $a1, $s0, $zero
    jal     osSetEventMesg
    addiu   $a2, $zero, 0xb

    lui     $a1, %hi(Unknown_0x80153e90)
    addiu   $a1, $a1, %lo(Unknown_0x80153e90)
    addiu   $a0, $zero, 0x4
    jal     osSetEventMesg
    addiu   $a2, $zero, 0x17

    lui     $a1, %hi(Unknown_0x80153e90)
    addiu   $a1, $a1, %lo(Unknown_0x80153e90)
    addiu   $a0, $zero, 0x9
    jal     osSetEventMesg
    addiu   $a2, $zero, 0x18

    lui     $a0, %hi(Unknown_0x80153e90)
    addiu   $a0, $a0, %lo(Unknown_0x80153e90)
    addiu   $a1, $zero, 0x19
    jal     osViSetEvent
    addiu   $a2, $zero, 0x1

    jal     Function_0x80097e68_Empty
    nop

    lui     $s0, %hi(Unknown_0x80153aa0)
    lui     $t6, %hi(Unknown_0x80153740)
    addiu   $s0, $s0, %lo(Unknown_0x80153aa0)
    addiu   $t6, $t6, %lo(Unknown_0x80153740)
    lui     $a2, %hi(Function_0x80047ac0)
    addiu   $t7, $zero, 0x14
    sw      $t7, 0x14($sp)
    addiu   $a2, $a2, %lo(Function_0x80047ac0)
    sw      $t6, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x4
    jal     osCreateThread
    or      $a3, $zero, $zero

    lui     $t8, %hi(Unknown_0x800d43a8)
    lb      $t8, %lo(Unknown_0x800d43a8)($t8)
    beqz    $t8, branch_0x80047650
    nop

    jal     osStartThread
    or      $a0, $s0, $zero

branch_0x80047650:
    lui     $s0, %hi(Unknown_0x80153c50)
    lui     $t9, %hi(Unknown_0x80152f40)
    addiu   $s0, $s0, %lo(Unknown_0x80153c50)
    addiu   $t9, $t9, %lo(Unknown_0x80152f40)
    lui     $a2, %hi(Function_0x80046da0)
    addiu   $t0, $zero, 0xa
    sw      $t0, 0x14($sp)
    addiu   $a2, $a2, %lo(Function_0x80046da0)
    sw      $t9, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x5
    jal     osCreateThread
    or      $a3, $zero, $zero

    lui     $t1, %hi(Unknown_0x800d43a4)
    lb      $t1, %lo(Unknown_0x800d43a4)($t1)
    beqz    $t1, branch_0x8004769c
    nop

    jal     osStartThread
    or      $a0, $s0, $zero

branch_0x8004769c:
    lui     $s7, 0x800d
    lui     $s6, 0x800d
    lui     $s5, %hi(Unknown_0x800d438c)
    lui     $s4, 0x800d
    lui     $s3, 0x800d
    lui     $s2, 0x800d
    lui     $s0, %hi(Unknown_0x800d4380)
    addiu   $s0, $s0, %lo(Unknown_0x800d4380)
    addiu   $s2, $s2, 0x4384
    addiu   $s3, $s3, 0x4390
    addiu   $s4, $s4, 0x4388
    addiu   $s5, $s5, %lo(Unknown_0x800d438c)
    addiu   $s6, $s6, 0x4394
    addiu   $s7, $s7, 0x4398
    addiu   $s1, $zero, 0x1

branch_0x800476d8:
    lui     $a0, %hi(Unknown_0x80153e90)
    addiu   $a0, $a0, %lo(Unknown_0x80153e90)
    addiu   $a1, $sp, 0x4c
    jal     osRecvMesg
    or      $a2, $s1, $zero

    lw      $v1, 0x4c($sp)
    addiu   $at, $zero, 0x19
    lui     $a0, %hi(Unknown_0x80153e48)
    bne     $v1, $at, branch_0x80047758
    addiu   $a0, $a0, %lo(Unknown_0x80153e48)
    addiu   $a1, $zero, 0x1f
    jal     osSendMesg
    or      $a2, $zero, $zero

    lw      $t2, 0x0($s3)
    lw      $t4, 0x0($s6)
    lw      $t6, 0x0($s7)
    addiu   $t3, $t2, 0x1
    subu    $t5, $t3, $t4
    slt     $at, $t5, $t6
    bnez    $at, branch_0x800476d8
    sw      $t3, 0x0($s3)

    sw      $t3, 0x0($s6)
    lui     $t7, %hi(Unknown_0x800d439c)
    lw      $t7, %lo(Unknown_0x800d439c)($t7)
    lui     $a0, %hi(Unknown_0x80153e60)
    addiu   $a0, $a0, %lo(Unknown_0x80153e60)
    addiu   $a1, $zero, 0x29
    or      $a2, $zero, $zero
    jal     osSendMesg
    sw      $t7, 0x0($s7)

    b       branch_0x800476d8
    nop

branch_0x80047758:
    addiu   $at, $zero, 0x17
    bnel    $v1, $at, branch_0x80047808
    addiu   $at, $zero, 0x16
    lw      $v0, 0x0($s0)
    addiu   $at, $zero, 0x2
    lui     $a0, %hi(Unknown_0x80154014)
    beq     $v0, $s1, branch_0x80047790
    nop
    beq     $v0, $at, branch_0x800477b4
    addiu   $at, $zero, 0x3
    beql    $v0, $at, branch_0x800477fc
    sw      $zero, 0x0($s0)
    b       branch_0x800476d8
    nop

branch_0x80047790:
    jal     osSpTaskYielded
    lw      $a0, %lo(Unknown_0x80154014)($a0)
    beqz    $v0, branch_0x800477a4
    nop
    sw      $s1, 0x0($s4)
branch_0x800477a4:
    jal     Function_0x80047460
    nop
    b       branch_0x800476d8
    nop

branch_0x800477b4:
    lw      $t8, 0x0($s4)
    beqzl   $t8, branch_0x800477d4
    lw      $t9, 0x0($s5)
    jal     Function_0x800474a4
    sw      $zero, 0x0($s4)

    b       branch_0x800476d8
    nop


.globl Function_0x800477d0
Function_0x800477d0: # 0x800477d0
    lw      $t9, 0x0($s5)
branch_0x800477d4:
    beqzl   $t9, branch_0x800477f0
    sw      $zero, 0x0($s0)
    jal     Function_0x800474a4
    sw      $zero, 0x0($s5)
    b       branch_0x800476d8
    nop


.globl Function_0x800477ec
Function_0x800477ec: # 0x800477ec
    sw      $zero, 0x0($s0)
branch_0x800477f0:
    b       branch_0x800476d8
    sw      $zero, 0x0($s2)

.globl Function_0x800477f8
Function_0x800477f8: # 0x800477f8
    sw      $zero, 0x0($s0)
branch_0x800477fc:
    b       branch_0x800476d8
    sw      $zero, 0x0($s2)

.globl Function_0x80047804
Function_0x80047804: # 0x80047804
    addiu   $at, $zero, 0x16
branch_0x80047808:
    bnel    $v1, $at, branch_0x80047854
    addiu   $at, $zero, 0x15
    jal     osWritebackDCacheAll
    nop
    lw      $t0, 0x0($s2)
    beqz    $t0, branch_0x80047840
    nop
    lw      $t1, 0x0($s0)
    beq     $s1, $t1, branch_0x800476d8
    nop
    jal     Function_0x80047430
    nop
    b       branch_0x800476d8
    nop
branch_0x80047840:
    jal     Function_0x80047460
    nop
    b       branch_0x800476d8
    nop

.globl Function_0x80047850
Function_0x80047850: # 0x80047850
    addiu   $at, $zero, 0x15
branch_0x80047854:
    bnel    $v1, $at, branch_0x8004788c
    addiu   $at, $zero, 0x18
    jal     osWritebackDCacheAll
    nop
    lw      $t2, 0x0($s2)
    beqz    $t2, branch_0x80047878
    nop
    b       branch_0x800476d8
    sw      $s1, 0x0($s5)
branch_0x80047878:
    jal     Function_0x800474a4
    nop
    b       branch_0x800476d8
    nop


.globl Function_0x80047888
Function_0x80047888: # 0x80047888
    addiu   $at, $zero, 0x18
branch_0x8004788c:
    bne     $v1, $at, branch_0x800476d8
    lui     $a0, %hi(Unknown_0x80153e78)
    addiu   $a0, $a0, %lo(Unknown_0x80153e78)
    addiu   $a1, $zero, 0x33
    jal     osSendMesg
    or      $a2, $zero, $zero
    b       branch_0x800476d8
    nop


.globl Function_0x800478ac
Function_0x800478ac: # 0x800478ac
    nop
    lw      $ra, 0x3c($sp)
    lw      $s0, 0x1c($sp)
    lw      $s1, 0x20($sp)
    lw      $s2, 0x24($sp)
    lw      $s3, 0x28($sp)
    lw      $s4, 0x2c($sp)
    lw      $s5, 0x30($sp)
    lw      $s6, 0x34($sp)
    lw      $s7, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50



.globl Fnct1
Fnct1: # 0x800478dc
    addiu   $sp, $sp, 0xffd8
    sw      $s0, 0x20($sp)

    lui     $s0, %hi(Unknown_0x80154020)
    addiu   $s0, $s0, %lo(Unknown_0x80154020)
    lui     $t6, %hi(Unknown_0x8038f800)
    lui     $t7, %hi(Unknown_0x803b5000)
    lui     $t8, %hi(Unknown_0x803da800)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x28($sp)
    addiu   $t6, $t6, %lo(Unknown_0x8038f800)
    addiu   $t7, $t7, %lo(Unknown_0x803b5000)
    addiu   $t8, $t8, %lo(Unknown_0x803da800)
    sw      $t6, 0x0($s0)
    sw      $t7, 0x4($s0)
    sw      $t8, 0x8($s0)

    jal     osCreateViManager
    addiu   $a0, $zero, 0xfe

    lui     $a0, %hi(0x800e84f0)
    jal     osViSetMode
    addiu   $a0, $a0, %lo(0x800e84f0)

    jal     osViBlack
    addiu   $a0, $zero, 0x1

    jal     osViSwapBuffer
    lw      $a0, 0x4($s0)

    jal     osViGetNextFramebuffer
    nop
    lw      $t9, 0x4($s0)
    beq     $v0, $t9, branch_0x80047964
    nop

branch_0x80047950:
    jal     osViGetNextFramebuffer
    nop
    lw      $t0, 0x4($s0)
    bne     $v0, $t0, branch_0x80047950
    nop

branch_0x80047964:
    jal     Function_0x80097e70
    lw      $a0, 0x0($s0)

    jal     osViSwapBuffer
    lw      $a0, 0x0($s0)

    jal     osViGetNextFramebuffer
    nop
    lw      $t1, 0x0($s0)
    beq     $v0, $t1, branch_0x8004799c
    nop

branch_0x80047988:
    jal     osViGetNextFramebuffer
    nop
    lw      $t2, 0x0($s0)
    bne     $v0, $t2, branch_0x80047988
    nop

branch_0x8004799c:
    jal     osViBlack
    or      $a0, $zero, $zero
    jal     osViSetSpecialFeatures
    addiu   $a0, $zero, 0x66

    lui     $a1, %hi(Unknown_0x80153e00) # OSMesgQueue *
    lui     $a2, %hi(Unknown_0x80153ea8) # OSMesg *msg
    addiu   $a2, $a2, %lo(Unknown_0x80153ea8)
    addiu   $a1, $a1, %lo(Unknown_0x80153e00)
    addiu   $a0, $zero, 0x96 # OSPri
    jal     osCreatePiManager
    addiu   $a3, $zero, 0x40 # s32 msgCount

    lui     $s0, %hi(Unknown_0x801538f0)
    lui     $t3, %hi(Unknown_0x80151f40)
    addiu   $s0, $s0, %lo(Unknown_0x801538f0)
    addiu   $t3, $t3, %lo(Unknown_0x80151f40)
    lui     $a2, %hi(Fnct2)
    addiu   $t4, $zero, 0x64
    sw      $t4, 0x14($sp)
    addiu   $a2, $a2, %lo(Fnct2)
    sw      $t3, 0x10($sp)
    or      $a0, $s0, $zero
    addiu   $a1, $zero, 0x3
    jal     osCreateThread
    or      $a3, $zero, $zero

    lui     $t5, %hi(Unknown_0x800d43a0)
    lb      $t5, %lo(Unknown_0x800d43a0)($t5)
    beqzl   $t5, branch_0x80047a18
    or      $a0, $zero, $zero

    jal     osStartThread
    or      $a0, $s0, $zero

    or      $a0, $zero, $zero
branch_0x80047a18:
    jal     osSetThreadPri
    or      $a1, $zero, $zero

branch_0x80047a20:
    b       branch_0x80047a20
    nop


.globl Function_0x80047a28
Function_0x80047a28: # 0x80047a28
    nop
    nop
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.globl main
main: # 0x80047a44
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)

    jal     osInitialize
    nop

    lui     $t6, %hi(Unknown_0x80151b40)
    addiu   $t6, $t6, %lo(Unknown_0x80151b40)
    lui     $a0, %hi(Unknown_0x80153740)
    lui     $a2, %hi(Fnct1)
    addiu   $t7, $zero, 0x64
    sw      $t7, 0x14($sp)
    addiu   $a2, $a2, %lo(Fnct1)
    addiu   $a0, $a0, %lo(Unknown_0x80153740)
    sw      $t6, 0x10($sp)
    addiu   $a1, $zero, 0x1
    jal     osCreateThread
    or      $a3, $zero, $zero

    lui     $a0, %hi(Unknown_0x80153740)
    jal     osStartThread
    addiu   $a0, $a0, %lo(Unknown_0x80153740)

    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop
