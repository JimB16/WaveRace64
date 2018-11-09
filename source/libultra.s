
/* Input:
a0
*/
.globl osVirtualToPhysical
osVirtualToPhysical: # 0x800c54c0
    addiu   $sp, $sp, 0xffe8
    sw      $a0, 0x18($sp)

    lw      $t6, 0x18($sp) # a0
    lui     $at, %hi(0x80000000)
    sw      $ra, 0x14($sp)
    sltu    $at, $t6, $at
    bnez    $at, branch_0x800c54f8
    lui     $at, %hi(0xa0000000)

    sltu    $at, $t6, $at
    beqz    $at, branch_0x800c54f8
    lui     $at, %hi(0x1ffeffff)

    ori     $at, $at, %lo(0x1ffeffff)
    b       branch_0x800c552c
    and     $v0, $t6, $at

branch_0x800c54f8:
    lw      $t7, 0x18($sp) # a0
    lui     $at, %hi(0xa0000000)
    sltu    $at, $t7, $at
    bnez    $at, branch_0x800c5524
    lui     $at, %hi(0xc0000000)

    sltu    $at, $t7, $at
    beqz    $at, branch_0x800c5524
    lui     $at, %hi(0x1ffeffff)

    ori     $at, $at, %lo(0x1ffeffff)
    b       branch_0x800c552c
    and     $v0, $t7, $at

branch_0x800c5524:
    jal     __osProbeTLB
    lw      $a0, 0x18($sp) # a0

branch_0x800c552c:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x800c553c
Function_0x800c553c: # 0x800c553c
    nop


/* Input:
a0: OSMesgQueue *
a1: OSMesg
a2: s32
*/
.globl osSendMesg
osSendMesg: # 0x800c5540
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x24($sp)
    sw      $a0, 0x38($sp)
    sw      $a1, 0x3c($sp)
    sw      $a2, 0x40($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)

    lw      $t6, 0x38($sp) # a0
    or      $s0, $v0, $zero
    lw      $t7, 0x8($t6)
    lw      $t8, 0x10($t6)
    slt     $at, $t7, $t8
    bnez    $at, branch_0x800c55dc
    nop

branch_0x800c5580:
    lw      $t9, 0x40($sp) # a2
    addiu   $at, $zero, 0x1
    bne     $t9, $at, branch_0x800c55b4
    nop

    lui     $t1, %hi(Unknown_0x800e8d90)
    lw      $t1, %lo(Unknown_0x800e8d90)($t1)
    addiu   $t0, $zero, 0x8
    sh      $t0, 0x10($t1)
    lw      $a0, 0x38($sp) # a0
    jal     Function_0x800caf30
    addiu   $a0, $a0, 0x4
    b       branch_0x800c55c4
    nop

branch_0x800c55b4:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    b       branch_0x800c5674
    addiu   $v0, $zero, 0xffff

branch_0x800c55c4:
    lw      $t2, 0x38($sp) # a0
    lw      $t3, 0x8($t2)
    lw      $t4, 0x10($t2)
    slt     $at, $t3, $t4
    beqz    $at, branch_0x800c5580
    nop

branch_0x800c55dc:
    lw      $t5, 0x38($sp) # a0
    lw      $t0, 0x3c($sp) # a1
    lw      $t6, 0xc($t5)
    lw      $t7, 0x8($t5)
    lw      $t9, 0x10($t5)
    lw      $t1, 0x14($t5)
    addu    $t8, $t6, $t7
    div     $zero, $t8, $t9
    mfhi    $s1
    sll     $t2, $s1, 2
    addu    $t3, $t1, $t2
    sw      $t0, 0x0($t3)
    lw      $t4, 0x38($sp) # a0
    bnez    $t9, branch_0x800c561c
    nop
    break   0x7
branch_0x800c561c:
    addiu   $at, $zero, 0xffff
    bne     $t9, $at, branch_0x800c5634
    lui     $at, 0x8000
    bne     $t8, $at, branch_0x800c5634
    nop
    break   0x6

branch_0x800c5634:
    lw      $t6, 0x8($t4)
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x8($t4)
    lw      $t8, 0x38($sp) # a0
    lw      $t9, 0x0($t8)
    lw      $t5, 0x0($t9)
    beqz    $t5, branch_0x800c5668
    nop

    jal     Function_0x800cb008
    or      $a0, $t8, $zero
    or      $s2, $v0, $zero
    jal     osStartThread
    or      $a0, $s2, $zero

branch_0x800c5668:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    or      $v0, $zero, $zero

branch_0x800c5674:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38


.globl Function_0x800c568c
Function_0x800c568c: # 0x800c568c
    nop

.globl osGetTime
osGetTime: # 0x800c5690
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x1c($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)
    jal     osGetCount
    or      $s0, $v0, $zero
    sw      $v0, 0x34($sp)
    lui     $t7, 0x801e
    lw      $t7, -0x5648($t7)
    lw      $t6, 0x34($sp)
    lui     $t0, 0x801e
    lui     $t1, 0x801e
    lw      $t1, -0x564c($t1)
    lw      $t0, -0x5650($t0)
    subu    $t8, $t6, $t7
    sw      $t8, 0x30($sp)
    or      $a0, $s0, $zero
    sw      $t1, 0x2c($sp)
    jal     __osRestoreInt
    sw      $t0, 0x28($sp)
    lw      $t9, 0x30($sp)
    lw      $t5, 0x2c($sp)
    lw      $ra, 0x1c($sp)
    or      $t3, $t9, $zero
    addu    $v1, $t3, $t5
    lw      $t4, 0x28($sp)
    addiu   $t2, $zero, 0x0
    sltu    $at, $v1, $t5
    addu    $v0, $at, $t2
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    addu    $v0, $v0, $t4

.globl Function_0x800c5714
Function_0x800c5714: # 0x800c5714
    nop
    nop
    nop

.globl osSetTime
osSetTime: # 0x800c5720
    sw      $a0, 0x0($sp)
    lw      $t6, 0x0($sp)
    sw      $a1, 0x4($sp)
    lui     $at, 0x801e
    lw      $t7, 0x4($sp)
    sw      $t6, -0x5650($at)
    lui     $at, 0x801e
    jr      $ra
    sw      $t7, -0x564c($at)

.globl Function_0x800c5744
Function_0x800c5744: # 0x800c5744
    nop
    nop
    nop


/* Input:
v0
*/
.globl osViSwapBuffer
osViSwapBuffer: # 0x800c5750
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)

    jal     __osDisableInt
    sw      $a0, 0x20($sp)

    lui     $t7, %hi(ViBufferPtr)
    lw      $t7, %lo(ViBufferPtr)($t7)
    lw      $t6, 0x20($sp)
    sw      $v0, 0x1c($sp)
    lui     $t8, %hi(ViBufferPtr)
    sw      $t6, 0x4($t7)
    lw      $t8, %lo(ViBufferPtr)($t8)
    lhu     $t9, 0x0($t8)
    ori     $t0, $t9, 0x10
    sh      $t0, 0x0($t8)

    jal     __osRestoreInt
    lw      $a0, 0x1c($sp)

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


/* Input:
a0
*/
.globl osContStartReadData
osContStartReadData: # 0x800c57a0
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    sw      $a0, 0x20($sp)
    jal     Function_0x800cb6d0
    sw      $zero, 0x1c($sp)

    lui     $t6, %hi(Unknown_0x801da900)
    lbu     $t6, %lo(Unknown_0x801da900)($t6)
    addiu   $at, $zero, 0x1
    beq     $t6, $at, branch_0x800c57f4
    nop

    jal     Function_0x800c590c
    nop
    lui     $a1, %hi(Unknown_0x801da8c0)
    addiu   $a1, $a1, %lo(Unknown_0x801da8c0)
    jal     __osSiRawStartDma
    addiu   $a0, $zero, 0x1
    sw      $v0, 0x1c($sp)

    lw      $a0, 0x20($sp) # a0
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1

branch_0x800c57f4:
    sw      $zero, 0x18($sp)
branch_0x800c57f8:
    lw      $t8, 0x18($sp)
    lw      $t0, 0x18($sp)
    lui     $at, %hi(Unknown_0x801da8c0)
    sll     $t9, $t8, 2
    addu    $at, $at, $t9
    addiu   $t7, $zero, 0xff
    sw      $t7, %lo(Unknown_0x801da8c0)($at)
    addiu   $t1, $t0, 0x1
    slti    $at, $t1, 0x10
    bnez    $at, branch_0x800c57f8
    sw      $t1, 0x18($sp)

    lui     $at, %hi(Unknown_0x801da8fc)
    lui     $a1, %hi(Unknown_0x801da8c0)
    sw      $zero, %lo(Unknown_0x801da8fc)($at)
    addiu   $a1, $a1, %lo(Unknown_0x801da8c0)
    jal     __osSiRawStartDma
    or      $a0, $zero, $zero

    addiu   $t2, $zero, 0x1
    lui     $at, %hi(Unknown_0x801da900)
    sw      $v0, 0x1c($sp)
    jal     Function_0x800cb714
    sb      $t2, %lo(Unknown_0x801da900)($at)

    lw      $ra, 0x14($sp)
    lw      $v0, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


.globl Function_0x800c5864
Function_0x800c5864: # 0x800c5864
    lui     $t7, 0x801e
    lbu     $t7, -0x56ff($t7)
    lui     $t6, %hi(Unknown_0x801da8c0)
    addiu   $sp, $sp, 0xfff0
    addiu   $t6, $t6, %lo(Unknown_0x801da8c0)
    sw      $t6, 0xc($sp)
    blez    $t7, branch_0x800c5904
    sw      $zero, 0x0($sp)
branch_0x800c5884:
    lw      $t9, 0xc($sp)
    addiu   $t8, $sp, 0x4
    lwl     $at, 0x0($t9)
    lwr     $at, 0x3($t9)
    sw      $at, 0x0($t8)
    lwl     $t1, 0x4($t9)
    lwr     $t1, 0x7($t9)
    sw      $t1, 0x4($t8)
    lbu     $t2, 0x6($sp)
    andi    $t3, $t2, 0xc0
    sra     $t4, $t3, 4
    sb      $t4, 0x4($a0)
    lbu     $t5, 0x4($a0)
    bnez    $t5, branch_0x800c58d8
    nop
    lhu     $t6, 0x8($sp)
    sh      $t6, 0x0($a0)
    lb      $t7, 0xa($sp)
    sb      $t7, 0x2($a0)
    lb      $t0, 0xb($sp)
    sb      $t0, 0x3($a0)
branch_0x800c58d8:
    lw      $t8, 0x0($sp)
    lui     $t3, 0x801e
    lbu     $t3, -0x56ff($t3)
    lw      $t1, 0xc($sp)
    addiu   $t9, $t8, 0x1
    slt     $at, $t9, $t3
    addiu   $t2, $t1, 0x8
    sw      $t2, 0xc($sp)
    sw      $t9, 0x0($sp)
    bnez    $at, branch_0x800c5884
    addiu   $a0, $a0, 0x6
branch_0x800c5904:
    jr      $ra
    addiu   $sp, $sp, 0x10

.globl Function_0x800c590c
Function_0x800c590c: # 0x800c590c
    addiu   $sp, $sp, 0xfff0
    lui     $t6, %hi(Unknown_0x801da8c0)
    addiu   $t6, $t6, %lo(Unknown_0x801da8c0)
    sw      $t6, 0xc($sp)
    sw      $zero, 0x0($sp)
branch_0x800c5920:
    lw      $t7, 0x0($sp)
    lw      $t9, 0x0($sp)
    lui     $at, %hi(Unknown_0x801da8c0)
    sll     $t8, $t7, 2
    addu    $at, $at, $t8
    sw      $zero, %lo(Unknown_0x801da8c0)($at)
    addiu   $t0, $t9, 0x1
    slti    $at, $t0, 0x10
    bnez    $at, branch_0x800c5920
    sw      $t0, 0x0($sp)
    lui     $t9, 0x801e
    lbu     $t9, -0x56ff($t9)
    addiu   $t1, $zero, 0x1
    lui     $at, %hi(Unknown_0x801da8fc)
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0x1
    addiu   $t4, $zero, 0x4
    addiu   $t5, $zero, 0x1
    li      $t6, 0xffff
    addiu   $t7, $zero, 0xffff
    addiu   $t8, $zero, 0xffff
    sw      $t1, %lo(Unknown_0x801da8fc)($at)
    sb      $t2, 0x4($sp)
    sb      $t3, 0x5($sp)
    sb      $t4, 0x6($sp)
    sb      $t5, 0x7($sp)
    sh      $t6, 0x8($sp)
    sb      $t7, 0xa($sp)
    sb      $t8, 0xb($sp)
    blez    $t9, branch_0x800c59e4
    sw      $zero, 0x0($sp)
branch_0x800c599c:
    addiu   $t1, $sp, 0x4
    lw      $at, 0x0($t1)
    lw      $t0, 0xc($sp)
    lui     $t8, 0x801e
    swl     $at, 0x0($t0)
    swr     $at, 0x3($t0)
    lw      $t3, 0x4($t1)
    swl     $t3, 0x4($t0)
    swr     $t3, 0x7($t0)
    lw      $t6, 0x0($sp)
    lbu     $t8, -0x56ff($t8)
    lw      $t4, 0xc($sp)
    addiu   $t7, $t6, 0x1
    slt     $at, $t7, $t8
    addiu   $t5, $t4, 0x8
    sw      $t7, 0x0($sp)
    bnez    $at, branch_0x800c599c
    sw      $t5, 0xc($sp)
branch_0x800c59e4:
    lw      $t2, 0xc($sp)
    addiu   $t9, $zero, 0xfe
    addiu   $sp, $sp, 0x10
    jr      $ra
    sb      $t9, 0x0($t2)

.globl Function_0x800c59f8
Function_0x800c59f8: # 0x800c59f8
    nop
    nop

.globl osRecvMesg
osRecvMesg: # 0x800c5a00
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    sw      $a2, 0x30($sp)
    sw      $s1, 0x18($sp)
    jal     __osDisableInt
    sw      $s0, 0x14($sp)

    lw      $t6, 0x28($sp)
    or      $s0, $v0, $zero
    lw      $t7, 0x8($t6)
    bnez    $t7, branch_0x800c5a78
    nop

branch_0x800c5a34:
    lw      $t8, 0x30($sp)
    bnez    $t8, branch_0x800c5a50
    nop
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    b       branch_0x800c5b24
    addiu   $v0, $zero, 0xffff

branch_0x800c5a50:
    lui     $t0, 0x800f
    lw      $t0, -0x7270($t0)
    addiu   $t9, $zero, 0x8
    sh      $t9, 0x10($t0)
    jal     Function_0x800caf30
    lw      $a0, 0x28($sp)
    lw      $t1, 0x28($sp)
    lw      $t2, 0x8($t1)
    beqz    $t2, branch_0x800c5a34
    nop

branch_0x800c5a78:
    lw      $t3, 0x2c($sp)
    beqz    $t3, branch_0x800c5aa0
    nop

    lw      $t4, 0x28($sp)
    lw      $t6, 0xc($t4)
    lw      $t5, 0x14($t4)
    sll     $t7, $t6, 2
    addu    $t8, $t5, $t7
    lw      $t9, 0x0($t8)
    sw      $t9, 0x0($t3)

branch_0x800c5aa0:
    lw      $t0, 0x28($sp)
    lw      $t1, 0xc($t0)
    lw      $t4, 0x10($t0)
    addiu   $t2, $t1, 0x1
    div     $zero, $t2, $t4
    mfhi    $t6
    sw      $t6, 0xc($t0)
    lw      $t5, 0x28($sp)
    bnez    $t4, branch_0x800c5acc
    nop
    break   0x7
branch_0x800c5acc:

    addiu   $at, $zero, 0xffff
    bne     $t4, $at, branch_0x800c5ae4
    lui     $at, 0x8000
    bne     $t2, $at, branch_0x800c5ae4
    nop
    break   0x6
branch_0x800c5ae4:

    lw      $t7, 0x8($t5)
    addiu   $t8, $t7, 0xffff
    sw      $t8, 0x8($t5)
    lw      $t9, 0x28($sp)
    lw      $t3, 0x4($t9)
    lw      $t1, 0x0($t3)
    beqz    $t1, branch_0x800c5b18
    nop

    jal     Function_0x800cb008
    addiu   $a0, $t9, 0x4
    or      $s1, $v0, $zero
    jal     osStartThread
    or      $a0, $s1, $zero

branch_0x800c5b18:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    or      $v0, $zero, $zero

branch_0x800c5b24:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28


.globl Function_0x800c5b38
Function_0x800c5b38: # 0x800c5b38
    nop
    nop


.globl osDpGetStatus
osDpGetStatus: # 0x800c5b40
    lui     $t6, %hi(DPC_STATUS_REG)
    jr      $ra
    lw      $v0, %lo(DPC_STATUS_REG)($t6)


.globl Function_0x800c5b4c
Function_0x800c5b4c: # 0x800c5b4c
    nop

/* Input:
a0:
*/
.globl osViSetMode
osViSetMode: # 0x800c5b50
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)

    lui     $t7, %hi(ViBufferPtr)
    lw      $t7, %lo(ViBufferPtr)($t7)
    lw      $t6, 0x28($sp)
    lui     $t9, %hi(ViBufferPtr)
    addiu   $t8, $zero, 0x1
    sw      $t6, 0x8($t7)
    lw      $t9, %lo(ViBufferPtr)($t9)
    lui     $t0, %hi(ViBufferPtr)
    or      $s0, $v0, $zero
    sh      $t8, 0x0($t9)
    lw      $t0, %lo(ViBufferPtr)($t0)
    or      $a0, $s0, $zero
    lw      $t1, 0x8($t0)
    lw      $t2, 0x4($t1)
    jal     __osRestoreInt
    sw      $t2, 0xc($t0)

    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.globl Function_0x800c5bb8
Function_0x800c5bb8: # 0x800c5bb8
    nop
    nop


.globl osViSetSpecialFeatures
osViSetSpecialFeatures: # 0x800c5bc0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)
    lw      $t6, 0x28($sp)

    or      $s0, $v0, $zero
    andi    $t7, $t6, 0x1
    beqz    $t7, branch_0x800c5bfc
    nop
    lui     $t8, %hi(ViBufferPtr)
    lw      $t8, %lo(ViBufferPtr)($t8)
    lw      $t9, 0xc($t8)
    ori     $t0, $t9, 0x8
    sw      $t0, 0xc($t8)
branch_0x800c5bfc:
    lw      $t1, 0x28($sp)
    andi    $t2, $t1, 0x2
    beqz    $t2, branch_0x800c5c24
    nop
    lui     $t3, %hi(ViBufferPtr)
    lw      $t3, %lo(ViBufferPtr)($t3)
    addiu   $at, $zero, 0xfff7
    lw      $t4, 0xc($t3)
    and     $t5, $t4, $at
    sw      $t5, 0xc($t3)
branch_0x800c5c24:
    lw      $t6, 0x28($sp)
    andi    $t7, $t6, 0x4
    beqz    $t7, branch_0x800c5c48
    nop
    lui     $t9, %hi(ViBufferPtr)
    lw      $t9, %lo(ViBufferPtr)($t9)
    lw      $t0, 0xc($t9)
    ori     $t8, $t0, 0x4
    sw      $t8, 0xc($t9)
branch_0x800c5c48:
    lw      $t1, 0x28($sp)
    andi    $t2, $t1, 0x8
    beqz    $t2, branch_0x800c5c70
    nop
    lui     $t4, %hi(ViBufferPtr)
    lw      $t4, %lo(ViBufferPtr)($t4)
    addiu   $at, $zero, 0xfffb
    lw      $t5, 0xc($t4)
    and     $t3, $t5, $at
    sw      $t3, 0xc($t4)
branch_0x800c5c70:
    lw      $t6, 0x28($sp)
    andi    $t7, $t6, 0x10
    beqz    $t7, branch_0x800c5c94
    nop
    lui     $t0, %hi(ViBufferPtr)
    lw      $t0, %lo(ViBufferPtr)($t0)
    lw      $t8, 0xc($t0)
    ori     $t9, $t8, 0x10
    sw      $t9, 0xc($t0)
branch_0x800c5c94:
    lw      $t1, 0x28($sp)
    andi    $t2, $t1, 0x20
    beqz    $t2, branch_0x800c5cbc
    nop
    lui     $t5, %hi(ViBufferPtr)
    lw      $t5, %lo(ViBufferPtr)($t5)
    addiu   $at, $zero, 0xffef
    lw      $t3, 0xc($t5)
    and     $t4, $t3, $at
    sw      $t4, 0xc($t5)
branch_0x800c5cbc:
    lw      $t6, 0x28($sp)
    andi    $t7, $t6, 0x40
    beqz    $t7, branch_0x800c5cfc
    nop
    lui     $t8, %hi(ViBufferPtr)
    lw      $t8, %lo(ViBufferPtr)($t8)
    lui     $at, 0x1
    lui     $t1, %hi(ViBufferPtr)
    lw      $t9, 0xc($t8)
    or      $t0, $t9, $at
    sw      $t0, 0xc($t8)
    lw      $t1, %lo(ViBufferPtr)($t1)
    addiu   $at, $zero, 0xfcff
    lw      $t2, 0xc($t1)
    and     $t3, $t2, $at
    sw      $t3, 0xc($t1)
branch_0x800c5cfc:
    lw      $t4, 0x28($sp)
    andi    $t5, $t4, 0x80
    beqz    $t5, branch_0x800c5d48
    nop
    lui     $t6, %hi(ViBufferPtr)
    lw      $t6, %lo(ViBufferPtr)($t6)
    lui     $at, 0xfffe
    ori     $at, $at, 0xffff
    lw      $t7, 0xc($t6)
    lui     $t0, %hi(ViBufferPtr)
    and     $t9, $t7, $at
    sw      $t9, 0xc($t6)
    lw      $t0, %lo(ViBufferPtr)($t0)
    lw      $t2, 0x8($t0)
    lw      $t8, 0xc($t0)
    lw      $t3, 0x4($t2)
    andi    $t1, $t3, 0x300
    or      $t4, $t8, $t1
    sw      $t4, 0xc($t0)
branch_0x800c5d48:
    lui     $t5, %hi(ViBufferPtr)
    lw      $t5, %lo(ViBufferPtr)($t5)
    or      $a0, $s0, $zero
    lhu     $t7, 0x0($t5)
    ori     $t9, $t7, 0x8
    jal     __osRestoreInt
    sh      $t9, 0x0($t5)

    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.globl Function_0x800c5d78
Function_0x800c5d78: # 0x800c5d78
    nop
    nop

.globl osSpTaskYield2
osSpTaskYield2: # 0x800c5d80
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)

    jal     __osSpSetStatus
    addiu   $a0, $zero, SP_SET_SIG0

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

/* Input:
a0: Ptr to SpTask

Return:
v0: Ptr to SpTask (Unknown_0x801d8410_SpTaskPtr)
*/
.globl osSpTaskYield
osSpTaskYield: # 0x800c5da0
    addiu   $sp, $sp, -0x20
    lui     $t6, %hi(Unknown_0x801d8410_SpTaskPtr)
    sw      $ra, 0x14($sp)
    sw      $a0, 0x20($sp)
    addiu   $t6, $t6, %lo(Unknown_0x801d8410_SpTaskPtr)
    sw      $t6, 0x1c($sp)

    or      $a1, $t6, $zero
    lw      $a0, 0x20($sp)
    jal     bcopy
    addiu   $a2, $zero, SpTask_Size

    lw      $t7, 0x1c($sp)
    lw      $t8, SpTask_CodeDRAM($t7)
    beqz    $t8, branch_0x800c5de8
    nop
    jal     osVirtualToPhysical
    or      $a0, $t8, $zero
    lw      $t9, 0x1c($sp)
    sw      $v0, SpTask_CodeDRAM($t9)
branch_0x800c5de8:

    lw      $t0, 0x1c($sp)
    lw      $t1, SpTask_DataDRAM($t0)
    beqz    $t1, branch_0x800c5e08
    nop
    jal     osVirtualToPhysical
    or      $a0, $t1, $zero
    lw      $t2, 0x1c($sp)
    sw      $v0, SpTask_DataDRAM($t2)
branch_0x800c5e08:

    lw      $t3, 0x1c($sp)
    lw      $t4, SpTask_20($t3)
    beqz    $t4, branch_0x800c5e28
    nop
    jal     osVirtualToPhysical
    or      $a0, $t4, $zero
    lw      $t5, 0x1c($sp)
    sw      $v0, SpTask_20($t5)
branch_0x800c5e28:

    lw      $t6, 0x1c($sp)
    lw      $t7, SpTask_28($t6)
    beqz    $t7, branch_0x800c5e48
    nop
    jal     osVirtualToPhysical
    or      $a0, $t7, $zero
    lw      $t8, 0x1c($sp)
    sw      $v0, SpTask_28($t8)
branch_0x800c5e48:

    lw      $t9, 0x1c($sp)
    lw      $t0, SpTask_2c($t9)
    beqz    $t0, branch_0x800c5e68
    nop
    jal     osVirtualToPhysical
    or      $a0, $t0, $zero
    lw      $t1, 0x1c($sp)
    sw      $v0, SpTask_2c($t1)
branch_0x800c5e68:

    lw      $t2, 0x1c($sp)
    lw      $t3, SpTask_30($t2)
    beqz    $t3, branch_0x800c5e88
    nop
    jal     osVirtualToPhysical
    or      $a0, $t3, $zero
    lw      $t4, 0x1c($sp)
    sw      $v0, SpTask_30($t4)
branch_0x800c5e88:

    lw      $t5, 0x1c($sp)
    lw      $t6, SpTask_38($t5)
    beqz    $t6, branch_0x800c5ea8
    nop
    jal     osVirtualToPhysical
    or      $a0, $t6, $zero
    lw      $t7, 0x1c($sp)
    sw      $v0, SpTask_38($t7)
branch_0x800c5ea8:

    lw      $ra, 0x14($sp)
    lw      $v0, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


/* Input:
a0: Ptr to SpTask
*/
.globl osSpTaskLoad
osSpTaskLoad: # 0x800c5ebc
    addiu   $sp, $sp, -0x20
    sw      $ra, 0x14($sp)
    sw      $a0, 0x20($sp)
    jal     osSpTaskYield
    lw      $a0, 0x20($sp)
    sw      $v0, 0x1c($sp) # Ptr to SpTask
    lw      $t6, 0x1c($sp) # Ptr to SpTask
    lw      $t7, SpTask_4($t6)
    andi    $t8, $t7, 0x1
    beqz    $t8, branch_0x800c5f10
    nop

    lw      $t9, SpTask_38($t6)
    addiu   $at, $zero, 0xfffe
    sw      $t9, SpTask_DataDRAM($t6)
    lw      $t0, 0x1c($sp) # Ptr to SpTask
    lw      $t1, SpTask_3c($t0)
    sw      $t1, SpTask_DataSize($t0)
    lw      $t2, 0x20($sp)
    lw      $t3, 0x4($t2)
    and     $t4, $t3, $at
    sw      $t4, 0x4($t2)

branch_0x800c5f10:
    lw      $a0, 0x1c($sp) # Ptr to SpTask
    jal     osWritebackDCache
    addiu   $a1, $zero, SpTask_Size

    jal     __osSpSetStatus
    addiu   $a0, $zero, SP_SET_INTR_BREAK|SP_CLR_SIG0|SP_CLR_SIG1|SP_CLR_SIG2

    lui     $a0, %hi(SP_IMEM)
    jal     __osSpSetPc
    ori     $a0, $a0, %lo(SP_IMEM)

    addiu   $at, $zero, -1
    bne     $v0, $at, branch_0x800c5f54
    nop

branch_0x800c5f3c:
    lui     $a0, %hi(SP_IMEM)
    jal     __osSpSetPc
    ori     $a0, $a0, %lo(SP_IMEM)
    addiu   $at, $zero, -1
    beq     $v0, $at, branch_0x800c5f3c
    nop

branch_0x800c5f54:
    lui     $a1, %hi(SP_DMEM+0xfc0)		# SP_MEM_ADDR
    ori     $a1, $a1,  %lo(SP_DMEM+0xfc0)
    addiu   $a0, $zero, 0x1				# Read
    lw      $a2, 0x1c($sp)				# SP_DRAM_ADDR # Ptr to SpTask
    jal     __osSpRawStartDma
    addiu   $a3, $zero, SpTask_Size		# length
    addiu   $at, $zero, -1
    bne     $v0, $at, branch_0x800c5f9c
    nop

branch_0x800c5f78:
    lui     $a1, %hi(SP_DMEM+0xfc0)		# SP_MEM_ADDR
    ori     $a1, $a1, %lo(SP_DMEM+0xfc0)
    addiu   $a0, $zero, 0x1				# Read
    lw      $a2, 0x1c($sp)				# SP_DRAM_ADDR # Ptr to SpTask
    jal     __osSpRawStartDma
    addiu   $a3, $zero, SpTask_Size		# length
    addiu   $at, $zero, -1
    beq     $v0, $at, branch_0x800c5f78
    nop

branch_0x800c5f9c:
    jal     __osSpDeviceBusy
    nop
    beqz    $v0, branch_0x800c5fbc
    nop
waitForSpDevice:
    jal     __osSpDeviceBusy
    nop
    bnez    $v0, waitForSpDevice
    nop

branch_0x800c5fbc:
    lw      $t5, 0x1c($sp)				# Ptr to SpTask
    lui     $a1, %hi(SP_IMEM)			# SP_MEM_ADDR
    ori     $a1, $a1, %lo(SP_IMEM)
    addiu   $a0, $zero, 0x1				# Read
    lw      $a2, SpTask_DRAM($t5)		# SP_DRAM_ADDR
    jal     __osSpRawStartDma
    lw      $a3, SpTask_length($t5)		# length
    addiu   $at, $zero, -1
    bne     $v0, $at, branch_0x800c600c
    nop

branch_0x800c5fe4:
    lw      $t7, 0x1c($sp)				# Ptr to SpTask
    lui     $a1, %hi(SP_IMEM)			# SP_MEM_ADDR
    ori     $a1, $a1, %lo(SP_IMEM)
    addiu   $a0, $zero, 0x1				# Read
    lw      $a2, SpTask_DRAM($t7)		# SP_DRAM_ADDR
    jal     __osSpRawStartDma
    lw      $a3, SpTask_length($t7)		# length
    addiu   $at, $zero, -1
    beq     $v0, $at, branch_0x800c5fe4
    nop

branch_0x800c600c:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


.globl Function_0x800c601c
Function_0x800c601c: # 0x800c601c
    addiu   $sp, $sp, -0x18
    sw      $ra, 0x14($sp)
    jal     __osSpDeviceBusy
    sw      $a0, 0x18($sp)
    beqz    $v0, branch_0x800c6044
    nop
branch_0x800c6034:
    jal     __osSpDeviceBusy
    nop
    bnez    $v0, branch_0x800c6034
    nop
branch_0x800c6044:
    jal     __osSpSetStatus
    addiu   $a0, $zero, 0x125
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x800c605c
Function_0x800c605c: # 0x800c605c
    nop


.globl Set_DPC_STATUS_REG
Set_DPC_STATUS_REG: # 0x800c6060
    lui     $t6, %hi(DPC_STATUS_REG)
    jr      $ra
    sw      $a0, %lo(DPC_STATUS_REG)($t6)


.globl Function_0x800c606c
Function_0x800c606c: # 0x800c606c
    nop


/* Input:
a0: OSMesgQueue *
a1: OSMesg *msg
a2: s32 msgCount
*/
.globl osCreateMesgQueue
osCreateMesgQueue: # 0x800c6070
    lui     $t6, %hi(Unknown_0x800e8d80)
    lui     $t7, %hi(Unknown_0x800e8d80)
    addiu   $t6, $t6, %lo(Unknown_0x800e8d80)
    addiu   $t7, $t7, %lo(Unknown_0x800e8d80)

    sw      $t6, OSMesgQueue_mtqueue($a0)
    sw      $t7, OSMesgQueue_fullqueue($a0)
    sw      $zero, OSMesgQueue_validCount($a0)
    sw      $zero, OSMesgQueue_first($a0)
    sw      $a2, OSMesgQueue_msgCount($a0)
    jr      $ra
    sw      $a1, OSMesgQueue_msg($a0)


.globl Function_0x800c609c
Function_0x800c609c: # 0x800c609c
    nop

.globl osSetEventMesg
osSetEventMesg: # 0x800c60a0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    sw      $a2, 0x30($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)

    lw      $t6, 0x28($sp)
    lui     $t8, 0x801e
    lw      $t0, 0x2c($sp)
    addiu   $t8, $t8, 0x8450
    sll     $t7, $t6, 3
    addu    $t9, $t7, $t8
    sw      $t9, 0x20($sp)
    sw      $t0, 0x0($t9)
    lw      $t2, 0x20($sp)
    lw      $t1, 0x30($sp)
    or      $s0, $v0, $zero
    or      $a0, $s0, $zero
    jal     __osRestoreInt
    sw      $t1, 0x4($t2)

    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x800c6108
Function_0x800c6108: # 0x800c6108
    nop
    nop

.globl osViSetEvent
osViSetEvent: # 0x800c6110
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    sw      $a2, 0x30($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)
    lui     $t7, 0x800f
    lw      $t7, -0x71cc($t7)
    lw      $t6, 0x28($sp)
    lui     $t9, 0x800f
    lui     $t1, 0x800f
    sw      $t6, 0x10($t7)
    lw      $t9, -0x71cc($t9)
    lw      $t8, 0x2c($sp)
    or      $s0, $v0, $zero
    or      $a0, $s0, $zero
    sw      $t8, 0x14($t9)
    lw      $t1, -0x71cc($t1)
    lw      $t0, 0x30($sp)
    jal     __osRestoreInt
    sh      $t0, 0x2($t1)
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x800c617c
Function_0x800c617c: # 0x800c617c
    nop


/* Input: osCreateThread(OSThread *, OSId, void (*)(void *), void *, void *, OSPri);
a0
a1
a2
a3
*/
.globl osCreateThread
osCreateThread: # 0x800c6180
    addiu   $sp, $sp, 0xffd8
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    lw      $t6, 0x2c($sp) # a1
    lw      $t7, 0x28($sp) # a0
    sw      $ra, 0x1c($sp)
    sw      $a2, 0x30($sp) # a2
    sw      $a3, 0x34($sp) # a3

    sw      $s0, 0x18($sp)
    sw      $t6, 0x14($t7)
    lw      $t9, 0x28($sp) # a0
    lw      $t8, 0x3c($sp)
    sw      $t8, 0x4($t9)
    lw      $t0, 0x28($sp) # a0
    sw      $zero, 0x0($t0)
    lw      $t1, 0x28($sp) # a0
    sw      $zero, 0x8($t1)
    lw      $t3, 0x28($sp) # a0
    lw      $t2, 0x30($sp) # a2
    sw      $t2, 0x11c($t3)
    lw      $t4, 0x34($sp) # a3
    lw      $t5, 0x28($sp) # a0
    or      $t7, $t4, $zero
    sra     $t6, $t4, 31
    sw      $t6, 0x38($t5)
    sw      $t7, 0x3c($t5)
    lw      $t8, 0x38($sp)
    lw      $t9, 0x28($sp) # a0
    lui     $t4, %hi(0x800cb158)
    or      $t1, $t8, $zero
    sltiu   $at, $t1, 0x10
    sra     $t0, $t8, 31
    subu    $t2, $t0, $at
    addiu   $t3, $t1, 0xfff0
    sw      $t3, 0xf4($t9)
    sw      $t2, 0xf0($t9)
    lw      $t5, 0x28($sp) # a0
    addiu   $t4, $t4, %lo(0x800cb158)
    or      $t7, $t4, $zero
    sra     $t6, $t4, 31
    sw      $t6, 0x100($t5)
    sw      $t7, 0x104($t5)
    lw      $t1, 0x28($sp) # a0
    lui     $t8, 0x3f
    ori     $t8, $t8, 0xff01
    sw      $t8, 0x20($sp)
    li      $t0, 0xff03
    sw      $t0, 0x118($t1)
    lw      $t2, 0x20($sp)
    lw      $t4, 0x28($sp) # a0
    lui     $at, 0x3f
    and     $t3, $t2, $at
    srl     $t9, $t3, 16
    sw      $t9, 0x128($t4)
    lw      $t7, 0x28($sp) # a0
    lui     $t6, 0x100
    ori     $t6, $t6, 0x800
    sw      $t6, 0x12c($t7)
    lw      $t5, 0x28($sp) # a0
    addiu   $t8, $zero, 0x1
    sw      $zero, 0x18($t5)
    lw      $t0, 0x28($sp) # a0
    sh      $t8, 0x10($t0)
    lw      $t1, 0x28($sp) # a0
    jal     __osDisableInt
    sh      $zero, 0x12($t1)

    lui     $t2, %hi(Unknown_0x800e8d8c)
    lw      $t2, %lo(Unknown_0x800e8d8c)($t2)
    lw      $t3, 0x28($sp) # a0
    or      $s0, $v0, $zero
    lui     $at, %hi(Unknown_0x800e8d8c)
    sw      $t2, 0xc($t3)
    lw      $t9, 0x28($sp) # a0
    or      $a0, $s0, $zero
    jal     __osRestoreInt
    sw      $t9, %lo(Unknown_0x800e8d8c)($at)

    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x800c62c4
Function_0x800c62c4: # 0x800c62c4
    nop
    nop
    nop


/* Input:
a0
*/
.globl osStartThread
osStartThread: # 0x800c62d0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $s1, 0x18($sp)

    jal     __osDisableInt
    sw      $s0, 0x14($sp)
    lw      $t6, 0x28($sp) # a0
    addiu   $at, $zero, 0x1
    or      $s0, $v0, $zero
    lhu     $s1, 0x10($t6)
    beq     $s1, $at, branch_0x800c632c
    addiu   $at, $zero, 0x8
    bne     $s1, $at, branch_0x800c63ac
    nop

    lw      $t8, 0x28($sp) # a0
    addiu   $t7, $zero, 0x2
    lui     $a0, %hi(Unknown_0x800e8d88)
    sh      $t7, 0x10($t8)
    lw      $a1, 0x28($sp) # a0
    jal     Function_0x800cafc0
    addiu   $a0, $a0, %lo(Unknown_0x800e8d88)
    b       branch_0x800c63ac
    nop

branch_0x800c632c:
    lw      $t9, 0x28($sp) # a0
    lw      $t0, 0x8($t9)
    beqz    $t0, branch_0x800c634c
    nop
    lui     $t1, %hi(Unknown_0x800e8d88)
    addiu   $t1, $t1, %lo(Unknown_0x800e8d88)
    bne     $t0, $t1, branch_0x800c6370
    nop

branch_0x800c634c:
    lw      $t3, 0x28($sp) # a0
    addiu   $t2, $zero, 0x2
    lui     $a0, %hi(Unknown_0x800e8d88)
    sh      $t2, 0x10($t3)
    lw      $a1, 0x28($sp) # a0
    jal     Function_0x800cafc0
    addiu   $a0, $a0, %lo(Unknown_0x800e8d88)
    b       branch_0x800c63ac
    nop

branch_0x800c6370:
    lw      $t5, 0x28($sp) # a0
    addiu   $t4, $zero, 0x8
    sh      $t4, 0x10($t5)
    lw      $t6, 0x28($sp) # a0
    lw      $a0, 0x8($t6)
    jal     Function_0x800cafc0
    or      $a1, $t6, $zero
    lw      $t7, 0x28($sp) # a0
    jal     Function_0x800cb008
    lw      $a0, 0x8($t7)
    or      $s1, $v0, $zero
    lui     $a0, %hi(Unknown_0x800e8d88)
    addiu   $a0, $a0, %lo(Unknown_0x800e8d88)
    jal     Function_0x800cafc0
    or      $a1, $s1, $zero
branch_0x800c63ac:
    lui     $t8, 0x800f
    lw      $t8, -0x7270($t8)
    bnez    $t8, branch_0x800c63cc
    nop
    jal     Function_0x800cb018
    nop
    b       branch_0x800c6404
    nop
branch_0x800c63cc:
    lui     $t9, 0x800f
    lui     $t1, 0x800f
    lw      $t1, -0x7278($t1)
    lw      $t9, -0x7270($t9)
    lw      $t2, 0x4($t1)
    lw      $t0, 0x4($t9)
    slt     $at, $t0, $t2
    beqz    $at, branch_0x800c6404
    nop
    addiu   $t3, $zero, 0x2
    lui     $a0, %hi(0x800e8d88)
    sh      $t3, 0x10($t9)
    jal     Function_0x800caf30
    addiu   $a0, $a0, %lo(0x800e8d88)

branch_0x800c6404:
    jal     __osRestoreInt
    or      $a0, $s0, $zero

    lw      $ra, 0x1c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28


.globl osSpTaskYielded
osSpTaskYielded: # 0x800c6420
    addiu   $sp, $sp, -0x20
    sw      $ra, 0x14($sp)
    jal     __osSpGetStatus
    sw      $a0, 0x20($sp)
    sw      $v0, 0x1c($sp)
    lw      $t6, 0x1c($sp)
    andi    $t7, $t6, 0x100
    beqz    $t7, branch_0x800c6450
    nop
    addiu   $t8, $zero, 0x1
    b       branch_0x800c6454
    sw      $t8, 0x18($sp)
branch_0x800c6450:
    sw      $zero, 0x18($sp)

branch_0x800c6454:
    lw      $t9, 0x1c($sp)
    andi    $t0, $t9, 0x80
    beqz    $t0, branch_0x800c648c
    nop
    lw      $t1, 0x20($sp)
    lw      $t3, 0x18($sp)
    addiu   $at, $zero, 0xfffd
    lw      $t2, 0x4($t1)
    or      $t4, $t2, $t3
    sw      $t4, 0x4($t1)
    lw      $t5, 0x20($sp)
    lw      $t6, 0x4($t5)
    and     $t7, $t6, $at
    sw      $t7, 0x4($t5)
branch_0x800c648c:

    lw      $ra, 0x14($sp)
    lw      $v0, 0x18($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


.globl osWritebackDCacheAll
osWritebackDCacheAll: # 0x800c64a0
    lui     $t0, 0x8000
    addiu   $t2, $zero, 0x2000
    addu    $t1, $t0, $t2
    addiu   $t1, $t1, 0xfff0
branch_0x800c64b0:
    cache   1, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x800c64b0
    addiu   $t0, $t0, 0x10
    jr      $ra
    nop

.globl Function_0x800c64c8
Function_0x800c64c8: # 0x800c64c8
    nop
    nop

.globl osCreateViManager
osCreateViManager: # 0x800c64d0
    lui     $t6, 0x800f
    lw      $t6, -0x72f0($t6)
    addiu   $sp, $sp, 0xffd0
    sw      $ra, 0x1c($sp)
    bnez    $t6, branch_0x800c6644
    sw      $a0, 0x30($sp)
    jal     __osTimerServicesInit
    nop
    lui     $a0, 0x801e
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0x9698
    addiu   $a0, $a0, 0x9680
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x5
    lui     $at, 0x801e
    addiu   $t7, $zero, 0xd
    sh      $t7, -0x6950($at)
    sb      $zero, -0x694e($at)
    sw      $zero, -0x694c($at)
    lui     $at, 0x801e
    addiu   $t8, $zero, 0xe
    lui     $a1, 0x801e
    lui     $a2, 0x801e
    sh      $t8, -0x6938($at)
    sb      $zero, -0x6936($at)
    sw      $zero, -0x6934($at)
    addiu   $a2, $a2, 0x96b0
    addiu   $a1, $a1, 0x9680
    jal     osSetEventMesg
    addiu   $a0, $zero, 0x7
    lui     $a1, 0x801e
    lui     $a2, 0x801e
    addiu   $a2, $a2, 0x96c8
    addiu   $a1, $a1, 0x9680
    jal     osSetEventMesg
    addiu   $a0, $zero, 0x3
    addiu   $t9, $zero, 0xffff
    sw      $t9, 0x28($sp)
    jal     osGetThreadPri
    or      $a0, $zero, $zero
    sw      $v0, 0x24($sp)
    lw      $t0, 0x24($sp)
    lw      $t1, 0x30($sp)
    slt     $at, $t0, $t1
    beqz    $at, branch_0x800c6598
    nop
    sw      $t0, 0x28($sp)
    or      $a0, $zero, $zero
    jal     osSetThreadPri
    or      $a1, $t1, $zero
branch_0x800c6598:
    jal     __osDisableInt
    nop
    lui     $at, 0x800f
    lui     $t4, 0x801e
    lui     $t3, 0x801e
    addiu   $t4, $t4, 0x9680
    addiu   $t2, $zero, 0x1
    addiu   $t3, $t3, 0x84d0
    lui     $t5, 0x801e
    lw      $t7, 0x30($sp)
    sw      $t2, -0x72f0($at)
    sw      $t3, -0x72ec($at)
    sw      $t4, -0x72e8($at)
    sw      $t4, -0x72e4($at)
    addiu   $t5, $t5, 0x8680
    lui     $at, 0x800f
    addiu   $t6, $t5, 0x1000
    lui     $a2, %hi(ThreadVi_Main)
    lui     $a3, 0x800f
    sw      $v0, 0x2c($sp)
    sw      $zero, -0x72e0($at)
    sw      $zero, -0x72dc($at)
    addiu   $a3, $a3, 0x8d10
    addiu   $a2, $a2, %lo(ThreadVi_Main)
    sw      $t6, 0x10($sp)
    or      $a0, $t3, $zero
    or      $a1, $zero, $zero
    jal     osCreateThread
    sw      $t7, 0x14($sp)
    jal     __osViInit
    nop
    lui     $a0, 0x801e
    jal     osStartThread
    addiu   $a0, $a0, 0x84d0
    jal     __osRestoreInt
    lw      $a0, 0x2c($sp)
    lw      $t8, 0x28($sp)
    addiu   $at, $zero, 0xffff
    beq     $t8, $at, branch_0x800c6644
    nop
    or      $a0, $zero, $zero
    jal     osSetThreadPri
    or      $a1, $t8, $zero
branch_0x800c6644:
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl ThreadVi_Main
ThreadVi_Main: # 0x800c6654
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x38($sp)
    sw      $s0, 0x18($sp)
    sw      $zero, 0x2c($sp)
    jal     __osGetActiveQueue
    sw      $zero, 0x28($sp)
    sw      $v0, 0x34($sp)
    lw      $t6, 0x34($sp)
    lui     $at, 0x801e
    lhu     $t7, 0x2($t6)
    bnez    $t7, branch_0x800c6694
    sh      $t7, -0x6924($at)
    addiu   $t8, $zero, 0x1
    lui     $at, 0x801e
    sh      $t8, -0x6924($at)
branch_0x800c6694:
    lw      $t9, 0x38($sp)
    sw      $t9, 0x30($sp)
branch_0x800c669c:
    lw      $t0, 0x30($sp)
    addiu   $a1, $sp, 0x2c
    addiu   $a2, $zero, 0x1
    jal     osRecvMesg
    lw      $a0, 0xc($t0)
    lw      $t1, 0x2c($sp)
    addiu   $at, $zero, 0xd
    lhu     $s0, 0x0($t1)
    beq     $s0, $at, branch_0x800c66d4
    addiu   $at, $zero, 0xe
    beq     $s0, $at, branch_0x800c67e4
    nop
    b       branch_0x800c669c
    nop
branch_0x800c66d4:
    jal     __osViSwapContext
    nop
    lui     $t2, 0x801e
    lhu     $t2, -0x6924($t2)
    lui     $at, 0x801e
    addiu   $t3, $t2, 0xffff
    andi    $t4, $t3, 0xffff
    bnez    $t4, branch_0x800c6734
    sh      $t3, -0x6924($at)
    jal     __osGetActiveQueue
    nop
    sw      $v0, 0x34($sp)
    lw      $t5, 0x34($sp)
    lw      $t6, 0x10($t5)
    beqz    $t6, branch_0x800c6724
    nop

    or      $a0, $t6, $zero
    lw      $a1, 0x14($t5)
    jal     osSendMesg
    or      $a2, $zero, $zero

branch_0x800c6724:
    lw      $t7, 0x34($sp)
    lui     $at, 0x801e
    lhu     $t8, 0x2($t7)
    sh      $t8, -0x6924($at)
branch_0x800c6734:
    lui     $t9, 0x801e
    lw      $t9, -0x5644($t9)
    lw      $t1, 0x28($sp)
    lui     $at, 0x801e
    addiu   $t0, $t9, 0x1
    beqz    $t1, branch_0x800c677c
    sw      $t0, -0x5644($at)
    jal     osGetCount
    nop
    sw      $v0, 0x24($sp)
    lw      $t2, 0x24($sp)
    addiu   $t4, $zero, 0x0
    lui     $at, 0x801e
    sw      $t4, -0x5650($at)
    lui     $at, 0x801e
    or      $t5, $t2, $zero
    sw      $t5, -0x564c($at)
    sw      $zero, 0x28($sp)
branch_0x800c677c:
    lui     $t3, 0x801e
    lw      $t3, -0x5648($t3)
    jal     osGetCount
    sw      $t3, 0x24($sp)
    lui     $at, 0x801e
    sw      $v0, -0x5648($at)
    lui     $t6, 0x801e
    lw      $t6, -0x5648($t6)
    lw      $t7, 0x24($sp)
    lui     $t3, 0x801e
    lw      $t3, -0x564c($t3)
    subu    $t8, $t6, $t7
    or      $t1, $t8, $zero
    lui     $t2, 0x801e
    addu    $t5, $t1, $t3
    lw      $t2, -0x5650($t2)
    addiu   $t0, $zero, 0x0
    sltu    $at, $t5, $t3
    addu    $t4, $at, $t0
    lui     $at, 0x801e
    addu    $t4, $t4, $t2
    sw      $t4, -0x5650($at)
    lui     $at, 0x801e
    sw      $t8, 0x24($sp)
    b       branch_0x800c669c
    sw      $t5, -0x564c($at)
branch_0x800c67e4:
    jal     Function_0x800cb1fc
    nop
    b       branch_0x800c669c
    nop

.globl Function_0x800c67f4
Function_0x800c67f4: # 0x800c67f4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x800c6824
Function_0x800c6824: # 0x800c6824
    nop
    nop
    nop

.globl osViBlack
osViBlack: # 0x800c6830
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)
    lbu     $t6, 0x2b($sp)
    or      $s0, $v0, $zero
    beqz    $t6, branch_0x800c686c
    nop
    lui     $t7, 0x800f
    lw      $t7, -0x71cc($t7)
    lhu     $t8, 0x0($t7)
    ori     $t9, $t8, 0x20
    b       branch_0x800c6884
    sh      $t9, 0x0($t7)
branch_0x800c686c:
    lui     $t0, 0x800f
    lw      $t0, -0x71cc($t0)
    addiu   $at, $zero, 0xffdf
    lhu     $t1, 0x0($t0)
    and     $t2, $t1, $at
    sh      $t2, 0x0($t0)
branch_0x800c6884:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.globl osViGetNextFramebuffer
osViGetNextFramebuffer: # 0x800c68a0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)

    jal     __osDisableInt
    sw      $s0, 0x18($sp)
    lui     $t6, %hi(Unknown_0x800e8e30)
    lw      $t6, %lo(Unknown_0x800e8e30)($t6)
    or      $s0, $v0, $zero
    or      $a0, $s0, $zero
    lw      $t7, 0x4($t6)
    jal     __osRestoreInt
    sw      $t7, 0x20($sp)

    lw      $ra, 0x1c($sp)
    lw      $v0, 0x20($sp)
    lw      $s0, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28


/* Input:
a0: OSPri
a1: OSMesgQueue *
a2: OSMesg *msg
a3: s32 msgCount
*/
.globl osCreatePiManager
osCreatePiManager: # 0x800c68e0
    addiu   $sp, $sp, 0xffd0

    lui     $t6, %hi(Unknown_0x800e8d30)
    lw      $t6, %lo(Unknown_0x800e8d30)($t6)
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x30($sp)
    sw      $a1, 0x34($sp)
    sw      $a2, 0x38($sp)
    bnez    $t6, branch_0x800c6a4c
    sw      $a3, 0x3c($sp)

    lw      $a0, 0x34($sp) # a1: OSMesgQueue *
    lw      $a1, 0x38($sp) # a2: OSMesg *msg
    jal     osCreateMesgQueue
    lw      $a2, 0x3c($sp) # a3: s32 msgCount

    lui     $a0, %hi(Unknown_0x801da890) # OSMesgQueue *
    lui     $a1, %hi(Unknown_0x801da8a8) # OSMesg *msg
    addiu   $a1, $a1, %lo(Unknown_0x801da8a8)
    addiu   $a0, $a0, %lo(Unknown_0x801da890)
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1 # s32 msgCount

    lui     $t7, %hi(Unknown_0x800e8e50)
    lw      $t7, %lo(Unknown_0x800e8e50)($t7)
    bnez    $t7, branch_0x800c6944
    nop
    jal     Function_0x800cc030
    nop

branch_0x800c6944:
    lui     $a1, %hi(Unknown_0x801da890)
    lui     $a2, %hi(0x22222222)
    ori     $a2, $a2, %lo(0x22222222)
    addiu   $a1, $a1, %lo(Unknown_0x801da890)
    jal     osSetEventMesg
    addiu   $a0, $zero, 0x8
    addiu   $t8, $zero, 0xffff
    sw      $t8, 0x28($sp)
    jal     osGetThreadPri
    or      $a0, $zero, $zero
    sw      $v0, 0x24($sp)
    lw      $t9, 0x24($sp)
    lw      $t0, 0x30($sp) # a0
    slt     $at, $t9, $t0
    beqz    $at, branch_0x800c6994
    nop
    sw      $t9, 0x28($sp)
    or      $a0, $zero, $zero
    jal     osSetThreadPri
    or      $a1, $t0, $zero

branch_0x800c6994:
    jal     __osDisableInt
    nop

    lui     $at, %hi(0x800f0000)
    lw      $t3, 0x34($sp) # a1
    lui     $t2, %hi(Unknown_0x801d96e0)
    lui     $t4, %hi(Unknown_0x801da890)
    addiu   $t1, $zero, 0x1
    addiu   $t2, $t2, %lo(Unknown_0x801d96e0)
    addiu   $t4, $t4, %lo(Unknown_0x801da890)
    lui     $t7, %hi(Unknown_0x801d9890)
    lw      $t9, 0x30($sp) # a0
    sw      $t1, %lo(Unknown_0x800e8d30_0)($at)
    sw      $t2, %lo(Unknown_0x800e8d30_4)($at)
    sw      $t4, %lo(Unknown_0x800e8d30_c)($at)
    lui     $t5, %hi(Unknown_0x801da9f8)
    lui     $t6, %hi(osPiRawStartDma)
    addiu   $t7, $t7, %lo(Unknown_0x801d9890)
    sw      $t3, %lo(Unknown_0x800e8d30_8)($at)
    lui     $at, %hi(0x800f0000)
    addiu   $t5, $t5, %lo(Unknown_0x801da9f8)
    addiu   $t6, $t6, %lo(osPiRawStartDma)
    addiu   $t8, $t7, 0x1000
    lui     $a2, %hi(ThreadPi_Main)
    lui     $a3, %hi(Unknown_0x800e8d30)
    sw      $v0, 0x2c($sp)
    sw      $t5, %lo(Unknown_0x800e8d30_10)($at)
    sw      $t6, %lo(Unknown_0x800e8d30_14)($at)
    addiu   $a3, $a3, %lo(Unknown_0x800e8d30_0)
    addiu   $a2, $a2, %lo(ThreadPi_Main)
    sw      $t8, 0x10($sp)

    or      $a0, $t2, $zero
    or      $a1, $zero, $zero
    jal     osCreateThread
    sw      $t9, 0x14($sp)

    lui     $a0, %hi(Unknown_0x801d96e0)
    jal     osStartThread
    addiu   $a0, $a0, %lo(Unknown_0x801d96e0)

    jal     __osRestoreInt
    lw      $a0, 0x2c($sp)
    lw      $t0, 0x28($sp)
    addiu   $at, $zero, 0xffff
    beq     $t0, $at, branch_0x800c6a4c
    nop

    or      $a0, $zero, $zero
    jal     osSetThreadPri
    or      $a1, $t0, $zero

branch_0x800c6a4c:
    lw      $ra, 0x1c($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop


.globl Function_0x800c6a5c
Function_0x800c6a5c: # 0x800c6a5c
    nop


.globl osSetThreadPri
osSetThreadPri: # 0x800c6a60
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)
    lw      $t6, 0x28($sp)
    or      $s0, $v0, $zero
    bnez    $t6, branch_0x800c6a94
    nop
    lui     $t7, 0x800f
    lw      $t7, -0x7270($t7)
    sw      $t7, 0x28($sp)
branch_0x800c6a94:
    lw      $t8, 0x28($sp)
    lw      $t0, 0x2c($sp)
    lw      $t9, 0x4($t8)
    beq     $t9, $t0, branch_0x800c6b24
    nop
    sw      $t0, 0x4($t8)
    lui     $t2, 0x800f
    lw      $t2, -0x7270($t2)
    lw      $t1, 0x28($sp)
    beq     $t1, $t2, branch_0x800c6aec
    nop
    lhu     $t3, 0x10($t1)
    addiu   $at, $zero, 0x1
    beq     $t3, $at, branch_0x800c6aec
    nop
    lw      $a0, 0x8($t1)
    jal     __osDequeueThread
    or      $a1, $t1, $zero
    lw      $t4, 0x28($sp)
    lw      $a0, 0x8($t4)
    jal     Function_0x800cafc0
    or      $a1, $t4, $zero
branch_0x800c6aec:
    lui     $t5, 0x800f
    lui     $t7, 0x800f
    lw      $t7, -0x7278($t7)
    lw      $t5, -0x7270($t5)
    lw      $t9, 0x4($t7)
    lw      $t6, 0x4($t5)
    slt     $at, $t6, $t9
    beqz    $at, branch_0x800c6b24
    nop
    addiu   $t0, $zero, 0x2
    lui     $a0, 0x800f
    sh      $t0, 0x10($t5)
    jal     Function_0x800caf30
    addiu   $a0, $a0, 0x8d88
branch_0x800c6b24:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop


.globl osInitialize
osInitialize: # 0x800c6b40
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x1c($sp)

    addiu   $t6, $zero, 0x1
    lui     $at, %hi(Unknown_0x801da8b0)
    sw      $s0, 0x18($sp)
    sw      $zero, 0x30($sp)
    jal     __osGetSR
    sw      $t6, %lo(Unknown_0x801da8b0)($at)

    or      $s0, $v0, $zero
    lui     $at, %hi(0x20000000)
    jal     __osSetSR
    or      $a0, $s0, $at

    lui     $a0, 0x100
    jal     __osSetFpcCsr
    ori     $a0, $a0, 0x800

    lui     $a0, %hi(0x1fc007fc)
    ori     $a0, $a0, %lo(0x1fc007fc)
    jal     __osSpRawReadIo
    addiu   $a1, $sp, 0x34
    beqz    $v0, branch_0x800c6bac
    nop

branch_0x800c6b94:
    lui     $a0, %hi(0x1fc007fc)
    ori     $a0, $a0, %lo(0x1fc007fc)
    jal     __osSpRawReadIo
    addiu   $a1, $sp, 0x34
    bnez    $v0, branch_0x800c6b94
    nop

branch_0x800c6bac:
    lw      $a1, 0x34($sp)
    lui     $a0, %hi(0x1fc007fc)
    ori     $a0, $a0, %lo(0x1fc007fc)
    ori     $t7, $a1, 0x8
    jal     __osSpRawWriteIo
    or      $a1, $t7, $zero
    beqz    $v0, branch_0x800c6bec
    nop

branch_0x800c6bcc:
    lw      $a1, 0x34($sp)
    lui     $a0, %hi(0x1fc007fc)
    ori     $a0, $a0, %lo(0x1fc007fc)
    ori     $t8, $a1, 0x8
    jal     __osSpRawWriteIo
    or      $a1, $t8, $zero
    bnez    $v0, branch_0x800c6bcc
    nop

branch_0x800c6bec:
    lui     $t0, %hi(Unknown_0x800ca8f0)
    addiu   $t0, $t0, %lo(Unknown_0x800ca8f0)
    lw      $at, 0x0($t0)
    lui     $t9, %hi(0x80000000)
    lui     $t5, %hi(Unknown_0x800ca8f0)
    sw      $at, %lo(0x80000000)($t9)
    lw      $t3, 0x4($t0)
    addiu   $t5, $t5, %lo(Unknown_0x800ca8f0)
    lui     $t4, %hi(0x80000080)
    sw      $t3, %lo(0x80000004)($t9)
    lw      $at, 0x8($t0)
    ori     $t4, $t4, %lo(0x80000080)
    lui     $t1, %hi(Unknown_0x800ca8f0)
    sw      $at, %lo(0x80000008)($t9)
    lw      $t3, 0xc($t0)
    addiu   $t1, $t1, %lo(Unknown_0x800ca8f0)
    lui     $t2, %hi(0x80000100)
    sw      $t3, %lo(0x8000000c)($t9)

    lw      $at, 0x0($t5)
    ori     $t2, $t2, %lo(0x80000100)
    lui     $t6, %hi(Unknown_0x800ca8f0)
    sw      $at, 0x0($t4)
    lw      $t8, 0x4($t5)
    addiu   $t6, $t6, %lo(Unknown_0x800ca8f0)
    lui     $t7, %hi(0x80000180)
    sw      $t8, 0x4($t4)
    lw      $at, 0x8($t5)
    ori     $t7, $t7, %lo(0x80000180)
    lui     $a0, %hi(0x80000000)
    sw      $at, 0x8($t4)
    lw      $t8, 0xc($t5)
    addiu   $a1, $zero, 0x190
    sw      $t8, 0xc($t4)
    lw      $at, 0x0($t1)
    sw      $at, 0x0($t2)
    lw      $t3, 0x4($t1)
    sw      $t3, 0x4($t2)
    lw      $at, 0x8($t1)
    sw      $at, 0x8($t2)
    lw      $t3, 0xc($t1)
    sw      $t3, 0xc($t2)
    lw      $at, 0x0($t6)
    sw      $at, 0x0($t7)
    lw      $t8, 0x4($t6)
    sw      $t8, 0x4($t7)
    lw      $at, 0x8($t6)
    sw      $at, 0x8($t7)
    lw      $t8, 0xc($t6)
    jal     osWritebackDCache
    sw      $t8, 0xc($t7)

    lui     $a0, %hi(0x80000000)
    jal     osInvalICache
    addiu   $a1, $zero, 0x190
    jal     osMapTLBRdb
    nop

    addiu   $a0, $zero, 0x4
    jal     osPiRawReadIo
    addiu   $a1, $sp, 0x30

    lw      $t0, 0x30($sp)
    addiu   $at, $zero, 0xfff0
    and     $t9, $t0, $at
    beqz    $t9, branch_0x800c6cfc
    sw      $t9, 0x30($sp)

    lui     $at, %hi(0x800f0000)
    or      $t3, $t9, $zero
    addiu   $t2, $zero, 0x0
    sw      $t2, %lo(Unknown_0x800e8d50)($at)
    sw      $t3, %lo(Unknown_0x800e8d54)($at)

branch_0x800c6cfc:
    lui     $a0, %hi(Unknown_0x800e8d50)
    lui     $a1, %hi(Unknown_0x800e8d54)
    lw      $a1, %lo(Unknown_0x800e8d54)($a1)
    lw      $a0, %lo(Unknown_0x800e8d50)($a0)
    addiu   $a2, $zero, 0x0
    jal     Function_0x800cc648
    addiu   $a3, $zero, 0x3

    sw      $v0, 0x20($sp)
    sw      $v1, 0x24($sp)
    lw      $a1, 0x24($sp)
    lw      $a0, 0x20($sp)
    addiu   $a2, $zero, 0x0
    jal     Function_0x800cc548
    addiu   $a3, $zero, 0x4

    lui     $t1, %hi(0x8000030c)
    lw      $t1, %lo(0x8000030c)($t1)
    lui     $at, %hi(0x800f0000)
    sw      $v0, %lo(Unknown_0x800e8d50)($at)
    bnez    $t1, branch_0x800c6d5c
    sw      $v1, %lo(Unknown_0x800e8d54)($at)

    lui     $a0, %hi(0x8000031c)
    addiu   $a0, $a0, %lo(0x8000031c)
    jal     bzero
    addiu   $a1, $zero, 0x40

branch_0x800c6d5c:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop


.globl sqrtf
sqrtf: # 0x800c6d70
    jr      $ra
    sqrt.s  $f0, $f12


.globl Function_0x800c6d78
Function_0x800c6d78: # 0x800c6d78
    nop
    nop

.globl Function_0x800c6d80
Function_0x800c6d80: # 0x800c6d80
    lui     $v0, 0x800f
    addiu   $v0, $v0, 0x8d60
    addiu   $sp, $sp, 0xff80
    lw      $t6, 0x0($v0)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x80($sp)
    sw      $a1, 0x84($sp)
    beqz    $t6, branch_0x800c6dac
    sw      $a2, 0x88($sp)
    b       branch_0x800c6f44
    or      $v0, $zero, $zero
branch_0x800c6dac:
    addiu   $t7, $zero, 0x1
    jal     osGetTime
    sw      $t7, 0x0($v0)
    lui     $a2, 0x800f
    lui     $a3, 0x800f
    lw      $a3, -0x72ac($a3)
    lw      $a2, -0x72b0($a2)
    lui     $a1, 0x7
    sw      $v0, 0x70($sp)
    sw      $v1, 0x74($sp)
    ori     $a1, $a1, 0xa120
    jal     Function_0x800cc648
    addiu   $a0, $zero, 0x0
    lui     $a3, 0xf
    ori     $a3, $a3, 0x4240
    or      $a0, $v0, $zero
    or      $a1, $v1, $zero
    jal     Function_0x800cc548
    addiu   $a2, $zero, 0x0
    lw      $t8, 0x70($sp)
    lw      $t9, 0x74($sp)
    sltu    $at, $v0, $t8
    bnez    $at, branch_0x800c6eb0
    sltu    $at, $t8, $v0
    bnez    $at, branch_0x800c6e1c
    addiu   $a0, $sp, 0x38
    sltu    $at, $t9, $v1
    beqz    $at, branch_0x800c6eb0
branch_0x800c6e1c:
    addiu   $a1, $sp, 0x7c
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1
    lui     $a2, 0x800f
    lui     $a3, 0x800f
    lw      $a3, -0x72ac($a3)
    lw      $a2, -0x72b0($a2)
    lui     $a1, 0x7
    ori     $a1, $a1, 0xa120
    jal     Function_0x800cc648
    addiu   $a0, $zero, 0x0
    lui     $a3, 0xf
    ori     $a3, $a3, 0x4240
    or      $a0, $v0, $zero
    or      $a1, $v1, $zero
    jal     Function_0x800cc548
    addiu   $a2, $zero, 0x0
    lw      $t0, 0x70($sp)
    lw      $t1, 0x74($sp)
    addiu   $t2, $zero, 0x0
    addiu   $t3, $zero, 0x0
    addiu   $t4, $sp, 0x38
    addiu   $t5, $sp, 0x7c
    subu    $a2, $v0, $t0
    sltu    $at, $v1, $t1
    subu    $a2, $a2, $at
    sw      $t5, 0x1c($sp)
    sw      $t4, 0x18($sp)
    sw      $t3, 0x14($sp)
    sw      $t2, 0x10($sp)
    addiu   $a0, $sp, 0x50
    jal     osSetTimer
    subu    $a3, $v1, $t1
    addiu   $a0, $sp, 0x38
    addiu   $a1, $sp, 0x7c
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
branch_0x800c6eb0:
    addiu   $t6, $zero, 0x4
    lui     $at, 0x801e
    sb      $t6, -0x56ff($at)
    jal     Function_0x800c7008
    or      $a0, $zero, $zero
    lui     $a1, %hi(Unknown_0x801da8c0)
    addiu   $a1, $a1, %lo(Unknown_0x801da8c0)
    jal     __osSiRawStartDma
    addiu   $a0, $zero, 0x1
    lw      $a0, 0x80($sp)
    addiu   $a1, $sp, 0x7c
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lui     $a1, %hi(Unknown_0x801da8c0)
    addiu   $a1, $a1, %lo(Unknown_0x801da8c0)
    jal     __osSiRawStartDma
    or      $a0, $zero, $zero
    lw      $a0, 0x80($sp)
    sw      $v0, 0x78($sp)
    addiu   $a1, $sp, 0x7c
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lw      $a0, 0x84($sp)
    lw      $a1, 0x88($sp)
    jal     Function_0x800c6f54
    nop
    lui     $at, %hi(Unknown_0x801da900)
    jal     Function_0x800cb680
    sb      $zero, %lo(Unknown_0x801da900)($at)
    lui     $a0, 0x801e
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0xa940
    addiu   $a0, $a0, 0xa928
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1
    lw      $v0, 0x78($sp)
    nop
branch_0x800c6f44:
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x80
    jr      $ra
    nop

.globl Function_0x800c6f54
Function_0x800c6f54: # 0x800c6f54
    lui     $a3, 0x801e
    addiu   $a3, $a3, 0xa901
    lbu     $t6, 0x0($a3)
    lui     $v1, %hi(Unknown_0x801da8c0)
    addiu   $sp, $sp, 0xffe8
    or      $v0, $zero, $zero
    addiu   $v1, $v1, %lo(Unknown_0x801da8c0)
    blez    $t6, branch_0x800c6ffc
    or      $a2, $zero, $zero
    addiu   $t0, $sp, 0xc
branch_0x800c6f7c:
    lwl     $at, 0x0($v1)
    lwr     $at, 0x3($v1)
    addiu   $v1, $v1, 0x8
    sw      $at, 0x0($t0)
    lwl     $t8, -0x4($v1)
    lwr     $t8, -0x1($v1)
    nop
    sw      $t8, 0x4($t0)
    lbu     $t9, 0xe($sp)
    nop
    andi    $t1, $t9, 0xc0
    sra     $t2, $t1, 4
    andi    $t3, $t2, 0xff
    bnez    $t3, branch_0x800c6fe8
    sb      $t2, 0x3($a1)
    lbu     $t4, 0x11($sp)
    lbu     $t6, 0x10($sp)
    sll     $t5, $t4, 8
    addiu   $t9, $zero, 0x1
    or      $t7, $t5, $t6
    sh      $t7, 0x0($a1)
    sllv    $t1, $t9, $a2
    lbu     $t8, 0x12($sp)
    or      $v0, $v0, $t1
    andi    $t2, $v0, 0xff
    or      $v0, $t2, $zero
    sb      $t8, 0x2($a1)
branch_0x800c6fe8:
    lbu     $t3, 0x0($a3)
    addiu   $a2, $a2, 0x1
    slt     $at, $a2, $t3
    bnez    $at, branch_0x800c6f7c
    addiu   $a1, $a1, 0x4
branch_0x800c6ffc:
    sb      $v0, 0x0($a0)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x800c7008
Function_0x800c7008: # 0x800c7008
    addiu   $sp, $sp, 0xffe8
    sw      $a0, 0x18($sp)
    andi    $t6, $a0, 0xff
    lui     $v1, %hi(Unknown_0x801da8c0)
    lui     $v0, 0x801e
    or      $a0, $t6, $zero
    addiu   $v0, $v0, 0xa900
    addiu   $v1, $v1, %lo(Unknown_0x801da8c0)
branch_0x800c7028:
    addiu   $v1, $v1, 0x4
    sltu    $at, $v1, $v0
    bnez    $at, branch_0x800c7028
    sw      $zero, -0x4($v1)
    lui     $a1, %hi(Unknown_0x801da8c0)
    addiu   $v1, $a1, %lo(Unknown_0x801da8c0)
    addiu   $t7, $zero, 0x1
    sw      $t7, 0x3c($v1)
    lui     $a2, 0x801e
    addiu   $a2, $a2, 0xa901
    lbu     $t5, 0x0($a2)
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0x1
    addiu   $t0, $zero, 0x3
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sb      $t8, 0xc($sp)
    sb      $t9, 0xd($sp)
    sb      $t0, 0xe($sp)
    sb      $a0, 0xf($sp)
    sb      $t1, 0x10($sp)
    sb      $t2, 0x11($sp)
    sb      $t3, 0x12($sp)
    sb      $t4, 0x13($sp)
    blez    $t5, branch_0x800c70d0
    or      $v0, $zero, $zero
    addiu   $a0, $sp, 0xc
branch_0x800c709c:
    lw      $at, 0x0($a0)
    addiu   $v0, $v0, 0x1
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lw      $t7, 0x4($a0)
    addiu   $v1, $v1, 0x8
    swl     $t7, -0x4($v1)
    swr     $t7, -0x1($v1)
    lbu     $t8, 0x0($a2)
    nop
    slt     $at, $v0, $t8
    bnez    $at, branch_0x800c709c
    nop
branch_0x800c70d0:
    addiu   $t9, $zero, 0xfe
    sb      $t9, 0x0($v1)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl guOrthoF
guOrthoF: # 0x800c70e0
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a1, 0x1c($sp)
    sw      $a2, 0x20($sp)
    sw      $a3, 0x24($sp)
    jal     Function_0x800cc980
    sw      $a0, 0x18($sp)
    lwc1    $f4, 0x20($sp)
    lwc1    $f6, 0x1c($sp)
    lui     $at, 0x4000
    mtc1    $at, $t0
    sub.s   $f0, $f4, $f6
    lw      $v0, 0x18($sp)
    lwc1    $f14, 0x28($sp)
    lwc1    $f16, 0x30($sp)
    div.s   $f10, $f8, $f0
    lwc1    $f18, 0x2c($sp)
    mtc1    $at, $a2
    lui     $at, 0xc000
    sub.s   $f12, $f16, $f18
    or      $v1, $zero, $zero
    addiu   $a0, $zero, 0x4
    swc1    $10, 0x0($2)
    lwc1    $f4, 0x24($sp)
    mtc1    $at, $t2
    lui     $at, 0x3f80
    sub.s   $f2, $f14, $f4
    div.s   $f4, $f10, $f12
    div.s   $f8, $f6, $f2
    swc1    $4, 0x28($2)
    swc1    $8, 0x14($2)
    lwc1    $f8, 0x1c($sp)
    lwc1    $f6, 0x20($sp)
    add.s   $f10, $f6, $f8
    neg.s   $f4, $f10
    div.s   $f6, $f4, $f0
    swc1    $6, 0x30($2)
    lwc1    $f8, 0x24($sp)
    add.s   $f10, $f14, $f8
    add.s   $f8, $f16, $f18
    neg.s   $f4, $f10
    neg.s   $f10, $f8
    div.s   $f6, $f4, $f2
    div.s   $f4, $f10, $f12
    swc1    $6, 0x34($2)
    mtc1    $at, $a2
    nop
    swc1    $6, 0x3c($2)
    swc1    $4, 0x38($2)
    lwc1    $f0, 0x34($sp)
    lwc1    $f8, 0x0($v0)
    addiu   $v1, $v1, 0x1
    lwc1    $f18, 0x4($v0)
    mul.s   $f12, $f8, $f0
    lwc1    $f14, 0x8($v0)
    beq     $v1, $a0, branch_0x800c7200
    lwc1    $f16, 0xc($v0)
branch_0x800c71c4:
    mul.s   $f10, $f18, $f0
    lwc1    $f8, 0x10($v0)
    lwc1    $f18, 0x14($v0)
    mul.s   $f6, $f14, $f0
    lwc1    $f14, 0x18($v0)
    addiu   $v1, $v1, 0x1
    mul.s   $f4, $f16, $f0
    lwc1    $f16, 0x1c($v0)
    swc1    $12, 0x0($2)
    mul.s   $f12, $f8, $f0
    swc1    $10, 0x4($2)
    swc1    $6, 0x8($2)
    addiu   $v0, $v0, 0x10
    bne     $v1, $a0, branch_0x800c71c4
    swc1    $4, -0x4($2)
branch_0x800c7200:
    mul.s   $f10, $f18, $f0
    addiu   $v0, $v0, 0x10
    swc1    $12, -0x10($2)
    mul.s   $f6, $f14, $f0
    nop
    mul.s   $f4, $f16, $f0
    swc1    $10, -0xc($2)
    swc1    $6, -0x8($2)
    swc1    $4, -0x4($2)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x800c7234
Function_0x800c7234: # 0x800c7234
    addiu   $sp, $sp, 0xff98
    mtc1    $a1, $t4
    mtc1    $a2, $t6
    mtc1    $a3, $s0
    lwc1    $f4, 0x78($sp)
    lwc1    $f6, 0x7c($sp)
    lwc1    $f8, 0x80($sp)
    lwc1    $f10, 0x84($sp)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x68($sp)
    mfc1    $a1, $t4
    mfc1    $a2, $t6
    mfc1    $a3, $s0
    addiu   $a0, $sp, 0x28
    swc1    $4, 0x10($29)
    swc1    $6, 0x14($29)
    swc1    $8, 0x18($29)
    jal     guOrthoF
    swc1    $10, 0x1c($29)
    addiu   $a0, $sp, 0x28
    jal     guMtxF2L
    lw      $a1, 0x68($sp)
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl guTranslateF
guTranslateF: # 0x800c729c
    nop
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a1, 0x1c($sp)
    sw      $a2, 0x20($sp)
    sw      $a3, 0x24($sp)
    jal     Function_0x800cc980
    sw      $a0, 0x18($sp)
    lw      $a0, 0x18($sp)
    lwc1    $f4, 0x1c($sp)
    swc1    $4, 0x30($4)
    lwc1    $f6, 0x20($sp)
    swc1    $6, 0x34($4)
    lwc1    $f8, 0x24($sp)
    swc1    $8, 0x38($4)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x800c72e8
Function_0x800c72e8: # 0x800c72e8
    addiu   $sp, $sp, 0xff98
    sw      $ra, 0x14($sp)
    sw      $a0, 0x68($sp)
    sw      $a1, 0x6c($sp)
    sw      $a2, 0x70($sp)
    sw      $a3, 0x74($sp)
    jal     Function_0x800cc980
    addiu   $a0, $sp, 0x28
    lwc1    $f4, 0x6c($sp)
    lwc1    $f6, 0x70($sp)
    lwc1    $f8, 0x74($sp)
    addiu   $a0, $sp, 0x28
    lw      $a1, 0x68($sp)
    swc1    $4, 0x58($29)
    swc1    $6, 0x5c($29)
    jal     guMtxF2L
    swc1    $8, 0x60($29)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x68
    jr      $ra
    nop

.globl Function_0x800c733c
Function_0x800c733c: # 0x800c733c
    nop

.globl guLookAtReflectF
guLookAtReflectF: # 0x800c7340
    addiu   $sp, $sp, 0xffb8
    sw      $ra, 0x44($sp)
    sdc1    $30, 0x38($29)
    sdc1    $28, 0x30($29)
    sdc1    $26, 0x28($29)
    sdc1    $24, 0x20($29)
    sdc1    $22, 0x18($29)
    sdc1    $20, 0x10($29)
    sw      $a2, 0x50($sp)
    sw      $a3, 0x54($sp)
    sw      $a0, 0x48($sp)
    jal     Function_0x800cc980
    sw      $a1, 0x4c($sp)
    lwc1    $f4, 0x5c($sp)
    lwc1    $f6, 0x50($sp)
    lwc1    $f8, 0x60($sp)
    lwc1    $f10, 0x54($sp)
    sub.s   $f0, $f4, $f6
    lwc1    $f6, 0x58($sp)
    lwc1    $f4, 0x64($sp)
    sub.s   $f22, $f8, $f10
    mul.s   $f8, $f0, $f0
    mov.s   $f20, $f0
    sub.s   $f24, $f4, $f6
    mul.s   $f10, $f22, $f22
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f24, $f24
    jal     sqrtf
    add.s   $f12, $f4, $f6
    lui     $at, 0xbff0
    mtc1    $at, $t1
    mtc1    $zero, $t0
    cvt.d.s $f10, $f0
    lwc1    $f6, 0x6c($sp)
    div.d   $f4, $f8, $f10
    lwc1    $f10, 0x70($sp)
    cvt.s.d $f2, $f4
    mul.s   $f20, $f20, $f2
    nop
    mul.s   $f22, $f22, $f2
    nop
    mul.s   $f24, $f24, $f2
    nop
    mul.s   $f8, $f6, $f24
    nop
    mul.s   $f4, $f10, $f22
    sub.s   $f26, $f8, $f4
    mul.s   $f8, $f10, $f20
    lwc1    $f4, 0x68($sp)
    mul.s   $f10, $f4, $f24
    sub.s   $f28, $f8, $f10
    mul.s   $f8, $f4, $f22
    nop
    mul.s   $f10, $f6, $f20
    sub.s   $f30, $f8, $f10
    mul.s   $f4, $f26, $f26
    nop
    mul.s   $f6, $f28, $f28
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f30, $f30
    jal     sqrtf
    add.s   $f12, $f8, $f10
    lui     $at, 0x3ff0
    mtc1    $at, $a1
    mtc1    $zero, $a0
    cvt.d.s $f6, $f0
    div.d   $f8, $f4, $f6
    cvt.s.d $f14, $f8
    mul.s   $f26, $f26, $f14
    nop
    mul.s   $f28, $f28, $f14
    nop
    mul.s   $f30, $f30, $f14
    nop
    mul.s   $f10, $f22, $f30
    nop
    mul.s   $f4, $f24, $f28
    nop
    mul.s   $f6, $f24, $f26
    nop
    mul.s   $f8, $f20, $f30
    sub.s   $f2, $f10, $f4
    mul.s   $f10, $f20, $f28
    nop
    mul.s   $f4, $f22, $f26
    swc1    $2, 0x68($29)
    sub.s   $f16, $f6, $f8
    mul.s   $f6, $f2, $f2
    nop
    mul.s   $f8, $f16, $f16
    swc1    $16, 0x6c($29)
    sub.s   $f18, $f10, $f4
    mul.s   $f4, $f18, $f18
    add.s   $f10, $f6, $f8
    swc1    $18, 0x70($29)
    jal     sqrtf
    add.s   $f12, $f10, $f4
    lui     $at, 0x800f
    ldc1    $2, -0x3cd0($1)
    lui     $at, 0x4060
    mtc1    $at, $s1
    lui     $at, 0x3ff0
    mtc1    $at, $a3
    mtc1    $zero, $a2
    cvt.d.s $f8, $f0
    lwc1    $f4, 0x68($sp)
    div.d   $f10, $f6, $f8
    lwc1    $f8, 0x6c($sp)
    mtc1    $zero, $s0
    lw      $a0, 0x48($sp)
    lw      $a1, 0x4c($sp)
    addiu   $v0, $zero, 0x80
    cvt.s.d $f14, $f10
    mul.s   $f6, $f4, $f14
    lwc1    $f4, 0x70($sp)
    mul.s   $f10, $f8, $f14
    cvt.d.s $f8, $f26
    swc1    $6, 0x68($29)
    mul.s   $f6, $f4, $f14
    swc1    $10, 0x6c($29)
    mul.d   $f12, $f8, $f16
    swc1    $6, 0x70($29)
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7544
    mov.d   $f0, $f2
    b       branch_0x800c7544
    mov.d   $f0, $f12

.globl Function_0x800c7540
Function_0x800c7540: # 0x800c7540
    mov.d   $f0, $f2
branch_0x800c7544:
    cvt.d.s $f4, $f28
    trunc.w.d   $f10, $f0
    mul.d   $f12, $f4, $f16
    mfc1    $t8, $t2
    nop
    sb      $t8, 0x8($a1)
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7578
    mov.d   $f0, $f2
    b       branch_0x800c7578
    mov.d   $f0, $f12

.globl Function_0x800c7574
Function_0x800c7574: # 0x800c7574
    mov.d   $f0, $f2
branch_0x800c7578:
    cvt.d.s $f8, $f30
    trunc.w.d   $f6, $f0
    mul.d   $f12, $f8, $f16
    mfc1    $t1, $a2
    nop
    sb      $t1, 0x9($a1)
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c75ac
    mov.d   $f0, $f2
    b       branch_0x800c75ac
    mov.d   $f0, $f12

.globl Function_0x800c75a8
Function_0x800c75a8: # 0x800c75a8
    mov.d   $f0, $f2
branch_0x800c75ac:
    trunc.w.d   $f10, $f0
    mfc1    $t4, $t2
    nop
    sb      $t4, 0xa($a1)
    lwc1    $f4, 0x68($sp)
    cvt.d.s $f6, $f4
    mul.d   $f12, $f6, $f16
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c75e4
    mov.d   $f0, $f2
    b       branch_0x800c75e4
    mov.d   $f0, $f12

.globl Function_0x800c75e0
Function_0x800c75e0: # 0x800c75e0
    mov.d   $f0, $f2
branch_0x800c75e4:
    trunc.w.d   $f8, $f0
    mfc1    $t7, $t0
    nop
    sb      $t7, 0x18($a1)
    lwc1    $f10, 0x6c($sp)
    cvt.d.s $f4, $f10
    mul.d   $f12, $f4, $f16
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c761c
    mov.d   $f0, $f2
    b       branch_0x800c761c
    mov.d   $f0, $f12

.globl Function_0x800c7618
Function_0x800c7618: # 0x800c7618
    mov.d   $f0, $f2
branch_0x800c761c:
    trunc.w.d   $f6, $f0
    mfc1    $t0, $a2
    nop
    sb      $t0, 0x19($a1)
    lwc1    $f8, 0x70($sp)
    cvt.d.s $f10, $f8
    mul.d   $f12, $f10, $f16
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7654
    mov.d   $f0, $f2
    b       branch_0x800c7654
    mov.d   $f0, $f12

.globl Function_0x800c7650
Function_0x800c7650: # 0x800c7650
    mov.d   $f0, $f2
branch_0x800c7654:
    trunc.w.d   $f4, $f0
    sb      $zero, 0x0($a1)
    sb      $zero, 0x1($a1)
    sb      $zero, 0x2($a1)
    mfc1    $t3, $a0
    sb      $zero, 0x3($a1)
    sb      $zero, 0x4($a1)
    sb      $zero, 0x5($a1)
    sb      $zero, 0x6($a1)
    sb      $zero, 0x7($a1)
    sb      $zero, 0x10($a1)
    sb      $v0, 0x11($a1)
    sb      $zero, 0x12($a1)
    sb      $zero, 0x13($a1)
    sb      $zero, 0x14($a1)
    sb      $v0, 0x15($a1)
    sb      $zero, 0x16($a1)
    sb      $zero, 0x17($a1)
    sb      $t3, 0x1a($a1)
    swc1    $26, 0x0($4)
    lwc1    $f18, 0x50($sp)
    lwc1    $f16, 0x54($sp)
    lwc1    $f14, 0x58($sp)
    mul.s   $f6, $f18, $f26
    lwc1    $f0, 0x68($sp)
    lwc1    $f12, 0x6c($sp)
    mul.s   $f8, $f16, $f28
    lwc1    $f2, 0x70($sp)
    swc1    $28, 0x10($4)
    mul.s   $f4, $f14, $f30
    swc1    $30, 0x20($4)
    swc1    $20, 0x8($4)
    swc1    $22, 0x18($4)
    swc1    $24, 0x28($4)
    add.s   $f10, $f6, $f8
    swc1    $0, 0x4($4)
    swc1    $12, 0x14($4)
    swc1    $2, 0x24($4)
    add.s   $f6, $f10, $f4
    mul.s   $f10, $f18, $f0
    mtc1    $zero, $zero
    lui     $at, 0x3f80
    mul.s   $f4, $f16, $f12
    neg.s   $f8, $f6
    swc1    $8, 0x30($4)
    mul.s   $f8, $f14, $f2
    add.s   $f6, $f10, $f4
    add.s   $f10, $f6, $f8
    neg.s   $f4, $f10
    swc1    $4, 0x34($4)
    lwc1    $f6, 0x50($sp)
    lwc1    $f10, 0x54($sp)
    mul.s   $f8, $f6, $f20
    nop
    mul.s   $f4, $f10, $f22
    lwc1    $f10, 0x58($sp)
    swc1    $0, 0xc($4)
    swc1    $0, 0x1c($4)
    swc1    $0, 0x2c($4)
    add.s   $f6, $f8, $f4
    mul.s   $f8, $f10, $f24
    add.s   $f4, $f6, $f8
    mtc1    $at, $a2
    neg.s   $f10, $f4
    swc1    $6, 0x3c($4)
    swc1    $10, 0x38($4)
    lw      $ra, 0x44($sp)
    ldc1    $30, 0x38($29)
    ldc1    $28, 0x30($29)
    ldc1    $26, 0x28($29)
    ldc1    $24, 0x20($29)
    ldc1    $22, 0x18($29)
    ldc1    $20, 0x10($29)
    jr      $ra
    addiu   $sp, $sp, 0x48

.globl Function_0x800c7780
Function_0x800c7780: # 0x800c7780
    addiu   $sp, $sp, 0xff88
    lwc1    $f4, 0x88($sp)
    mtc1    $a2, $t4
    mtc1    $a3, $t6
    swc1    $4, 0x10($29)
    lwc1    $f4, 0xa0($sp)
    lwc1    $f6, 0x8c($sp)
    lwc1    $f8, 0x90($sp)
    lwc1    $f10, 0x94($sp)
    lwc1    $f16, 0x98($sp)
    lwc1    $f18, 0x9c($sp)
    sw      $ra, 0x34($sp)
    sw      $a0, 0x78($sp)
    mfc1    $a2, $t4
    mfc1    $a3, $t6
    addiu   $a0, $sp, 0x38
    swc1    $4, 0x28($29)
    swc1    $6, 0x14($29)
    swc1    $8, 0x18($29)
    swc1    $10, 0x1c($29)
    swc1    $16, 0x20($29)
    jal     guLookAtReflectF
    swc1    $18, 0x24($29)
    addiu   $a0, $sp, 0x38
    jal     guMtxF2L
    lw      $a1, 0x78($sp)
    lw      $ra, 0x34($sp)
    addiu   $sp, $sp, 0x78
    jr      $ra
    nop

.globl Function_0x800c77f8
Function_0x800c77f8: # 0x800c77f8
    nop
    nop

.globl guLookAtHiliteF
guLookAtHiliteF: # 0x800c7800
    addiu   $sp, $sp, 0xff68
    sw      $ra, 0x4c($sp)
    sw      $s1, 0x48($sp)
    sw      $s0, 0x44($sp)
    or      $s0, $a1, $zero
    or      $s1, $a0, $zero
    sdc1    $30, 0x38($29)
    sdc1    $28, 0x30($29)
    sdc1    $26, 0x28($29)
    sdc1    $24, 0x20($29)
    sdc1    $22, 0x18($29)
    sdc1    $20, 0x10($29)
    sw      $a2, 0xa0($sp)
    jal     Function_0x800cc980
    sw      $a3, 0xa4($sp)
    lwc1    $f4, 0xb0($sp)
    lwc1    $f6, 0xa4($sp)
    lwc1    $f8, 0xb4($sp)
    lwc1    $f10, 0xa8($sp)
    sub.s   $f0, $f4, $f6
    lwc1    $f6, 0xac($sp)
    lwc1    $f4, 0xb8($sp)
    sub.s   $f30, $f8, $f10
    mul.s   $f8, $f0, $f0
    mov.s   $f28, $f0
    sub.s   $f14, $f4, $f6
    mul.s   $f10, $f30, $f30
    swc1    $14, 0x88($29)
    mul.s   $f6, $f14, $f14
    add.s   $f4, $f8, $f10
    jal     sqrtf
    add.s   $f12, $f4, $f6
    lui     $at, 0xbff0
    mtc1    $at, $t1
    mtc1    $zero, $t0
    cvt.d.s $f10, $f0
    lwc1    $f20, 0x88($sp)
    div.d   $f4, $f8, $f10
    lwc1    $f6, 0xc0($sp)
    lwc1    $f10, 0xc4($sp)
    cvt.s.d $f2, $f4
    mul.s   $f28, $f28, $f2
    nop
    mul.s   $f30, $f30, $f2
    nop
    mul.s   $f20, $f20, $f2
    nop
    mul.s   $f8, $f6, $f20
    swc1    $20, 0x88($29)
    mul.s   $f4, $f10, $f30
    sub.s   $f22, $f8, $f4
    mul.s   $f8, $f10, $f28
    lwc1    $f4, 0xbc($sp)
    mul.s   $f10, $f4, $f20
    sub.s   $f24, $f8, $f10
    mul.s   $f8, $f4, $f30
    nop
    mul.s   $f10, $f6, $f28
    sub.s   $f26, $f8, $f10
    mul.s   $f4, $f22, $f22
    nop
    mul.s   $f6, $f24, $f24
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f26, $f26
    jal     sqrtf
    add.s   $f12, $f8, $f10
    lui     $at, 0x3ff0
    mtc1    $at, $s5
    mtc1    $zero, $s4
    cvt.d.s $f4, $f0
    lwc1    $f10, 0x88($sp)
    div.d   $f6, $f20, $f4
    cvt.s.d $f2, $f6
    mul.s   $f22, $f22, $f2
    nop
    mul.s   $f24, $f24, $f2
    nop
    mul.s   $f26, $f26, $f2
    nop
    mul.s   $f8, $f30, $f26
    nop
    mul.s   $f4, $f10, $f24
    sub.s   $f14, $f8, $f4
    mul.s   $f6, $f10, $f22
    nop
    mul.s   $f8, $f28, $f26
    swc1    $14, 0xbc($29)
    mul.s   $f4, $f28, $f24
    nop
    mul.s   $f10, $f30, $f22
    sub.s   $f16, $f6, $f8
    mul.s   $f6, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    swc1    $16, 0xc0($29)
    sub.s   $f18, $f4, $f10
    mul.s   $f10, $f18, $f18
    add.s   $f4, $f6, $f8
    swc1    $18, 0xc4($29)
    jal     sqrtf
    add.s   $f12, $f4, $f10
    cvt.d.s $f6, $f0
    lwc1    $f4, 0xbc($sp)
    div.d   $f8, $f20, $f6
    lwc1    $f6, 0xc0($sp)
    lwc1    $f14, 0xc8($sp)
    lwc1    $f16, 0xcc($sp)
    lwc1    $f18, 0xd0($sp)
    cvt.s.d $f2, $f8
    mul.s   $f10, $f4, $f2
    lwc1    $f4, 0xc4($sp)
    mul.s   $f8, $f6, $f2
    swc1    $10, 0xbc($29)
    mul.s   $f10, $f4, $f2
    swc1    $8, 0xc0($29)
    mul.s   $f6, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    swc1    $10, 0xc4($29)
    mul.s   $f10, $f18, $f18
    add.s   $f4, $f6, $f8
    jal     sqrtf
    add.s   $f12, $f4, $f10
    cvt.d.s $f6, $f0
    lwc1    $f4, 0xc8($sp)
    div.d   $f8, $f20, $f6
    lwc1    $f6, 0xcc($sp)
    cvt.s.d $f2, $f8
    mul.s   $f10, $f4, $f2
    lwc1    $f4, 0xd0($sp)
    mul.s   $f8, $f6, $f2
    swc1    $10, 0xc8($29)
    mul.s   $f6, $f4, $f2
    add.s   $f4, $f10, $f28
    swc1    $8, 0xcc($29)
    add.s   $f10, $f8, $f30
    lwc1    $f8, 0x88($sp)
    swc1    $6, 0xd0($29)
    swc1    $4, 0x5c($29)
    add.s   $f6, $f6, $f8
    mul.s   $f8, $f4, $f4
    swc1    $10, 0x58($29)
    mul.s   $f4, $f10, $f10
    swc1    $6, 0x54($29)
    add.s   $f10, $f8, $f4
    mul.s   $f8, $f6, $f6
    jal     sqrtf
    add.s   $f12, $f10, $f8
    lui     $at, 0x800f
    ldc1    $4, -0x3cc0($1)
    cvt.d.s $f2, $f0
    lw      $v1, 0xe4($sp)
    c.lt.d $f4, $f2
    lw      $v0, 0xe0($sp)
    lw      $t4, 0xa0($sp)
    sll     $t5, $v1, 1
    bc1fl   branch_0x800c7b5c
    sll     $t3, $v0, 1
    div.d   $f6, $f20, $f2
    lwc1    $f10, 0x5c($sp)
    lwc1    $f8, 0x58($sp)
    lwc1    $f4, 0x54($sp)
    lw      $v0, 0xe0($sp)
    lui     $at, 0x4000
    lw      $t9, 0xa0($sp)
    sll     $t6, $v0, 2
    lw      $v1, 0xe4($sp)
    sll     $t0, $v1, 2
    cvt.s.d $f12, $f6
    mul.s   $f14, $f10, $f12
    nop
    mul.s   $f16, $f8, $f12
    nop
    mul.s   $f18, $f4, $f12
    nop
    mul.s   $f6, $f14, $f22
    nop
    mul.s   $f10, $f16, $f24
    add.s   $f8, $f6, $f10
    mul.s   $f4, $f18, $f26
    mtc1    $v0, $t2
    add.s   $f6, $f8, $f4
    cvt.s.w $f8, $f10
    mtc1    $at, $t2
    mul.s   $f4, $f6, $f8
    mtc1    $t6, $t0
    mul.s   $f6, $f4, $f10
    cvt.s.w $f4, $f8
    add.s   $f10, $f4, $f6
    trunc.w.s   $f8, $f10
    mfc1    $t8, $t0
    nop
    sw      $t8, 0x0($t9)
    lwc1    $f4, 0xbc($sp)
    lwc1    $f10, 0xc0($sp)
    mul.s   $f6, $f14, $f4
    nop
    mul.s   $f8, $f16, $f10
    lwc1    $f10, 0xc4($sp)
    add.s   $f4, $f6, $f8
    mul.s   $f6, $f18, $f10
    mtc1    $v1, $t2
    add.s   $f8, $f4, $f6
    cvt.s.w $f4, $f10
    mtc1    $at, $t2
    mul.s   $f6, $f8, $f4
    mtc1    $t0, $a0
    mul.s   $f8, $f6, $f10
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s   $f4, $f10
    mfc1    $t2, $a0
    b       branch_0x800c7b64
    sw      $t2, 0x4($t9)

.globl Function_0x800c7b58
Function_0x800c7b58: # 0x800c7b58
    sll     $t3, $v0, 1
branch_0x800c7b5c:
    sw      $t3, 0x0($t4)
    sw      $t5, 0x4($t4)
branch_0x800c7b64:
    lwc1    $f0, 0xd4($sp)
    lwc1    $f2, 0xd8($sp)
    lwc1    $f14, 0xdc($sp)
    mul.s   $f6, $f0, $f0
    nop
    mul.s   $f8, $f2, $f2
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f14, $f14
    jal     sqrtf
    add.s   $f12, $f10, $f4
    cvt.d.s $f6, $f0
    lwc1    $f10, 0xd4($sp)
    div.d   $f8, $f20, $f6
    lwc1    $f6, 0xd8($sp)
    cvt.s.d $f2, $f8
    mul.s   $f4, $f10, $f2
    lwc1    $f10, 0xdc($sp)
    mul.s   $f8, $f6, $f2
    swc1    $4, 0xd4($29)
    mul.s   $f6, $f10, $f2
    add.s   $f10, $f4, $f28
    swc1    $8, 0xd8($29)
    add.s   $f4, $f8, $f30
    lwc1    $f8, 0x88($sp)
    swc1    $6, 0xdc($29)
    swc1    $10, 0x5c($29)
    add.s   $f6, $f6, $f8
    mul.s   $f8, $f10, $f10
    swc1    $4, 0x58($29)
    mul.s   $f10, $f4, $f4
    swc1    $6, 0x54($29)
    add.s   $f4, $f8, $f10
    mul.s   $f8, $f6, $f6
    jal     sqrtf
    add.s   $f12, $f4, $f8
    lui     $at, 0x800f
    ldc1    $10, -0x3cb8($1)
    cvt.d.s $f2, $f0
    lw      $v0, 0xe0($sp)
    c.lt.d $f10, $f2
    lw      $v1, 0xe4($sp)
    lw      $a0, 0xa0($sp)
    sll     $t9, $v0, 1
    bc1f    branch_0x800c7cf0
    sll     $t3, $v1, 1
    div.d   $f6, $f20, $f2
    lwc1    $f4, 0x5c($sp)
    lwc1    $f8, 0x58($sp)
    lwc1    $f10, 0x54($sp)
    lui     $at, 0x4000
    sll     $t6, $v0, 2
    lw      $a0, 0xa0($sp)
    sll     $t0, $v1, 2
    cvt.s.d $f12, $f6
    mul.s   $f14, $f4, $f12
    nop
    mul.s   $f16, $f8, $f12
    nop
    mul.s   $f18, $f10, $f12
    nop
    mul.s   $f6, $f14, $f22
    nop
    mul.s   $f4, $f16, $f24
    add.s   $f8, $f6, $f4
    mul.s   $f10, $f18, $f26
    mtc1    $v0, $a0
    add.s   $f6, $f8, $f10
    cvt.s.w $f8, $f4
    mtc1    $at, $a0
    mul.s   $f10, $f6, $f8
    mtc1    $t6, $t0
    mul.s   $f6, $f10, $f4
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f6
    trunc.w.s   $f8, $f4
    mfc1    $t8, $t0
    nop
    sw      $t8, 0x8($a0)
    lwc1    $f10, 0xbc($sp)
    lwc1    $f4, 0xc0($sp)
    mul.s   $f6, $f14, $f10
    nop
    mul.s   $f8, $f16, $f4
    lwc1    $f4, 0xc4($sp)
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f18, $f4
    mtc1    $v1, $a0
    add.s   $f8, $f10, $f6
    cvt.s.w $f10, $f4
    mtc1    $at, $a0
    mul.s   $f6, $f8, $f10
    mtc1    $t0, $t2
    mul.s   $f8, $f6, $f4
    cvt.s.w $f6, $f10
    add.s   $f4, $f6, $f8
    trunc.w.s   $f10, $f4
    mfc1    $t2, $t2
    b       branch_0x800c7cf8
    sw      $t2, 0xc($a0)
branch_0x800c7cf0:
    sw      $t9, 0x8($a0)
    sw      $t3, 0xc($a0)
branch_0x800c7cf8:
    lui     $at, 0x800f
    ldc1    $2, -0x3cb0($1)
    lui     $at, 0x4060
    mtc1    $at, $t7
    mtc1    $zero, $t6
    cvt.d.s $f6, $f22
    addiu   $v0, $zero, 0x80
    mul.d   $f12, $f6, $f14
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7d34
    mov.d   $f0, $f2
    b       branch_0x800c7d34
    mov.d   $f0, $f12

.globl Function_0x800c7d30
Function_0x800c7d30: # 0x800c7d30
    mov.d   $f0, $f2
branch_0x800c7d34:
    cvt.d.s $f4, $f24
    trunc.w.d   $f8, $f0
    mul.d   $f12, $f4, $f14
    mfc1    $t6, $t0
    nop
    sb      $t6, 0x8($s0)
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7d68
    mov.d   $f0, $f2
    b       branch_0x800c7d68
    mov.d   $f0, $f12

.globl Function_0x800c7d64
Function_0x800c7d64: # 0x800c7d64
    mov.d   $f0, $f2
branch_0x800c7d68:
    cvt.d.s $f6, $f26
    trunc.w.d   $f10, $f0
    mul.d   $f12, $f6, $f14
    mfc1    $t0, $t2
    nop
    sb      $t0, 0x9($s0)
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7d9c
    mov.d   $f0, $f2
    b       branch_0x800c7d9c
    mov.d   $f0, $f12

.globl Function_0x800c7d98
Function_0x800c7d98: # 0x800c7d98
    mov.d   $f0, $f2
branch_0x800c7d9c:
    trunc.w.d   $f8, $f0
    mfc1    $t9, $t0
    nop
    sb      $t9, 0xa($s0)
    lwc1    $f4, 0xbc($sp)
    cvt.d.s $f10, $f4
    mul.d   $f12, $f10, $f14
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7dd4
    mov.d   $f0, $f2
    b       branch_0x800c7dd4
    mov.d   $f0, $f12

.globl Function_0x800c7dd0
Function_0x800c7dd0: # 0x800c7dd0
    mov.d   $f0, $f2
branch_0x800c7dd4:
    trunc.w.d   $f6, $f0
    mfc1    $t4, $a2
    nop
    sb      $t4, 0x18($s0)
    lwc1    $f8, 0xc0($sp)
    cvt.d.s $f4, $f8
    mul.d   $f12, $f4, $f14
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7e0c
    mov.d   $f0, $f2
    b       branch_0x800c7e0c
    mov.d   $f0, $f12

.globl Function_0x800c7e08
Function_0x800c7e08: # 0x800c7e08
    mov.d   $f0, $f2
branch_0x800c7e0c:
    trunc.w.d   $f10, $f0
    mfc1    $t8, $t2
    nop
    sb      $t8, 0x19($s0)
    lwc1    $f6, 0xc4($sp)
    cvt.d.s $f8, $f6
    mul.d   $f12, $f8, $f14
    c.lt.d $f12, $f2
    nop
    bc1fl   branch_0x800c7e44
    mov.d   $f0, $f2
    b       branch_0x800c7e44
    mov.d   $f0, $f12

.globl Function_0x800c7e40
Function_0x800c7e40: # 0x800c7e40
    mov.d   $f0, $f2
branch_0x800c7e44:
    trunc.w.d   $f4, $f0
    sb      $zero, 0x0($s0)
    sb      $zero, 0x1($s0)
    sb      $zero, 0x2($s0)
    mfc1    $t2, $a0
    sb      $zero, 0x3($s0)
    sb      $zero, 0x4($s0)
    sb      $zero, 0x5($s0)
    sb      $zero, 0x6($s0)
    sb      $zero, 0x7($s0)
    sb      $zero, 0x10($s0)
    sb      $v0, 0x11($s0)
    sb      $zero, 0x12($s0)
    sb      $zero, 0x13($s0)
    sb      $zero, 0x14($s0)
    sb      $v0, 0x15($s0)
    sb      $zero, 0x16($s0)
    sb      $zero, 0x17($s0)
    sb      $t2, 0x1a($s0)
    swc1    $22, 0x0($17)
    lwc1    $f18, 0xa4($sp)
    lwc1    $f16, 0xa8($sp)
    lwc1    $f14, 0xac($sp)
    mul.s   $f10, $f18, $f22
    lwc1    $f0, 0xbc($sp)
    lwc1    $f12, 0xc0($sp)
    mul.s   $f6, $f16, $f24
    lwc1    $f2, 0xc4($sp)
    swc1    $24, 0x10($17)
    mul.s   $f4, $f14, $f26
    swc1    $26, 0x20($17)
    swc1    $0, 0x4($17)
    swc1    $12, 0x14($17)
    swc1    $2, 0x24($17)
    add.s   $f8, $f10, $f6
    lui     $at, 0x3f80
    add.s   $f10, $f8, $f4
    mul.s   $f8, $f18, $f0
    mtc1    $zero, $zero
    mul.s   $f4, $f16, $f12
    neg.s   $f6, $f10
    swc1    $6, 0x30($17)
    mul.s   $f6, $f14, $f2
    add.s   $f10, $f8, $f4
    add.s   $f8, $f10, $f6
    mul.s   $f10, $f18, $f28
    neg.s   $f4, $f8
    mul.s   $f6, $f16, $f30
    swc1    $4, 0x34($17)
    lwc1    $f2, 0x88($sp)
    swc1    $28, 0x8($17)
    swc1    $30, 0x18($17)
    mul.s   $f4, $f14, $f2
    swc1    $0, 0xc($17)
    add.s   $f8, $f10, $f6
    swc1    $0, 0x1c($17)
    swc1    $0, 0x2c($17)
    swc1    $2, 0x28($17)
    add.s   $f10, $f8, $f4
    mtc1    $at, $t0
    neg.s   $f6, $f10
    swc1    $8, 0x3c($17)
    swc1    $6, 0x38($17)
    lw      $ra, 0x4c($sp)
    lw      $s1, 0x48($sp)
    lw      $s0, 0x44($sp)
    ldc1    $30, 0x38($29)
    ldc1    $28, 0x30($29)
    ldc1    $26, 0x28($29)
    ldc1    $24, 0x20($29)
    ldc1    $22, 0x18($29)
    ldc1    $20, 0x10($29)
    jr      $ra
    addiu   $sp, $sp, 0x98

.globl Function_0x800c7f6c
Function_0x800c7f6c: # 0x800c7f6c
    addiu   $sp, $sp, 0xff68
    lwc1    $f4, 0xa8($sp)
    lwc1    $f6, 0xac($sp)
    lwc1    $f8, 0xb0($sp)
    swc1    $4, 0x10($29)
    swc1    $6, 0x14($29)
    lwc1    $f6, 0xc4($sp)
    lwc1    $f4, 0xc0($sp)
    lwc1    $f10, 0xb4($sp)
    lwc1    $f16, 0xb8($sp)
    lwc1    $f18, 0xbc($sp)
    mtc1    $a3, $t4
    swc1    $8, 0x18($29)
    swc1    $6, 0x2c($29)
    swc1    $4, 0x28($29)
    swc1    $10, 0x1c($29)
    swc1    $16, 0x20($29)
    swc1    $18, 0x24($29)
    lwc1    $f18, 0xd4($sp)
    lwc1    $f16, 0xd0($sp)
    lwc1    $f10, 0xcc($sp)
    lwc1    $f4, 0xd8($sp)
    lwc1    $f6, 0xdc($sp)
    lwc1    $f8, 0xc8($sp)
    lw      $t6, 0xe0($sp)
    lw      $t7, 0xe4($sp)
    sw      $ra, 0x54($sp)
    sw      $a0, 0x98($sp)
    mfc1    $a3, $t4
    addiu   $a0, $sp, 0x58
    swc1    $18, 0x3c($29)
    swc1    $16, 0x38($29)
    swc1    $10, 0x34($29)
    swc1    $4, 0x40($29)
    swc1    $6, 0x44($29)
    swc1    $8, 0x30($29)
    sw      $t6, 0x48($sp)
    jal     guLookAtHiliteF
    sw      $t7, 0x4c($sp)
    addiu   $a0, $sp, 0x58
    jal     guMtxF2L
    lw      $a1, 0x98($sp)
    lw      $ra, 0x54($sp)
    addiu   $sp, $sp, 0x98
    jr      $ra
    nop

.globl Function_0x800c8024
Function_0x800c8024: # 0x800c8024
    nop
    nop
    nop

.globl osEepromLongRead
osEepromLongRead: # 0x800c8030
    addiu   $sp, $sp, 0xffc0
    sw      $a1, 0x44($sp)
    lbu     $t6, 0x47($sp)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x40($sp)
    slti    $at, $t6, 0x41
    sw      $a2, 0x48($sp)
    sw      $a3, 0x4c($sp)
    bnez    $at, branch_0x800c8060
    sw      $zero, 0x3c($sp)
    b       branch_0x800c815c
    addiu   $v0, $zero, 0xffff
branch_0x800c8060:
    lw      $t7, 0x4c($sp)
    blez    $t7, branch_0x800c8158
    nop
branch_0x800c806c:
    lw      $a0, 0x40($sp)
    lbu     $a1, 0x47($sp)
    jal     osEepromRead
    lw      $a2, 0x48($sp)
    sw      $v0, 0x3c($sp)
    lw      $t8, 0x3c($sp)
    beqz    $t8, branch_0x800c8094
    nop
    b       branch_0x800c815c
    or      $v0, $t8, $zero
branch_0x800c8094:
    lw      $t9, 0x4c($sp)
    lbu     $t1, 0x47($sp)
    lw      $t3, 0x48($sp)
    lui     $a2, 0x800f
    lui     $a3, 0x800f
    addiu   $t0, $t9, 0xfff8
    addiu   $t2, $t1, 0x1
    addiu   $t4, $t3, 0x8
    sw      $t0, 0x4c($sp)
    sb      $t2, 0x47($sp)
    sw      $t4, 0x48($sp)
    lw      $a3, -0x72ac($a3)
    lw      $a2, -0x72b0($a2)
    addiu   $a0, $zero, 0x0
    jal     Function_0x800cc648
    addiu   $a1, $zero, 0x2ee0
    sw      $v0, 0x28($sp)
    sw      $v1, 0x2c($sp)
    lui     $a3, 0xf
    ori     $a3, $a3, 0x4240
    lw      $a1, 0x2c($sp)
    lw      $a0, 0x28($sp)
    jal     Function_0x800cc548
    addiu   $a2, $zero, 0x0
    lui     $t5, 0x801e
    lui     $t8, 0x801e
    addiu   $t8, $t8, 0xa940
    addiu   $t5, $t5, 0xa928
    sw      $v0, 0x30($sp)
    sw      $v1, 0x34($sp)
    lui     $a0, 0x801e
    addiu   $t6, $zero, 0x0
    addiu   $t7, $zero, 0x0
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    addiu   $a0, $a0, 0xa908
    lw      $a3, 0x34($sp)
    lw      $a2, 0x30($sp)
    sw      $t5, 0x18($sp)
    jal     osSetTimer
    sw      $t8, 0x1c($sp)
    lui     $a0, 0x801e
    addiu   $a0, $a0, 0xa928
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lw      $t9, 0x4c($sp)
    bgtz    $t9, branch_0x800c806c
    nop
branch_0x800c8158:
    lw      $v0, 0x3c($sp)
branch_0x800c815c:
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x800c816c
Function_0x800c816c: # 0x800c816c
    nop

.globl osEepromLongWrite
osEepromLongWrite: # 0x800c8170
    addiu   $sp, $sp, 0xffc0
    sw      $a1, 0x44($sp)
    lbu     $t6, 0x47($sp)
    sw      $ra, 0x24($sp)
    sw      $a0, 0x40($sp)
    slti    $at, $t6, 0x41
    sw      $a2, 0x48($sp)
    sw      $a3, 0x4c($sp)
    bnez    $at, branch_0x800c81a0
    sw      $zero, 0x3c($sp)
    b       branch_0x800c829c
    addiu   $v0, $zero, 0xffff
branch_0x800c81a0:
    lw      $t7, 0x4c($sp)
    blez    $t7, branch_0x800c8298
    nop
branch_0x800c81ac:
    lw      $a0, 0x40($sp)
    lbu     $a1, 0x47($sp)
    jal     osEepromWrite
    lw      $a2, 0x48($sp)
    sw      $v0, 0x3c($sp)
    lw      $t8, 0x3c($sp)
    beqz    $t8, branch_0x800c81d4
    nop
    b       branch_0x800c829c
    or      $v0, $t8, $zero
branch_0x800c81d4:
    lw      $t9, 0x4c($sp)
    lbu     $t1, 0x47($sp)
    lw      $t3, 0x48($sp)
    lui     $a2, 0x800f
    lui     $a3, 0x800f
    addiu   $t0, $t9, 0xfff8
    addiu   $t2, $t1, 0x1
    addiu   $t4, $t3, 0x8
    sw      $t0, 0x4c($sp)
    sb      $t2, 0x47($sp)
    sw      $t4, 0x48($sp)
    lw      $a3, -0x72ac($a3)
    lw      $a2, -0x72b0($a2)
    addiu   $a0, $zero, 0x0
    jal     Function_0x800cc648
    addiu   $a1, $zero, 0x2ee0
    sw      $v0, 0x28($sp)
    sw      $v1, 0x2c($sp)
    lui     $a3, 0xf
    ori     $a3, $a3, 0x4240
    lw      $a1, 0x2c($sp)
    lw      $a0, 0x28($sp)
    jal     Function_0x800cc548
    addiu   $a2, $zero, 0x0
    lui     $t5, 0x801e
    lui     $t8, 0x801e
    addiu   $t8, $t8, 0xa940
    addiu   $t5, $t5, 0xa928
    sw      $v0, 0x30($sp)
    sw      $v1, 0x34($sp)
    lui     $a0, 0x801e
    addiu   $t6, $zero, 0x0
    addiu   $t7, $zero, 0x0
    sw      $t7, 0x14($sp)
    sw      $t6, 0x10($sp)
    addiu   $a0, $a0, 0xa908
    lw      $a3, 0x34($sp)
    lw      $a2, 0x30($sp)
    sw      $t5, 0x18($sp)
    jal     osSetTimer
    sw      $t8, 0x1c($sp)
    lui     $a0, 0x801e
    addiu   $a0, $a0, 0xa928
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lw      $t9, 0x4c($sp)
    bgtz    $t9, branch_0x800c81ac
    nop
branch_0x800c8298:
    lw      $v0, 0x3c($sp)
branch_0x800c829c:
    lw      $ra, 0x24($sp)
    addiu   $sp, $sp, 0x40
    jr      $ra
    nop

.globl Function_0x800c82ac
Function_0x800c82ac: # 0x800c82ac
    nop

.globl osEepromProbe
osEepromProbe: # 0x800c82b0
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    sw      $a0, 0x20($sp)
    jal     Function_0x800cb6d0
    sw      $zero, 0x1c($sp)
    lw      $a0, 0x20($sp)
    jal     Function_0x800cd0ac
    addiu   $a1, $sp, 0x18
    sw      $v0, 0x1c($sp)
    lw      $t6, 0x1c($sp)
    bnez    $t6, branch_0x800c82fc
    nop
    lhu     $t7, 0x18($sp)
    andi    $t8, $t7, 0x8000
    beqz    $t8, branch_0x800c82fc
    nop
    addiu   $t9, $zero, 0x1
    b       branch_0x800c8300
    sw      $t9, 0x1c($sp)
branch_0x800c82fc:
    sw      $zero, 0x1c($sp)
branch_0x800c8300:
    jal     Function_0x800cb714
    nop
    lw      $ra, 0x14($sp)
    lw      $v0, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x800c831c
Function_0x800c831c: # 0x800c831c
    nop

.globl Function_0x800c8320
Function_0x800c8320: # 0x800c8320
    addiu   $sp, $sp, 0xff90
    sw      $ra, 0x3c($sp)
    sw      $s5, 0x2c($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    or      $s2, $a0, $zero
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s0, 0x18($sp)
    sw      $a1, 0x74($sp)
    or      $s5, $zero, $zero
    jal     Function_0x800cb6d0
    addiu   $s1, $zero, 0x3
    lui     $fp, 0x801e
    lui     $s3, 0x801e
    addiu   $s3, $s3, 0xa950
    addiu   $fp, $fp, 0xa901
    or      $s0, $zero, $zero
    addiu   $s7, $sp, 0x54
    addiu   $s6, $sp, 0x67
    addiu   $s4, $sp, 0x68
branch_0x800c8380:
    jal     Function_0x800c84b4
    or      $a0, $zero, $zero
    addiu   $a0, $zero, 0x1
    jal     __osSiRawStartDma
    or      $a1, $s3, $zero
    or      $a0, $s2, $zero
    or      $a1, $s4, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    or      $a0, $zero, $zero
    jal     __osSiRawStartDma
    or      $a1, $s3, $zero
    sw      $v0, 0x6c($sp)
    or      $a0, $s2, $zero
    or      $a1, $s4, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    or      $a0, $s6, $zero
    jal     Function_0x800c8594
    or      $a1, $s7, $zero
    lbu     $v1, 0x0($fp)
    addiu   $v0, $sp, 0x54
    blez    $v1, branch_0x800c840c
    nop
branch_0x800c83e0:
    lbu     $t6, 0x2($v0)
    nop
    andi    $t7, $t6, 0x4
    bnez    $t7, branch_0x800c83fc
    nop
    b       branch_0x800c840c
    addiu   $s1, $s1, 0xffff
branch_0x800c83fc:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $v1
    bnez    $at, branch_0x800c83e0
    addiu   $v0, $v0, 0x4
branch_0x800c840c:
    xor     $v0, $s0, $v1
    bnez    $v0, branch_0x800c841c
    or      $s0, $zero, $zero
    or      $s1, $zero, $zero
branch_0x800c841c:
    bgtz    $s1, branch_0x800c8380
    nop
    blez    $v1, branch_0x800c846c
    addiu   $v0, $sp, 0x54
branch_0x800c842c:
    lbu     $t8, 0x3($v0)
    nop
    bnez    $t8, branch_0x800c845c
    nop
    lbu     $t9, 0x2($v0)
    addiu   $t1, $zero, 0x1
    andi    $t0, $t9, 0x1
    beqz    $t0, branch_0x800c845c
    sllv    $t2, $t1, $s0
    or      $s5, $s5, $t2
    andi    $t3, $s5, 0xff
    or      $s5, $t3, $zero
branch_0x800c845c:
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $v1
    bnez    $at, branch_0x800c842c
    addiu   $v0, $v0, 0x4
branch_0x800c846c:
    jal     Function_0x800cb714
    nop
    lw      $t4, 0x74($sp)
    nop
    sb      $s5, 0x0($t4)
    lw      $ra, 0x3c($sp)
    lw      $fp, 0x38($sp)
    lw      $s7, 0x34($sp)
    lw      $s6, 0x30($sp)
    lw      $s5, 0x2c($sp)
    lw      $s4, 0x28($sp)
    lw      $s3, 0x24($sp)
    lw      $s2, 0x20($sp)
    lw      $s1, 0x1c($sp)
    lw      $s0, 0x18($sp)
    lw      $v0, 0x6c($sp)
    jr      $ra
    addiu   $sp, $sp, 0x70

.globl Function_0x800c84b4
Function_0x800c84b4: # 0x800c84b4
    addiu   $sp, $sp, 0xffe8
    andi    $t6, $a0, 0xff
    sw      $a0, 0x18($sp)
    lui     $at, %hi(Unknown_0x801da900)
    lui     $v1, 0x801e
    lui     $v0, 0x801e
    or      $a0, $t6, $zero
    sb      $t6, %lo(Unknown_0x801da900)($at)
    addiu   $v0, $v0, 0xa990
    addiu   $v1, $v1, 0xa950
branch_0x800c84dc:
    addiu   $v1, $v1, 0x4
    sltu    $at, $v1, $v0
    bnez    $at, branch_0x800c84dc
    sw      $zero, -0x4($v1)
    lui     $a1, 0x801e
    addiu   $v1, $a1, 0xa950
    addiu   $t7, $zero, 0x1
    sw      $t7, 0x3c($v1)
    lui     $a2, 0x801e
    addiu   $a2, $a2, 0xa901
    lbu     $t5, 0x0($a2)
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0x1
    addiu   $t0, $zero, 0x3
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sb      $t8, 0xc($sp)
    sb      $t9, 0xd($sp)
    sb      $t0, 0xe($sp)
    sb      $a0, 0xf($sp)
    sb      $t1, 0x10($sp)
    sb      $t2, 0x11($sp)
    sb      $t3, 0x12($sp)
    sb      $t4, 0x13($sp)
    blez    $t5, branch_0x800c8584
    or      $v0, $zero, $zero
    addiu   $a0, $sp, 0xc
branch_0x800c8550:
    lw      $at, 0x0($a0)
    addiu   $v0, $v0, 0x1
    swl     $at, 0x0($v1)
    swr     $at, 0x3($v1)
    lw      $t7, 0x4($a0)
    addiu   $v1, $v1, 0x8
    swl     $t7, -0x4($v1)
    swr     $t7, -0x1($v1)
    lbu     $t8, 0x0($a2)
    nop
    slt     $at, $v0, $t8
    bnez    $at, branch_0x800c8550
    nop
branch_0x800c8584:
    addiu   $t9, $zero, 0xfe
    sb      $t9, 0x0($v1)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x800c8594
Function_0x800c8594: # 0x800c8594
    lui     $a3, 0x801e
    addiu   $a3, $a3, 0xa901
    lbu     $t6, 0x0($a3)
    lui     $v1, 0x801e
    addiu   $sp, $sp, 0xffe8
    or      $v0, $zero, $zero
    addiu   $v1, $v1, 0xa950
    blez    $t6, branch_0x800c863c
    or      $a2, $zero, $zero
    addiu   $t0, $sp, 0xc
branch_0x800c85bc:
    lwl     $at, 0x0($v1)
    lwr     $at, 0x3($v1)
    addiu   $v1, $v1, 0x8
    sw      $at, 0x0($t0)
    lwl     $t8, -0x4($v1)
    lwr     $t8, -0x1($v1)
    nop
    sw      $t8, 0x4($t0)
    lbu     $t9, 0xe($sp)
    nop
    andi    $t1, $t9, 0xc0
    sra     $t2, $t1, 4
    andi    $t3, $t2, 0xff
    bnez    $t3, branch_0x800c8628
    sb      $t2, 0x3($a1)
    lbu     $t4, 0x11($sp)
    lbu     $t6, 0x10($sp)
    sll     $t5, $t4, 8
    addiu   $t9, $zero, 0x1
    or      $t7, $t5, $t6
    sh      $t7, 0x0($a1)
    sllv    $t1, $t9, $a2
    lbu     $t8, 0x12($sp)
    or      $v0, $v0, $t1
    andi    $t2, $v0, 0xff
    or      $v0, $t2, $zero
    sb      $t8, 0x2($a1)
branch_0x800c8628:
    lbu     $t3, 0x0($a3)
    addiu   $a2, $a2, 0x1
    slt     $at, $a2, $t3
    bnez    $at, branch_0x800c85bc
    addiu   $a1, $a1, 0x4
branch_0x800c863c:
    sb      $v0, 0x0($a0)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x800c8648
Function_0x800c8648: # 0x800c8648
    nop
    nop

.globl Function_0x800c8650
Function_0x800c8650: # 0x800c8650
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    or      $s0, $a1, $zero
    sw      $a0, 0x28($sp)
    jal     Function_0x800cb6d0
    sw      $a2, 0x30($sp)
    lw      $a0, 0x28($sp)
    lw      $a1, 0x30($sp)
    jal     Function_0x800c86e8
    nop
    jal     Function_0x800cb714
    sw      $v0, 0x24($sp)
    lw      $v1, 0x24($sp)
    lw      $t6, 0x28($sp)
    beqz    $v1, branch_0x800c869c
    or      $a0, $s0, $zero
    b       branch_0x800c86d8
    or      $v0, $v1, $zero
branch_0x800c869c:
    sw      $t6, 0x4($s0)
    lw      $t7, 0x30($sp)
    sw      $zero, 0x0($s0)
    jal     Function_0x800cd8f8
    sw      $t7, 0x8($s0)
    beqz    $v0, branch_0x800c86c0
    nop
    b       branch_0x800c86dc
    lw      $ra, 0x1c($sp)
branch_0x800c86c0:
    jal     Function_0x800cdf20
    or      $a0, $s0, $zero
    lw      $t8, 0x0($s0)
    nop
    ori     $t9, $t8, 0x1
    sw      $t9, 0x0($s0)
branch_0x800c86d8:
    lw      $ra, 0x1c($sp)
branch_0x800c86dc:
    lw      $s0, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28

.globl Function_0x800c86e8
Function_0x800c86e8: # 0x800c86e8
    addiu   $sp, $sp, 0xffc0
    sw      $ra, 0x14($sp)
    sw      $a0, 0x40($sp)
    sw      $a1, 0x44($sp)
    jal     Function_0x800c84b4
    or      $a0, $zero, $zero
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0xa950
    jal     __osSiRawStartDma
    addiu   $a0, $zero, 0x1
    lw      $a0, 0x40($sp)
    addiu   $a1, $sp, 0x38
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0xa950
    jal     __osSiRawStartDma
    or      $a0, $zero, $zero
    lw      $a0, 0x40($sp)
    sw      $v0, 0x3c($sp)
    addiu   $a1, $sp, 0x38
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    addiu   $a0, $sp, 0x37
    jal     Function_0x800c8594
    addiu   $a1, $sp, 0x24
    lw      $t6, 0x44($sp)
    addiu   $t8, $sp, 0x24
    sll     $t7, $t6, 2
    addu    $v1, $t7, $t8
    lbu     $v0, 0x2($v1)
    lw      $ra, 0x14($sp)
    andi    $a0, $v0, 0x1
    beqz    $a0, branch_0x800c8784
    andi    $t9, $v0, 0x2
    beqz    $t9, branch_0x800c8784
    nop
    b       branch_0x800c87bc
    addiu   $v0, $zero, 0x2
branch_0x800c8784:
    lbu     $t0, 0x3($v1)
    nop
    bnez    $t0, branch_0x800c879c
    nop
    bnez    $a0, branch_0x800c87a4
    andi    $t1, $v0, 0x4
branch_0x800c879c:
    b       branch_0x800c87bc
    addiu   $v0, $zero, 0x1
branch_0x800c87a4:
    beqz    $t1, branch_0x800c87b8
    lw      $v0, 0x3c($sp)
    b       branch_0x800c87bc
    addiu   $v0, $zero, 0x4

.globl Function_0x800c87b4
Function_0x800c87b4: # 0x800c87b4
    lw      $v0, 0x3c($sp)
branch_0x800c87b8:
    nop
branch_0x800c87bc:
    jr      $ra
    addiu   $sp, $sp, 0x40

.globl Function_0x800c87c4
Function_0x800c87c4: # 0x800c87c4
    nop
    nop
    nop

.globl Function_0x800c87d0
Function_0x800c87d0: # 0x800c87d0
    addiu   $sp, $sp, 0xff88
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s5, 0x2c($sp)
    sw      $s2, 0x20($sp)
    or      $s2, $a0, $zero
    or      $s5, $a3, $zero
    andi    $s7, $a1, 0xffff
    or      $fp, $a2, $zero
    sw      $s6, 0x30($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    jal     Function_0x800cdafc
    sw      $a1, 0x7c($sp)
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800c8828
    nop
    b       branch_0x800c8934
    addiu   $v0, $zero, 0x2
branch_0x800c8828:
    lw      $t6, 0x50($s2)
    or      $s3, $zero, $zero
    blez    $t6, branch_0x800c8924
    addiu   $s6, $sp, 0x50
    lw      $s4, 0x88($sp)
    addiu   $s1, $sp, 0x60
    addiu   $s0, $sp, 0x54
branch_0x800c8844:
    lw      $t7, 0x5c($s2)
    lw      $a0, 0x4($s2)
    addu    $a2, $t7, $s3
    andi    $t8, $a2, 0xffff
    lw      $a1, 0x8($s2)
    or      $a2, $t8, $zero
    jal     Function_0x800ce990
    or      $a3, $s6, $zero
    beqz    $v0, branch_0x800c8874
    or      $a2, $v0, $zero
    b       branch_0x800c8938
    lw      $ra, 0x3c($sp)
branch_0x800c8874:
    lhu     $t9, 0x54($sp)
    lw      $t0, 0x50($sp)
    bne     $s7, $t9, branch_0x800c8910
    nop
    bne     $t0, $fp, branch_0x800c8910
    nop
    beqz    $s5, branch_0x800c88c0
    or      $a0, $zero, $zero
    addiu   $v0, $sp, 0x50
    or      $v1, $s5, $zero
branch_0x800c889c:
    lbu     $t1, 0x10($v0)
    lbu     $t2, 0x0($v1)
    addiu   $v0, $v0, 0x1
    beq     $t1, $t2, branch_0x800c88b8
    nop
    b       branch_0x800c88c0
    addiu   $a0, $zero, 0x1
branch_0x800c88b8:
    bne     $v0, $s1, branch_0x800c889c
    addiu   $v1, $v1, 0x1
branch_0x800c88c0:
    beqz    $s4, branch_0x800c88f8
    nop
    bnez    $a0, branch_0x800c88f8
    addiu   $v0, $sp, 0x50
    or      $v1, $s4, $zero
branch_0x800c88d4:
    lbu     $t3, 0xc($v0)
    lbu     $t4, 0x0($v1)
    addiu   $v0, $v0, 0x1
    beq     $t3, $t4, branch_0x800c88f0
    nop
    b       branch_0x800c88f8
    addiu   $a0, $zero, 0x1
branch_0x800c88f0:
    bne     $v0, $s0, branch_0x800c88d4
    addiu   $v1, $v1, 0x1
branch_0x800c88f8:
    bnez    $a0, branch_0x800c8910
    nop
    lw      $t5, 0x8c($sp)
    or      $v0, $a2, $zero
    b       branch_0x800c8934
    sw      $s3, 0x0($t5)
branch_0x800c8910:
    lw      $t6, 0x50($s2)
    addiu   $s3, $s3, 0x1
    slt     $at, $s3, $t6
    bnez    $at, branch_0x800c8844
    nop
branch_0x800c8924:
    lw      $t8, 0x8c($sp)
    addiu   $t7, $zero, 0xffff
    addiu   $v0, $zero, 0x5
    sw      $t7, 0x0($t8)
branch_0x800c8934:
    lw      $ra, 0x3c($sp)
branch_0x800c8938:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    lw      $s7, 0x34($sp)
    lw      $fp, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x78

.globl Function_0x800c8964
Function_0x800c8964: # 0x800c8964
    nop
    nop
    nop

.globl Function_0x800c8970
Function_0x800c8970: # 0x800c8970
    addiu   $sp, $sp, 0xfeb0
    sw      $ra, 0x2c($sp)
    sw      $s5, 0x28($sp)
    sw      $s4, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    sw      $a1, 0x154($sp)
    lw      $t6, 0x0($a0)
    or      $s4, $a0, $zero
    andi    $t7, $t6, 0x1
    bnez    $t7, branch_0x800c89b0
    or      $s0, $zero, $zero
    b       branch_0x800c8af4
    addiu   $v0, $zero, 0x5
branch_0x800c89b0:
    jal     Function_0x800cdafc
    or      $a0, $s4, $zero
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800c89cc
    nop
    b       branch_0x800c8af4
    addiu   $v0, $zero, 0x2
branch_0x800c89cc:
    lbu     $t8, 0x64($s4)
    or      $s3, $zero, $zero
    blez    $t8, branch_0x800c8ae4
    addiu   $s5, $zero, 0x80
    addiu   $s2, $sp, 0x148
    addiu   $s1, $zero, 0x3
branch_0x800c89e4:
    or      $a0, $s4, $zero
    addiu   $a1, $sp, 0x48
    or      $a2, $zero, $zero
    jal     Function_0x800cdc14
    andi    $a3, $s3, 0xff
    beqz    $v0, branch_0x800c8a08
    nop
    b       branch_0x800c8af8
    lw      $ra, 0x2c($sp)
branch_0x800c8a08:
    blez    $s3, branch_0x800c8a18
    nop
    b       branch_0x800c8a20
    addiu   $a1, $zero, 0x1
branch_0x800c8a18:
    lw      $a1, 0x60($s4)
    nop
branch_0x800c8a20:
    slti    $at, $a1, 0x80
    beqz    $at, branch_0x800c8acc
    or      $v1, $a1, $zero
    subu    $a2, $s5, $a1
    andi    $t9, $a2, 0x3
    beqz    $t9, branch_0x800c8a68
    addu    $a0, $t9, $a1
    sll     $t0, $a1, 1
    addiu   $t1, $sp, 0x48
    addu    $v0, $t0, $t1
branch_0x800c8a48:
    lhu     $t2, 0x0($v0)
    addiu   $v1, $v1, 0x1
    bne     $s1, $t2, branch_0x800c8a5c
    nop
    addiu   $s0, $s0, 0x1
branch_0x800c8a5c:
    bne     $a0, $v1, branch_0x800c8a48
    addiu   $v0, $v0, 0x2
    beq     $v1, $s5, branch_0x800c8acc
branch_0x800c8a68:
    sll     $t3, $v1, 1
    addiu   $t4, $sp, 0x48
    addu    $v0, $t3, $t4
branch_0x800c8a74:
    lhu     $t5, 0x0($v0)
    nop
    bne     $s1, $t5, branch_0x800c8a88
    nop
    addiu   $s0, $s0, 0x1
branch_0x800c8a88:
    lhu     $t6, 0x2($v0)
    nop
    bne     $s1, $t6, branch_0x800c8a9c
    nop
    addiu   $s0, $s0, 0x1
branch_0x800c8a9c:
    lhu     $t7, 0x4($v0)
    nop
    bne     $s1, $t7, branch_0x800c8ab0
    nop
    addiu   $s0, $s0, 0x1
branch_0x800c8ab0:
    lhu     $t8, 0x6($v0)
    addiu   $v0, $v0, 0x8
    bne     $s1, $t8, branch_0x800c8ac4
    nop
    addiu   $s0, $s0, 0x1
branch_0x800c8ac4:
    bne     $v0, $s2, branch_0x800c8a74
    nop
branch_0x800c8acc:
    lbu     $t0, 0x64($s4)
    addiu   $s3, $s3, 0x1
    andi    $t9, $s3, 0xff
    slt     $at, $t9, $t0
    bnez    $at, branch_0x800c89e4
    or      $s3, $t9, $zero
branch_0x800c8ae4:
    lw      $t2, 0x154($sp)
    sll     $t1, $s0, 8
    or      $v0, $zero, $zero
    sw      $t1, 0x0($t2)
branch_0x800c8af4:
    lw      $ra, 0x2c($sp)
branch_0x800c8af8:
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    lw      $s4, 0x24($sp)
    lw      $s5, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x150

.globl Function_0x800c8b18
Function_0x800c8b18: # 0x800c8b18
    nop
    nop

.globl Function_0x800c8b20
Function_0x800c8b20: # 0x800c8b20
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    sw      $a1, 0x24($sp)
    sw      $a2, 0x28($sp)
    lbu     $t7, 0x0($a1)
    lbu     $v0, 0x0($a3)
    or      $s0, $a3, $zero
    beq     $v0, $t7, branch_0x800c8b74
    or      $t6, $a1, $zero
    sb      $v0, 0x0($a1)
    lbu     $a3, 0x0($t6)
    lw      $a1, 0x28($sp)
    sw      $a0, 0x20($sp)
    jal     Function_0x800cdc14
    or      $a2, $zero, $zero
    lw      $a0, 0x20($sp)
    beqz    $v0, branch_0x800c8b74
    nop
    b       branch_0x800c8bf4
    lw      $ra, 0x1c($sp)
branch_0x800c8b74:
    lbu     $t9, 0x1($s0)
    lw      $t8, 0x28($sp)
    sll     $t0, $t9, 1
    addu    $t1, $t8, $t0
    lhu     $at, 0x0($t1)
    nop
    sh      $at, 0x0($s0)
    lw      $t4, 0x60($a0)
    andi    $v1, $at, 0xffff
    slt     $at, $v1, $t4
    bnez    $at, branch_0x800c8bd8
    addiu   $at, $zero, 0x1
    lbu     $t5, 0x0($s0)
    lbu     $t7, 0x64($a0)
    nop
    slt     $at, $t5, $t7
    beqz    $at, branch_0x800c8bd8
    addiu   $at, $zero, 0x1
    lbu     $v0, 0x1($s0)
    nop
    blez    $v0, branch_0x800c8bd4
    slti    $at, $v0, 0x80
    bnez    $at, branch_0x800c8bf0
    or      $v0, $zero, $zero
branch_0x800c8bd4:
    addiu   $at, $zero, 0x1
branch_0x800c8bd8:
    bne     $v1, $at, branch_0x800c8be8
    nop
    b       branch_0x800c8bf0
    addiu   $v0, $zero, 0x5
branch_0x800c8be8:
    b       branch_0x800c8bf0
    addiu   $v0, $zero, 0x3
branch_0x800c8bf0:
    lw      $ra, 0x1c($sp)
branch_0x800c8bf4:
    lw      $s0, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x20

.globl Function_0x800c8c00
Function_0x800c8c00: # 0x800c8c00
    addiu   $sp, $sp, 0xfe88
    sw      $ra, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    sw      $a2, 0x180($sp)
    lw      $t6, 0x50($a0)
    andi    $s0, $a2, 0xff
    slt     $at, $a1, $t6
    or      $s1, $a3, $zero
    beqz    $at, branch_0x800c8c40
    or      $s2, $a0, $zero
    bgez    $a1, branch_0x800c8c4c
    lw      $v0, 0x188($sp)
branch_0x800c8c40:
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x5

.globl Function_0x800c8c48
Function_0x800c8c48: # 0x800c8c48
    lw      $v0, 0x188($sp)
branch_0x800c8c4c:
    nop
    blez    $v0, branch_0x800c8c60
    andi    $t7, $v0, 0x1f
    beqz    $t7, branch_0x800c8c68
    nop
branch_0x800c8c60:
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x5
branch_0x800c8c68:
    bltz    $s1, branch_0x800c8c78
    andi    $t8, $s1, 0x1f
    beqz    $t8, branch_0x800c8c80
    nop
branch_0x800c8c78:
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x5
branch_0x800c8c80:
    lw      $t9, 0x0($s2)
    or      $a0, $s2, $zero
    andi    $t0, $t9, 0x1
    bnez    $t0, branch_0x800c8c9c
    nop
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x5
branch_0x800c8c9c:
    jal     Function_0x800cdafc
    sw      $a1, 0x17c($sp)
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800c8cb8
    nop
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x2
branch_0x800c8cb8:
    lbu     $t1, 0x65($s2)
    or      $a0, $s2, $zero
    beqz    $t1, branch_0x800c8ce0
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s2)
    beqz    $v0, branch_0x800c8ce0
    nop
    b       branch_0x800c8f54
    lw      $ra, 0x34($sp)
branch_0x800c8ce0:
    lw      $t2, 0x5c($s2)
    lw      $t3, 0x17c($sp)
    lw      $a0, 0x4($s2)
    addu    $a2, $t2, $t3
    andi    $t4, $a2, 0xffff
    lw      $a1, 0x8($s2)
    or      $a2, $t4, $zero
    jal     Function_0x800ce990
    addiu   $a3, $sp, 0x154
    beqz    $v0, branch_0x800c8d18
    lhu     $t5, 0x15a($sp)
    b       branch_0x800c8f54
    lw      $ra, 0x34($sp)

.globl Function_0x800c8d14
Function_0x800c8d14: # 0x800c8d14
    lhu     $t5, 0x15a($sp)
branch_0x800c8d18:
    lw      $t6, 0x60($s2)
    lbu     $t7, 0x15a($sp)
    slt     $at, $t5, $t6
    bnez    $at, branch_0x800c8d54
    lhu     $t0, 0x15a($sp)
    lbu     $t8, 0x64($s2)
    lbu     $t9, 0x15b($sp)
    slt     $at, $t7, $t8
    beqz    $at, branch_0x800c8d54
    lhu     $t0, 0x15a($sp)
    blez    $t9, branch_0x800c8d50
    slti    $at, $t9, 0x80
    bnez    $at, branch_0x800c8d70
    nop
branch_0x800c8d50:
    lhu     $t0, 0x15a($sp)
branch_0x800c8d54:
    addiu   $at, $zero, 0x1
    bne     $t0, $at, branch_0x800c8d68
    nop
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x5
branch_0x800c8d68:
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x3
branch_0x800c8d70:
    bnez    $s0, branch_0x800c8d94
    sw      $s0, 0x3c($sp)
    lbu     $t2, 0x15c($sp)
    nop
    andi    $t3, $t2, 0x2
    bnez    $t3, branch_0x800c8d98
    addiu   $t4, $zero, 0xff
    b       branch_0x800c8f50
    addiu   $v0, $zero, 0x6
branch_0x800c8d94:
    addiu   $t4, $zero, 0xff
branch_0x800c8d98:
    sb      $t4, 0x43($sp)
    addiu   $t5, $sp, 0x15a
    addiu   $s4, $sp, 0x50
    bgez    $s1, branch_0x800c8db4
    sra     $v0, $s1, 5
    addiu   $at, $s1, 0x1f
    sra     $v0, $at, 5
branch_0x800c8db4:
    lhu     $at, 0x0($t5)
    or      $s0, $v0, $zero
    sh      $at, 0x0($s4)
    slti    $at, $v0, 0x8
    bnez    $at, branch_0x800c8df8
    or      $a0, $s2, $zero
branch_0x800c8dcc:
    addiu   $a1, $sp, 0x43
    addiu   $a2, $sp, 0x54
    jal     Function_0x800c8b20
    or      $a3, $s4, $zero
    beqz    $v0, branch_0x800c8dec
    addiu   $s0, $s0, 0xfff8
    b       branch_0x800c8f54
    lw      $ra, 0x34($sp)
branch_0x800c8dec:
    slti    $at, $s0, 0x8
    beqz    $at, branch_0x800c8dcc
    or      $a0, $s2, $zero
branch_0x800c8df8:
    lw      $v0, 0x188($sp)
    lw      $s1, 0x18c($sp)
    bgez    $v0, branch_0x800c8e10
    sra     $t9, $v0, 5
    addiu   $at, $v0, 0x1f
    sra     $t9, $at, 5
branch_0x800c8e10:
    blez    $t9, branch_0x800c8ed8
    or      $s3, $t9, $zero
branch_0x800c8e18:
    addiu   $at, $zero, 0x8
    bne     $s0, $at, branch_0x800c8e44
    or      $a0, $s2, $zero
    addiu   $a1, $sp, 0x43
    addiu   $a2, $sp, 0x54
    jal     Function_0x800c8b20
    or      $a3, $s4, $zero
    beqz    $v0, branch_0x800c8e44
    or      $s0, $zero, $zero
    b       branch_0x800c8f54
    lw      $ra, 0x34($sp)
branch_0x800c8e44:
    lbu     $t0, 0x50($sp)
    lbu     $t1, 0x65($s2)
    or      $a0, $s2, $zero
    beq     $t0, $t1, branch_0x800c8e74
    lbu     $t2, 0x51($sp)
    jal     Function_0x800cdeb0
    sb      $t0, 0x65($s2)
    beqz    $v0, branch_0x800c8e74
    lbu     $t2, 0x51($sp)
    b       branch_0x800c8f54
    lw      $ra, 0x34($sp)

.globl Function_0x800c8e70
Function_0x800c8e70: # 0x800c8e70
    lbu     $t2, 0x51($sp)
branch_0x800c8e74:
    lw      $t7, 0x3c($sp)
    sll     $t3, $t2, 3
    addu    $a2, $t3, $s0
    andi    $t4, $a2, 0xffff
    bnez    $t7, branch_0x800c8ea4
    or      $a2, $t4, $zero
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    jal     Function_0x800ce990
    or      $a3, $s1, $zero
    b       branch_0x800c8ebc
    or      $v1, $v0, $zero
branch_0x800c8ea4:
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    jal     Function_0x800ced20
    or      $a3, $s1, $zero
    or      $v1, $v0, $zero
branch_0x800c8ebc:
    beqz    $v0, branch_0x800c8ecc
    addiu   $s1, $s1, 0x20
    b       branch_0x800c8f50
    or      $v0, $v1, $zero
branch_0x800c8ecc:
    addiu   $s3, $s3, 0xffff
    bnez    $s3, branch_0x800c8e18
    addiu   $s0, $s0, 0x1
branch_0x800c8ed8:
    lw      $t6, 0x3c($sp)
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x800c8f50
    or      $v0, $zero, $zero
    lbu     $v0, 0x15c($sp)
    or      $a0, $s2, $zero
    andi    $t5, $v0, 0x2
    bnez    $t5, branch_0x800c8f4c
    ori     $t8, $v0, 0x2
    sb      $t8, 0x15c($sp)
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s2)
    beqz    $v0, branch_0x800c8f18
    addiu   $a3, $sp, 0x154
    b       branch_0x800c8f54
    lw      $ra, 0x34($sp)
branch_0x800c8f18:
    lw      $t9, 0x5c($s2)
    lw      $t1, 0x17c($sp)
    lw      $a0, 0x4($s2)
    addu    $a2, $t9, $t1
    andi    $t0, $a2, 0xffff
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    jal     Function_0x800ced20
    or      $a2, $t0, $zero
    beqz    $v0, branch_0x800c8f4c
    nop
    b       branch_0x800c8f54
    lw      $ra, 0x34($sp)
branch_0x800c8f4c:
    or      $v0, $zero, $zero
branch_0x800c8f50:
    lw      $ra, 0x34($sp)
branch_0x800c8f54:
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x178

.globl Function_0x800c8f70
Function_0x800c8f70: # 0x800c8f70
    addiu   $sp, $sp, 0xfd58
    sw      $a1, 0x2ac($sp)
    lhu     $t6, 0x2ae($sp)
    sw      $fp, 0x48($sp)
    sw      $s7, 0x44($sp)
    sw      $s5, 0x3c($sp)
    or      $s5, $a0, $zero
    or      $fp, $a3, $zero
    sw      $ra, 0x4c($sp)
    sw      $s6, 0x40($sp)
    sw      $s4, 0x38($sp)
    sw      $s3, 0x34($sp)
    sw      $s2, 0x30($sp)
    sw      $s1, 0x2c($sp)
    sw      $s0, 0x28($sp)
    sw      $a2, 0x2b0($sp)
    sw      $zero, 0x298($sp)
    sb      $zero, 0x6a($sp)
    beqz    $t6, branch_0x800c8fc8
    or      $s7, $zero, $zero
    bnez    $a2, branch_0x800c8fd4
    lw      $s1, 0x2bc($sp)
branch_0x800c8fc8:
    b       branch_0x800c9334
    addiu   $v0, $zero, 0x5

.globl Function_0x800c8fd0
Function_0x800c8fd0: # 0x800c8fd0
    lw      $s1, 0x2bc($sp)
branch_0x800c8fd4:
    lw      $t9, 0x0($s5)
    addiu   $s0, $s1, 0xff
    bgez    $s0, branch_0x800c8fec
    sra     $t8, $s0, 8
    addiu   $at, $s0, 0xff
    sra     $t8, $at, 8
branch_0x800c8fec:
    andi    $t1, $t9, 0x1
    or      $s0, $t8, $zero
    bnez    $t1, branch_0x800c9004
    or      $s3, $t8, $zero
    b       branch_0x800c9334
    addiu   $v0, $zero, 0x5
branch_0x800c9004:
    jal     Function_0x800cdafc
    or      $a0, $s5, $zero
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800c9020
    or      $a0, $s5, $zero
    b       branch_0x800c9334
    addiu   $v0, $zero, 0x2
branch_0x800c9020:
    lw      $s2, 0x2b8($sp)
    lw      $t2, 0x2c0($sp)
    lhu     $a1, 0x2ae($sp)
    lw      $a2, 0x2b0($sp)
    or      $a3, $fp, $zero
    sw      $s2, 0x10($sp)
    jal     Function_0x800c87d0
    sw      $t2, 0x14($sp)
    beqz    $v0, branch_0x800c9058
    addiu   $at, $zero, 0x5
    beq     $v0, $at, branch_0x800c905c
    lw      $t3, 0x2c0($sp)
    b       branch_0x800c9338
    lw      $ra, 0x4c($sp)
branch_0x800c9058:
    lw      $t3, 0x2c0($sp)
branch_0x800c905c:
    addiu   $at, $zero, 0xffff
    lw      $t4, 0x0($t3)
    or      $a0, $s5, $zero
    beq     $t4, $at, branch_0x800c9078
    nop
    b       branch_0x800c9334
    addiu   $v0, $zero, 0x9
branch_0x800c9078:
    jal     Function_0x800c8970
    addiu   $a1, $sp, 0x60
    lw      $t5, 0x60($sp)
    nop
    slt     $at, $t5, $s1
    beqz    $at, branch_0x800c909c
    nop
    b       branch_0x800c9334
    addiu   $v0, $zero, 0x7
branch_0x800c909c:
    beqz    $s0, branch_0x800c9334
    addiu   $v0, $zero, 0x5
    lw      $t6, 0x2c0($sp)
    or      $a0, $s5, $zero
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    or      $a3, $zero, $zero
    sw      $zero, 0x10($sp)
    jal     Function_0x800c87d0
    sw      $t6, 0x14($sp)
    beqz    $v0, branch_0x800c90dc
    addiu   $at, $zero, 0x5
    beq     $v0, $at, branch_0x800c90e0
    lw      $t7, 0x2c0($sp)
    b       branch_0x800c9338
    lw      $ra, 0x4c($sp)
branch_0x800c90dc:
    lw      $t7, 0x2c0($sp)
branch_0x800c90e0:
    addiu   $at, $zero, 0xffff
    lw      $t8, 0x0($t7)
    nop
    bne     $t8, $at, branch_0x800c90fc
    nop
    b       branch_0x800c9334
    addiu   $v0, $zero, 0x8
branch_0x800c90fc:
    lbu     $t9, 0x64($s5)
    or      $s1, $zero, $zero
    blez    $t9, branch_0x800c923c
    addiu   $s6, $sp, 0x8c
    addiu   $s4, $sp, 0x18c
    addiu   $s0, $sp, 0x28c
branch_0x800c9114:
    or      $a0, $s5, $zero
    or      $a1, $s4, $zero
    or      $a2, $zero, $zero
    jal     Function_0x800cdc14
    andi    $a3, $s1, 0xff
    beqz    $v0, branch_0x800c9138
    or      $a0, $s5, $zero
    b       branch_0x800c9338
    lw      $ra, 0x4c($sp)
branch_0x800c9138:
    addiu   $t1, $sp, 0x2a0
    addiu   $t2, $sp, 0x29c
    sw      $t2, 0x18($sp)
    sw      $t1, 0x14($sp)
    or      $a1, $s4, $zero
    or      $a2, $s3, $zero
    addiu   $a3, $sp, 0x2a4
    jal     Function_0x800c9364
    sw      $s1, 0x10($sp)
    beqz    $v0, branch_0x800c9170
    lw      $t0, 0x2a4($sp)
    b       branch_0x800c9338
    lw      $ra, 0x4c($sp)

.globl Function_0x800c916c
Function_0x800c916c: # 0x800c916c
    lw      $t0, 0x2a4($sp)
branch_0x800c9170:
    addiu   $at, $zero, 0xffff
    beq     $t0, $at, branch_0x800c9224
    nop
    bnez    $s7, branch_0x800c9190
    or      $a0, $s5, $zero
    sb      $t0, 0x5d($sp)
    b       branch_0x800c91c4
    sb      $s1, 0x5c($sp)
branch_0x800c9190:
    lw      $t3, 0x298($sp)
    or      $a1, $s6, $zero
    sll     $t4, $t3, 1
    addu    $v0, $s6, $t4
    sb      $s1, 0x0($v0)
    sb      $t0, 0x1($v0)
    lbu     $a3, 0x6a($sp)
    jal     Function_0x800cdc14
    addiu   $a2, $zero, 0x1
    beqz    $v0, branch_0x800c91c8
    addiu   $v1, $sp, 0x8c
    b       branch_0x800c9338
    lw      $ra, 0x4c($sp)
branch_0x800c91c4:
    addiu   $v1, $sp, 0x8c
branch_0x800c91c8:
    addiu   $v0, $sp, 0x18c
branch_0x800c91cc:
    lhu     $t6, 0x2($v0)
    lhu     $t7, 0x4($v0)
    lhu     $t8, 0x6($v0)
    lhu     $t5, 0x0($v0)
    addiu   $v0, $v0, 0x8
    addiu   $v1, $v1, 0x8
    sh      $t6, -0x6($v1)
    sh      $t7, -0x4($v1)
    sh      $t8, -0x2($v1)
    bne     $v0, $s0, branch_0x800c91cc
    sh      $t5, -0x8($v1)
    lw      $v0, 0x2a0($sp)
    lw      $t9, 0x29c($sp)
    slt     $at, $v0, $s3
    sb      $s1, 0x6a($sp)
    addiu   $s7, $s7, 0x1
    beqz    $at, branch_0x800c921c
    sw      $t9, 0x298($sp)
    b       branch_0x800c9224
    subu    $s3, $s3, $v0
branch_0x800c921c:
    b       branch_0x800c923c
    or      $s3, $zero, $zero
branch_0x800c9224:
    lbu     $t2, 0x64($s5)
    addiu   $s1, $s1, 0x1
    andi    $t1, $s1, 0xff
    slt     $at, $t1, $t2
    bnez    $at, branch_0x800c9114
    or      $s1, $t1, $zero
branch_0x800c923c:
    lw      $t0, 0x2a4($sp)
    bgtz    $s3, branch_0x800c9254
    addiu   $s6, $sp, 0x8c
    addiu   $at, $zero, 0xffff
    bne     $t0, $at, branch_0x800c925c
    or      $a0, $s5, $zero
branch_0x800c9254:
    b       branch_0x800c9334
    addiu   $v0, $zero, 0x3
branch_0x800c925c:
    lw      $t3, 0x298($sp)
    or      $a1, $s6, $zero
    sll     $t4, $t3, 1
    addu    $v0, $s6, $t4
    sb      $s1, 0x0($v0)
    sb      $t0, 0x1($v0)
    lbu     $a3, 0x6a($sp)
    jal     Function_0x800cdc14
    addiu   $a2, $zero, 0x1
    beqz    $v0, branch_0x800c9290
    addiu   $v1, $sp, 0x7c
    b       branch_0x800c9338
    lw      $ra, 0x4c($sp)
branch_0x800c9290:
    lhu     $t5, 0x5c($sp)
    lhu     $t6, 0x2ae($sp)
    lw      $t7, 0x2b0($sp)
    sh      $zero, 0x76($sp)
    addiu   $v0, $sp, 0x6c
    sh      $t5, 0x72($sp)
    sh      $t6, 0x70($sp)
    sw      $t7, 0x6c($sp)
branch_0x800c92b0:
    lbu     $t8, 0x0($fp)
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $v1
    addiu   $fp, $fp, 0x1
    bnez    $at, branch_0x800c92b0
    sb      $t8, 0xf($v0)
    lbu     $t9, 0x0($s2)
    lw      $t4, 0x2c0($sp)
    sb      $t9, 0x78($sp)
    lbu     $t1, 0x1($s2)
    addiu   $s2, $s2, 0x3
    sb      $t1, 0x79($sp)
    lbu     $t2, -0x1($s2)
    addiu   $a3, $sp, 0x6c
    sb      $t2, 0x7a($sp)
    lbu     $t3, 0x0($s2)
    nop
    sb      $t3, 0x7b($sp)
    lw      $t6, 0x5c($s5)
    lw      $t5, 0x0($t4)
    lw      $a1, 0x8($s5)
    addu    $a2, $t5, $t6
    andi    $t7, $a2, 0xffff
    lw      $a0, 0x4($s5)
    sw      $zero, 0x10($sp)
    jal     Function_0x800ced20
    or      $a2, $t7, $zero
    beqz    $v0, branch_0x800c932c
    or      $v1, $v0, $zero
    b       branch_0x800c9338
    lw      $ra, 0x4c($sp)
branch_0x800c932c:
    b       branch_0x800c9334
    or      $v0, $v1, $zero
branch_0x800c9334:
    lw      $ra, 0x4c($sp)
branch_0x800c9338:
    lw      $s0, 0x28($sp)
    lw      $s1, 0x2c($sp)
    lw      $s2, 0x30($sp)
    lw      $s3, 0x34($sp)
    lw      $s4, 0x38($sp)
    lw      $s5, 0x3c($sp)
    lw      $s6, 0x40($sp)
    lw      $s7, 0x44($sp)
    lw      $fp, 0x48($sp)
    jr      $ra
    addiu   $sp, $sp, 0x2a8

.globl Function_0x800c9364
Function_0x800c9364: # 0x800c9364
    addiu   $sp, $sp, 0xff80
    sw      $s4, 0x28($sp)
    lbu     $s4, 0x93($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    or      $s7, $a2, $zero
    or      $fp, $a1, $zero
    sw      $ra, 0x3c($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    sw      $a0, 0x80($sp)
    sw      $a3, 0x8c($sp)
    blez    $s4, branch_0x800c93b4
    or      $t0, $zero, $zero
    b       branch_0x800c93c4
    addiu   $v0, $zero, 0x1
branch_0x800c93b4:
    lw      $t6, 0x80($sp)
    nop
    lw      $v0, 0x60($t6)
    nop
branch_0x800c93c4:
    slti    $at, $v0, 0x80
    beqz    $at, branch_0x800c93fc
    or      $s1, $v0, $zero
    sll     $t7, $v0, 1
    addu    $s0, $fp, $t7
    addiu   $s6, $zero, 0x80
    addiu   $s3, $zero, 0x3
branch_0x800c93e0:
    lhu     $t8, 0x0($s0)
    nop
    beq     $s3, $t8, branch_0x800c93fc
    nop
    addiu   $s1, $s1, 0x1
    bne     $s1, $s6, branch_0x800c93e0
    addiu   $s0, $s0, 0x2
branch_0x800c93fc:
    addiu   $s6, $zero, 0x80
    bne     $s1, $s6, branch_0x800c941c
    addiu   $s3, $zero, 0x3
    lw      $t1, 0x8c($sp)
    addiu   $t9, $zero, 0xffff
    or      $v0, $zero, $zero
    b       branch_0x800c9534
    sw      $t9, 0x0($t1)
branch_0x800c941c:
    addiu   $v0, $sp, 0x54
    addiu   $v1, $sp, 0x74
branch_0x800c9424:
    addiu   $v0, $v0, 0x4
    sb      $zero, -0x3($v0)
    sb      $zero, -0x2($v0)
    sb      $zero, -0x1($v0)
    bne     $v0, $v1, branch_0x800c9424
    sb      $zero, -0x4($v0)
    lw      $s2, 0x94($sp)
    sw      $s1, 0x78($sp)
    addiu   $t2, $zero, 0x1
    or      $a1, $s1, $zero
    slti    $at, $s7, 0x2
    addiu   $s1, $s1, 0x1
    bnez    $at, branch_0x800c94d8
    sw      $t2, 0x0($s2)
    slti    $at, $s1, 0x80
    beqz    $at, branch_0x800c94d8
    sll     $t3, $s1, 1
    addu    $s0, $fp, $t3
    addiu   $s5, $sp, 0x54
branch_0x800c9470:
    lhu     $t4, 0x0($s0)
    sll     $t5, $a1, 1
    bne     $s3, $t4, branch_0x800c94b8
    addu    $v0, $fp, $t5
    sb      $s4, 0x0($v0)
    sb      $s1, 0x1($v0)
    lw      $a0, 0x80($sp)
    or      $a2, $s5, $zero
    jal     Function_0x800c9564
    andi    $a3, $s4, 0xff
    beqz    $v0, branch_0x800c94a8
    or      $t0, $v0, $zero
    b       branch_0x800c9538
    lw      $ra, 0x3c($sp)
branch_0x800c94a8:
    lw      $t6, 0x0($s2)
    or      $a1, $s1, $zero
    addiu   $t7, $t6, 0x1
    sw      $t7, 0x0($s2)
branch_0x800c94b8:
    lw      $t8, 0x0($s2)
    addiu   $s1, $s1, 0x1
    slt     $at, $t8, $s7
    beqz    $at, branch_0x800c94d8
    addiu   $s0, $s0, 0x2
    slti    $at, $s1, 0x80
    bnez    $at, branch_0x800c9470
    nop
branch_0x800c94d8:
    lw      $t9, 0x78($sp)
    lw      $t1, 0x8c($sp)
    addiu   $s5, $sp, 0x54
    bne     $s1, $s6, branch_0x800c9508
    sw      $t9, 0x0($t1)
    lw      $t2, 0x0($s2)
    lw      $t3, 0x98($sp)
    slt     $at, $t2, $s7
    beqz    $at, branch_0x800c9508
    or      $v0, $t0, $zero
    b       branch_0x800c9534
    sw      $a1, 0x0($t3)
branch_0x800c9508:
    sll     $t5, $a1, 1
    addu    $t6, $fp, $t5
    addiu   $t4, $zero, 0x1
    sh      $t4, 0x0($t6)
    lw      $a0, 0x80($sp)
    or      $a2, $s5, $zero
    jal     Function_0x800c9564
    andi    $a3, $s4, 0xff
    lw      $t7, 0x98($sp)
    nop
    sw      $zero, 0x0($t7)
branch_0x800c9534:
    lw      $ra, 0x3c($sp)
branch_0x800c9538:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    lw      $s7, 0x34($sp)
    lw      $fp, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x80

.globl Function_0x800c9564
Function_0x800c9564: # 0x800c9564
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    sw      $a3, 0x44($sp)
    or      $s2, $a0, $zero
    or      $s3, $a1, $zero
    or      $s4, $a2, $zero
    jal     Function_0x800cdeb0
    sb      $a3, 0x65($a0)
    beqz    $v0, branch_0x800c95a8
    or      $s0, $zero, $zero
    b       branch_0x800c95e8
    lw      $ra, 0x34($sp)
branch_0x800c95a8:
    sll     $s1, $s3, 3
    addiu   $s3, $zero, 0x8
branch_0x800c95b0:
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    andi    $a2, $s1, 0xffff
    jal     Function_0x800ced20
    or      $a3, $s4, $zero
    bnez    $v0, branch_0x800c95d8
    addiu   $s0, $s0, 0x1
    bne     $s0, $s3, branch_0x800c95b0
    addiu   $s1, $s1, 0x1
branch_0x800c95d8:
    sb      $zero, 0x65($s2)
    jal     Function_0x800cdeb0
    or      $a0, $s2, $zero
    lw      $ra, 0x34($sp)
branch_0x800c95e8:
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x800c9604
Function_0x800c9604: # 0x800c9604
    nop
    nop
    nop

.globl Function_0x800c9610
Function_0x800c9610: # 0x800c9610
    addiu   $sp, $sp, 0xfe80
    sw      $s0, 0x28($sp)
    andi    $s0, $a1, 0xffff
    sw      $s3, 0x34($sp)
    sw      $s2, 0x30($sp)
    sw      $s1, 0x2c($sp)
    or      $s1, $a2, $zero
    or      $s2, $a3, $zero
    or      $s3, $a0, $zero
    sw      $ra, 0x3c($sp)
    sw      $s4, 0x38($sp)
    sw      $a1, 0x184($sp)
    beqz    $s0, branch_0x800c9650
    sh      $zero, 0x52($sp)
    bnez    $a2, branch_0x800c9658
    nop
branch_0x800c9650:
    b       branch_0x800c9870
    addiu   $v0, $zero, 0x5
branch_0x800c9658:
    lw      $t6, 0x0($s3)
    nop
    andi    $t7, $t6, 0x1
    bnez    $t7, branch_0x800c9674
    nop
    b       branch_0x800c9870
    addiu   $v0, $zero, 0x5
branch_0x800c9674:
    jal     Function_0x800cdafc
    or      $a0, $s3, $zero
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800c9690
    nop
    b       branch_0x800c9870
    addiu   $v0, $zero, 0x2
branch_0x800c9690:
    lbu     $t8, 0x65($s3)
    or      $a0, $s3, $zero
    beqz    $t8, branch_0x800c96bc
    lw      $t9, 0x190($sp)
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s3)
    beqz    $v0, branch_0x800c96bc
    lw      $t9, 0x190($sp)
    b       branch_0x800c9874
    lw      $ra, 0x3c($sp)

.globl Function_0x800c96b8
Function_0x800c96b8: # 0x800c96b8
    lw      $t9, 0x190($sp)
branch_0x800c96bc:
    addiu   $t0, $sp, 0x17c
    sw      $t0, 0x14($sp)
    or      $a0, $s3, $zero
    andi    $a1, $s0, 0xffff
    or      $a2, $s1, $zero
    or      $a3, $s2, $zero
    jal     Function_0x800c87d0
    sw      $t9, 0x10($sp)
    beqz    $v0, branch_0x800c96f0
    lw      $t1, 0x17c($sp)
    b       branch_0x800c9874
    lw      $ra, 0x3c($sp)

.globl Function_0x800c96ec
Function_0x800c96ec: # 0x800c96ec
    lw      $t1, 0x17c($sp)
branch_0x800c96f0:
    addiu   $at, $zero, 0xffff
    bne     $t1, $at, branch_0x800c9704
    addiu   $a3, $sp, 0x54
    b       branch_0x800c9870
    addiu   $v0, $zero, 0x5
branch_0x800c9704:
    lw      $t2, 0x5c($s3)
    lw      $t3, 0x17c($sp)
    lw      $a0, 0x4($s3)
    addu    $a2, $t2, $t3
    andi    $t4, $a2, 0xffff
    lw      $a1, 0x8($s3)
    jal     Function_0x800ce990
    or      $a2, $t4, $zero
    beqz    $v0, branch_0x800c9738
    lbu     $s0, 0x5a($sp)
    b       branch_0x800c9874
    lw      $ra, 0x3c($sp)

.globl Function_0x800c9734
Function_0x800c9734: # 0x800c9734
    lbu     $s0, 0x5a($sp)
branch_0x800c9738:
    lbu     $v0, 0x64($s3)
    lbu     $s2, 0x5b($sp)
    slt     $at, $s0, $v0
    beqz    $at, branch_0x800c97fc
    or      $s4, $s0, $zero
    addiu   $s1, $sp, 0x74
branch_0x800c9750:
    or      $a0, $s3, $zero
    or      $a1, $s1, $zero
    or      $a2, $zero, $zero
    jal     Function_0x800cdc14
    andi    $a3, $s0, 0xff
    beqz    $v0, branch_0x800c9774
    or      $a0, $s3, $zero
    b       branch_0x800c9874
    lw      $ra, 0x3c($sp)
branch_0x800c9774:
    addiu   $t5, $sp, 0x50
    addiu   $t6, $zero, 0x1
    sw      $t6, 0x18($sp)
    sw      $t5, 0x14($sp)
    or      $a1, $s1, $zero
    andi    $a2, $s2, 0xff
    addiu   $a3, $sp, 0x52
    jal     Function_0x800c9890
    sw      $s0, 0x10($sp)
    beqz    $v0, branch_0x800c97a8
    or      $a0, $s3, $zero
    b       branch_0x800c9874
    lw      $ra, 0x3c($sp)
branch_0x800c97a8:
    or      $a1, $s1, $zero
    addiu   $a2, $zero, 0x1
    jal     Function_0x800cdc14
    andi    $a3, $s0, 0xff
    beqz    $v0, branch_0x800c97cc
    lhu     $t7, 0x50($sp)
    b       branch_0x800c9874
    lw      $ra, 0x3c($sp)

.globl Function_0x800c97c8
Function_0x800c97c8: # 0x800c97c8
    lhu     $t7, 0x50($sp)
branch_0x800c97cc:
    addiu   $at, $zero, 0x1
    bne     $t7, $at, branch_0x800c97e4
    nop
    lbu     $v0, 0x64($s3)
    b       branch_0x800c9800
    slt     $at, $s4, $v0
branch_0x800c97e4:
    lbu     $v0, 0x64($s3)
    lbu     $s0, 0x50($sp)
    lbu     $s2, 0x51($sp)
    slt     $at, $s0, $v0
    bnez    $at, branch_0x800c9750
    or      $s4, $s0, $zero
branch_0x800c97fc:
    slt     $at, $s4, $v0
branch_0x800c9800:
    bnez    $at, branch_0x800c9810
    addiu   $v0, $sp, 0x54
    b       branch_0x800c9870
    addiu   $v0, $zero, 0x3
branch_0x800c9810:
    sw      $zero, 0x54($sp)
    sh      $zero, 0x58($sp)
    sh      $zero, 0x5a($sp)
    sh      $zero, 0x5e($sp)
    addiu   $v1, $sp, 0x64
branch_0x800c9824:
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $v1
    bnez    $at, branch_0x800c9824
    sb      $zero, 0xf($v0)
    sb      $zero, 0x61($sp)
    sb      $zero, 0x62($sp)
    sb      $zero, 0x63($sp)
    sb      $zero, 0x60($sp)
    sb      $zero, 0x5c($sp)
    lw      $t8, 0x5c($s3)
    lw      $t9, 0x17c($sp)
    lw      $a1, 0x8($s3)
    addu    $a2, $t8, $t9
    andi    $t0, $a2, 0xffff
    lw      $a0, 0x4($s3)
    sw      $zero, 0x10($sp)
    or      $a2, $t0, $zero
    jal     Function_0x800ced20
    addiu   $a3, $sp, 0x54
branch_0x800c9870:
    lw      $ra, 0x3c($sp)
branch_0x800c9874:
    lw      $s0, 0x28($sp)
    lw      $s1, 0x2c($sp)
    lw      $s2, 0x30($sp)
    lw      $s3, 0x34($sp)
    lw      $s4, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x180

.globl Function_0x800c9890
Function_0x800c9890: # 0x800c9890
    addiu   $sp, $sp, 0xffb0
    sw      $a2, 0x58($sp)
    lbu     $t6, 0x5b($sp)
    sw      $ra, 0x34($sp)
    sll     $t7, $t6, 1
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    addu    $v1, $a1, $t7
    lhu     $at, 0x0($v1)
    addiu   $s4, $sp, 0x4c
    sh      $at, 0x0($s4)
    lhu     $t1, 0x4c($sp)
    addiu   $s0, $zero, 0x1
    or      $s2, $a0, $zero
    or      $s3, $a1, $zero
    beq     $s0, $t1, branch_0x800c9910
    or      $s6, $a3, $zero
    lbu     $t2, 0x4c($sp)
    lbu     $s1, 0x63($sp)
    blez    $t2, branch_0x800c9900
    nop
    b       branch_0x800c9908
    or      $v0, $s0, $zero
branch_0x800c9900:
    lw      $v0, 0x60($s2)
    nop
branch_0x800c9908:
    b       branch_0x800c9934
    lbu     $t3, 0x4d($sp)
branch_0x800c9910:
    lbu     $s1, 0x63($sp)
    nop
    blez    $s1, branch_0x800c9928
    nop
    b       branch_0x800c9930
    or      $v0, $s0, $zero
branch_0x800c9928:
    lw      $v0, 0x60($s2)
    nop
branch_0x800c9930:
    lbu     $t3, 0x4d($sp)
branch_0x800c9934:
    lhu     $t4, 0x4c($sp)
    slt     $at, $t3, $v0
    beqz    $at, branch_0x800c9954
    or      $a0, $s2, $zero
    beq     $s0, $t4, branch_0x800c9958
    lw      $t5, 0x64($sp)
    b       branch_0x800c9a6c
    addiu   $v0, $zero, 0x3
branch_0x800c9954:
    lw      $t5, 0x64($sp)
branch_0x800c9958:
    lhu     $at, 0x0($s4)
    addiu   $s5, $zero, 0x3
    sh      $at, 0x0($t5)
    lw      $t9, 0x68($sp)
    or      $a2, $s6, $zero
    bne     $t9, $s0, branch_0x800c9978
    andi    $a3, $s1, 0xff
    sh      $s5, 0x0($v1)
branch_0x800c9978:
    lbu     $a1, 0x5b($sp)
    jal     Function_0x800c9a94
    addiu   $s5, $zero, 0x3
    beqz    $v0, branch_0x800c9998
    lhu     $t8, 0x4c($sp)
    b       branch_0x800c9a70
    lw      $ra, 0x34($sp)

.globl Function_0x800c9994
Function_0x800c9994: # 0x800c9994
    lhu     $t8, 0x4c($sp)
branch_0x800c9998:
    lhu     $t0, 0x4c($sp)
    bne     $s0, $t8, branch_0x800c99ac
    nop
    b       branch_0x800c9a6c
    or      $v0, $zero, $zero
branch_0x800c99ac:
    lw      $v0, 0x60($s2)
    addiu   $s0, $sp, 0x48
    slt     $at, $t0, $v0
    bnez    $at, branch_0x800c9a44
    lhu     $t3, 0x4c($sp)
branch_0x800c99c0:
    lhu     $at, 0x0($s4)
    or      $a0, $s2, $zero
    sh      $at, 0x0($s0)
    lbu     $t3, 0x4d($sp)
    or      $a2, $s6, $zero
    sll     $t4, $t3, 1
    addu    $t6, $s3, $t4
    lhu     $at, 0x0($t6)
    andi    $a3, $s1, 0xff
    sh      $at, 0x0($s4)
    lbu     $a1, 0x49($sp)
    nop
    sll     $t8, $a1, 1
    addu    $t0, $s3, $t8
    jal     Function_0x800c9a94
    sh      $s5, 0x0($t0)
    beqz    $v0, branch_0x800c9a14
    lbu     $t1, 0x4c($sp)
    b       branch_0x800c9a70
    lw      $ra, 0x34($sp)

.globl Function_0x800c9a10
Function_0x800c9a10: # 0x800c9a10
    lbu     $t1, 0x4c($sp)
branch_0x800c9a14:
    lhu     $t2, 0x4c($sp)
    beq     $s1, $t1, branch_0x800c9a2c
    nop
    lw      $v0, 0x60($s2)
    b       branch_0x800c9a44
    lhu     $t3, 0x4c($sp)
branch_0x800c9a2c:
    lw      $v0, 0x60($s2)
    nop
    slt     $at, $t2, $v0
    beqz    $at, branch_0x800c99c0
    nop
    lhu     $t3, 0x4c($sp)
branch_0x800c9a44:
    lbu     $t4, 0x4d($sp)
    slt     $at, $t3, $v0
    bnez    $at, branch_0x800c9a5c
    sll     $t5, $t4, 1
    addu    $t6, $s3, $t5
    sh      $s5, 0x0($t6)
branch_0x800c9a5c:
    lw      $t7, 0x64($sp)
    lhu     $at, 0x0($s4)
    or      $v0, $zero, $zero
    sh      $at, 0x0($t7)
branch_0x800c9a6c:
    lw      $ra, 0x34($sp)
branch_0x800c9a70:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x800c9a94
Function_0x800c9a94: # 0x800c9a94
    addiu   $sp, $sp, 0xffa0
    sw      $ra, 0x2c($sp)
    sw      $s5, 0x28($sp)
    sw      $s4, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    sw      $a1, 0x64($sp)
    sw      $a3, 0x6c($sp)
    andi    $s1, $a1, 0xff
    or      $s2, $a2, $zero
    or      $s3, $a0, $zero
    jal     Function_0x800cdeb0
    sb      $a3, 0x65($a0)
    beqz    $v0, branch_0x800c9ae0
    or      $s0, $zero, $zero
    b       branch_0x800c9b58
    lw      $ra, 0x2c($sp)
branch_0x800c9ae0:
    sll     $s4, $s1, 3
    addiu   $s1, $sp, 0x38
    addiu   $s5, $zero, 0x8
branch_0x800c9aec:
    addu    $a2, $s4, $s0
    andi    $t7, $a2, 0xffff
    lw      $a0, 0x4($s3)
    lw      $a1, 0x8($s3)
    or      $a2, $t7, $zero
    jal     Function_0x800ce990
    or      $a3, $s1, $zero
    beqz    $v0, branch_0x800c9b2c
    or      $a0, $s1, $zero
    sb      $zero, 0x65($s3)
    sw      $v0, 0x58($sp)
    jal     Function_0x800cdeb0
    or      $a0, $s3, $zero
    lw      $v0, 0x58($sp)
    b       branch_0x800c9b58
    lw      $ra, 0x2c($sp)
branch_0x800c9b2c:
    jal     Function_0x800cd2d0
    addiu   $a1, $zero, 0x20
    lhu     $t8, 0x0($s2)
    addiu   $s0, $s0, 0x1
    addu    $t9, $v0, $t8
    bne     $s0, $s5, branch_0x800c9aec
    sh      $t9, 0x0($s2)
    sb      $zero, 0x65($s3)
    jal     Function_0x800cdeb0
    or      $a0, $s3, $zero
    lw      $ra, 0x2c($sp)
branch_0x800c9b58:
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    lw      $s4, 0x24($sp)
    lw      $s5, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x60

.globl Function_0x800c9b78
Function_0x800c9b78: # 0x800c9b78
    nop
    nop

.globl osPhysicalToVirtual
osPhysicalToVirtual: # 0x800c9b80
    lui     $at, %hi(0x80000000)
    jr      $ra
    or      $v0, $a0, $at

.globl Function_0x800c9b8c
Function_0x800c9b8c: # 0x800c9b8c
    nop

.globl Function_0x800c9b90
Function_0x800c9b90: # 0x800c9b90
    addiu   $sp, $sp, 0xffa8
    sw      $ra, 0x24($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    sw      $a1, 0x5c($sp)
    sw      $a2, 0x60($sp)
    lw      $t6, 0x0($a0)
    or      $s1, $a0, $zero
    andi    $t7, $t6, 0x1
    bnez    $t7, branch_0x800c9bcc
    or      $s2, $zero, $zero
    b       branch_0x800c9c9c
    addiu   $v0, $zero, 0x5
branch_0x800c9bcc:
    jal     Function_0x800cdafc
    or      $a0, $s1, $zero
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800c9be8
    nop
    b       branch_0x800c9c9c
    addiu   $v0, $zero, 0x2
branch_0x800c9be8:
    lbu     $t8, 0x65($s1)
    or      $a0, $s1, $zero
    beqz    $t8, branch_0x800c9c10
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s1)
    beqz    $v0, branch_0x800c9c10
    nop
    b       branch_0x800c9ca0
    lw      $ra, 0x24($sp)
branch_0x800c9c10:
    lw      $t9, 0x50($s1)
    or      $s0, $zero, $zero
    blez    $t9, branch_0x800c9c80
    addiu   $s3, $sp, 0x30
branch_0x800c9c20:
    lw      $t0, 0x5c($s1)
    lw      $a0, 0x4($s1)
    addu    $a2, $t0, $s0
    andi    $t1, $a2, 0xffff
    lw      $a1, 0x8($s1)
    or      $a2, $t1, $zero
    jal     Function_0x800ce990
    or      $a3, $s3, $zero
    beqz    $v0, branch_0x800c9c54
    lhu     $t2, 0x34($sp)
    b       branch_0x800c9ca0
    lw      $ra, 0x24($sp)

.globl Function_0x800c9c50
Function_0x800c9c50: # 0x800c9c50
    lhu     $t2, 0x34($sp)
branch_0x800c9c54:
    lw      $t3, 0x30($sp)
    beqz    $t2, branch_0x800c9c6c
    nop
    beqz    $t3, branch_0x800c9c6c
    nop
    addiu   $s2, $s2, 0x1
branch_0x800c9c6c:
    lw      $t4, 0x50($s1)
    addiu   $s0, $s0, 0x1
    slt     $at, $s0, $t4
    bnez    $at, branch_0x800c9c20
    nop
branch_0x800c9c80:
    lw      $t5, 0x60($sp)
    or      $v0, $zero, $zero
    sw      $s2, 0x0($t5)
    lw      $t7, 0x5c($sp)
    lw      $t6, 0x50($s1)
    nop
    sw      $t6, 0x0($t7)
branch_0x800c9c9c:
    lw      $ra, 0x24($sp)
branch_0x800c9ca0:
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x800c9cb8
Function_0x800c9cb8: # 0x800c9cb8
    nop
    nop

.globl Function_0x800c9cc0
Function_0x800c9cc0: # 0x800c9cc0
    addiu   $sp, $sp, 0xfe90
    sw      $ra, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lw      $t6, 0x50($a0)
    or      $s0, $a1, $zero
    slt     $at, $a1, $t6
    or      $s2, $a0, $zero
    beqz    $at, branch_0x800c9cfc
    or      $s4, $a2, $zero
    bgez    $a1, branch_0x800c9d04
    nop
branch_0x800c9cfc:
    b       branch_0x800c9f44
    addiu   $v0, $zero, 0x5
branch_0x800c9d04:
    lw      $t7, 0x0($s2)
    nop
    andi    $t8, $t7, 0x1
    bnez    $t8, branch_0x800c9d20
    nop
    b       branch_0x800c9f44
    addiu   $v0, $zero, 0x5
branch_0x800c9d20:
    jal     Function_0x800cdafc
    or      $a0, $s2, $zero
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800c9d3c
    nop
    b       branch_0x800c9f44
    addiu   $v0, $zero, 0x2
branch_0x800c9d3c:
    lbu     $t9, 0x65($s2)
    or      $a0, $s2, $zero
    beqz    $t9, branch_0x800c9d64
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s2)
    beqz    $v0, branch_0x800c9d64
    nop
    b       branch_0x800c9f48
    lw      $ra, 0x2c($sp)
branch_0x800c9d64:
    lw      $t2, 0x5c($s2)
    lw      $a0, 0x4($s2)
    addu    $a2, $t2, $s0
    andi    $t3, $a2, 0xffff
    lw      $a1, 0x8($s2)
    or      $a2, $t3, $zero
    jal     Function_0x800ce990
    addiu   $a3, $sp, 0x48
    beqz    $v0, branch_0x800c9d98
    lhu     $t4, 0x4c($sp)
    b       branch_0x800c9f48
    lw      $ra, 0x2c($sp)

.globl Function_0x800c9d94
Function_0x800c9d94: # 0x800c9d94
    lhu     $t4, 0x4c($sp)
branch_0x800c9d98:
    lw      $t5, 0x48($sp)
    beqz    $t4, branch_0x800c9dac
    nop
    bnez    $t5, branch_0x800c9db8
    lhu     $t6, 0x4e($sp)
branch_0x800c9dac:
    b       branch_0x800c9f44
    addiu   $v0, $zero, 0x5

.globl Function_0x800c9db4
Function_0x800c9db4: # 0x800c9db4
    lhu     $t6, 0x4e($sp)
branch_0x800c9db8:
    lw      $t7, 0x60($s2)
    lbu     $s3, 0x4e($sp)
    slt     $at, $t6, $t7
    beqz    $at, branch_0x800c9dd4
    or      $v1, $zero, $zero
    b       branch_0x800c9f44
    addiu   $v0, $zero, 0x3
branch_0x800c9dd4:
    lbu     $t8, 0x64($s2)
    lbu     $t1, 0x4f($sp)
    slt     $at, $s3, $t8
    beqz    $at, branch_0x800c9ec4
    or      $t0, $s3, $zero
    addiu   $s1, $sp, 0x44
    addiu   $s0, $sp, 0x68
    or      $a0, $s2, $zero
branch_0x800c9df4:
    or      $a1, $s0, $zero
    or      $a2, $zero, $zero
    andi    $a3, $s3, 0xff
    sw      $v1, 0x168($sp)
    sw      $t0, 0x38($sp)
    jal     Function_0x800cdc14
    sb      $t1, 0x3e($sp)
    lbu     $t1, 0x3e($sp)
    lw      $v1, 0x168($sp)
    lw      $t0, 0x38($sp)
    beqz    $v0, branch_0x800c9e2c
    sll     $t9, $t1, 1
    b       branch_0x800c9f48
    lw      $ra, 0x2c($sp)
branch_0x800c9e2c:
    addu    $t2, $s0, $t9
    lhu     $at, 0x0($t2)
    addiu   $v1, $v1, 0x1
    sh      $at, 0x0($s1)
    lw      $t6, 0x60($s2)
    lhu     $t5, 0x44($sp)
    nop
    slt     $at, $t5, $t6
    bnez    $at, branch_0x800c9ea4
    lhu     $t7, 0x44($sp)
    lbu     $t7, 0x45($sp)
branch_0x800c9e58:
    addiu   $v1, $v1, 0x1
    sll     $t8, $t7, 1
    addu    $t9, $s0, $t8
    lhu     $at, 0x0($t9)
    nop
    sh      $at, 0x0($s1)
    lbu     $t4, 0x44($sp)
    lhu     $t5, 0x44($sp)
    beq     $t0, $t4, branch_0x800c9e8c
    nop
    lbu     $t1, 0x45($sp)
    b       branch_0x800c9ea0
    or      $s3, $t4, $zero
branch_0x800c9e8c:
    lw      $t6, 0x60($s2)
    nop
    slt     $at, $t5, $t6
    beqz    $at, branch_0x800c9e58
    lbu     $t7, 0x45($sp)
branch_0x800c9ea0:
    lhu     $t7, 0x44($sp)
branch_0x800c9ea4:
    addiu   $at, $zero, 0x1
    beq     $t7, $at, branch_0x800c9ec8
    lhu     $t3, 0x44($sp)
    lbu     $t8, 0x64($s2)
    or      $t0, $s3, $zero
    slt     $at, $s3, $t8
    bnez    $at, branch_0x800c9df4
    or      $a0, $s2, $zero
branch_0x800c9ec4:
    lhu     $t3, 0x44($sp)
branch_0x800c9ec8:
    addiu   $at, $zero, 0x1
    beq     $t3, $at, branch_0x800c9edc
    sll     $t9, $v1, 8
    b       branch_0x800c9f44
    addiu   $v0, $zero, 0x3
branch_0x800c9edc:
    sw      $t9, 0x0($s4)
    lhu     $t2, 0x4c($sp)
    or      $a0, $s4, $zero
    sh      $t2, 0x8($s4)
    lw      $t4, 0x48($sp)
    addiu   $v0, $sp, 0x48
    addiu   $v1, $sp, 0x58
    sw      $t4, 0x4($s4)
branch_0x800c9efc:
    lbu     $t5, 0x10($v0)
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $v1
    addiu   $a0, $a0, 0x1
    bnez    $at, branch_0x800c9efc
    sb      $t5, 0xd($a0)
    lbu     $t6, 0x54($sp)
    or      $v0, $zero, $zero
    sb      $t6, 0xa($s4)
    lbu     $t7, 0x55($sp)
    nop
    sb      $t7, 0xb($s4)
    lbu     $t8, 0x56($sp)
    nop
    sb      $t8, 0xc($s4)
    lbu     $t3, 0x57($sp)
    nop
    sb      $t3, 0xd($s4)
branch_0x800c9f44:
    lw      $ra, 0x2c($sp)
branch_0x800c9f48:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x170

.globl Function_0x800c9f64
Function_0x800c9f64: # 0x800c9f64
    nop
    nop
    nop

.globl Function_0x800c9f70
Function_0x800c9f70: # 0x800c9f70
    addiu   $sp, $sp, 0xffe0
    sw      $a0, 0x20($sp)
    addiu   $t6, $sp, 0x24
    sw      $ra, 0x14($sp)
    sw      $a1, 0x24($sp)
    sw      $a2, 0x28($sp)
    sw      $a3, 0x2c($sp)
    addiu   $t7, $t6, 0x4
    lui     $a0, %hi(Function_0x800c9fdc)
    sw      $t7, 0x18($sp)
    addiu   $a0, $a0, %lo(Function_0x800c9fdc)
    or      $a3, $t7, $zero
    lw      $a2, 0x24($sp)
    jal     Function_0x800cf0b0
    lw      $a1, 0x20($sp)
    sw      $v0, 0x1c($sp)
    lw      $t8, 0x1c($sp)
    bltz    $t8, branch_0x800c9fc8
    nop
    lw      $t9, 0x20($sp)
    addu    $t0, $t9, $t8
    sb      $zero, 0x0($t0)
branch_0x800c9fc8:
    lw      $ra, 0x14($sp)
    lw      $v0, 0x1c($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x800c9fdc
Function_0x800c9fdc: # 0x800c9fdc
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    sw      $a1, 0x1c($sp)
    sw      $a2, 0x20($sp)
    lw      $a2, 0x20($sp)
    lw      $a1, 0x1c($sp)
    jal     memcpy
    lw      $a0, 0x18($sp)
    lw      $ra, 0x14($sp)
    lw      $t6, 0x20($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    addu    $v0, $v0, $t6

.globl Function_0x800ca014
Function_0x800ca014: # 0x800ca014
    nop
    nop
    nop

.globl osInvalDCache
osInvalDCache: # 0x800ca020
    blez    $a1, branch_0x800ca0a0
    nop
    addiu   $t3, $zero, 0x2000
    sltu    $at, $a1, $t3
    beqz    $at, branch_0x800ca0a8
    nop
    or      $t0, $a0, $zero
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, branch_0x800ca0a0
    nop
    andi    $t2, $t0, 0xf
    beqz    $t2, branch_0x800ca070
    addiu   $t1, $t1, 0xfff0
    subu    $t0, $t0, $t2
    cache   21, 0x0($t0)
    sltu    $at, $t0, $t1
    beqz    $at, branch_0x800ca0a0
    nop
    addiu   $t0, $t0, 0x10
branch_0x800ca070:
    andi    $t2, $t1, 0xf
    beqz    $t2, branch_0x800ca090
    nop
    subu    $t1, $t1, $t2
    cache   21, 0x10($t1)
    sltu    $at, $t1, $t0
    bnez    $at, branch_0x800ca0a0
    nop
branch_0x800ca090:
    cache   17, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x800ca090
    addiu   $t0, $t0, 0x10
branch_0x800ca0a0:
    jr      $ra
    nop
branch_0x800ca0a8:
    lui     $t0, 0x8000
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, 0xfff0
branch_0x800ca0b4:
    cache   1, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x800ca0b4
    addiu   $t0, $t0, 0x10
    jr      $ra
    nop

.globl Function_0x800ca0cc
Function_0x800ca0cc: # 0x800ca0cc
    nop


/* Input:
a0
a1
a2
a3: cart adr
sp+0x38: ram adr
sp+0x3c: length
sp+0x40:
*/
.globl osPiStartDma
osPiStartDma: # 0x800ca0d0
    addiu   $sp, $sp, 0xffd8
    lui     $t6, %hi(Unknown_0x800e8d30)
    lw      $t6, %lo(Unknown_0x800e8d30)($t6)
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    sw      $a2, 0x30($sp)
    sw      $a3, 0x34($sp)
    sw      $s1, 0x18($sp)

    bnez    $t6, branch_0x800ca104
    sw      $s0, 0x14($sp)

    b       branch_0x800ca1c0
    addiu   $v0, $zero, 0xffff

branch_0x800ca104:
    lw      $t7, 0x30($sp) # a2
    bnez    $t7, branch_0x800ca120
    nop

    lw      $t9, 0x28($sp) # a0
    addiu   $t8, $zero, 0xb
    b       branch_0x800ca12c
    sh      $t8, 0x0($t9)

branch_0x800ca120:
    lw      $t1, 0x28($sp) # a0
    addiu   $t0, $zero, 0xc
    sh      $t0, 0x0($t1)

branch_0x800ca12c:
    lw      $t2, 0x2c($sp) # a1
    lw      $t3, 0x28($sp) # a0
    addiu   $at, $zero, 0x1
    sb      $t2, 0x2($t3)
    lw      $t5, 0x28($sp) # a0
    lw      $t4, 0x40($sp)
    sw      $t4, 0x4($t5)
    lw      $t7, 0x28($sp) # a0
    lw      $t6, 0x38($sp)
    sw      $t6, 0x8($t7)
    lw      $t9, 0x28($sp) # a0
    lw      $t8, 0x34($sp) # a3
    sw      $t8, 0xc($t9)
    lw      $t1, 0x28($sp) # a0
    lw      $t0, 0x3c($sp)
    sw      $t0, 0x10($t1)
    lw      $t2, 0x2c($sp) # a1
    bne     $t2, $at, branch_0x800ca19c
    nop

    jal     osPiGetCmdQueue
    nop
    or      $s1, $v0, $zero
    or      $a0, $s1, $zero
    lw      $a1, 0x28($sp) # a0
    jal     osJamMesg
    or      $a2, $zero, $zero
    b       branch_0x800ca1bc
    or      $s0, $v0, $zero

branch_0x800ca19c:
    jal     osPiGetCmdQueue
    nop

    or      $s1, $v0, $zero
    or      $a0, $s1, $zero
    lw      $a1, 0x28($sp) # a0
    jal     osSendMesg
    or      $a2, $zero, $zero

    or      $s0, $v0, $zero
branch_0x800ca1bc:
    or      $v0, $s0, $zero

branch_0x800ca1c0:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp) # s1
    jr      $ra
    addiu   $sp, $sp, 0x28


.globl Function_0x800ca1d4
Function_0x800ca1d4: # 0x800ca1d4
    nop
    nop
    nop

.globl osInvalICache
osInvalICache: # 0x800ca1e0
    blez    $a1, branch_0x800ca228
    nop
    addiu   $t3, $zero, 0x4000
    sltu    $at, $a1, $t3
    beqz    $at, branch_0x800ca230
    nop
    or      $t0, $a0, $zero
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, branch_0x800ca228
    nop
    andi    $t2, $t0, 0x1f
    addiu   $t1, $t1, 0xffe0
    subu    $t0, $t0, $t2
branch_0x800ca218:
    cache   16, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x800ca218
    addiu   $t0, $t0, 0x20
branch_0x800ca228:
    jr      $ra
    nop
branch_0x800ca230:
    lui     $t0, 0x8000
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, 0xffe0
branch_0x800ca23c:
    cache   0, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x800ca23c
    addiu   $t0, $t0, 0x20
    jr      $ra
    nop

.globl Function_0x800ca254
Function_0x800ca254: # 0x800ca254
    nop
    nop
    nop

.globl bzero
bzero: # 0x800ca260
    slti    $at, $a1, 0xc
    bnez    $at, branch_0x800ca2dc
    subu    $v1, $zero, $a0
    andi    $v1, $v1, 0x3
    beqz    $v1, branch_0x800ca280
    subu    $a1, $a1, $v1
    swl     $zero, 0x0($a0)
    addu    $a0, $a0, $v1
branch_0x800ca280:
    addiu   $at, $zero, 0xffe0
    and     $a3, $a1, $at
    beqz    $a3, branch_0x800ca2bc
    subu    $a1, $a1, $a3
    addu    $a3, $a3, $a0
branch_0x800ca294:
    addiu   $a0, $a0, 0x20
    sw      $zero, -0x20($a0)
    sw      $zero, -0x1c($a0)
    sw      $zero, -0x18($a0)
    sw      $zero, -0x14($a0)
    sw      $zero, -0x10($a0)
    sw      $zero, -0xc($a0)
    sw      $zero, -0x8($a0)
    bne     $a0, $a3, branch_0x800ca294
    sw      $zero, -0x4($a0)
branch_0x800ca2bc:
    addiu   $at, $zero, 0xfffc
    and     $a3, $a1, $at
    beqz    $a3, branch_0x800ca2dc
    subu    $a1, $a1, $a3
    addu    $a3, $a3, $a0
branch_0x800ca2d0:
    addiu   $a0, $a0, 0x4
    bne     $a0, $a3, branch_0x800ca2d0
    sw      $zero, -0x4($a0)
branch_0x800ca2dc:
    blez    $a1, branch_0x800ca2f4
    nop
    addu    $a1, $a1, $a0
branch_0x800ca2e8:
    addiu   $a0, $a0, 0x1
    bne     $a0, $a1, branch_0x800ca2e8
    sb      $zero, -0x1($a0)
branch_0x800ca2f4:
    jr      $ra
    nop

.globl Function_0x800ca2fc
Function_0x800ca2fc: # 0x800ca2fc
    nop

.globl osAiSetFrequency
osAiSetFrequency: # 0x800ca300
    lui     $t6, 0x800f
    lw      $t6, -0x71c4($t6)
    mtc1    $a0, $t0
    addiu   $sp, $sp, 0xfff0
    mtc1    $t6, $a0
    cvt.s.w $f10, $f8
    bgez    $a0, branch_0x800ca330
    cvt.s.w $f6, $f4
    lui     $at, 0x4f80
    mtc1    $at, $s0
    nop
    add.s   $f10, $f10, $f16
branch_0x800ca330:
    div.s   $f18, $f6, $f10
    lui     $at, 0x3f00
    mtc1    $at, $a0
    addiu   $a1, $zero, 0x1
    add.s   $f12, $f18, $f4
    cfc1    $t7, $ra
    ctc1    $a1, $ra
    nop
    cvt.w.s $f8, $f12
    cfc1    $a1, $ra
    nop
    andi    $at, $a1, 0x4
    andi    $a1, $a1, 0x78
    beqz    $a1, branch_0x800ca3b4
    lui     $at, 0x4f00
    mtc1    $at, $t0
    addiu   $a1, $zero, 0x1
    sub.s   $f8, $f12, $f8
    ctc1    $a1, $ra
    nop
    cvt.w.s $f8, $f8
    cfc1    $a1, $ra
    nop
    andi    $at, $a1, 0x4
    andi    $a1, $a1, 0x78
    bnez    $a1, branch_0x800ca3ac
    nop
    mfc1    $a1, $t0
    lui     $at, 0x8000
    b       branch_0x800ca3c4
    or      $a1, $a1, $at
branch_0x800ca3ac:
    b       branch_0x800ca3c4
    addiu   $a1, $zero, 0xffff
branch_0x800ca3b4:
    mfc1    $a1, $t0
    nop
    bltz    $a1, branch_0x800ca3ac
    nop
branch_0x800ca3c4:
    ctc1    $t7, $ra
    sltiu   $at, $a1, 0x84
    beqz    $at, branch_0x800ca3dc
    nop
    b       branch_0x800ca458
    addiu   $v0, $zero, 0xffff
branch_0x800ca3dc:
    addiu   $at, $zero, 0x42
    divu    $zero, $a1, $at
    mflo    $a2
    andi    $t8, $a2, 0xff
    or      $a2, $t8, $zero
    slti    $at, $a2, 0x11
    bnez    $at, branch_0x800ca400
    nop
    addiu   $a2, $zero, 0x10
branch_0x800ca400:
    addiu   $t9, $a1, 0xffff
    lui     $t0, 0xa450
    sw      $t9, 0x10($t0)
    addiu   $t1, $a2, 0xffff
    lui     $t2, 0xa450
    sw      $t1, 0x14($t2)
    addiu   $t3, $zero, 0x1
    lui     $t4, 0xa450
    sw      $t3, 0x8($t4)
    lui     $t5, 0x800f
    lw      $t5, -0x71c4($t5)
    div     $zero, $t5, $a1
    mflo    $v0
    bnez    $a1, branch_0x800ca440
    nop
    break   0x7
branch_0x800ca440:
    addiu   $at, $zero, 0xffff
    bne     $a1, $at, branch_0x800ca458
    lui     $at, 0x8000
    bne     $t5, $at, branch_0x800ca458
    nop
    break   0x6
branch_0x800ca458:
    jr      $ra
    addiu   $sp, $sp, 0x10

.globl Function_0x800ca460
Function_0x800ca460: # 0x800ca460
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr      $ra
    nop

.globl Function_0x800ca4a8
Function_0x800ca4a8: # 0x800ca4a8
    jr      $ra
    nop

.globl Function_0x800ca4b0
Function_0x800ca4b0: # 0x800ca4b0
    lbu     $t6, 0x3($a0)
    bnez    $t6, branch_0x800ca594
    nop
    lh      $t7, 0xe($a0)
    addiu   $t1, $zero, 0x1
    sb      $t1, 0x3($a0)
    blez    $t7, branch_0x800ca594
    or      $v0, $zero, $zero
    or      $v1, $a0, $zero
    addiu   $t2, $zero, 0x1
    lw      $t8, 0x10($v1)
branch_0x800ca4dc:
    addu    $t9, $t8, $a1
    sw      $t9, 0x10($v1)
    lbu     $t6, 0xe($t9)
    or      $a2, $t9, $zero
    bnezl   $t6, branch_0x800ca580
    lh      $t8, 0xe($a0)
    lw      $t7, 0x0($t9)
    sb      $t1, 0xe($t9)
    addu    $t8, $t7, $a1
    sw      $t8, 0x0($t9)
    lw      $t9, 0x4($t9)
    lw      $t7, 0x8($a2)
    addu    $t6, $t9, $a1
    addu    $t8, $t7, $a1
    sw      $t6, 0x4($a2)
    sw      $t8, 0x8($a2)
    lbu     $t9, 0x9($t8)
    or      $t0, $t8, $zero
    bnezl   $t9, branch_0x800ca580
    lh      $t8, 0xe($a0)
    lw      $t6, 0x0($t8)
    lbu     $a2, 0x8($t8)
    sb      $t1, 0x9($t8)
    addu    $t7, $t6, $a3
    bnez    $a2, branch_0x800ca564
    sw      $t7, 0x0($t8)
    lw      $t8, 0x10($t8)
    lw      $a2, 0xc($t0)
    addu    $t9, $t8, $a1
    beqz    $a2, branch_0x800ca57c
    sw      $t9, 0x10($t0)
    addu    $t6, $a2, $a1
    b       branch_0x800ca57c
    sw      $t6, 0xc($t0)
branch_0x800ca564:
    bnel    $t2, $a2, branch_0x800ca580
    lh      $t8, 0xe($a0)
    lw      $a2, 0xc($t0)
    beqz    $a2, branch_0x800ca57c
    addu    $t7, $a2, $a1
    sw      $t7, 0xc($t0)
branch_0x800ca57c:
    lh      $t8, 0xe($a0)
branch_0x800ca580:
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x4
    slt     $at, $v0, $t8
    bnezl   $at, branch_0x800ca4dc
    lw      $t8, 0x10($v1)
branch_0x800ca594:
    jr      $ra
    nop

.globl Function_0x800ca59c
Function_0x800ca59c: # 0x800ca59c
    jr      $ra
    nop

.globl Function_0x800ca5a4
Function_0x800ca5a4: # 0x800ca5a4
    addiu   $sp, $sp, 0xffd0
    sw      $ra, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lh      $t6, 0x0($a0)
    addiu   $at, $zero, 0x4231
    or      $s0, $a0, $zero
    bne     $t6, $at, branch_0x800ca688
    or      $s1, $a1, $zero
    lh      $t7, 0x2($a0)
    or      $s3, $zero, $zero
    or      $s2, $a0, $zero
    blez    $t7, branch_0x800ca688
    addiu   $s4, $zero, 0x1
    lw      $t8, 0x4($s2)
branch_0x800ca5ec:
    addu    $t9, $t8, $s0
    beqz    $t9, branch_0x800ca670
    sw      $t9, 0x4($s2)
    lbu     $t6, 0x2($t9)
    or      $t5, $t9, $zero
    bnezl   $t6, branch_0x800ca674
    lh      $t8, 0x2($s0)
    lw      $v0, 0x8($t9)
    sb      $s4, 0x2($t9)
    or      $t4, $zero, $zero
    beqz    $v0, branch_0x800ca62c
    addu    $a0, $v0, $s0
    sw      $a0, 0x8($t9)
    or      $a1, $s0, $zero
    jal     Function_0x800ca4b0
    or      $a3, $s1, $zero
branch_0x800ca62c:
    lh      $t8, 0x0($t5)
    or      $t3, $t5, $zero
    blezl   $t8, branch_0x800ca674
    lh      $t8, 0x2($s0)
    lw      $t9, 0xc($t3)
branch_0x800ca640:
    or      $a1, $s0, $zero
    addu    $a0, $t9, $s0
    beqz    $a0, branch_0x800ca658
    sw      $a0, 0xc($t3)
    jal     Function_0x800ca4b0
    or      $a3, $s1, $zero
branch_0x800ca658:
    lh      $t7, 0x0($t5)
    addiu   $t4, $t4, 0x1
    addiu   $t3, $t3, 0x4
    slt     $at, $t4, $t7
    bnezl   $at, branch_0x800ca640
    lw      $t9, 0xc($t3)
branch_0x800ca670:
    lh      $t8, 0x2($s0)
branch_0x800ca674:
    addiu   $s3, $s3, 0x1
    addiu   $s2, $s2, 0x4
    slt     $at, $s3, $t8
    bnezl   $at, branch_0x800ca5ec
    lw      $t8, 0x4($s2)
branch_0x800ca688:
    lw      $ra, 0x2c($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    jr      $ra
    addiu   $sp, $sp, 0x30

.globl Function_0x800ca6a8
Function_0x800ca6a8: # 0x800ca6a8
    lh      $t6, 0x2($a0)
    or      $v0, $zero, $zero
    or      $v1, $a0, $zero
    blez    $t6, branch_0x800ca6e0
    nop
    lw      $t7, 0x4($v1)
branch_0x800ca6c0:
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x8
    addu    $t8, $t7, $a1
    sw      $t8, -0x4($v1)
    lh      $t9, 0x2($a0)
    slt     $at, $v0, $t9
    bnezl   $at, branch_0x800ca6c0
    lw      $t7, 0x4($v1)
branch_0x800ca6e0:
    jr      $ra
    nop

.globl Function_0x800ca6e8
Function_0x800ca6e8: # 0x800ca6e8
    nop
    nop

.globl osAiGetLength
osAiGetLength: # 0x800ca6f0
    lui     $t6, %hi(AI_LEN_REG)
    jr      $ra
    lw      $v0, %lo(AI_LEN_REG)($t6)

.globl Function_0x800ca6fc
Function_0x800ca6fc: # 0x800ca6fc
    nop

.globl osAiSetNextBuffer
osAiSetNextBuffer: # 0x800ca700
    addiu   $sp, $sp, 0xffe0
    lui     $t7, 0x800f
    lbu     $t7, -0x7290($t7)
    sw      $a0, 0x20($sp)
    lw      $t6, 0x20($sp)
    sw      $ra, 0x14($sp)
    sw      $a1, 0x24($sp)
    beqz    $t7, branch_0x800ca72c
    sw      $t6, 0x1c($sp)
    addiu   $t8, $t6, 0xe000
    sw      $t8, 0x1c($sp)
branch_0x800ca72c:
    lw      $t9, 0x20($sp)
    lw      $t0, 0x24($sp)
    addiu   $at, $zero, 0x2000
    addu    $t1, $t9, $t0
    andi    $t2, $t1, 0x3fff
    bne     $t2, $at, branch_0x800ca758
    nop
    addiu   $t3, $zero, 0x1
    lui     $at, 0x800f
    b       branch_0x800ca760
    sb      $t3, -0x7290($at)
branch_0x800ca758:
    lui     $at, 0x800f
    sb      $zero, -0x7290($at)
branch_0x800ca760:
    jal     Function_0x800d0460
    nop
    beqz    $v0, branch_0x800ca778
    nop
    b       branch_0x800ca798
    addiu   $v0, $zero, 0xffff
branch_0x800ca778:
    jal     osVirtualToPhysical
    lw      $a0, 0x1c($sp)
    lui     $t4, %hi(AI_DRAM_ADDR_REG)
    sw      $v0, %lo(AI_DRAM_ADDR_REG)($t4)
    lw      $t5, 0x24($sp)
    lui     $t7, %hi(AI_LEN_REG)
    or      $v0, $zero, $zero
    sw      $t5, %lo(AI_LEN_REG)($t7)
branch_0x800ca798:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


.globl Function_0x800ca7a8
Function_0x800ca7a8: # 0x800ca7a8
    nop
    nop

.globl __osProbeTLB
__osProbeTLB: # 0x800ca7b0
    mfc0    $8, $10
    andi    $t1, $t0, 0xff
    addiu   $at, $zero, 0xe000
    and     $t2, $a0, $at
    or      $t1, $t1, $t2
    mtc0    $9, $10
    nop
    nop
    nop
    tlbp
    nop
    nop
    mfc0    $11, $0
    lui     $at, 0x8000
    and     $t3, $t3, $at
    bnez    $t3, branch_0x800ca858
    nop
    tlbr
    nop
    nop
    nop
    mfc0    $11, $5
    addi    $t3, $t3, 0x2000
    srl     $t3, $t3, 1
    and     $t4, $t3, $a0
    bnez    $t4, branch_0x800ca828
    addi    $t3, $t3, -0x1
    mfc0    $2, $2
    b       branch_0x800ca82c
    nop
branch_0x800ca828:
    mfc0    $2, $3
branch_0x800ca82c:
    andi    $t5, $v0, 0x2
    beqz    $t5, branch_0x800ca858
    nop
    lui     $at, 0x3fff
    ori     $at, $at, 0xffc0
    and     $v0, $v0, $at
    sll     $v0, $v0, 6
    and     $t5, $a0, $t3
    add     $v0, $v0, $t5
    b       branch_0x800ca85c
    nop
branch_0x800ca858:
    addiu   $v0, $zero, 0xffff
branch_0x800ca85c:
    mtc0    $8, $10
    jr      $ra
    nop

.globl Function_0x800ca868
Function_0x800ca868: # 0x800ca868
    nop
    nop


.globl __osDisableInt
__osDisableInt: # 0x800ca870
    mfc0    $8, $12
    addiu   $at, $zero, 0xfffe
    and     $t1, $t0, $at
    mtc0    $9, $12
    andi    $v0, $t0, 0x1
    nop
    jr      $ra
    nop


.globl __osRestoreInt
__osRestoreInt: # 0x800ca890
    mfc0    $8, $12
    or      $t0, $t0, $a0
    mtc0    $8, $12
    nop
    nop
    jr      $ra
    nop


.globl Function_0x800ca8ac
Function_0x800ca8ac: # 0x800ca8ac
    nop

.globl __osDequeueThread
__osDequeueThread: # 0x800ca8b0
    or      $a2, $a0, $zero
    lw      $a3, 0x0($a2)
    addiu   $sp, $sp, 0xfff8
    beqz    $a3, branch_0x800ca8e8
    nop
branch_0x800ca8c4:
    bne     $a3, $a1, branch_0x800ca8d8
    nop
    lw      $t6, 0x0($a1)
    b       branch_0x800ca8e8
    sw      $t6, 0x0($a2)
branch_0x800ca8d8:
    or      $a2, $a3, $zero
    lw      $a3, 0x0($a2)
    bnez    $a3, branch_0x800ca8c4
    nop
branch_0x800ca8e8:
    jr      $ra
    addiu   $sp, $sp, 0x8

.globl __osExceptionPreamble
__osExceptionPreamble: # 0x800ca8f0
    lui     $k0, %hi(Function_0x800ca900)
    addiu   $k0, $k0, %lo(Function_0x800ca900)
    jr      $k0
    nop

.globl Function_0x800ca900
Function_0x800ca900: # 0x800ca900
    lui     $k0, %hi(Unknown_0x801dab50)
    addiu   $k0, $k0, %lo(Unknown_0x801dab50)
    sd      $at, 0x20($k0)

.globl Function_0x800ca90c
Function_0x800ca90c: # 0x800ca90c
    mfc0    $27, $12
    sw      $k1, 0x118($k0)
    addiu   $at, $zero, 0xfffc
    and     $k1, $k1, $at
    mtc0    $27, $12
    sd      $t0, 0x58($k0)
    sd      $t1, 0x60($k0)
    sd      $t2, 0x68($k0)
    sw      $zero, 0x18($k0)
    mfc0    $8, $13
    andi    $t1, $t0, 0x7c
    addiu   $t2, $zero, 0x0
    bne     $t1, $t2, branch_0x800ca980
    nop
    and     $t1, $k1, $t0
    andi    $t2, $t1, 0x4000
    beqz    $t2, branch_0x800ca964
    nop
    addiu   $t1, $zero, 0x1
    lui     $at, 0x800f
    b       branch_0x800ca9c4
    sw      $t1, -0x724c($at)
branch_0x800ca964:
    andi    $t2, $t1, 0x2000
    beqz    $t2, branch_0x800ca980
    nop
    addiu   $t1, $zero, 0x1
    lui     $at, 0x800f
    b       branch_0x800ca9c4
    sw      $t1, -0x7248($at)
branch_0x800ca980:
    lui     $at, 0x800f
    sw      $zero, -0x724c($at)
    lui     $at, 0x800f
    or      $t0, $k0, $zero
    sw      $zero, -0x7248($at)
    lui     $k0, 0x800f
    lw      $k0, -0x7270($k0)
    ld      $t1, 0x20($t0)
    sd      $t1, 0x20($k0)
    ld      $t1, 0x118($t0)
    sd      $t1, 0x118($k0)
    ld      $t1, 0x58($t0)
    sd      $t1, 0x58($k0)
    ld      $t1, 0x60($t0)
    sd      $t1, 0x60($k0)
    ld      $t1, 0x68($t0)
    sd      $t1, 0x68($k0)
branch_0x800ca9c4:
    mflo    $t0
    sd      $t0, 0x108($k0)
    mfhi    $t0
    sd      $v0, 0x28($k0)
    sd      $v1, 0x30($k0)
    sd      $a0, 0x38($k0)
    sd      $a1, 0x40($k0)
    sd      $a2, 0x48($k0)
    sd      $a3, 0x50($k0)
    sd      $t3, 0x70($k0)
    sd      $t4, 0x78($k0)
    sd      $t5, 0x80($k0)
    sd      $t6, 0x88($k0)
    sd      $t7, 0x90($k0)
    sd      $s0, 0x98($k0)
    sd      $s1, 0xa0($k0)
    sd      $s2, 0xa8($k0)
    sd      $s3, 0xb0($k0)
    sd      $s4, 0xb8($k0)
    sd      $s5, 0xc0($k0)
    sd      $s6, 0xc8($k0)
    sd      $s7, 0xd0($k0)
    sd      $t8, 0xd8($k0)
    sd      $t9, 0xe0($k0)
    sd      $gp, 0xe8($k0)
    sd      $sp, 0xf0($k0)
    sd      $fp, 0xf8($k0)
    sd      $ra, 0x100($k0)
    sd      $t0, 0x110($k0)
    mfc0    $8, $14
    sw      $t0, 0x11c($k0)
    lw      $t0, 0x18($k0)
    beqz    $t0, branch_0x800caa98
    nop
    cfc1    $t0, $ra
    nop
    sw      $t0, 0x12c($k0)
    sdc1    $0, 0x130($26)
    sdc1    $2, 0x138($26)
    sdc1    $4, 0x140($26)
    sdc1    $6, 0x148($26)
    sdc1    $8, 0x150($26)
    sdc1    $10, 0x158($26)
    sdc1    $12, 0x160($26)
    sdc1    $14, 0x168($26)
    sdc1    $16, 0x170($26)
    sdc1    $18, 0x178($26)
    sdc1    $20, 0x180($26)
    sdc1    $22, 0x188($26)
    sdc1    $24, 0x190($26)
    sdc1    $26, 0x198($26)
    sdc1    $28, 0x1a0($26)
    sdc1    $30, 0x1a8($26)
branch_0x800caa98:
    mfc0    $8, $13
    sw      $t0, 0x120($k0)
    lui     $t1, 0xa430
    lw      $t1, 0xc($t1)
    sw      $t1, 0x128($k0)
    addiu   $t1, $zero, 0x2
    sh      $t1, 0x10($k0)
    lui     $t1, 0x800f
    lw      $t1, -0x724c($t1)
    beqz    $t1, branch_0x800caae4
    nop
    lui     $t2, 0xc000
    sw      $zero, 0x8($t2)
    lui     $a0, 0xc000
    addiu   $t2, $t2, 0x8
    jal     Function_0x800d0728
    lw      $a0, 0x0($a0)
    b       branch_0x800cb038
    nop
branch_0x800caae4:
    lui     $t1, 0x800f
    lw      $t1, -0x7248($t1)
    beqz    $t1, branch_0x800cab30
    nop
    lui     $t2, 0xc000
    sw      $zero, 0xc($t2)
    lui     $t1, 0x800f
    lw      $t1, -0x7140($t1)
    addiu   $t2, $t2, 0xc
    beqz    $t1, branch_0x800cab18
    nop
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x78
branch_0x800cab18:
    lui     $t1, 0x800f
    lw      $t1, -0x713c($t1)
    lui     $at, 0x800f
    addi    $t1, $t1, 0x1
    b       branch_0x800cb038
    sw      $t1, -0x713c($at)
branch_0x800cab30:
    andi    $t1, $t0, 0x7c
    addiu   $t2, $zero, 0x24
    beq     $t1, $t2, branch_0x800cadb4
    nop
    addiu   $t2, $zero, 0x2c
    beq     $t1, $t2, branch_0x800caefc
    nop
    addiu   $t2, $zero, 0x0
    bne     $t1, $t2, branch_0x800cae18
    nop
    and     $s0, $k1, $t0
branch_0x800cab5c:
    andi    $t1, $s0, 0xff00
    srl     $t2, $t1, 12
    bnez    $t2, branch_0x800cab74
    nop
    srl     $t2, $t1, 8
    addi    $t2, $t2, 0x10
branch_0x800cab74:
    lui     $at, 0x800f
    addu    $at, $at, $t2
    lbu     $t2, -0x3ca0($at)
    lui     $at, 0x800f
    addu    $at, $at, $t2
    lw      $t2, -0x3c80($at)
    jr      $t2
    nop

.globl Function_0x800cab94
Function_0x800cab94: # 0x800cab94
    mfc0    $9, $11
    mtc0    $9, $11
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x18
    lui     $at, 0xffff
    ori     $at, $at, 0x7fff
    b       branch_0x800cab5c
    and     $s0, $s0, $at

.globl Function_0x800cabb4
Function_0x800cabb4: # 0x800cabb4
    addiu   $t2, $zero, 0x4
    lui     $at, 0x800f
    addu    $at, $at, $t2
    lw      $t2, -0x7260($at)
    beqz    $t2, branch_0x800cabd4
    nop
    jalr    $t2
    nop
branch_0x800cabd4:
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x10
    addiu   $at, $zero, 0xf7ff
    b       branch_0x800cab5c
    and     $s0, $s0, $at

.globl Function_0x800cabe8
Function_0x800cabe8: # 0x800cabe8
    lui     $s1, %hi(MI_INTR_REG)
    lw      $s1, %lo(MI_INTR_REG)($s1)
    andi    $s1, $s1, 0x3f
    andi    $t1, $s1, 0x1
    beqz    $t1, branch_0x800cac48
    nop
    lui     $t4, %hi(SP_STATUS_REG)
    lw      $t4, %lo(SP_STATUS_REG)($t4)
    addiu   $t1, $zero, 0x8
    lui     $at, %hi(SP_STATUS_REG)
    andi    $t4, $t4, 0x300
    andi    $s1, $s1, 0x3e
    beqz    $t4, branch_0x800cac38
    sw      $t1, %lo(SP_STATUS_REG)($at)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x20
    beqz    $s1, branch_0x800cad0c
    nop
    b       branch_0x800cac48
    nop
branch_0x800cac38:
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x58
    beqz    $s1, branch_0x800cad0c
    nop
branch_0x800cac48:
    andi    $t1, $s1, 0x8
    beqz    $t1, branch_0x800cac6c
    lui     $at, 0xa440
    andi    $s1, $s1, 0x37
    sw      $zero, 0x10($at)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x38
    beqz    $s1, branch_0x800cad0c
    nop
branch_0x800cac6c:
    andi    $t1, $s1, 0x4
    beqz    $t1, branch_0x800cac98
    nop
    addiu   $t1, $zero, 0x1
    lui     $at, 0xa450
    andi    $s1, $s1, 0x3b
    sw      $t1, 0xc($at)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x30
    beqz    $s1, branch_0x800cad0c
    nop
branch_0x800cac98:
    andi    $t1, $s1, 0x2
    beqz    $t1, branch_0x800cacbc
    lui     $at, 0xa480
    andi    $s1, $s1, 0x3d
    sw      $zero, 0x18($at)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x28
    beqz    $s1, branch_0x800cad0c
    nop
branch_0x800cacbc:
    andi    $t1, $s1, 0x10
    beqz    $t1, branch_0x800cace8
    nop

    addiu   $t1, $zero, PI_STATUS_CLR_INTR
    lui     $at, %hi(PI_STATUS_REG)
    andi    $s1, $s1, 0x2f
    sw      $t1, %lo(PI_STATUS_REG)($at)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x40
    beqz    $s1, branch_0x800cad0c
    nop

branch_0x800cace8:
    andi    $t1, $s1, 0x20
    beqz    $t1, branch_0x800cad0c
    nop
    addiu   $t1, $zero, 0x800
    lui     $at, 0xa430
    andi    $s1, $s1, 0x1f
    sw      $t1, 0x0($at)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x48
branch_0x800cad0c:
    addiu   $at, $zero, 0xfbff
    b       branch_0x800cab5c
    and     $s0, $s0, $at

.globl Function_0x800cad18
Function_0x800cad18: # 0x800cad18
    lw      $k1, 0x118($k0)
    addiu   $at, $zero, 0xefff
    lui     $t1, 0x800f
    and     $k1, $k1, $at
    sw      $k1, 0x118($k0)
    addiu   $t1, $t1, 0x8d58
    lw      $t2, 0x0($t1)
    beqz    $t2, branch_0x800cad44
    addiu   $at, $zero, 0xefff
    b       branch_0x800cadcc
    and     $s0, $s0, $at
branch_0x800cad44:
    addiu   $t2, $zero, 0x1
    sw      $t2, 0x0($t1)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x70
    lui     $t2, 0x800f
    lw      $t2, -0x7278($t2)
    addiu   $at, $zero, 0xefff
    and     $s0, $s0, $at
    lw      $k1, 0x118($t2)
    and     $k1, $k1, $at
    b       branch_0x800cadcc
    sw      $k1, 0x118($t2)

.globl Function_0x800cad74
Function_0x800cad74: # 0x800cad74
    addiu   $at, $zero, 0xfdff
    and     $t0, $t0, $at
    mtc0    $8, $13
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x8
    addiu   $at, $zero, 0xfdff
    b       branch_0x800cab5c
    and     $s0, $s0, $at

.globl Function_0x800cad94
Function_0x800cad94: # 0x800cad94
    addiu   $at, $zero, 0xfeff
    and     $t0, $t0, $at
    mtc0    $8, $13
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x0
    addiu   $at, $zero, 0xfeff
    b       branch_0x800cab5c
    and     $s0, $s0, $at
branch_0x800cadb4:
    addiu   $t1, $zero, 0x1
    sh      $t1, 0x12($k0)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x50
    b       branch_0x800cadcc
    nop
branch_0x800cadcc:
    lui     $t2, 0x800f
    lw      $t2, -0x7278($t2)
    lw      $t1, 0x4($k0)
    lw      $t3, 0x4($t2)
    slt     $at, $t1, $t3
    beqz    $at, branch_0x800cae00
    nop
    lui     $a0, 0x800f
    or      $a1, $k0, $zero
    jal     Function_0x800cafc0
    addiu   $a0, $a0, 0x8d88
    j       Function_0x800cb018
    nop
branch_0x800cae00:
    lui     $t1, 0x800f
    addiu   $t1, $t1, 0x8d88
    lw      $t2, 0x0($t1)
    sw      $t2, 0x0($k0)
    j       Function_0x800cb018
    sw      $k0, 0x0($t1)
branch_0x800cae18:
    lui     $at, 0x800f
    sw      $k0, -0x726c($at)
    addiu   $t1, $zero, 0x1
    sh      $t1, 0x10($k0)
    addiu   $t1, $zero, 0x2
    sh      $t1, 0x12($k0)
    mfc0    $10, $8
    sw      $t2, 0x124($k0)
    jal     Function_0x800cae48
    addiu   $a0, $zero, 0x60
    j       Function_0x800cb018
    nop

.globl Function_0x800cae48
Function_0x800cae48: # 0x800cae48
    lui     $t2, 0x801e
    addiu   $t2, $t2, 0x8450
    addu    $t2, $t2, $a0
    lw      $t1, 0x0($t2)
    or      $s2, $ra, $zero
    beqz    $t1, branch_0x800caef4
    nop
    lw      $t3, 0x8($t1)
    lw      $t4, 0x10($t1)
    slt     $at, $t3, $t4
    beqz    $at, branch_0x800caef4
    nop
    lw      $t5, 0xc($t1)
    addu    $t5, $t5, $t3
    div     $zero, $t5, $t4
    bnez    $t4, branch_0x800cae90
    nop
    break   0x7
branch_0x800cae90:
    addiu   $at, $zero, 0xffff
    bne     $t4, $at, branch_0x800caea8
    lui     $at, 0x8000
    bne     $t5, $at, branch_0x800caea8
    nop
    break   0x6
branch_0x800caea8:
    lw      $t4, 0x14($t1)
    mfhi    $t5
    sll     $t5, $t5, 2
    addu    $t4, $t4, $t5
    lw      $t5, 0x4($t2)
    addiu   $t2, $t3, 0x1
    sw      $t5, 0x0($t4)
    sw      $t2, 0x8($t1)
    lw      $t2, 0x0($t1)
    lw      $t3, 0x0($t2)
    beqz    $t3, branch_0x800caef4
    nop
    jal     Function_0x800cb008
    or      $a0, $t1, $zero
    or      $t2, $v0, $zero
    lui     $a0, 0x800f
    or      $a1, $t2, $zero
    jal     Function_0x800cafc0
    addiu   $a0, $a0, 0x8d88
branch_0x800caef4:
    jr      $s2
    nop
branch_0x800caefc:
    lui     $at, 0x3000
    and     $t1, $t0, $at
    srl     $t1, $t1, 28
    addiu   $t2, $zero, 0x1
    bne     $t1, $t2, branch_0x800cae18
    nop
    lw      $k1, 0x118($k0)
    lui     $at, 0x2000
    addiu   $t1, $zero, 0x1
    or      $k1, $k1, $at
    sw      $t1, 0x18($k0)
    b       branch_0x800cae00
    sw      $k1, 0x118($k0)

.globl Function_0x800caf30
Function_0x800caf30: # 0x800caf30
    lui     $a1, 0x800f
    lw      $a1, -0x7270($a1)
    mfc0    $8, $12
    lw      $k1, 0x18($a1)
    ori     $t0, $t0, 0x2
    sw      $t0, 0x118($a1)
    sd      $s0, 0x98($a1)
    sd      $s1, 0xa0($a1)
    sd      $s2, 0xa8($a1)
    sd      $s3, 0xb0($a1)
    sd      $s4, 0xb8($a1)
    sd      $s5, 0xc0($a1)
    sd      $s6, 0xc8($a1)
    sd      $s7, 0xd0($a1)
    sd      $gp, 0xe8($a1)
    sd      $sp, 0xf0($a1)
    sd      $fp, 0xf8($a1)
    sd      $ra, 0x100($a1)
    beqz    $k1, branch_0x800cafa0
    sw      $ra, 0x11c($a1)
    cfc1    $k1, $ra
    sdc1    $20, 0x180($5)
    sdc1    $22, 0x188($5)
    sdc1    $24, 0x190($5)
    sdc1    $26, 0x198($5)
    sdc1    $28, 0x1a0($5)
    sdc1    $30, 0x1a8($5)
    sw      $k1, 0x12c($a1)
branch_0x800cafa0:
    lui     $k1, 0xa430
    lw      $k1, 0xc($k1)
    beqz    $a0, branch_0x800cafb8
    sw      $k1, 0x128($a1)
    jal     Function_0x800cafc0
    nop
branch_0x800cafb8:
    j       Function_0x800cb018
    nop

.globl Function_0x800cafc0
Function_0x800cafc0: # 0x800cafc0
    lw      $t8, 0x0($a0)
    lw      $t7, 0x4($a1)
    or      $t9, $a0, $zero
    lw      $t6, 0x4($t8)
    slt     $at, $t6, $t7
    bnez    $at, branch_0x800caff4
    nop
branch_0x800cafdc:
    or      $t9, $t8, $zero
    lw      $t8, 0x0($t8)
    lw      $t6, 0x4($t8)
    slt     $at, $t6, $t7
    beqz    $at, branch_0x800cafdc
    nop
branch_0x800caff4:
    lw      $t8, 0x0($t9)
    sw      $t8, 0x0($a1)
    sw      $a1, 0x0($t9)
    jr      $ra
    sw      $a0, 0x8($a1)

.globl Function_0x800cb008
Function_0x800cb008: # 0x800cb008
    lw      $v0, 0x0($a0)
    lw      $t9, 0x0($v0)
    jr      $ra
    sw      $t9, 0x0($a0)

.globl Function_0x800cb018
Function_0x800cb018: # 0x800cb018
    lui     $a0, 0x800f
    jal     Function_0x800cb008
    addiu   $a0, $a0, 0x8d88
    lui     $at, 0x800f
    sw      $v0, -0x7270($at)
    addiu   $t0, $zero, 0x4
    sh      $t0, 0x10($v0)
    or      $k0, $v0, $zero
branch_0x800cb038:
    ld      $k1, 0x108($k0)
    ld      $at, 0x20($k0)
    ld      $v0, 0x28($k0)
    mtlo    $k1
    ld      $k1, 0x110($k0)
    ld      $v1, 0x30($k0)
    ld      $a0, 0x38($k0)
    ld      $a1, 0x40($k0)
    ld      $a2, 0x48($k0)
    ld      $a3, 0x50($k0)
    ld      $t0, 0x58($k0)
    ld      $t1, 0x60($k0)
    ld      $t2, 0x68($k0)
    ld      $t3, 0x70($k0)
    ld      $t4, 0x78($k0)
    ld      $t5, 0x80($k0)
    ld      $t6, 0x88($k0)
    ld      $t7, 0x90($k0)
    ld      $s0, 0x98($k0)
    ld      $s1, 0xa0($k0)
    ld      $s2, 0xa8($k0)
    ld      $s3, 0xb0($k0)
    ld      $s4, 0xb8($k0)
    ld      $s5, 0xc0($k0)
    ld      $s6, 0xc8($k0)
    ld      $s7, 0xd0($k0)
    ld      $t8, 0xd8($k0)
    ld      $t9, 0xe0($k0)
    ld      $gp, 0xe8($k0)
    mthi    $k1
    ld      $sp, 0xf0($k0)
    ld      $fp, 0xf8($k0)
    ld      $ra, 0x100($k0)
    lw      $k1, 0x11c($k0)
    mtc0    $27, $14
    lw      $k1, 0x118($k0)
    mtc0    $27, $12
    lw      $k1, 0x18($k0)
    beqz    $k1, branch_0x800cb120
    nop
    lw      $k1, 0x12c($k0)
    ctc1    $k1, $ra
    ldc1    $0, 0x130($26)
    ldc1    $2, 0x138($26)
    ldc1    $4, 0x140($26)
    ldc1    $6, 0x148($26)
    ldc1    $8, 0x150($26)
    ldc1    $10, 0x158($26)
    ldc1    $12, 0x160($26)
    ldc1    $14, 0x168($26)
    ldc1    $16, 0x170($26)
    ldc1    $18, 0x178($26)
    ldc1    $20, 0x180($26)
    ldc1    $22, 0x188($26)
    ldc1    $24, 0x190($26)
    ldc1    $26, 0x198($26)
    ldc1    $28, 0x1a0($26)
    ldc1    $30, 0x1a8($26)
branch_0x800cb120:
    lw      $k1, 0x128($k0)
    sll     $k1, $k1, 1
    lui     $k0, 0x800f
    addiu   $k0, $k0, 0xc4b0
    addu    $k1, $k1, $k0
    lhu     $k1, 0x0($k1)
    lui     $k0, 0xa430
    addiu   $k0, $k0, 0xc
    sw      $k1, 0x0($k0)
    nop
    nop
    nop
    nop
    eret
    jal     osDestroyThread
    or      $a0, $zero, $zero

.globl osGetCount
osGetCount: # 0x800cb160
    mfc0    $2, $9
    jr      $ra
    nop

.globl Function_0x800cb16c
Function_0x800cb16c: # 0x800cb16c
    nop

.globl __osTimerServicesInit
__osTimerServicesInit: # 0x800cb170
    lui     $at, 0x801e
    addiu   $t6, $zero, 0x0
    addiu   $t7, $zero, 0x0
    sw      $t7, -0x564c($at)
    sw      $t6, -0x5650($at)
    lui     $at, 0x801e
    lui     $t8, 0x800f
    lw      $t8, -0x7240($t8)
    sw      $zero, -0x5648($at)
    lui     $at, 0x801e
    sw      $zero, -0x5644($at)
    lui     $t9, 0x800f
    sw      $t8, 0x4($t8)
    lw      $t9, -0x7240($t9)
    lui     $t1, 0x800f
    addiu   $t2, $zero, 0x0
    lw      $t0, 0x4($t9)
    addiu   $t3, $zero, 0x0
    lui     $t4, 0x800f
    sw      $t0, 0x0($t9)
    lw      $t1, -0x7240($t1)
    lui     $t5, 0x800f
    lui     $t8, 0x800f
    sw      $t2, 0x10($t1)
    sw      $t3, 0x14($t1)
    lw      $t4, -0x7240($t4)
    lw      $t6, 0x10($t4)
    lw      $t7, 0x14($t4)
    sw      $t6, 0x8($t4)
    sw      $t7, 0xc($t4)
    lw      $t5, -0x7240($t5)
    sw      $zero, 0x18($t5)
    lw      $t8, -0x7240($t8)
    jr      $ra
    sw      $zero, 0x1c($t8)

.globl Function_0x800cb1fc
Function_0x800cb1fc: # 0x800cb1fc
    lui     $t6, 0x800f
    lw      $t6, -0x7240($t6)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x14($sp)
    lw      $t7, 0x0($t6)
    beq     $t7, $t6, branch_0x800cb364
    nop
branch_0x800cb218:
    lui     $t8, 0x800f
    lw      $t8, -0x7240($t8)
    lw      $t9, 0x0($t8)
    bne     $t9, $t8, branch_0x800cb240
    sw      $t9, 0x24($sp)
    jal     __osSetCompare
    or      $a0, $zero, $zero
    lui     $at, 0x801e
    b       branch_0x800cb364
    sw      $zero, -0x5640($at)
branch_0x800cb240:
    jal     osGetCount
    nop
    sw      $v0, 0x20($sp)
    lui     $t1, 0x801e
    lw      $t1, -0x5640($t1)
    lw      $t0, 0x20($sp)
    lw      $t7, 0x24($sp)
    lui     $at, 0x801e
    subu    $t2, $t0, $t1
    sw      $t2, 0x1c($sp)
    sw      $t0, -0x5640($at)
    lw      $t6, 0x10($t7)
    lw      $t3, 0x1c($sp)
    addiu   $t4, $zero, 0x0
    or      $t9, $t7, $zero
    sltu    $at, $t6, $t4
    lw      $t7, 0x14($t7)
    bnez    $at, branch_0x800cb2e0
    or      $t5, $t3, $zero
    sltu    $at, $t4, $t6
    bnez    $at, branch_0x800cb2a0
    sltu    $at, $t5, $t7
    beqz    $at, branch_0x800cb2e0
    nop
branch_0x800cb2a0:
    addiu   $t8, $t9, 0x10
    sw      $t8, 0x18($sp)
    lw      $t3, 0x14($t9)
    lw      $t2, 0x10($t9)
    sltu    $at, $t3, $t5
    subu    $t0, $t2, $t4
    subu    $t0, $t0, $at
    subu    $t1, $t3, $t5
    sw      $t1, 0x14($t9)
    sw      $t0, 0x10($t9)
    lw      $t6, 0x24($sp)
    lw      $a0, 0x10($t6)
    jal     Function_0x800cb374
    lw      $a1, 0x14($t6)
    b       branch_0x800cb364
    nop
branch_0x800cb2e0:
    lw      $t7, 0x24($sp)
    lw      $t8, 0x0($t7)
    lw      $t2, 0x4($t7)
    sw      $t8, 0x0($t2)
    lw      $t3, 0x24($sp)
    lw      $t4, 0x4($t3)
    lw      $t5, 0x0($t3)
    sw      $t4, 0x4($t5)
    lw      $t0, 0x24($sp)
    sw      $zero, 0x0($t0)
    lw      $t1, 0x24($sp)
    sw      $zero, 0x4($t1)
    lw      $t9, 0x24($sp)
    lw      $t6, 0x18($t9)
    beqz    $t6, branch_0x800cb330
    nop
    or      $a0, $t6, $zero
    lw      $a1, 0x1c($t9)
    jal     osSendMesg
    or      $a2, $zero, $zero

branch_0x800cb330:
    lw      $t7, 0x24($sp)
    lw      $t8, 0x8($t7)
    lw      $t9, 0xc($t7)
    bnez    $t8, branch_0x800cb34c
    nop
    beqz    $t9, branch_0x800cb218
    nop
branch_0x800cb34c:
    sw      $t8, 0x10($t7)
    sw      $t9, 0x14($t7)
    jal     Function_0x800cb3e8
    lw      $a0, 0x24($sp)
    b       branch_0x800cb218
    nop
branch_0x800cb364:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x800cb374
Function_0x800cb374: # 0x800cb374
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x28($sp)
    jal     __osDisableInt
    sw      $a1, 0x2c($sp)
    jal     osGetCount
    sw      $v0, 0x1c($sp)
    lui     $at, 0x801e
    sw      $v0, -0x5640($at)
    lui     $t6, 0x801e
    lw      $t6, -0x5640($t6)
    lw      $t1, 0x2c($sp)
    lw      $t0, 0x28($sp)
    or      $t9, $t6, $zero
    addu    $t3, $t9, $t1
    addiu   $t8, $zero, 0x0
    sltu    $at, $t3, $t1
    addu    $t2, $at, $t8
    addu    $t2, $t2, $t0
    sw      $t2, 0x20($sp)
    sw      $t3, 0x24($sp)
    jal     __osSetCompare
    or      $a0, $t3, $zero
    jal     __osRestoreInt
    lw      $a0, 0x1c($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x800cb3e8
Function_0x800cb3e8: # 0x800cb3e8
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x14($sp)
    jal     __osDisableInt
    sw      $a0, 0x38($sp)
    lui     $t6, 0x800f
    lw      $t6, -0x7240($t6)
    sw      $v0, 0x24($sp)
    lw      $t8, 0x38($sp)
    lw      $t7, 0x0($t6)
    sw      $t7, 0x34($sp)
    lw      $t1, 0x14($t8)
    lw      $t0, 0x10($t8)
    sw      $t1, 0x2c($sp)
    beq     $t7, $t6, branch_0x800cb4c4
    sw      $t0, 0x28($sp)
    lw      $t2, 0x10($t7)
    lw      $t3, 0x14($t7)
    sltu    $at, $t0, $t2
    bnez    $at, branch_0x800cb4c4
    sltu    $at, $t2, $t0
    bnez    $at, branch_0x800cb448
    sltu    $at, $t3, $t1
    beqz    $at, branch_0x800cb4c4
    nop
branch_0x800cb448:
    addiu   $t9, $sp, 0x28
    lw      $t8, 0x34($sp)
    sw      $t9, 0x20($sp)
    lw      $t5, 0x4($t9)
    lw      $t4, 0x0($t9)
    lw      $t7, 0x14($t8)
    lw      $t6, 0x10($t8)
    lui     $t8, 0x800f
    sltu    $at, $t5, $t7
    subu    $t0, $t4, $t6
    subu    $t0, $t0, $at
    subu    $t1, $t5, $t7
    sw      $t1, 0x4($t9)
    sw      $t0, 0x0($t9)
    lw      $t2, 0x34($sp)
    lw      $t8, -0x7240($t8)
    lw      $t3, 0x0($t2)
    beq     $t3, $t8, branch_0x800cb4c4
    sw      $t3, 0x34($sp)
    lw      $t4, 0x28($sp)
    lw      $t6, 0x10($t3)
    lw      $t5, 0x2c($sp)
    lw      $t7, 0x14($t3)
    sltu    $at, $t6, $t4
    bnez    $at, branch_0x800cb448
    nop
    sltu    $at, $t4, $t6
    bnez    $at, branch_0x800cb4c4
    sltu    $at, $t7, $t5
    bnez    $at, branch_0x800cb448
    nop
branch_0x800cb4c4:
    lw      $t9, 0x38($sp)
    lw      $t0, 0x28($sp)
    lw      $t1, 0x2c($sp)
    lui     $t8, 0x800f
    sw      $t0, 0x10($t9)
    sw      $t1, 0x14($t9)
    lw      $t8, -0x7240($t8)
    lw      $t2, 0x34($sp)
    beq     $t2, $t8, branch_0x800cb51c
    nop
    addiu   $t3, $t2, 0x10
    sw      $t3, 0x1c($sp)
    lw      $t5, 0x14($t2)
    lw      $t4, 0x10($t2)
    lw      $t6, 0x28($sp)
    lw      $t7, 0x2c($sp)
    subu    $t0, $t4, $t6
    sltu    $at, $t5, $t7
    subu    $t0, $t0, $at
    subu    $t1, $t5, $t7
    sw      $t1, 0x14($t2)
    sw      $t0, 0x10($t2)
branch_0x800cb51c:
    lw      $t9, 0x34($sp)
    lw      $t8, 0x38($sp)
    sw      $t9, 0x0($t8)
    lw      $t3, 0x34($sp)
    lw      $t5, 0x38($sp)
    lw      $t4, 0x4($t3)
    sw      $t4, 0x4($t5)
    lw      $t7, 0x34($sp)
    lw      $t6, 0x38($sp)
    lw      $t0, 0x4($t7)
    sw      $t6, 0x0($t0)
    lw      $t2, 0x34($sp)
    lw      $t1, 0x38($sp)
    sw      $t1, 0x4($t2)
    jal     __osRestoreInt
    lw      $a0, 0x24($sp)
    lw      $ra, 0x14($sp)
    lw      $v0, 0x28($sp)
    lw      $v1, 0x2c($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl __osViInit
__osViInit: # 0x800cb570
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    lui     $a0, 0x800f
    addiu   $a0, $a0, 0x8dd0
    jal     bzero
    addiu   $a1, $zero, 0x60
    lui     $t6, 0x800f
    addiu   $t6, $t6, 0x8dd0
    lui     $at, 0x800f
    sw      $t6, -0x71d0($at)
    lui     $at, 0x800f
    addiu   $t7, $t6, 0x30
    sw      $t7, -0x71cc($at)
    addiu   $t8, $zero, 0x1
    sh      $t8, 0x32($t6)
    lui     $t0, 0x800f
    lw      $t0, -0x71d0($t0)
    addiu   $t9, $zero, 0x1
    lui     $t1, 0x800f
    sh      $t9, 0x2($t0)
    lw      $t1, -0x71c8($t1)
    beqz    $t1, branch_0x800cb5f4
    nop
    lui     $t3, 0x800f
    lw      $t3, -0x71cc($t3)
    lui     $t2, 0x800f
    addiu   $t2, $t2, 0x8ed0
    lui     $t4, 0x2e6
    ori     $t4, $t4, 0xd354
    lui     $at, 0x800f
    sw      $t2, 0x8($t3)
    b       branch_0x800cb618
    sw      $t4, -0x71c4($at)
branch_0x800cb5f4:
    lui     $t7, 0x800f
    lw      $t7, -0x71cc($t7)
    lui     $t5, 0x800f
    addiu   $t5, $t5, 0x8f20
    lui     $t8, 0x2f5
    ori     $t8, $t8, 0xb2d2
    lui     $at, 0x800f
    sw      $t5, 0x8($t7)
    sw      $t8, -0x71c4($at)
branch_0x800cb618:
    lui     $t9, 0x800f
    lw      $t9, -0x71cc($t9)
    addiu   $t6, $zero, 0x20
    lui     $t0, 0x800f
    sh      $t6, 0x0($t9)
    lw      $t0, -0x71cc($t0)
    lui     $t3, 0xa440
    lw      $t1, 0x8($t0)
    lw      $t2, 0x4($t1)
    sw      $t2, 0xc($t0)
    lw      $t4, 0x10($t3)
    sltiu   $at, $t4, 0xb
    bnez    $at, branch_0x800cb664
    nop
branch_0x800cb650:
    lui     $t5, 0xa440
    lw      $t7, 0x10($t5)
    sltiu   $at, $t7, 0xb
    beqz    $at, branch_0x800cb650
    nop
branch_0x800cb664:
    lui     $t8, 0xa440
    jal     __osViSwapContext
    sw      $zero, 0x0($t8)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x800cb680
Function_0x800cb680: # 0x800cb680
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    addiu   $t6, $zero, 0x1
    lui     $at, %hi(Unknown_0x800e8e40)
    lui     $a0, 0x801e
    lui     $a1, 0x801e
    sw      $t6, %lo(Unknown_0x800e8e40)($at)
    addiu   $a1, $a1, 0xa9d0
    addiu   $a0, $a0, 0xa9d8
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1

    lui     $a0, %hi(Unknown_0x801da9d8)
    addiu   $a0, $a0, %lo(Unknown_0x801da9d8)
    or      $a1, $zero, $zero
    jal     osSendMesg
    or      $a2, $zero, $zero

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x800cb6d0
Function_0x800cb6d0: # 0x800cb6d0
    lui     $t6, 0x800f
    lw      $t6, -0x71c0($t6)
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x800cb6f0
    nop
    jal     Function_0x800cb680
    nop
branch_0x800cb6f0:
    lui     $a0, %hi(Unknown_0x801da9d8)
    addiu   $a0, $a0, %lo(Unknown_0x801da9d8)
    addiu   $a1, $sp, 0x1c
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x800cb714
Function_0x800cb714: # 0x800cb714
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)

    lui     $a0, %hi(Unknown_0x801da9d8)
    addiu   $a0, $a0, %lo(Unknown_0x801da9d8)
    or      $a1, $zero, $zero
    jal     osSendMesg
    or      $a2, $zero, $zero

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl __osSiRawStartDma
__osSiRawStartDma: # 0x800cb740
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    jal     __osSiDeviceBusy
    sw      $a1, 0x1c($sp)
    beqz    $v0, branch_0x800cb764
    nop
    b       branch_0x800cb7dc
    addiu   $v0, $zero, 0xffff
branch_0x800cb764:
    lw      $t6, 0x18($sp)
    addiu   $at, $zero, 0x1
    bne     $t6, $at, branch_0x800cb780
    nop
    lw      $a0, 0x1c($sp)
    jal     osWritebackDCache
    addiu   $a1, $zero, 0x40
branch_0x800cb780:
    jal     osVirtualToPhysical
    lw      $a0, 0x1c($sp)
    lui     $t7, 0xa480
    sw      $v0, 0x0($t7)
    lw      $t8, 0x18($sp)
    bnez    $t8, branch_0x800cb7b0
    nop
    lui     $t9, 0x1fc0
    ori     $t9, $t9, 0x7c0
    lui     $t0, 0xa480
    b       branch_0x800cb7c0
    sw      $t9, 0x4($t0)
branch_0x800cb7b0:
    lui     $t1, 0x1fc0
    ori     $t1, $t1, 0x7c0
    lui     $t2, 0xa480
    sw      $t1, 0x10($t2)
branch_0x800cb7c0:
    lw      $t3, 0x18($sp)
    bnez    $t3, branch_0x800cb7d8
    nop
    lw      $a0, 0x1c($sp)
    jal     osInvalDCache
    addiu   $a1, $zero, 0x40
branch_0x800cb7d8:
    or      $v0, $zero, $zero
branch_0x800cb7dc:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x800cb7ec
Function_0x800cb7ec: # 0x800cb7ec
    nop

.globl __osSpSetStatus
__osSpSetStatus: # 0x800cb7f0
    lui     $t6, %hi(SP_STATUS_REG)
    jr      $ra
    sw      $a0, %lo(SP_STATUS_REG)($t6)

.globl Function_0x800cb7fc
Function_0x800cb7fc: # 0x800cb7fc
    nop

.globl bcopy
bcopy: # 0x800cb800
    beqz    $a2, branch_0x800cb86c
    or      $a3, $a1, $zero
    beq     $a0, $a1, branch_0x800cb86c
    slt     $at, $a1, $a0
    bnezl   $at, branch_0x800cb834
    slti    $at, $a2, 0x10
    add     $v0, $a0, $a2
    slt     $at, $a1, $v0
    beqzl   $at, branch_0x800cb834
    slti    $at, $a2, 0x10
    b       branch_0x800cb998
    slti    $at, $a2, 0x10

.globl Function_0x800cb830
Function_0x800cb830: # 0x800cb830
    slti    $at, $a2, 0x10
branch_0x800cb834:
    bnez    $at, branch_0x800cb84c
    nop
    andi    $v0, $a0, 0x3
    andi    $v1, $a1, 0x3
    beq     $v0, $v1, branch_0x800cb874
    nop
branch_0x800cb84c:
    beqz    $a2, branch_0x800cb86c
    nop
    addu    $v1, $a0, $a2
branch_0x800cb858:
    lb      $v0, 0x0($a0)
    addiu   $a0, $a0, 0x1
    addiu   $a1, $a1, 0x1
    bne     $a0, $v1, branch_0x800cb858
    sb      $v0, -0x1($a1)
branch_0x800cb86c:
    jr      $ra
    or      $v0, $a3, $zero
branch_0x800cb874:
    beqz    $v0, branch_0x800cb8d8
    addiu   $at, $zero, 0x1
    beq     $v0, $at, branch_0x800cb8bc
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x800cb8a8
    lh      $v0, 0x0($a0)
    lb      $v0, 0x0($a0)
    addiu   $a0, $a0, 0x1
    addiu   $a1, $a1, 0x1
    addiu   $a2, $a2, 0xffff
    b       branch_0x800cb8d8
    sb      $v0, -0x1($a1)

.globl Function_0x800cb8a4
Function_0x800cb8a4: # 0x800cb8a4
    lh      $v0, 0x0($a0)
branch_0x800cb8a8:
    addiu   $a0, $a0, 0x2
    addiu   $a1, $a1, 0x2
    addiu   $a2, $a2, 0xfffe
    b       branch_0x800cb8d8
    sh      $v0, -0x2($a1)
branch_0x800cb8bc:
    lb      $v0, 0x0($a0)
    lh      $v1, 0x1($a0)
    addiu   $a0, $a0, 0x3
    addiu   $a1, $a1, 0x3
    addiu   $a2, $a2, 0xfffd
    sb      $v0, -0x3($a1)
    sh      $v1, -0x2($a1)
branch_0x800cb8d8:
    slti    $at, $a2, 0x20
    bnezl   $at, branch_0x800cb938
    slti    $at, $a2, 0x10
    lw      $v0, 0x0($a0)
    lw      $v1, 0x4($a0)
    lw      $t0, 0x8($a0)
    lw      $t1, 0xc($a0)
    lw      $t2, 0x10($a0)
    lw      $t3, 0x14($a0)
    lw      $t4, 0x18($a0)
    lw      $t5, 0x1c($a0)
    addiu   $a0, $a0, 0x20
    addiu   $a1, $a1, 0x20
    addiu   $a2, $a2, 0xffe0
    sw      $v0, -0x20($a1)
    sw      $v1, -0x1c($a1)
    sw      $t0, -0x18($a1)
    sw      $t1, -0x14($a1)
    sw      $t2, -0x10($a1)
    sw      $t3, -0xc($a1)
    sw      $t4, -0x8($a1)
    b       branch_0x800cb8d8
    sw      $t5, -0x4($a1)
branch_0x800cb934:
    slti    $at, $a2, 0x10
branch_0x800cb938:
    bnezl   $at, branch_0x800cb974
    slti    $at, $a2, 0x4
    lw      $v0, 0x0($a0)
    lw      $v1, 0x4($a0)
    lw      $t0, 0x8($a0)
    lw      $t1, 0xc($a0)
    addiu   $a0, $a0, 0x10
    addiu   $a1, $a1, 0x10
    addiu   $a2, $a2, 0xfff0
    sw      $v0, -0x10($a1)
    sw      $v1, -0xc($a1)
    sw      $t0, -0x8($a1)
    b       branch_0x800cb934
    sw      $t1, -0x4($a1)
branch_0x800cb970:
    slti    $at, $a2, 0x4
branch_0x800cb974:
    bnez    $at, branch_0x800cb84c
    nop
    lw      $v0, 0x0($a0)
    addiu   $a0, $a0, 0x4
    addiu   $a1, $a1, 0x4
    addiu   $a2, $a2, 0xfffc
    b       branch_0x800cb970
    sw      $v0, -0x4($a1)

.globl Function_0x800cb994
Function_0x800cb994: # 0x800cb994
    slti    $at, $a2, 0x10
branch_0x800cb998:
    add     $a0, $a0, $a2
    bnez    $at, branch_0x800cb9b4
    add     $a1, $a1, $a2
    andi    $v0, $a0, 0x3
    andi    $v1, $a1, 0x3
    beq     $v0, $v1, branch_0x800cb9e4
    nop
branch_0x800cb9b4:
    beqz    $a2, branch_0x800cb86c
    nop
    addiu   $a0, $a0, 0xffff
    addiu   $a1, $a1, 0xffff
    subu    $v1, $a0, $a2
branch_0x800cb9c8:
    lb      $v0, 0x0($a0)
    addiu   $a0, $a0, 0xffff
    addiu   $a1, $a1, 0xffff
    bne     $a0, $v1, branch_0x800cb9c8
    sb      $v0, 0x1($a1)
    jr      $ra
    or      $v0, $a3, $zero
branch_0x800cb9e4:
    beqz    $v0, branch_0x800cba48
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x800cba2c
    addiu   $at, $zero, 0x2
    beql    $v0, $at, branch_0x800cba18
    lh      $v0, -0x2($a0)
    lb      $v0, -0x1($a0)
    addiu   $a0, $a0, 0xffff
    addiu   $a1, $a1, 0xffff
    addiu   $a2, $a2, 0xffff
    b       branch_0x800cba48
    sb      $v0, 0x0($a1)

.globl Function_0x800cba14
Function_0x800cba14: # 0x800cba14
    lh      $v0, -0x2($a0)
branch_0x800cba18:
    addiu   $a0, $a0, 0xfffe
    addiu   $a1, $a1, 0xfffe
    addiu   $a2, $a2, 0xfffe
    b       branch_0x800cba48
    sh      $v0, 0x0($a1)
branch_0x800cba2c:
    lb      $v0, -0x1($a0)
    lh      $v1, -0x3($a0)
    addiu   $a0, $a0, 0xfffd
    addiu   $a1, $a1, 0xfffd
    addiu   $a2, $a2, 0xfffd
    sb      $v0, 0x2($a1)
    sh      $v1, 0x0($a1)
branch_0x800cba48:
    slti    $at, $a2, 0x20
    bnezl   $at, branch_0x800cbaa8
    slti    $at, $a2, 0x10
    lw      $v0, -0x4($a0)
    lw      $v1, -0x8($a0)
    lw      $t0, -0xc($a0)
    lw      $t1, -0x10($a0)
    lw      $t2, -0x14($a0)
    lw      $t3, -0x18($a0)
    lw      $t4, -0x1c($a0)
    lw      $t5, -0x20($a0)
    addiu   $a0, $a0, 0xffe0
    addiu   $a1, $a1, 0xffe0
    addiu   $a2, $a2, 0xffe0
    sw      $v0, 0x1c($a1)
    sw      $v1, 0x18($a1)
    sw      $t0, 0x14($a1)
    sw      $t1, 0x10($a1)
    sw      $t2, 0xc($a1)
    sw      $t3, 0x8($a1)
    sw      $t4, 0x4($a1)
    b       branch_0x800cba48
    sw      $t5, 0x0($a1)
branch_0x800cbaa4:
    slti    $at, $a2, 0x10
branch_0x800cbaa8:
    bnezl   $at, branch_0x800cbae4
    slti    $at, $a2, 0x4
    lw      $v0, -0x4($a0)
    lw      $v1, -0x8($a0)
    lw      $t0, -0xc($a0)
    lw      $t1, -0x10($a0)
    addiu   $a0, $a0, 0xfff0
    addiu   $a1, $a1, 0xfff0
    addiu   $a2, $a2, 0xfff0
    sw      $v0, 0xc($a1)
    sw      $v1, 0x8($a1)
    sw      $t0, 0x4($a1)
    b       branch_0x800cbaa4
    sw      $t1, 0x0($a1)
branch_0x800cbae0:
    slti    $at, $a2, 0x4
branch_0x800cbae4:
    bnez    $at, branch_0x800cb9b4
    nop
    lw      $v0, -0x4($a0)
    addiu   $a0, $a0, 0xfffc
    addiu   $a1, $a1, 0xfffc
    addiu   $a2, $a2, 0xfffc
    b       branch_0x800cbae0
    sw      $v0, 0x0($a1)

.globl Function_0x800cbb04
Function_0x800cbb04: # 0x800cbb04
    nop
    nop
    nop

.globl osWritebackDCache
osWritebackDCache: # 0x800cbb10
    blez    $a1, branch_0x800cbb58
    nop
    addiu   $t3, $zero, 0x2000
    sltu    $at, $a1, $t3
    beqz    $at, branch_0x800cbb60
    nop
    or      $t0, $a0, $zero
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, branch_0x800cbb58
    nop
    andi    $t2, $t0, 0xf
    addiu   $t1, $t1, 0xfff0
    subu    $t0, $t0, $t2
branch_0x800cbb48:
    cache   25, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x800cbb48
    addiu   $t0, $t0, 0x10
branch_0x800cbb58:
    jr      $ra
    nop
branch_0x800cbb60:
    lui     $t0, 0x8000
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, 0xfff0
branch_0x800cbb6c:
    cache   1, 0x0($t0)
    sltu    $at, $t0, $t1
    bnez    $at, branch_0x800cbb6c
    addiu   $t0, $t0, 0x10
    jr      $ra
    nop

.globl Function_0x800cbb84
Function_0x800cbb84: # 0x800cbb84
    nop
    nop
    nop

.globl __osSpSetPc
__osSpSetPc: # 0x800cbb90
    lui     $t6, %hi(SP_STATUS_REG)
    lw      $a1, %lo(SP_STATUS_REG)($t6)
    addiu   $sp, $sp, 0xfff8
    andi    $t7, $a1, 0x1
    bnez    $t7, branch_0x800cbbb0
    nop
    b       branch_0x800cbbbc
    addiu   $v0, $zero, 0xffff
branch_0x800cbbb0:
    lui     $t8, 0xa408
    sw      $a0, 0x0($t8)
    or      $v0, $zero, $zero
branch_0x800cbbbc:
    jr      $ra
    addiu   $sp, $sp, 0x8

.globl Function_0x800cbbc4
Function_0x800cbbc4: # 0x800cbbc4
    nop
    nop
    nop


/* Input:
a0: 0 (Write), 1 (Read)
a1: SP_MEM_ADDR
a2: SP_DRAM_ADDR
a3: length
*/
.globl __osSpRawStartDma
__osSpRawStartDma: # 0x800cbbd0
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    sw      $a1, 0x1c($sp)
    sw      $a2, 0x20($sp)
    jal     __osSpDeviceBusy
    sw      $a3, 0x24($sp)
    beqz    $v0, startSpDma
    nop
    b       spIsBusy
    addiu   $v0, $zero, 0xffff

startSpDma:
    lw      $t6, 0x1c($sp)
    lui     $t7, %hi(SP_MEM_ADDR_REG)
    sw      $t6, %lo(SP_MEM_ADDR_REG)($t7)
    jal     osVirtualToPhysical
    lw      $a0, 0x20($sp)
    lui     $t8, %hi(SP_DRAM_ADDR_REG)
    sw      $v0, %lo(SP_DRAM_ADDR_REG)($t8)
    lw      $t9, 0x18($sp)
    bnez    $t9, readSpMem
    nop

    lw      $t0, 0x24($sp)
    lui     $t2, %hi(SP_WR_LEN_REG)
    addiu   $t1, $t0, -1
    b       branch_0x800cbc48
    sw      $t1, %lo(SP_WR_LEN_REG)($t2)

readSpMem:
    lw      $t3, 0x24($sp)
    lui     $t5, %hi(SP_RD_LEN_REG)
    addiu   $t4, $t3, 0xffff
    sw      $t4, %lo(SP_RD_LEN_REG)($t5)
branch_0x800cbc48:
    or      $v0, $zero, $zero

spIsBusy:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x800cbc5c
Function_0x800cbc5c: # 0x800cbc5c
    nop

.globl __osSpDeviceBusy
__osSpDeviceBusy: # 0x800cbc60
    lui     $t6, %hi(SP_STATUS_REG)
    lw      $a0, %lo(SP_STATUS_REG)($t6)
    addiu   $sp, $sp, 0xfff8
    andi    $t7, $a0, 0x1c
    beqz    $t7, branch_0x800cbc80
    nop
    b       branch_0x800cbc84
    addiu   $v0, $zero, 0x1
branch_0x800cbc80:
    or      $v0, $zero, $zero
branch_0x800cbc84:
    jr      $ra
    addiu   $sp, $sp, 0x8

.globl Function_0x800cbc8c
Function_0x800cbc8c: # 0x800cbc8c
    nop

.globl __osSpGetStatus
__osSpGetStatus: # 0x800cbc90
    lui     $t6, %hi(SP_STATUS_REG)
    jr      $ra
    lw      $v0, %lo(SP_STATUS_REG)($t6)

.globl Function_0x800cbc9c
Function_0x800cbc9c: # 0x800cbc9c
    nop

.globl osGetThreadPri
osGetThreadPri: # 0x800cbca0
    bnez    $a0, branch_0x800cbcb0
    nop
    lui     $a0, 0x800f
    lw      $a0, -0x7270($a0)
branch_0x800cbcb0:
    jr      $ra
    lw      $v0, 0x4($a0)

.globl Function_0x800cbcb8
Function_0x800cbcb8: # 0x800cbcb8
    nop
    nop

.globl __osGetActiveQueue
__osGetActiveQueue: # 0x800cbcc0
    lui     $v0, 0x800f
    jr      $ra
    lw      $v0, -0x71d0($v0)

.globl Function_0x800cbccc
Function_0x800cbccc: # 0x800cbccc
    nop

.globl __osViSwapContext
__osViSwapContext: # 0x800cbcd0
    addiu   $sp, $sp, 0xffb8
    sw      $s1, 0x1c($sp)
    sw      $ra, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s0, 0x18($sp)
    sw      $zero, 0x30($sp)
    lui     $s1, 0x800f
    lui     $t6, 0xa440
    lw      $s1, -0x71cc($s1)
    lw      $t7, 0x10($t6)
    lw      $s0, 0x8($s1)
    andi    $t8, $t7, 0x1
    sw      $t8, 0x30($sp)
    jal     osVirtualToPhysical
    lw      $a0, 0x4($s1)
    lw      $t9, 0x30($sp)
    or      $s2, $v0, $zero
    sll     $t0, $t9, 2
    addu    $t0, $t0, $t9
    sll     $t0, $t0, 2
    addu    $t1, $s0, $t0
    lw      $t2, 0x28($t1)
    addu    $t3, $t2, $s2
    sw      $t3, 0x3c($sp)
    lhu     $t4, 0x0($s1)
    andi    $t5, $t4, 0x2
    beqz    $t5, branch_0x800cbd5c
    nop
    lw      $t7, 0x20($s0)
    lw      $t6, 0x20($s1)
    addiu   $at, $zero, 0xf000
    and     $t8, $t7, $at
    or      $t9, $t6, $t8
    b       branch_0x800cbd64
    sw      $t9, 0x20($s1)
branch_0x800cbd5c:
    lw      $t0, 0x20($s0)
    sw      $t0, 0x20($s1)
branch_0x800cbd64:
    lhu     $t1, 0x0($s1)
    andi    $t2, $t1, 0x4
    beqz    $t2, branch_0x800cbe74
    nop
    lw      $t3, 0x30($sp)
    sll     $t4, $t3, 2
    addu    $t4, $t4, $t3
    sll     $t4, $t4, 2
    addu    $t5, $s0, $t4
    lw      $t7, 0x2c($t5)
    andi    $t6, $t7, 0xfff
    mtc1    $t6, $a2
    sw      $t6, 0x34($sp)
    lwc1    $f4, 0x24($s1)
    bgez    $t6, branch_0x800cbdb4
    cvt.s.w $f8, $f6
    lui     $at, 0x4f80
    mtc1    $at, $t2
    nop
    add.s   $f8, $f8, $f10
branch_0x800cbdb4:
    mul.s   $f16, $f4, $f8
    addiu   $t9, $zero, 0x1
    cfc1    $t8, $ra
    ctc1    $t9, $ra
    nop
    cvt.w.s $f18, $f16
    cfc1    $t9, $ra
    nop
    andi    $at, $t9, 0x4
    andi    $t9, $t9, 0x78
    beqz    $t9, branch_0x800cbe2c
    lui     $at, 0x4f00
    mtc1    $at, $s2
    addiu   $t9, $zero, 0x1
    sub.s   $f18, $f16, $f18
    ctc1    $t9, $ra
    nop
    cvt.w.s $f18, $f18
    cfc1    $t9, $ra
    nop
    andi    $at, $t9, 0x4
    andi    $t9, $t9, 0x78
    bnez    $t9, branch_0x800cbe24
    nop
    mfc1    $t9, $s2
    lui     $at, 0x8000
    b       branch_0x800cbe3c
    or      $t9, $t9, $at
branch_0x800cbe24:
    b       branch_0x800cbe3c
    addiu   $t9, $zero, 0xffff
branch_0x800cbe2c:
    mfc1    $t9, $s2
    nop
    bltz    $t9, branch_0x800cbe24
    nop
branch_0x800cbe3c:
    sw      $t9, 0x2c($s1)
    lw      $t1, 0x30($sp)
    lw      $t0, 0x2c($s1)
    addiu   $at, $zero, 0xf000
    sll     $t2, $t1, 2
    addu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    addu    $t3, $s0, $t2
    lw      $t4, 0x2c($t3)
    ctc1    $t8, $ra
    and     $t5, $t4, $at
    or      $t7, $t0, $t5
    b       branch_0x800cbe90
    sw      $t7, 0x2c($s1)
branch_0x800cbe74:
    lw      $t6, 0x30($sp)
    sll     $t8, $t6, 2
    addu    $t8, $t8, $t6
    sll     $t8, $t8, 2
    addu    $t9, $s0, $t8
    lw      $t1, 0x2c($t9)
    sw      $t1, 0x2c($s1)
branch_0x800cbe90:
    lw      $t2, 0x1c($s0)
    sw      $t2, 0x38($sp)
    lhu     $t3, 0x0($s1)
    andi    $t4, $t3, 0x20
    beqz    $t4, branch_0x800cbeac
    nop
    sw      $zero, 0x38($sp)
branch_0x800cbeac:
    lhu     $t0, 0x0($s1)
    andi    $t5, $t0, 0x40
    beqz    $t5, branch_0x800cbecc
    nop
    sw      $zero, 0x2c($s1)
    jal     osVirtualToPhysical
    lw      $a0, 0x4($s1)
    sw      $v0, 0x3c($sp)
branch_0x800cbecc:
    lhu     $t7, 0x0($s1)
    andi    $t6, $t7, 0x80
    beqz    $t6, branch_0x800cbefc
    nop
    lhu     $t8, 0x28($s1)
    lui     $at, 0x3ff
    lw      $a0, 0x4($s1)
    sll     $t9, $t8, 16
    and     $t1, $t9, $at
    jal     osVirtualToPhysical
    sw      $t1, 0x2c($s1)
    sw      $v0, 0x3c($sp)
branch_0x800cbefc:
    lw      $t2, 0x3c($sp)
    lui     $t3, 0xa440
    lui     $t0, 0xa440
    sw      $t2, 0x4($t3)
    lw      $t4, 0x8($s0)
    lui     $t7, 0xa440
    lui     $t8, 0xa440
    sw      $t4, 0x8($t0)
    lw      $t5, 0xc($s0)
    lui     $t1, 0xa440
    lui     $at, 0x800f
    sw      $t5, 0x14($t7)
    lw      $t6, 0x10($s0)
    sw      $t6, 0x18($t8)
    lw      $t9, 0x14($s0)
    sw      $t9, 0x1c($t1)
    lw      $t2, 0x18($s0)
    lui     $t9, 0xa440
    sw      $t2, 0x20($t3)
    lw      $t4, 0x38($sp)
    sw      $t4, 0x24($t0)
    lw      $t5, 0x30($sp)
    sll     $t7, $t5, 2
    addu    $t7, $t7, $t5
    sll     $t7, $t7, 2
    addu    $t6, $s0, $t7
    lw      $t8, 0x30($t6)
    sw      $t8, 0x28($t9)
    lw      $t1, 0x30($sp)
    sll     $t2, $t1, 2
    addu    $t2, $t2, $t1
    sll     $t2, $t2, 2
    addu    $t3, $s0, $t2
    lw      $t4, 0x34($t3)
    lui     $t2, 0xa440
    sw      $t4, 0x2c($t0)
    lw      $t5, 0x30($sp)
    lui     $t4, 0xa440
    sll     $t7, $t5, 2
    addu    $t7, $t7, $t5
    sll     $t7, $t7, 2
    addu    $t6, $s0, $t7
    lw      $t8, 0x38($t6)
    lui     $t5, 0xa440
    lui     $t7, 0x800f
    sw      $t8, 0xc($t9)
    lw      $t1, 0x20($s1)
    lui     $t8, 0x800f
    lui     $t6, 0x800f
    sw      $t1, 0x30($t2)
    lw      $t3, 0x2c($s1)
    sw      $t3, 0x34($t4)
    lw      $t0, 0xc($s1)
    sw      $t0, 0x0($t5)
    lw      $t7, -0x71d0($t7)
    sw      $t7, -0x71cc($at)
    lui     $at, 0x800f
    sw      $s1, -0x71d0($at)
    lw      $t8, -0x71d0($t8)
    lw      $t6, -0x71cc($t6)
    addiu   $t2, $t8, 0x30
branch_0x800cbff0:
    lw      $at, 0x0($t8)
    addiu   $t8, $t8, 0xc
    addiu   $t6, $t6, 0xc
    sw      $at, -0xc($t6)
    lw      $at, -0x8($t8)
    sw      $at, -0x8($t6)
    lw      $at, -0x4($t8)
    bne     $t8, $t2, branch_0x800cbff0
    sw      $at, -0x4($t6)
    lw      $ra, 0x24($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x48

.globl Function_0x800cc02c
Function_0x800cc02c: # 0x800cc02c
    nop


.globl Function_0x800cc030
Function_0x800cc030: # 0x800cc030
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)

    addiu   $t6, $zero, 0x1
    lui     $at, %hi(Unknown_0x800e8e50)
    lui     $a0, %hi(Unknown_0x801da9f8)
    lui     $a1, %hi(Unknown_0x801da9f0)
    sw      $t6, %lo(Unknown_0x800e8e50)($at)
    addiu   $a1, $a1, %lo(Unknown_0x801da9f0)
    addiu   $a0, $a0, %lo(Unknown_0x801da9f8)
    jal     osCreateMesgQueue
    addiu   $a2, $zero, 0x1

    lui     $a0, %hi(Unknown_0x801da9f8)
    addiu   $a0, $a0, %lo(Unknown_0x801da9f8)
    or      $a1, $zero, $zero
    jal     osSendMesg
    or      $a2, $zero, $zero

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x800cc080
Function_0x800cc080: # 0x800cc080
    lui     $t6, %hi(Unknown_0x800e8e50)
    lw      $t6, %lo(Unknown_0x800e8e50)($t6)
    addiu   $sp, $sp, -0x20
    sw      $ra, 0x14($sp)
    bnez    $t6, branch_0x800cc0a0
    nop
    jal     Function_0x800cc030
    nop
branch_0x800cc0a0:
    lui     $a0, %hi(Unknown_0x801da9f8)
    addiu   $a0, $a0, %lo(Unknown_0x801da9f8)
    addiu   $a1, $sp, 0x1c
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop


.globl Function_0x800cc0c4
Function_0x800cc0c4: # 0x800cc0c4
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)

    lui     $a0, %hi(Unknown_0x801da9f8)
    addiu   $a0, $a0, %lo(Unknown_0x801da9f8)
    or      $a1, $zero, $zero
    jal     osSendMesg
    or      $a2, $zero, $zero

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


/* Input:
a0: 0 - write, 1 - read
a1: Cart adr
a2: RAM adr
a3: length
s1:
s0:
*/
.globl osPiRawStartDma
osPiRawStartDma: # 0x800cc0f0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    sw      $a2, 0x30($sp)
    sw      $a3, 0x34($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)

    lui     $t6, %hi(PI_STATUS_REG)
    lw      $s0, %lo(PI_STATUS_REG)($t6)
    andi    $t7, $s0, PI_STATUS_DMA_BUSY|PI_STATUS_IO_BUSY
    beqz    $t7, branch_0x800cc138
    nop

branch_0x800cc124:
    lui     $t8, %hi(PI_STATUS_REG)
    lw      $s0, %lo(PI_STATUS_REG)($t8)
    andi    $t9, $s0, PI_STATUS_DMA_BUSY|PI_STATUS_IO_BUSY
    bnez    $t9, branch_0x800cc124
    nop

branch_0x800cc138:
    jal     osVirtualToPhysical
    lw      $a0, 0x30($sp) # a2
    lui     $t0, %hi(PI_DRAM_ADDR_REG)
    sw      $v0, %lo(PI_DRAM_ADDR_REG)($t0)
    lui     $t1, %hi(0x80000308)
    lw      $t1, %lo(0x80000308)($t1)

    lw      $t2, 0x2c($sp) # a1
    lui     $at, %hi(0x1ffeffff)
    ori     $at, $at, %lo(0x1ffeffff)
    or      $t3, $t1, $t2
    and     $t4, $t3, $at
    lui     $t5, %hi(PI_CART_ADDR_REG)
    sw      $t4, %lo(PI_CART_ADDR_REG)($t5)

    lw      $s1, 0x28($sp) # a0
    beqz    $s1, branch_0x800cc188
    addiu   $at, $zero, 0x1
    beq     $s1, $at, branch_0x800cc19c
    nop
    b       branch_0x800cc1b0
    nop

branch_0x800cc188:
    lw      $t6, 0x34($sp) # a3
    lui     $t8, %hi(PI_WR_LEN_REG)
    addiu   $t7, $t6, 0xffff
    b       branch_0x800cc1b8
    sw      $t7, %lo(PI_WR_LEN_REG)($t8)

branch_0x800cc19c:
    lw      $t9, 0x34($sp) # a3
    lui     $t1, %hi(PI_RD_LEN_REG)
    addiu   $t0, $t9, 0xffff
    b       branch_0x800cc1b8
    sw      $t0, %lo(PI_RD_LEN_REG)($t1)

branch_0x800cc1b0:
    b       branch_0x800cc1bc
    addiu   $v0, $zero, 0xffff
branch_0x800cc1b8:
    or      $v0, $zero, $zero

branch_0x800cc1bc:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28


/* Input:
a0
*/
.globl ThreadPi_Main
ThreadPi_Main: # 0x800cc1d0
    addiu   $sp, $sp, 0xffc8
    sw      $a0, 0x38($sp)
    lw      $t6, 0x38($sp)
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x28($sp)
    sw      $t6, 0x24($sp)

branch_0x800cc1f0:
    lw      $t7, 0x24($sp)
    addiu   $a1, $sp, 0x34
    addiu   $a2, $zero, 0x1
    jal     osRecvMesg
    lw      $a0, 0x8($t7)

    # check OS_MESG_TYPE
    lw      $t8, 0x34($sp) # OSIoMesgHdr
    addiu   $at, $zero, 0xa
    lhu     $s0, 0x0($t8)
    beq     $s0, $at, branch_0x800cc2a8
    addiu   $at, $zero, 0xb
    beq     $s0, $at, branch_0x800cc230
    addiu   $at, $zero, 0xc
    beq     $s0, $at, branch_0x800cc26c
    nop
    b       branch_0x800cc2c8
    nop

branch_0x800cc230: # DMAREAD
    lw      $t9, 0x24($sp)
    addiu   $a1, $sp, 0x2c
    addiu   $a2, $zero, 0x1
    jal     osRecvMesg
    lw      $a0, 0x10($t9)

    lw      $t1, 0x24($sp)
    lw      $t0, 0x34($sp)
    or      $a0, $zero, $zero # write PI
    lw      $t9, 0x14($t1) # FunctionPtr
    lw      $a1, 0xc($t0) # Cart adr
    lw      $a2, 0x8($t0) # RAM adr
    jalr    $t9
    lw      $a3, 0x10($t0) # a3: length

    b       branch_0x800cc2d0
    sw      $v0, 0x28($sp)

branch_0x800cc26c: # DMAWRITE
    lw      $t2, 0x24($sp)
    addiu   $a1, $sp, 0x2c
    addiu   $a2, $zero, 0x1
    jal     osRecvMesg
    lw      $a0, 0x10($t2)

    lw      $t4, 0x24($sp)
    lw      $t3, 0x34($sp)
    addiu   $a0, $zero, 0x1 # read PI
    lw      $t9, 0x14($t4)
    lw      $a1, 0xc($t3)
    lw      $a2, 0x8($t3)
    jalr    $t9
    lw      $a3, 0x10($t3)
    b       branch_0x800cc2d0
    sw      $v0, 0x28($sp)

branch_0x800cc2a8: # LOOPBACK
    lw      $t5, 0x34($sp)
    or      $a2, $zero, $zero
    lw      $a0, 0x4($t5)
    jal     osSendMesg
    or      $a1, $t5, $zero

    addiu   $t6, $zero, 0xffff
    b       branch_0x800cc2d0
    sw      $t6, 0x28($sp)

branch_0x800cc2c8:
    addiu   $t7, $zero, 0xffff
    sw      $t7, 0x28($sp)
branch_0x800cc2d0:
    lw      $t8, 0x28($sp)
    bnez    $t8, branch_0x800cc1f0
    nop

    lw      $t0, 0x24($sp)
    addiu   $a1, $sp, 0x30
    addiu   $a2, $zero, 0x1
    jal     osRecvMesg
    lw      $a0, 0xc($t0)

    lw      $t1, 0x34($sp)
    or      $a2, $zero, $zero
    lw      $a0, 0x4($t1)
    jal     osSendMesg
    or      $a1, $t1, $zero

    lw      $t2, 0x24($sp)
    or      $a1, $zero, $zero
    or      $a2, $zero, $zero
    jal     osSendMesg
    lw      $a0, 0x10($t2)

    b       branch_0x800cc1f0
    nop


.globl Function_0x800cc320
Function_0x800cc320: # 0x800cc320
    nop
    nop
    nop
    nop
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop


.globl Function_0x800cc344
Function_0x800cc344: # 0x800cc344
    nop
    nop
    nop

.globl __osSetSR
__osSetSR: # 0x800cc350
    mtc0    $4, $12
    nop
    jr      $ra
    nop

.globl __osGetSR
__osGetSR: # 0x800cc360
    mfc0    $2, $12
    jr      $ra
    nop

.globl Function_0x800cc36c
Function_0x800cc36c: # 0x800cc36c
    nop

.globl __osSetFpcCsr
__osSetFpcCsr: # 0x800cc370
    cfc1    $v0, $ra
    ctc1    $a0, $ra
    jr      $ra
    nop

.globl __osSpRawReadIo
__osSpRawReadIo: # 0x800cc380 # __osSiRawReadIo
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    jal     __osSiDeviceBusy
    sw      $a1, 0x1c($sp)
    beqz    $v0, branch_0x800cc3a4
    nop
    b       branch_0x800cc3c0
    addiu   $v0, $zero, 0xffff
branch_0x800cc3a4:
    lw      $t6, 0x18($sp)
    lui     $at, 0xa000
    lw      $t9, 0x1c($sp)
    or      $t7, $t6, $at
    lw      $t8, 0x0($t7)
    or      $v0, $zero, $zero
    sw      $t8, 0x0($t9)
branch_0x800cc3c0:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl __osSpRawWriteIo
__osSpRawWriteIo: # 0x800cc3d0 # __osSiRawWriteIo
    addiu   $sp, $sp, 0xffe8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x18($sp)
    jal     __osSiDeviceBusy
    sw      $a1, 0x1c($sp)
    beqz    $v0, branch_0x800cc3f4
    nop
    b       branch_0x800cc40c
    addiu   $v0, $zero, 0xffff
branch_0x800cc3f4:
    lw      $t7, 0x18($sp)
    lw      $t6, 0x1c($sp)
    lui     $at, 0xa000
    or      $t8, $t7, $at
    or      $v0, $zero, $zero
    sw      $t6, 0x0($t8)
branch_0x800cc40c:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x800cc41c
Function_0x800cc41c: # 0x800cc41c
    nop

.globl osMapTLBRdb
osMapTLBRdb: # 0x800cc420
    mfc0    $8, $10
    addiu   $t1, $zero, 0x1f
    mtc0    $9, $0
    mtc0    $0, $5
    addiu   $t2, $zero, 0x17
    lui     $t1, 0xc000
    mtc0    $9, $10
    lui     $t1, 0x8000
    srl     $t3, $t1, 6
    or      $t3, $t3, $t2
    mtc0    $11, $2
    addiu   $t1, $zero, 0x1
    mtc0    $9, $3
    nop
    tlbwi
    nop
    nop
    nop
    nop
    mtc0    $8, $10
    jr      $ra
    nop

.globl Function_0x800cc478
Function_0x800cc478: # 0x800cc478
    nop
    nop


/* Input:
a0:
a1:
*/
.globl osPiRawReadIo
osPiRawReadIo: # 0x800cc480
    lui     $t6, %hi(PI_STATUS_REG)
    lw      $a2, %lo(PI_STATUS_REG)($t6)
    addiu   $sp, $sp, 0xfff8
    andi    $t7, $a2, PI_STATUS_DMA_BUSY|PI_STATUS_IO_BUSY
    beqz    $t7, branch_0x800cc4ac
    nop

branch_0x800cc498:
    lui     $t8, %hi(PI_STATUS_REG)
    lw      $a2, %lo(PI_STATUS_REG)($t8)
    andi    $t9, $a2, PI_STATUS_DMA_BUSY|PI_STATUS_IO_BUSY
    bnez    $t9, branch_0x800cc498
    nop

branch_0x800cc4ac:
    lui     $t0, %hi(0x80000308)
    lw      $t0, %lo(0x80000308)($t0)
    lui     $at, %hi(0xa0000000)
    or      $v0, $zero, $zero
    or      $t1, $t0, $a0
    or      $t2, $t1, $at
    lw      $t3, 0x0($t2)
    addiu   $sp, $sp, 0x8
    jr      $ra
    sw      $t3, 0x0($a1)


.globl Function_0x800cc4d4
Function_0x800cc4d4: # 0x800cc4d4
    nop
    nop
    nop

.globl __ull_rshift
__ull_rshift: # 0x800cc4e0
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    dsrlv   $v0, $t6, $t7
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl Function_0x800cc50c
Function_0x800cc50c: # 0x800cc50c
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    ddivu   $zero, $t6, $t7
    bnez    $t7, branch_0x800cc534
    nop
    break   0x7
branch_0x800cc534:
    mfhi    $v0
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl Function_0x800cc548
Function_0x800cc548: # 0x800cc548
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    ddivu   $zero, $t6, $t7
    bnez    $t7, branch_0x800cc570
    nop
    break   0x7
branch_0x800cc570:
    mflo    $v0
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl Function_0x800cc584
Function_0x800cc584: # 0x800cc584
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    dsllv   $v0, $t6, $t7
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl Function_0x800cc5b0
Function_0x800cc5b0: # 0x800cc5b0
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    ddivu   $zero, $t6, $t7
    bnez    $t7, branch_0x800cc5d8
    nop
    break   0x7
branch_0x800cc5d8:
    mfhi    $v0
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl Function_0x800cc5ec
Function_0x800cc5ec: # 0x800cc5ec
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    ddiv    $zero, $t6, $t7
    nop
    bnez    $t7, branch_0x800cc618
    nop
    break   0x7
branch_0x800cc618:
    daddiu  $at, $zero, 0xffff
    bne     $t7, $at, branch_0x800cc634
    daddiu  $at, $zero, 0x1
    dsll32  $at, $at, 31
    bne     $t6, $at, branch_0x800cc634
    nop
    break   0x6
branch_0x800cc634:
    mflo    $v0
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl Function_0x800cc648
Function_0x800cc648: # 0x800cc648
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    dmultu  $t6, $t7
    mflo    $v0
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl Function_0x800cc678
Function_0x800cc678: # 0x800cc678
    lh      $t7, 0x12($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t6, 0x8($sp)
    or      $t8, $t7, $zero
    or      $t9, $t8, $zero
    ddivu   $zero, $t6, $t9
    bnez    $t9, branch_0x800cc6a0
    nop
    break   0x7
branch_0x800cc6a0:
    mflo    $t0
    sd      $t0, 0x0($a0)
    lh      $t2, 0x12($sp)
    ld      $t1, 0x8($sp)
    or      $t3, $t2, $zero
    or      $t4, $t3, $zero
    ddivu   $zero, $t1, $t4
    bnez    $t4, branch_0x800cc6c8
    nop
    break   0x7
branch_0x800cc6c8:
    mfhi    $t5
    sd      $t5, 0x0($a1)
    jr      $ra
    nop

.globl Function_0x800cc6d8
Function_0x800cc6d8: # 0x800cc6d8
    addiu   $sp, $sp, 0xfff8
    sw      $a0, 0x8($sp)
    sw      $a1, 0xc($sp)
    sw      $a2, 0x10($sp)
    sw      $a3, 0x14($sp)
    ld      $t7, 0x10($sp)
    ld      $t6, 0x8($sp)
    ddiv    $zero, $t6, $t7
    nop
    bnez    $t7, branch_0x800cc708
    nop
    break   0x7
branch_0x800cc708:
    daddiu  $at, $zero, 0xffff
    bne     $t7, $at, branch_0x800cc724
    daddiu  $at, $zero, 0x1
    dsll32  $at, $at, 31
    bne     $t6, $at, branch_0x800cc724
    nop
    break   0x6
branch_0x800cc724:
    mfhi    $t8
    sd      $t8, 0x0($sp)
    bgez    $t8, branch_0x800cc73c
    nop
    bgtz    $t7, branch_0x800cc754
    nop
branch_0x800cc73c:
    ld      $t9, 0x0($sp)
    blez    $t9, branch_0x800cc764
    nop
    ld      $t0, 0x10($sp)
    bgez    $t0, branch_0x800cc764
    nop
branch_0x800cc754:
    ld      $t1, 0x0($sp)
    ld      $t2, 0x10($sp)
    daddu   $t3, $t1, $t2
    sd      $t3, 0x0($sp)
branch_0x800cc764:
    lw      $v0, 0x0($sp)
    lw      $v1, 0x4($sp)
    jr      $ra
    addiu   $sp, $sp, 0x8

.globl Function_0x800cc774
Function_0x800cc774: # 0x800cc774
    sw      $a0, 0x0($sp)
    sw      $a1, 0x4($sp)
    sw      $a2, 0x8($sp)
    sw      $a3, 0xc($sp)
    ld      $t7, 0x8($sp)
    ld      $t6, 0x0($sp)
    dsrav   $v0, $t6, $t7
    dsll32  $v1, $v0, 0
    dsra32  $v1, $v1, 0
    jr      $ra
    dsra32  $v0, $v0, 0

.globl osSetTimer
osSetTimer: # 0x800cc7a0
    addiu   $sp, $sp, 0xffe0
    sw      $a0, 0x20($sp)
    lw      $t6, 0x20($sp)
    sw      $ra, 0x14($sp)
    sw      $a2, 0x28($sp)
    sw      $a3, 0x2c($sp)
    sw      $zero, 0x0($t6)
    lw      $t7, 0x20($sp)
    sw      $zero, 0x4($t7)
    lw      $t0, 0x20($sp)
    lw      $t9, 0x34($sp)
    lw      $t8, 0x30($sp)
    sw      $t9, 0xc($t0)
    sw      $t8, 0x8($t0)
    lw      $t2, 0x28($sp)
    lw      $t3, 0x2c($sp)
    bnez    $t2, branch_0x800cc7f0
    nop
    beqz    $t3, branch_0x800cc800
    nop
branch_0x800cc7f0:
    lw      $t1, 0x20($sp)
    sw      $t2, 0x10($t1)
    b       branch_0x800cc814
    sw      $t3, 0x14($t1)
branch_0x800cc800:
    lw      $t6, 0x20($sp)
    lw      $t4, 0x30($sp)
    lw      $t5, 0x34($sp)
    sw      $t4, 0x10($t6)
    sw      $t5, 0x14($t6)
branch_0x800cc814:
    lw      $t7, 0x38($sp)
    lw      $t8, 0x20($sp)
    sw      $t7, 0x18($t8)
    lw      $t0, 0x20($sp)
    lw      $t9, 0x3c($sp)
    sw      $t9, 0x1c($t0)
    jal     Function_0x800cb3e8
    lw      $a0, 0x20($sp)
    lui     $t2, 0x800f
    lw      $t2, -0x7240($t2)
    sw      $v0, 0x18($sp)
    sw      $v1, 0x1c($sp)
    lw      $t1, 0x20($sp)
    lw      $t3, 0x0($t2)
    bne     $t3, $t1, branch_0x800cc860
    nop
    lw      $a0, 0x18($sp)
    jal     Function_0x800cb374
    lw      $a1, 0x1c($sp)
branch_0x800cc860:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    or      $v0, $zero, $zero
    jr      $ra
    nop

.globl Function_0x800cc874
Function_0x800cc874: # 0x800cc874
    nop
    nop
    nop

.globl guMtxF2L
guMtxF2L: # 0x800cc880
    lui     $at, 0x4780
    mtc1    $at, $f0
    or      $v0, $a1, $zero
    addiu   $v1, $a1, 0x20
    or      $a2, $zero, $zero
    or      $a3, $a0, $zero
    addiu   $t4, $zero, 0x4
    addiu   $t3, $zero, 0x2
    lui     $t2, 0xffff
branch_0x800cc8a4:
    or      $a0, $zero, $zero
    or      $t0, $a3, $zero
    lwc1    $f14, 0x4($t0)
    addiu   $a0, $a0, 0x1
    lwc1    $f18, 0x0($t0)
    mul.s   $f16, $f14, $f0
    beq     $a0, $t3, branch_0x800cc924
    nop
branch_0x800cc8c4:
    mul.s   $f14, $f18, $f0
    addiu   $a0, $a0, 0x1
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    addiu   $t0, $t0, 0x8
    trunc.w.s   $f12, $f16
    trunc.w.s   $f14, $f14
    mfc1    $t1, $f12
    mfc1    $a1, $f14
    sra     $t9, $t1, 16
    andi    $t5, $t9, 0xffff
    and     $t8, $a1, $t2
    or      $t6, $t8, $t5
    sll     $t7, $a1, 16
    and     $t9, $t7, $t2
    sw      $t6, -0x4($v0)
    andi    $t8, $t1, 0xffff
    or      $t5, $t9, $t8
    sw      $t5, -0x4($v1)
    lwc1    $f14, 0x4($t0)
    lwc1    $f18, 0x0($t0)
    mul.s   $f16, $f14, $f0
    bne     $a0, $t3, branch_0x800cc8c4
    nop
branch_0x800cc924:
    mul.s   $f14, $f18, $f0
    addiu   $t0, $t0, 0x8
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    trunc.w.s   $f12, $f16
    trunc.w.s   $f14, $f14
    mfc1    $t1, $f12
    mfc1    $a1, $f14
    sra     $t9, $t1, 16
    andi    $t5, $t9, 0xffff
    and     $t8, $a1, $t2
    or      $t6, $t8, $t5
    sll     $t7, $a1, 16
    and     $t9, $t7, $t2
    andi    $t8, $t1, 0xffff
    sw      $t6, -0x4($v0)
    or      $t5, $t9, $t8
    sw      $t5, -0x4($v1)
    addiu   $a2, $a2, 0x1
    bne     $a2, $t4, branch_0x800cc8a4
    addiu   $a3, $a3, 0x10
    jr      $ra
    nop

.globl Function_0x800cc980
Function_0x800cc980: # 0x800cc980
    lui     $at, 0x3f80
    or      $v1, $a0, $zero
    mtc1    $at, $f0
    mtc1    $zero, $f2
    addiu   $a0, $zero, 0x1
    or      $v0, $zero, $zero
    addiu   $a3, $zero, 0x4
    addiu   $a2, $zero, 0x3
    addiu   $a1, $zero, 0x2
branch_0x800cc9a4:
    bnezl   $v0, branch_0x800cc9b8
    swc1    $2, 0x0($3)
    b       branch_0x800cc9b8
    swc1    $0, 0x0($3)

.globl Function_0x800cc9b4
Function_0x800cc9b4: # 0x800cc9b4
    swc1    $2, 0x0($3)
branch_0x800cc9b8:
    bnel    $v0, $a0, branch_0x800cc9cc
    swc1    $2, 0x4($3)
    b       branch_0x800cc9cc
    swc1    $0, 0x4($3)

.globl Function_0x800cc9c8
Function_0x800cc9c8: # 0x800cc9c8
    swc1    $2, 0x4($3)
branch_0x800cc9cc:
    bnel    $v0, $a1, branch_0x800cc9e0
    swc1    $2, 0x8($3)
    b       branch_0x800cc9e0
    swc1    $0, 0x8($3)

.globl Function_0x800cc9dc
Function_0x800cc9dc: # 0x800cc9dc
    swc1    $2, 0x8($3)
branch_0x800cc9e0:
    bnel    $v0, $a2, branch_0x800cc9f4
    swc1    $2, 0xc($3)
    b       branch_0x800cc9f4
    swc1    $0, 0xc($3)

.globl Function_0x800cc9f0
Function_0x800cc9f0: # 0x800cc9f0
    swc1    $2, 0xc($3)
branch_0x800cc9f4:
    addiu   $v0, $v0, 0x1
    bne     $v0, $a3, branch_0x800cc9a4
    addiu   $v1, $v1, 0x10
    jr      $ra
    nop

.globl Function_0x800cca08
Function_0x800cca08: # 0x800cca08
    addiu   $sp, $sp, 0xffa8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x58($sp)
    jal     Function_0x800cc980
    addiu   $a0, $sp, 0x18
    addiu   $a0, $sp, 0x18
    jal     guMtxF2L
    lw      $a1, 0x58($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x58
    jr      $ra
    nop

.globl Function_0x800cca38
Function_0x800cca38: # 0x800cca38
    lui     $at, 0x4780
    mtc1    $at, $zero
    addiu   $sp, $sp, 0xfff0
    or      $v0, $a1, $zero
    addiu   $v1, $a1, 0x20
    or      $a2, $zero, $zero
    or      $t0, $a0, $zero
    addiu   $t4, $zero, 0x4
    addiu   $t3, $zero, 0x2
    lui     $t2, 0xffff
branch_0x800cca60:
    or      $a0, $zero, $zero
    or      $t1, $t0, $zero
branch_0x800cca68:
    lw      $t6, 0x0($v1)
    lw      $t9, 0x0($v0)
    addiu   $a0, $a0, 0x1
    srl     $t7, $t6, 16
    andi    $t8, $t7, 0xffff
    and     $t5, $t9, $t2
    or      $t6, $t8, $t5
    sw      $t6, 0x4($sp)
    lw      $t7, 0x0($v1)
    lw      $t8, 0x0($v0)
    lw      $a1, 0x4($sp)
    andi    $t9, $t7, 0xffff
    sll     $t5, $t8, 16
    mtc1    $a1, $s2
    and     $t6, $t5, $t2
    or      $a3, $t9, $t6
    cvt.s.w $f18, $f18
    mtc1    $a3, $s0
    sw      $a3, 0x0($sp)
    addiu   $v0, $v0, 0x4
    addiu   $v1, $v1, 0x4
    cvt.s.w $f16, $f16
    addiu   $t1, $t1, 0x8
    div.s   $f18, $f18, $f0
    div.s   $f16, $f16, $f0
    swc1    $18, -0x8($9)
    bne     $a0, $t3, branch_0x800cca68
    swc1    $16, -0x4($9)
    addiu   $a2, $a2, 0x1
    bne     $a2, $t4, branch_0x800cca60
    addiu   $t0, $t0, 0x10
    jr      $ra
    addiu   $sp, $sp, 0x10

.globl Function_0x800ccaec
Function_0x800ccaec: # 0x800ccaec
    nop

.globl osEepromRead
osEepromRead: # 0x800ccaf0
    addiu   $sp, $sp, 0xffc8
    sw      $a1, 0x3c($sp)
    lbu     $t7, 0x3f($sp)
    lui     $t6, 0x801e
    addiu   $t6, $t6, 0xaa10
    slti    $at, $t7, 0x41
    sw      $ra, 0x14($sp)
    sw      $a0, 0x38($sp)
    sw      $a2, 0x40($sp)
    sw      $zero, 0x34($sp)
    sw      $zero, 0x30($sp)
    bnez    $at, branch_0x800ccb2c
    sw      $t6, 0x2c($sp)
    b       branch_0x800cccd0
    addiu   $v0, $zero, 0xffff
branch_0x800ccb2c:
    jal     Function_0x800cb6d0
    nop
    lw      $a0, 0x38($sp)
    jal     Function_0x800cd0ac
    addiu   $a1, $sp, 0x28
    sw      $v0, 0x34($sp)
    lw      $t8, 0x34($sp)
    bnez    $t8, branch_0x800ccb60
    nop
    lhu     $t9, 0x28($sp)
    li      $at, 0x8000
    beq     $t9, $at, branch_0x800ccb68
    nop
branch_0x800ccb60:
    b       branch_0x800cccd0
    addiu   $v0, $zero, 0x8
branch_0x800ccb68:
    lbu     $t0, 0x2a($sp)
    andi    $t1, $t0, 0x80
    beqz    $t1, branch_0x800ccb94
    nop
branch_0x800ccb78:
    lw      $a0, 0x38($sp)
    jal     Function_0x800cd0ac
    addiu   $a1, $sp, 0x28
    lbu     $t2, 0x2a($sp)
    andi    $t3, $t2, 0x80
    bnez    $t3, branch_0x800ccb78
    nop
branch_0x800ccb94:
    jal     Function_0x800ccce0
    lbu     $a0, 0x3f($sp)
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0xaa10
    jal     __osSiRawStartDma
    addiu   $a0, $zero, 0x1
    sw      $v0, 0x34($sp)
    lw      $a0, 0x38($sp)
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    sw      $zero, 0x30($sp)
branch_0x800ccbc4:
    lw      $t5, 0x30($sp)
    lw      $t7, 0x30($sp)
    lui     $at, 0x801e
    sll     $t6, $t5, 2
    addu    $at, $at, $t6
    addiu   $t4, $zero, 0xff
    sw      $t4, -0x55f0($at)
    addiu   $t8, $t7, 0x1
    slti    $at, $t8, 0x10
    bnez    $at, branch_0x800ccbc4
    sw      $t8, 0x30($sp)
    lui     $at, 0x801e
    lui     $a1, 0x801e
    sw      $zero, -0x55b4($at)
    addiu   $a1, $a1, 0xaa10
    jal     __osSiRawStartDma
    or      $a0, $zero, $zero
    addiu   $t9, $zero, 0x4
    lui     $at, %hi(Unknown_0x801da900)
    sw      $v0, 0x34($sp)
    sb      $t9, %lo(Unknown_0x801da900)($at)
    lw      $a0, 0x38($sp)
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    sw      $zero, 0x30($sp)
branch_0x800ccc2c:
    lw      $t2, 0x30($sp)
    lw      $t0, 0x2c($sp)
    addiu   $t3, $t2, 0x1
    slti    $at, $t3, 0x4
    addiu   $t1, $t0, 0x1
    sw      $t3, 0x30($sp)
    bnez    $at, branch_0x800ccc2c
    sw      $t1, 0x2c($sp)
    lw      $t4, 0x2c($sp)
    addiu   $t5, $sp, 0x1c
    lwl     $at, 0x0($t4)
    lwr     $at, 0x3($t4)
    sw      $at, 0x0($t5)
    lwl     $t7, 0x4($t4)
    lwr     $t7, 0x7($t4)
    sw      $t7, 0x4($t5)
    lwl     $at, 0x8($t4)
    lwr     $at, 0xb($t4)
    sw      $at, 0x8($t5)
    lbu     $t8, 0x1d($sp)
    andi    $t9, $t8, 0xc0
    sra     $t0, $t9, 4
    bnez    $t0, branch_0x800cccc4
    sw      $t0, 0x34($sp)
    sw      $zero, 0x30($sp)
branch_0x800ccc90:
    lw      $t1, 0x30($sp)
    lw      $t3, 0x40($sp)
    addu    $t2, $sp, $t1
    lbu     $t2, 0x20($t2)
    sb      $t2, 0x0($t3)
    lw      $t4, 0x30($sp)
    lw      $t6, 0x40($sp)
    addiu   $t7, $t4, 0x1
    slti    $at, $t7, 0x8
    addiu   $t5, $t6, 0x1
    sw      $t7, 0x30($sp)
    bnez    $at, branch_0x800ccc90
    sw      $t5, 0x40($sp)
branch_0x800cccc4:
    jal     Function_0x800cb714
    nop
    lw      $v0, 0x34($sp)
branch_0x800cccd0:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x800ccce0
Function_0x800ccce0: # 0x800ccce0
    addiu   $sp, $sp, 0xffe8
    lui     $t6, 0x801e
    addiu   $t6, $t6, 0xaa10
    andi    $a0, $a0, 0xff
    sw      $t6, 0x14($sp)
    sw      $zero, 0x4($sp)
branch_0x800cccf8:
    lw      $t8, 0x4($sp)
    lw      $t0, 0x4($sp)
    lui     $at, 0x801e
    sll     $t9, $t8, 2
    addu    $at, $at, $t9
    addiu   $t7, $zero, 0xff
    sw      $t7, -0x55f0($at)
    addiu   $t1, $t0, 0x1
    slti    $at, $t1, 0x10
    bnez    $at, branch_0x800cccf8
    sw      $t1, 0x4($sp)
    addiu   $t2, $zero, 0x1
    lui     $at, 0x801e
    addiu   $t3, $zero, 0x2
    addiu   $t4, $zero, 0x8
    addiu   $t5, $zero, 0x4
    sw      $t2, -0x55b4($at)
    sb      $t3, 0x8($sp)
    sb      $t4, 0x9($sp)
    sb      $t5, 0xa($sp)
    sb      $a0, 0xb($sp)
    sw      $zero, 0x4($sp)
branch_0x800ccd50:
    lw      $t6, 0x4($sp)
    addu    $t8, $sp, $t6
    sb      $zero, 0xc($t8)
    lw      $t7, 0x4($sp)
    addiu   $t9, $t7, 0x1
    slti    $at, $t9, 0x8
    bnez    $at, branch_0x800ccd50
    sw      $t9, 0x4($sp)
    sw      $zero, 0x4($sp)
branch_0x800ccd74:
    lw      $t0, 0x14($sp)
    sb      $zero, 0x0($t0)
    lw      $t3, 0x4($sp)
    lw      $t1, 0x14($sp)
    addiu   $t4, $t3, 0x1
    slti    $at, $t4, 0x4
    addiu   $t2, $t1, 0x1
    sw      $t4, 0x4($sp)
    bnez    $at, branch_0x800ccd74
    sw      $t2, 0x14($sp)
    addiu   $t6, $sp, 0x8
    lw      $at, 0x0($t6)
    lw      $t5, 0x14($sp)
    addiu   $t1, $zero, 0xfe
    swl     $at, 0x0($t5)
    swr     $at, 0x3($t5)
    lw      $t7, 0x4($t6)
    swl     $t7, 0x4($t5)
    swr     $t7, 0x7($t5)
    lw      $at, 0x8($t6)
    swl     $at, 0x8($t5)
    swr     $at, 0xb($t5)
    lw      $t9, 0x14($sp)
    addiu   $t0, $t9, 0xc
    sw      $t0, 0x14($sp)
    sb      $t1, 0x0($t0)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x800ccde4
Function_0x800ccde4: # 0x800ccde4
    nop
    nop
    nop

.globl osEepromWrite
osEepromWrite: # 0x800ccdf0
    addiu   $sp, $sp, 0xffc8
    sw      $a1, 0x3c($sp)
    lbu     $t7, 0x3f($sp)
    lui     $t6, 0x801e
    addiu   $t6, $t6, 0xaa10
    slti    $at, $t7, 0x41
    sw      $ra, 0x14($sp)
    sw      $a0, 0x38($sp)
    sw      $a2, 0x40($sp)
    sw      $zero, 0x34($sp)
    bnez    $at, branch_0x800cce28
    sw      $t6, 0x2c($sp)
    b       branch_0x800ccf90
    addiu   $v0, $zero, 0xffff
branch_0x800cce28:
    jal     Function_0x800cb6d0
    nop
    lw      $a0, 0x38($sp)
    jal     Function_0x800cd0ac
    addiu   $a1, $sp, 0x1c
    sw      $v0, 0x34($sp)
    lw      $t8, 0x34($sp)
    bnez    $t8, branch_0x800cce5c
    nop
    lhu     $t9, 0x1c($sp)
    li      $at, 0x8000
    beq     $t9, $at, branch_0x800cce64
    nop
branch_0x800cce5c:
    b       branch_0x800ccf90
    addiu   $v0, $zero, 0x8
branch_0x800cce64:
    lbu     $t0, 0x1e($sp)
    andi    $t1, $t0, 0x80
    beqz    $t1, branch_0x800cce90
    nop
branch_0x800cce74:
    lw      $a0, 0x38($sp)
    jal     Function_0x800cd0ac
    addiu   $a1, $sp, 0x1c
    lbu     $t2, 0x1e($sp)
    andi    $t3, $t2, 0x80
    bnez    $t3, branch_0x800cce74
    nop
branch_0x800cce90:
    lbu     $a0, 0x3f($sp)
    jal     Function_0x800ccfa0
    lw      $a1, 0x40($sp)
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0xaa10
    jal     __osSiRawStartDma
    addiu   $a0, $zero, 0x1
    sw      $v0, 0x34($sp)
    lw      $a0, 0x38($sp)
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    sw      $zero, 0x30($sp)
branch_0x800ccec4:
    lw      $t5, 0x30($sp)
    lw      $t7, 0x30($sp)
    lui     $at, 0x801e
    sll     $t6, $t5, 2
    addu    $at, $at, $t6
    addiu   $t4, $zero, 0xff
    sw      $t4, -0x55f0($at)
    addiu   $t8, $t7, 0x1
    slti    $at, $t8, 0x10
    bnez    $at, branch_0x800ccec4
    sw      $t8, 0x30($sp)
    lui     $at, 0x801e
    lui     $a1, 0x801e
    sw      $zero, -0x55b4($at)
    addiu   $a1, $a1, 0xaa10
    jal     __osSiRawStartDma
    or      $a0, $zero, $zero
    addiu   $t9, $zero, 0x5
    lui     $at, %hi(Unknown_0x801da900)
    sw      $v0, 0x34($sp)
    sb      $t9, %lo(Unknown_0x801da900)($at)
    lw      $a0, 0x38($sp)
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    sw      $zero, 0x30($sp)
branch_0x800ccf2c:
    lw      $t2, 0x30($sp)
    lw      $t0, 0x2c($sp)
    addiu   $t3, $t2, 0x1
    slti    $at, $t3, 0x4
    addiu   $t1, $t0, 0x1
    sw      $t3, 0x30($sp)
    bnez    $at, branch_0x800ccf2c
    sw      $t1, 0x2c($sp)
    lw      $t4, 0x2c($sp)
    addiu   $t5, $sp, 0x20
    lwl     $at, 0x0($t4)
    lwr     $at, 0x3($t4)
    sw      $at, 0x0($t5)
    lwl     $t7, 0x4($t4)
    lwr     $t7, 0x7($t4)
    sw      $t7, 0x4($t5)
    lwl     $at, 0x8($t4)
    lwr     $at, 0xb($t4)
    sw      $at, 0x8($t5)
    lbu     $t8, 0x21($sp)
    andi    $t9, $t8, 0xc0
    sra     $t0, $t9, 4
    jal     Function_0x800cb714
    sw      $t0, 0x34($sp)
    lw      $v0, 0x34($sp)
branch_0x800ccf90:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x38
    jr      $ra
    nop

.globl Function_0x800ccfa0
Function_0x800ccfa0: # 0x800ccfa0
    addiu   $sp, $sp, 0xffe8
    lui     $t6, 0x801e
    addiu   $t6, $t6, 0xaa10
    andi    $a0, $a0, 0xff
    sw      $t6, 0x14($sp)
    sw      $zero, 0x4($sp)
branch_0x800ccfb8:
    lw      $t8, 0x4($sp)
    lw      $t0, 0x4($sp)
    lui     $at, 0x801e
    sll     $t9, $t8, 2
    addu    $at, $at, $t9
    addiu   $t7, $zero, 0xff
    sw      $t7, -0x55f0($at)
    addiu   $t1, $t0, 0x1
    slti    $at, $t1, 0x10
    bnez    $at, branch_0x800ccfb8
    sw      $t1, 0x4($sp)
    addiu   $t2, $zero, 0x1
    lui     $at, 0x801e
    addiu   $t3, $zero, 0xa
    addiu   $t4, $zero, 0x1
    addiu   $t5, $zero, 0x5
    sw      $t2, -0x55b4($at)
    sb      $t3, 0x8($sp)
    sb      $t4, 0x9($sp)
    sb      $t5, 0xa($sp)
    sb      $a0, 0xb($sp)
    sw      $zero, 0x4($sp)
branch_0x800cd010:
    lw      $t8, 0x4($sp)
    lbu     $t6, 0x0($a1)
    addiu   $a1, $a1, 0x1
    addu    $t7, $sp, $t8
    sb      $t6, 0xc($t7)
    lw      $t9, 0x4($sp)
    addiu   $t0, $t9, 0x1
    slti    $at, $t0, 0x8
    bnez    $at, branch_0x800cd010
    sw      $t0, 0x4($sp)
    sw      $zero, 0x4($sp)
branch_0x800cd03c:
    lw      $t1, 0x14($sp)
    sb      $zero, 0x0($t1)
    lw      $t4, 0x4($sp)
    lw      $t2, 0x14($sp)
    addiu   $t5, $t4, 0x1
    slti    $at, $t5, 0x4
    addiu   $t3, $t2, 0x1
    sw      $t5, 0x4($sp)
    bnez    $at, branch_0x800cd03c
    sw      $t3, 0x14($sp)
    addiu   $t8, $sp, 0x8
    lw      $at, 0x0($t8)
    lw      $t6, 0x14($sp)
    addiu   $t2, $zero, 0xfe
    swl     $at, 0x0($t6)
    swr     $at, 0x3($t6)
    lw      $t9, 0x4($t8)
    swl     $t9, 0x4($t6)
    swr     $t9, 0x7($t6)
    lw      $at, 0x8($t8)
    swl     $at, 0x8($t6)
    swr     $at, 0xb($t6)
    lw      $t0, 0x14($sp)
    addiu   $t1, $t0, 0xc
    sw      $t1, 0x14($sp)
    sb      $t2, 0x0($t1)
    jr      $ra
    addiu   $sp, $sp, 0x18

.globl Function_0x800cd0ac
Function_0x800cd0ac: # 0x800cd0ac
    addiu   $sp, $sp, 0xffd0
    lui     $t6, 0x801e
    addiu   $t6, $t6, 0xaa10
    sw      $ra, 0x14($sp)
    sw      $a0, 0x30($sp)
    sw      $a1, 0x34($sp)
    sw      $zero, 0x2c($sp)
    sw      $t6, 0x24($sp)
    sw      $zero, 0x28($sp)
branch_0x800cd0d0:
    lw      $t7, 0x28($sp)
    lw      $t9, 0x28($sp)
    lui     $at, 0x801e
    sll     $t8, $t7, 2
    addu    $at, $at, $t8
    sw      $zero, -0x55f0($at)
    addiu   $t0, $t9, 0x1
    slti    $at, $t0, 0x10
    bnez    $at, branch_0x800cd0d0
    sw      $t0, 0x28($sp)
    lui     $t2, 0x801e
    addiu   $t1, $zero, 0x1
    lui     $at, 0x801e
    addiu   $t2, $t2, 0xaa10
    sw      $t1, -0x55b4($at)
    sw      $t2, 0x24($sp)
    sw      $zero, 0x28($sp)
branch_0x800cd114:
    lw      $t3, 0x24($sp)
    sb      $zero, 0x0($t3)
    lw      $t6, 0x28($sp)
    lw      $t4, 0x24($sp)
    addiu   $t7, $t6, 0x1
    slti    $at, $t7, 0x4
    addiu   $t5, $t4, 0x1
    sw      $t7, 0x28($sp)
    bnez    $at, branch_0x800cd114
    sw      $t5, 0x24($sp)
    addiu   $t8, $zero, 0xff
    addiu   $t9, $zero, 0x1
    addiu   $t0, $zero, 0x3
    addiu   $t1, $zero, 0xff
    addiu   $t2, $zero, 0xff
    addiu   $t3, $zero, 0xff
    addiu   $t4, $zero, 0xff
    sb      $t8, 0x1c($sp)
    sb      $t9, 0x1d($sp)
    sb      $t0, 0x1e($sp)
    sb      $zero, 0x1f($sp)
    sb      $t1, 0x20($sp)
    sb      $t2, 0x21($sp)
    sb      $t3, 0x22($sp)
    sb      $t4, 0x23($sp)
    addiu   $t6, $sp, 0x1c
    lw      $at, 0x0($t6)
    lw      $t5, 0x24($sp)
    addiu   $t2, $zero, 0xfe
    lui     $a1, 0x801e
    swl     $at, 0x0($t5)
    swr     $at, 0x3($t5)
    lw      $t9, 0x4($t6)
    addiu   $a1, $a1, 0xaa10
    addiu   $a0, $zero, 0x1
    swl     $t9, 0x4($t5)
    swr     $t9, 0x7($t5)
    lw      $t0, 0x24($sp)
    addiu   $t1, $t0, 0x8
    sw      $t1, 0x24($sp)
    jal     __osSiRawStartDma
    sb      $t2, 0x0($t1)
    sw      $v0, 0x2c($sp)
    lw      $a0, 0x30($sp)
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    addiu   $t3, $zero, 0x5
    lui     $at, %hi(Unknown_0x801da900)
    lui     $a1, 0x801e
    sb      $t3, %lo(Unknown_0x801da900)($at)
    addiu   $a1, $a1, 0xaa10
    jal     __osSiRawStartDma
    or      $a0, $zero, $zero
    sw      $v0, 0x2c($sp)
    lw      $a0, 0x30($sp)
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lw      $t4, 0x2c($sp)
    beqz    $t4, branch_0x800cd214
    nop
    b       branch_0x800cd2c0
    or      $v0, $t4, $zero
branch_0x800cd214:
    lui     $t8, 0x801e
    addiu   $t8, $t8, 0xaa10
    sw      $t8, 0x24($sp)
    sw      $zero, 0x28($sp)
branch_0x800cd224:
    lw      $t7, 0x24($sp)
    sb      $zero, 0x0($t7)
    lw      $t9, 0x28($sp)
    lw      $t5, 0x24($sp)
    addiu   $t0, $t9, 0x1
    slti    $at, $t0, 0x4
    addiu   $t6, $t5, 0x1
    sw      $t0, 0x28($sp)
    bnez    $at, branch_0x800cd224
    sw      $t6, 0x24($sp)
    lw      $t1, 0x24($sp)
    addiu   $t2, $sp, 0x1c
    lwl     $at, 0x0($t1)
    lwr     $at, 0x3($t1)
    sw      $at, 0x0($t2)
    lwl     $t4, 0x4($t1)
    lwr     $t4, 0x7($t1)
    sw      $t4, 0x4($t2)
    lbu     $t8, 0x1e($sp)
    lw      $t6, 0x34($sp)
    andi    $t7, $t8, 0xc0
    sra     $t5, $t7, 4
    sb      $t5, 0x3($t6)
    lbu     $t9, 0x21($sp)
    lbu     $t3, 0x20($sp)
    lw      $t1, 0x34($sp)
    sll     $t0, $t9, 8
    or      $t2, $t0, $t3
    sh      $t2, 0x0($t1)
    lw      $t8, 0x34($sp)
    lbu     $t4, 0x22($sp)
    sb      $t4, 0x2($t8)
    lw      $t7, 0x34($sp)
    lbu     $t5, 0x3($t7)
    beqz    $t5, branch_0x800cd2bc
    nop
    b       branch_0x800cd2c0
    or      $v0, $t5, $zero
branch_0x800cd2bc:
    or      $v0, $zero, $zero
branch_0x800cd2c0:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl Function_0x800cd2d0
Function_0x800cd2d0: # 0x800cd2d0
    or      $v1, $zero, $zero
    or      $v0, $a0, $zero
    blez    $a1, branch_0x800cd344
    or      $a2, $zero, $zero
    andi    $a3, $a1, 0x3
    beqz    $a3, branch_0x800cd310
    or      $a0, $a3, $zero
branch_0x800cd2ec:
    lbu     $t6, 0x0($v0)
    addiu   $a2, $a2, 0x1
    addu    $v1, $v1, $t6
    andi    $t7, $v1, 0xffff
    or      $v1, $t7, $zero
    bne     $a0, $a2, branch_0x800cd2ec
    addiu   $v0, $v0, 0x1
    beq     $a2, $a1, branch_0x800cd344
    nop
branch_0x800cd310:
    lbu     $t8, 0x0($v0)
    lbu     $t0, 0x1($v0)
    lbu     $t2, 0x2($v0)
    addu    $t9, $v1, $t8
    lbu     $t4, 0x3($v0)
    addu    $t1, $t9, $t0
    addu    $t3, $t1, $t2
    addu    $v1, $t3, $t4
    andi    $t5, $v1, 0xffff
    addiu   $a2, $a2, 0x4
    or      $v1, $t5, $zero
    bne     $a2, $a1, branch_0x800cd310
    addiu   $v0, $v0, 0x4
branch_0x800cd344:
    jr      $ra
    andi    $v0, $v1, 0xffff

.globl Function_0x800cd34c
Function_0x800cd34c: # 0x800cd34c
    sh      $zero, 0x0($a2)
    sh      $zero, 0x0($a1)
    lhu     $v0, 0x0($a0)
    addiu   $a3, $a0, 0x4
    addu    $t8, $zero, $v0
    sh      $t8, 0x0($a1)
    lhu     $t9, 0x0($a2)
    nor     $t5, $v0, $zero
    addu    $t6, $t9, $t5
    sh      $t6, 0x0($a2)
    lhu     $t7, 0x0($a1)
    lhu     $v0, 0x2($a0)
    addiu   $a0, $zero, 0x1c
    addu    $t8, $t7, $v0
    sh      $t8, 0x0($a1)
    lhu     $t9, 0x0($a2)
    nor     $t5, $v0, $zero
    addu    $t6, $t9, $t5
    sh      $t6, 0x0($a2)
    addiu   $t1, $a3, 0x2
    addiu   $t2, $a3, 0x4
    addiu   $t3, $a3, 0x6
    addiu   $v1, $zero, 0x4
branch_0x800cd3a8:
    lhu     $v0, 0x0($a3)
    lhu     $t7, 0x0($a1)
    nor     $t5, $v0, $zero
    addu    $t8, $t7, $v0
    sh      $t8, 0x0($a1)
    lhu     $t9, 0x0($a2)
    addiu   $v1, $v1, 0x8
    addu    $t6, $t9, $t5
    sh      $t6, 0x0($a2)
    lhu     $t7, 0x0($a1)
    lhu     $v0, 0x0($t1)
    addiu   $a3, $a3, 0x8
    addu    $t8, $t7, $v0
    sh      $t8, 0x0($a1)
    lhu     $t9, 0x0($a2)
    nor     $t5, $v0, $zero
    addu    $t6, $t9, $t5
    sh      $t6, 0x0($a2)
    lhu     $t7, 0x0($a1)
    lhu     $v0, 0x0($t2)
    addiu   $t1, $t1, 0x8
    addu    $t8, $t7, $v0
    sh      $t8, 0x0($a1)
    lhu     $t9, 0x0($a2)
    nor     $t5, $v0, $zero
    addu    $t6, $t9, $t5
    sh      $t6, 0x0($a2)
    lhu     $t7, 0x0($a1)
    lhu     $v0, 0x0($t3)
    addiu   $t2, $t2, 0x8
    addu    $t8, $t7, $v0
    sh      $t8, 0x0($a1)
    lhu     $t9, 0x0($a2)
    nor     $t5, $v0, $zero
    addu    $t6, $t9, $t5
    sh      $t6, 0x0($a2)
    bne     $v1, $a0, branch_0x800cd3a8
    addiu   $t3, $t3, 0x8
    jr      $ra
    or      $v0, $zero, $zero

.globl Function_0x800cd448
Function_0x800cd448: # 0x800cd448
    addiu   $sp, $sp, 0xff60
    sw      $ra, 0x3c($sp)
    sw      $s6, 0x38($sp)
    sw      $s5, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    lbu     $t6, 0x65($a0)
    or      $s2, $a0, $zero
    or      $s4, $a2, $zero
    beqz    $t6, branch_0x800cd498
    or      $s6, $a1, $zero
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($a0)
    beqz    $v0, branch_0x800cd49c
    addiu   $t7, $zero, 0xffff
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd498:
    addiu   $t7, $zero, 0xffff
branch_0x800cd49c:
    jal     osGetCount
    sw      $t7, 0x0($s4)
    sw      $v0, 0x4($s4)
    lw      $t9, 0xc($s6)
    lw      $t8, 0x8($s6)
    sw      $t9, 0xc($s4)
    sw      $t8, 0x8($s4)
    lw      $t1, 0x14($s6)
    lw      $t0, 0x10($s6)
    addiu   $s1, $sp, 0x7c
    or      $s3, $zero, $zero
    or      $s5, $s1, $zero
    addiu   $s0, $sp, 0x9c
    sw      $t1, 0x14($s4)
    sw      $t0, 0x10($s4)
branch_0x800cd4d8:
    sb      $s3, 0x65($s2)
    jal     Function_0x800cdeb0
    or      $a0, $s2, $zero
    beqz    $v0, branch_0x800cd4f4
    or      $a2, $zero, $zero
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd4f4:
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    jal     Function_0x800ce990
    or      $a3, $s5, $zero
    beqz    $v0, branch_0x800cd514
    ori     $t3, $s3, 0x80
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd514:
    sb      $t3, 0x7c($sp)
    addiu   $v0, $sp, 0x7d
branch_0x800cd51c:
    lbu     $t4, 0x0($v0)
    addiu   $v0, $v0, 0x1
    sltu    $at, $v0, $s0
    nor     $t5, $t4, $zero
    bnez    $at, branch_0x800cd51c
    sb      $t5, -0x1($v0)
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    or      $a2, $zero, $zero
    jal     Function_0x800ced20
    or      $a3, $s5, $zero
    beqz    $v0, branch_0x800cd55c
    or      $a2, $zero, $zero
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd55c:
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    jal     Function_0x800ce990
    addiu   $a3, $sp, 0x5c
    beqz    $v0, branch_0x800cd57c
    addiu   $v1, $sp, 0x5c
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd57c:
    addiu   $v0, $sp, 0x7c
branch_0x800cd580:
    lbu     $t6, 0x0($v1)
    lbu     $t7, 0x0($v0)
    nop
    bne     $t6, $t7, branch_0x800cd5a8
    addiu   $t8, $sp, 0x7c
    addiu   $v1, $v1, 0x1
    sltu    $at, $v1, $s1
    bnez    $at, branch_0x800cd580
    addiu   $v0, $v0, 0x1
    addiu   $t8, $sp, 0x7c
branch_0x800cd5a8:
    bne     $v1, $t8, branch_0x800cd610
    or      $a0, $s2, $zero
    blez    $s3, branch_0x800cd600
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s2)
    beqz    $v0, branch_0x800cd5d0
    or      $a2, $zero, $zero
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd5d0:
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    jal     Function_0x800ce990
    or      $a3, $s5, $zero
    beqz    $v0, branch_0x800cd5f4
    lbu     $t9, 0x7c($sp)
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)

.globl Function_0x800cd5f0
Function_0x800cd5f0: # 0x800cd5f0
    lbu     $t9, 0x7c($sp)
branch_0x800cd5f4:
    addiu   $at, $zero, 0x80
    bne     $t9, $at, branch_0x800cd610
    nop
branch_0x800cd600:
    addiu   $s3, $s3, 0x1
    slti    $at, $s3, 0x3e
    bnez    $at, branch_0x800cd4d8
    nop
branch_0x800cd610:
    sb      $zero, 0x65($s2)
    jal     Function_0x800cdeb0
    or      $a0, $s2, $zero
    beqz    $v0, branch_0x800cd62c
    or      $a0, $s4, $zero
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd62c:
    blez    $s3, branch_0x800cd63c
    addiu   $a1, $s4, 0x1c
    b       branch_0x800cd640
    addiu   $v0, $zero, 0x1
branch_0x800cd63c:
    or      $v0, $zero, $zero
branch_0x800cd640:
    lhu     $t0, 0x18($s6)
    sb      $s3, 0x1a($s4)
    andi    $t1, $t0, 0xfffe
    or      $t2, $t1, $v0
    sh      $t2, 0x18($s4)
    lbu     $t3, 0x1b($s6)
    addiu   $a2, $s4, 0x1e
    jal     Function_0x800cd34c
    sb      $t3, 0x1b($s4)
    addiu   $t4, $zero, 0x1
    addiu   $t5, $zero, 0x3
    addiu   $t6, $zero, 0x4
    addiu   $t7, $zero, 0x6
    sh      $t4, 0x48($sp)
    sh      $t5, 0x4a($sp)
    sh      $t6, 0x4c($sp)
    sh      $t7, 0x4e($sp)
    addiu   $s0, $sp, 0x48
    addiu   $s1, $sp, 0x50
branch_0x800cd68c:
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    lhu     $a2, 0x0($s0)
    addiu   $t8, $zero, 0x1
    sw      $t8, 0x10($sp)
    jal     Function_0x800ced20
    or      $a3, $s4, $zero
    beqz    $v0, branch_0x800cd6b8
    addiu   $s0, $s0, 0x2
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd6b8:
    sltu    $at, $s0, $s1
    bnez    $at, branch_0x800cd68c
    nop
    lw      $a0, 0x4($s2)
    lw      $a1, 0x8($s2)
    addiu   $a2, $zero, 0x1
    jal     Function_0x800ce990
    or      $a3, $s5, $zero
    beqz    $v0, branch_0x800cd6e8
    or      $v1, $s4, $zero
    b       branch_0x800cd770
    lw      $ra, 0x3c($sp)
branch_0x800cd6e8:
    addiu   $v0, $sp, 0x7c
    addiu   $a0, $sp, 0x9c
branch_0x800cd6f0:
    lbu     $t9, 0x0($v0)
    lbu     $t0, 0x0($v1)
    nop
    beq     $t9, $t0, branch_0x800cd70c
    nop
    b       branch_0x800cd76c
    addiu   $v0, $zero, 0xa
branch_0x800cd70c:
    lbu     $t1, 0x1($v0)
    lbu     $t2, 0x1($v1)
    nop
    beq     $t1, $t2, branch_0x800cd728
    nop
    b       branch_0x800cd76c
    addiu   $v0, $zero, 0xa
branch_0x800cd728:
    lbu     $t3, 0x2($v0)
    lbu     $t4, 0x2($v1)
    nop
    beq     $t3, $t4, branch_0x800cd744
    nop
    b       branch_0x800cd76c
    addiu   $v0, $zero, 0xa
branch_0x800cd744:
    lbu     $t5, 0x3($v0)
    lbu     $t6, 0x3($v1)
    addiu   $v0, $v0, 0x4
    beq     $t5, $t6, branch_0x800cd760
    nop
    b       branch_0x800cd76c
    addiu   $v0, $zero, 0xa
branch_0x800cd760:
    bne     $v0, $a0, branch_0x800cd6f0
    addiu   $v1, $v1, 0x4
    or      $v0, $zero, $zero
branch_0x800cd76c:
    lw      $ra, 0x3c($sp)
branch_0x800cd770:
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    lw      $s5, 0x34($sp)
    lw      $s6, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0xa0

.globl Function_0x800cd794
Function_0x800cd794: # 0x800cd794
    addiu   $sp, $sp, 0xffa0
    sw      $ra, 0x3c($sp)
    sw      $s6, 0x38($sp)
    sw      $s5, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    lbu     $t6, 0x65($a0)
    or      $s2, $a1, $zero
    beqz    $t6, branch_0x800cd7e0
    or      $s3, $a0, $zero
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($a0)
    beqz    $v0, branch_0x800cd7e4
    addiu   $t7, $zero, 0x1
    b       branch_0x800cd8d4
    lw      $ra, 0x3c($sp)
branch_0x800cd7e0:
    addiu   $t7, $zero, 0x1
branch_0x800cd7e4:
    addiu   $t8, $zero, 0x3
    addiu   $t9, $zero, 0x4
    addiu   $t0, $zero, 0x6
    sh      $t7, 0x58($sp)
    sh      $t8, 0x5a($sp)
    sh      $t9, 0x5c($sp)
    sh      $t0, 0x5e($sp)
    addiu   $s1, $zero, 0x1
    addiu   $s0, $sp, 0x5a
    addiu   $s6, $sp, 0x50
    addiu   $s5, $zero, 0x4
    addiu   $s4, $sp, 0x52
branch_0x800cd814:
    lw      $a0, 0x4($s3)
    lw      $a1, 0x8($s3)
    lhu     $a2, 0x0($s0)
    jal     Function_0x800ce990
    or      $a3, $s2, $zero
    beqz    $v0, branch_0x800cd838
    or      $a0, $s2, $zero
    b       branch_0x800cd8d4
    lw      $ra, 0x3c($sp)
branch_0x800cd838:
    or      $a1, $s4, $zero
    jal     Function_0x800cd34c
    or      $a2, $s6, $zero
    lhu     $t1, 0x52($sp)
    lhu     $t2, 0x1c($s2)
    lhu     $t3, 0x50($sp)
    bne     $t1, $t2, branch_0x800cd868
    nop
    lhu     $t4, 0x1e($s2)
    nop
    beq     $t3, $t4, branch_0x800cd874
    nop
branch_0x800cd868:
    addiu   $s1, $s1, 0x1
    bne     $s1, $s5, branch_0x800cd814
    addiu   $s0, $s0, 0x2
branch_0x800cd874:
    bne     $s1, $s5, branch_0x800cd884
    or      $s0, $zero, $zero
    b       branch_0x800cd8d0
    addiu   $v0, $zero, 0xa
branch_0x800cd884:
    addiu   $s4, $sp, 0x58
branch_0x800cd888:
    beq     $s0, $s1, branch_0x800cd8c0
    sll     $t5, $s0, 1
    addu    $t6, $s4, $t5
    lhu     $a2, 0x0($t6)
    lw      $a0, 0x4($s3)
    lw      $a1, 0x8($s3)
    addiu   $t7, $zero, 0x1
    sw      $t7, 0x10($sp)
    jal     Function_0x800ced20
    or      $a3, $s2, $zero
    beqz    $v0, branch_0x800cd8c4
    addiu   $s0, $s0, 0x1
    b       branch_0x800cd8d4
    lw      $ra, 0x3c($sp)
branch_0x800cd8c0:
    addiu   $s0, $s0, 0x1
branch_0x800cd8c4:
    bne     $s0, $s5, branch_0x800cd888
    nop
    or      $v0, $zero, $zero
branch_0x800cd8d0:
    lw      $ra, 0x3c($sp)
branch_0x800cd8d4:
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    lw      $s5, 0x34($sp)
    lw      $s6, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x60

.globl Function_0x800cd8f8
Function_0x800cd8f8: # 0x800cd8f8
    addiu   $sp, $sp, 0xff78
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lbu     $t6, 0x65($a0)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x800cd92c
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($a0)
    beqz    $v0, branch_0x800cd92c
    nop
    b       branch_0x800cdaf0
    lw      $ra, 0x1c($sp)
branch_0x800cd92c:
    lw      $a0, 0x4($s0)
    lw      $a1, 0x8($s0)
    addiu   $a2, $zero, 0x1
    jal     Function_0x800ce990
    addiu   $a3, $sp, 0x60
    beqz    $v0, branch_0x800cd950
    addiu   $a0, $sp, 0x60
    b       branch_0x800cdaf0
    lw      $ra, 0x1c($sp)
branch_0x800cd950:
    addiu   $a1, $sp, 0x82
    jal     Function_0x800cd34c
    addiu   $a2, $sp, 0x80
    lhu     $t7, 0x82($sp)
    lhu     $t8, 0x7c($sp)
    addiu   $a1, $sp, 0x60
    bne     $t7, $t8, branch_0x800cd984
    sw      $a1, 0x38($sp)
    lhu     $t9, 0x80($sp)
    lhu     $t1, 0x7e($sp)
    nop
    beq     $t9, $t1, branch_0x800cd9d4
    lw      $t3, 0x38($sp)
branch_0x800cd984:
    jal     Function_0x800cd794
    or      $a0, $s0, $zero
    addiu   $at, $zero, 0xa
    bne     $v0, $at, branch_0x800cd9c0
    or      $v1, $v0, $zero
    or      $a0, $s0, $zero
    addiu   $a1, $sp, 0x60
    jal     Function_0x800cd448
    addiu   $a2, $sp, 0x40
    beqz    $v0, branch_0x800cd9b8
    addiu   $t2, $sp, 0x40
    b       branch_0x800cdaf0
    lw      $ra, 0x1c($sp)
branch_0x800cd9b8:
    b       branch_0x800cd9d0
    sw      $t2, 0x38($sp)
branch_0x800cd9c0:
    beqz    $v0, branch_0x800cd9d4
    lw      $t3, 0x38($sp)
    b       branch_0x800cdaec
    or      $v0, $v1, $zero
branch_0x800cd9d0:
    lw      $t3, 0x38($sp)
branch_0x800cd9d4:
    or      $a0, $s0, $zero
    lhu     $t4, 0x18($t3)
    or      $a1, $t3, $zero
    andi    $t5, $t4, 0x1
    bnez    $t5, branch_0x800cda24
    lw      $v1, 0x38($sp)
    jal     Function_0x800cd448
    addiu   $a2, $sp, 0x40
    beqz    $v0, branch_0x800cda08
    lhu     $t7, 0x58($sp)
    b       branch_0x800cdaf0
    lw      $ra, 0x1c($sp)

.globl Function_0x800cda04
Function_0x800cda04: # 0x800cda04
    lhu     $t7, 0x58($sp)
branch_0x800cda08:
    addiu   $t6, $sp, 0x40
    andi    $t8, $t7, 0x1
    bnez    $t8, branch_0x800cda20
    sw      $t6, 0x38($sp)
    b       branch_0x800cdaec
    addiu   $v0, $zero, 0xb
branch_0x800cda20:
    lw      $v1, 0x38($sp)
branch_0x800cda24:
    or      $a0, $zero, $zero
    or      $v0, $s0, $zero
    addiu   $t0, $zero, 0x20
    addiu   $a1, $v1, 0x1
    addiu   $a2, $v1, 0x2
    addiu   $a3, $v1, 0x3
branch_0x800cda3c:
    lbu     $t9, 0x0($v1)
    addiu   $a0, $a0, 0x4
    sb      $t9, 0xc($v0)
    lbu     $t1, 0x0($a1)
    addiu   $v0, $v0, 0x4
    sb      $t1, 0x9($v0)
    lbu     $t2, 0x0($a2)
    addiu   $v1, $v1, 0x4
    sb      $t2, 0xa($v0)
    lbu     $t4, 0x0($a3)
    addiu   $a1, $a1, 0x4
    addiu   $a2, $a2, 0x4
    addiu   $a3, $a3, 0x4
    bne     $a0, $t0, branch_0x800cda3c
    sb      $t4, 0xb($v0)
    lw      $t5, 0x38($sp)
    addiu   $t1, $zero, 0x10
    lbu     $t3, 0x1b($t5)
    addiu   $t2, $zero, 0x8
    sw      $t3, 0x4c($s0)
    lw      $t6, 0x38($sp)
    lw      $a0, 0x4($s0)
    lbu     $t7, 0x1a($t6)
    lw      $a1, 0x8($s0)
    andi    $v0, $t7, 0xff
    sll     $v1, $v0, 3
    sll     $t8, $v0, 1
    addiu   $t0, $v1, 0x8
    addiu   $t9, $t8, 0x3
    addu    $t4, $t0, $v1
    sw      $t9, 0x60($s0)
    sw      $t1, 0x50($s0)
    sw      $t2, 0x54($s0)
    sw      $t0, 0x58($s0)
    sw      $t4, 0x5c($s0)
    addiu   $a2, $zero, 0x7
    addiu   $a3, $s0, 0x2c
    jal     Function_0x800ce990
    sb      $t7, 0x64($s0)
    beqz    $v0, branch_0x800cdae8
    nop
    b       branch_0x800cdaf0
    lw      $ra, 0x1c($sp)
branch_0x800cdae8:
    or      $v0, $zero, $zero
branch_0x800cdaec:
    lw      $ra, 0x1c($sp)
branch_0x800cdaf0:
    lw      $s0, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x88

.globl Function_0x800cdafc
Function_0x800cdafc: # 0x800cdafc
    addiu   $sp, $sp, 0xffb0
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lbu     $t6, 0x65($a0)
    or      $s0, $a0, $zero
    beqz    $t6, branch_0x800cdb30
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($a0)
    beqz    $v0, branch_0x800cdb30
    nop
    b       branch_0x800cdc08
    lw      $ra, 0x1c($sp)
branch_0x800cdb30:
    lw      $a0, 0x4($s0)
    lw      $a1, 0x8($s0)
    addiu   $a2, $zero, 0x1
    jal     Function_0x800ce990
    addiu   $a3, $sp, 0x2c
    beqz    $v0, branch_0x800cdb7c
    addiu   $at, $zero, 0x2
    beq     $v0, $at, branch_0x800cdb5c
    addiu   $a2, $zero, 0x1
    b       branch_0x800cdc08
    lw      $ra, 0x1c($sp)
branch_0x800cdb5c:
    lw      $a0, 0x4($s0)
    lw      $a1, 0x8($s0)
    jal     Function_0x800ce990
    addiu   $a3, $sp, 0x2c
    beqz    $v0, branch_0x800cdb80
    or      $v1, $s0, $zero
    b       branch_0x800cdc08
    lw      $ra, 0x1c($sp)
branch_0x800cdb7c:
    or      $v1, $s0, $zero
branch_0x800cdb80:
    addiu   $v0, $sp, 0x2c
    addiu   $a0, $sp, 0x4c
branch_0x800cdb88:
    lbu     $t7, 0xc($v1)
    lbu     $t8, 0x0($v0)
    nop
    beq     $t7, $t8, branch_0x800cdba4
    nop
    b       branch_0x800cdc04
    addiu   $v0, $zero, 0x2
branch_0x800cdba4:
    lbu     $t9, 0xd($v1)
    lbu     $t0, 0x1($v0)
    nop
    beq     $t9, $t0, branch_0x800cdbc0
    nop
    b       branch_0x800cdc04
    addiu   $v0, $zero, 0x2
branch_0x800cdbc0:
    lbu     $t1, 0xe($v1)
    lbu     $t2, 0x2($v0)
    nop
    beq     $t1, $t2, branch_0x800cdbdc
    nop
    b       branch_0x800cdc04
    addiu   $v0, $zero, 0x2
branch_0x800cdbdc:
    lbu     $t3, 0xf($v1)
    lbu     $t4, 0x3($v0)
    addiu   $v0, $v0, 0x4
    beq     $t3, $t4, branch_0x800cdbf8
    nop
    b       branch_0x800cdc04
    addiu   $v0, $zero, 0x2
branch_0x800cdbf8:
    bne     $v0, $a0, branch_0x800cdb88
    addiu   $v1, $v1, 0x4
    or      $v0, $zero, $zero
branch_0x800cdc04:
    lw      $ra, 0x1c($sp)
branch_0x800cdc08:
    lw      $s0, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x800cdc14
Function_0x800cdc14: # 0x800cdc14
    addiu   $sp, $sp, 0xffb0
    sw      $ra, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s2, 0x28($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    sw      $a1, 0x54($sp)
    sw      $a2, 0x58($sp)
    sw      $a3, 0x5c($sp)
    lbu     $t6, 0x65($a0)
    andi    $s0, $a3, 0xff
    andi    $s1, $a2, 0xff
    beqz    $t6, branch_0x800cdc68
    or      $s2, $a0, $zero
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($a0)
    beqz    $v0, branch_0x800cdc68
    nop
    b       branch_0x800cde94
    lw      $ra, 0x34($sp)
branch_0x800cdc68:
    blez    $s0, branch_0x800cdc7c
    or      $v1, $s0, $zero
    addiu   $t7, $zero, 0x1
    b       branch_0x800cdc88
    sw      $t7, 0x40($sp)
branch_0x800cdc7c:
    lw      $t8, 0x60($s2)
    nop
    sw      $t8, 0x40($sp)
branch_0x800cdc88:
    addiu   $v0, $zero, 0x1
    bne     $v0, $s1, branch_0x800cdcc4
    or      $s3, $s1, $zero
    lw      $t0, 0x40($sp)
    lw      $t9, 0x54($sp)
    subu    $a1, $zero, $t0
    sll     $t2, $a1, 1
    sll     $t1, $t0, 1
    addiu   $a1, $t2, 0x100
    sw      $v1, 0x38($sp)
    jal     Function_0x800cd2d0
    addu    $a0, $t9, $t1
    lw      $t3, 0x54($sp)
    lw      $v1, 0x38($sp)
    sb      $v0, 0x1($t3)
branch_0x800cdcc4:
    lw      $s1, 0x54($sp)
    or      $s0, $zero, $zero
    sll     $s4, $v1, 3
branch_0x800cdcd0:
    addiu   $v0, $zero, 0x1
    bne     $v0, $s3, branch_0x800cdd34
    or      $a3, $s1, $zero
    lw      $t4, 0x54($s2)
    lw      $a0, 0x4($s2)
    addu    $t5, $t4, $s4
    addu    $a2, $t5, $s0
    andi    $t6, $a2, 0xffff
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    or      $a2, $t6, $zero
    jal     Function_0x800ced20
    or      $a3, $s1, $zero
    lw      $t7, 0x58($s2)
    lw      $a0, 0x4($s2)
    addu    $t8, $t7, $s4
    addu    $a2, $t8, $s0
    andi    $t9, $a2, 0xffff
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    or      $a2, $t9, $zero
    jal     Function_0x800ced20
    or      $a3, $s1, $zero
    b       branch_0x800cdd58
    or      $v1, $v0, $zero
branch_0x800cdd34:
    lw      $t1, 0x54($s2)
    lw      $a0, 0x4($s2)
    addu    $t0, $t1, $s4
    addu    $a2, $t0, $s0
    andi    $t2, $a2, 0xffff
    lw      $a1, 0x8($s2)
    jal     Function_0x800ce990
    or      $a2, $t2, $zero
    or      $v1, $v0, $zero
branch_0x800cdd58:
    beqz    $v0, branch_0x800cdd68
    addiu   $s0, $s0, 0x1
    b       branch_0x800cde90
    or      $v0, $v1, $zero
branch_0x800cdd68:
    slti    $at, $s0, 0x8
    bnez    $at, branch_0x800cdcd0
    addiu   $s1, $s1, 0x20
    bnez    $s3, branch_0x800cde90
    or      $v0, $zero, $zero
    lw      $t4, 0x40($sp)
    lw      $t3, 0x54($sp)
    subu    $a1, $zero, $t4
    sll     $t6, $a1, 1
    sll     $t5, $t4, 1
    addiu   $a1, $t6, 0x100
    jal     Function_0x800cd2d0
    addu    $a0, $t3, $t5
    lw      $t8, 0x54($sp)
    andi    $t7, $v0, 0xff
    lbu     $t9, 0x1($t8)
    andi    $s3, $v0, 0xff
    beq     $t7, $t9, branch_0x800cde50
    or      $s0, $zero, $zero
    or      $s0, $zero, $zero
    or      $s1, $t8, $zero
branch_0x800cddbc:
    lw      $t1, 0x58($s2)
    lw      $a0, 0x4($s2)
    addu    $t0, $t1, $s4
    addu    $a2, $t0, $s0
    andi    $t2, $a2, 0xffff
    lw      $a1, 0x8($s2)
    or      $a2, $t2, $zero
    jal     Function_0x800ce990
    or      $a3, $s1, $zero
    addiu   $s0, $s0, 0x1
    slti    $at, $s0, 0x8
    bnez    $at, branch_0x800cddbc
    addiu   $s1, $s1, 0x20
    lw      $t3, 0x54($sp)
    lw      $s1, 0x54($sp)
    lbu     $t5, 0x1($t3)
    or      $s0, $zero, $zero
    beq     $s3, $t5, branch_0x800cde14
    addiu   $s3, $zero, 0x8
    b       branch_0x800cde90
    addiu   $v0, $zero, 0x3

.globl Function_0x800cde10
Function_0x800cde10: # 0x800cde10
    addiu   $s3, $zero, 0x8
branch_0x800cde14:
    lw      $t4, 0x54($s2)
    lw      $a0, 0x4($s2)
    addu    $t6, $t4, $s4
    addu    $a2, $t6, $s0
    andi    $t7, $a2, 0xffff
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    or      $a2, $t7, $zero
    jal     Function_0x800ced20
    or      $a3, $s1, $zero
    addiu   $s0, $s0, 0x1
    bne     $s0, $s3, branch_0x800cde14
    addiu   $s1, $s1, 0x20
    b       branch_0x800cde90
    or      $v0, $zero, $zero
branch_0x800cde50:
    lw      $s1, 0x54($sp)
    addiu   $s3, $zero, 0x8
branch_0x800cde58:
    lw      $t9, 0x58($s2)
    lw      $a0, 0x4($s2)
    addu    $t8, $t9, $s4
    addu    $a2, $t8, $s0
    andi    $t1, $a2, 0xffff
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    or      $a2, $t1, $zero
    jal     Function_0x800ced20
    or      $a3, $s1, $zero
    addiu   $s0, $s0, 0x1
    bne     $s0, $s3, branch_0x800cde58
    addiu   $s1, $s1, 0x20
    or      $v0, $zero, $zero
branch_0x800cde90:
    lw      $ra, 0x34($sp)
branch_0x800cde94:
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x800cdeb0
Function_0x800cdeb0: # 0x800cdeb0
    addiu   $sp, $sp, 0xffa8
    sw      $s0, 0x20($sp)
    or      $s0, $a0, $zero
    sw      $ra, 0x24($sp)
    addiu   $v0, $sp, 0x38
    addiu   $v1, $sp, 0x58
branch_0x800cdec8:
    lbu     $t6, 0x65($s0)
    addiu   $v0, $v0, 0x4
    sb      $t6, -0x4($v0)
    lbu     $t7, 0x65($s0)
    nop
    sb      $t7, -0x3($v0)
    lbu     $t8, 0x65($s0)
    nop
    sb      $t8, -0x2($v0)
    lbu     $t9, 0x65($s0)
    bne     $v0, $v1, branch_0x800cdec8
    sb      $t9, -0x1($v0)
    lw      $a0, 0x4($s0)
    lw      $a1, 0x8($s0)
    sw      $zero, 0x10($sp)
    addiu   $a2, $zero, 0x400
    jal     Function_0x800ced20
    addiu   $a3, $sp, 0x38
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x800cdf20
Function_0x800cdf20: # 0x800cdf20
    addiu   $sp, $sp, 0xfb38
    sw      $ra, 0x44($sp)
    sw      $s2, 0x28($sp)
    or      $s2, $a0, $zero
    sw      $fp, 0x40($sp)
    sw      $s7, 0x3c($sp)
    sw      $s6, 0x38($sp)
    sw      $s5, 0x34($sp)
    sw      $s4, 0x30($sp)
    sw      $s3, 0x2c($sp)
    sw      $s1, 0x24($sp)
    sw      $s0, 0x20($sp)
    jal     Function_0x800cdafc
    sw      $zero, 0x74($sp)
    addiu   $at, $zero, 0x2
    bne     $v0, $at, branch_0x800cdf70
    or      $v1, $v0, $zero
    jal     Function_0x800cd8f8
    or      $a0, $s2, $zero
    or      $v1, $v0, $zero
branch_0x800cdf70:
    beqz    $v0, branch_0x800cdf80
    addiu   $s6, $sp, 0x78
    b       branch_0x800ce4dc
    or      $v0, $v1, $zero
branch_0x800cdf80:
    or      $a0, $s2, $zero
    jal     Function_0x800ce50c
    or      $a1, $s6, $zero
    beqz    $v0, branch_0x800cdf9c
    nop
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800cdf9c:
    lw      $v0, 0x50($s2)
    or      $s4, $zero, $zero
    blez    $v0, branch_0x800ce24c
    addiu   $fp, $zero, 0x3
    addiu   $s7, $sp, 0x29c
    addiu   $s3, $sp, 0x2bc
    addiu   $s1, $sp, 0x4bc
branch_0x800cdfb8:
    lw      $t6, 0x5c($s2)
    lw      $a0, 0x4($s2)
    addu    $a2, $t6, $s4
    andi    $t7, $a2, 0xffff
    lw      $a1, 0x8($s2)
    or      $a2, $t7, $zero
    jal     Function_0x800ce990
    or      $a3, $s7, $zero
    beqz    $v0, branch_0x800cdfe8
    nop
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800cdfe8:
    lhu     $v0, 0x2a0($sp)
    lw      $t8, 0x29c($sp)
    beqz    $v0, branch_0x800ce19c
    nop
    beqz    $t8, branch_0x800ce19c
    addiu   $t9, $sp, 0x2a2
    lhu     $at, 0x0($t9)
    or      $a0, $zero, $zero
    sh      $at, 0x0($s1)
    lw      $t4, 0x60($s2)
    lhu     $t3, 0x4bc($sp)
    or      $s0, $zero, $zero
    slt     $at, $t3, $t4
    bnez    $at, branch_0x800ce100
    addiu   $s5, $zero, 0xff
    lbu     $t5, 0x4bc($sp)
    lbu     $t6, 0x64($s2)
    lbu     $t7, 0x4bd($sp)
    slt     $at, $t5, $t6
    beqz    $at, branch_0x800ce100
    nop
    blez    $t7, branch_0x800ce100
    slti    $at, $t7, 0x80
    beqz    $at, branch_0x800ce100
    nop
    lbu     $t8, 0x4bc($sp)
branch_0x800ce050:
    or      $a0, $s2, $zero
    beq     $t8, $s5, branch_0x800ce084
    or      $a1, $s3, $zero
    or      $s5, $t8, $zero
    or      $a2, $zero, $zero
    jal     Function_0x800cdc14
    andi    $a3, $t8, 0xff
    beqz    $v0, branch_0x800ce084
    nop
    beq     $v0, $fp, branch_0x800ce084
    nop
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800ce084:
    lhu     $at, 0x0($s1)
    or      $a0, $s2, $zero
    sh      $at, 0x4($sp)
    lw      $a1, 0x4($sp)
    jal     Function_0x800ce7f0
    or      $a2, $s6, $zero
    subu    $a0, $v0, $s0
    bnez    $a0, branch_0x800ce100
    nop
    lbu     $t2, 0x4bd($sp)
    addiu   $s0, $zero, 0x1
    sll     $t3, $t2, 1
    addu    $t4, $s3, $t3
    lhu     $at, 0x0($t4)
    nop
    sh      $at, 0x0($s1)
    lw      $t8, 0x60($s2)
    lhu     $t7, 0x4bc($sp)
    lbu     $t1, 0x4bc($sp)
    slt     $at, $t7, $t8
    bnez    $at, branch_0x800ce100
    nop
    lbu     $t9, 0x64($s2)
    lbu     $t2, 0x4bd($sp)
    slt     $at, $t1, $t9
    beqz    $at, branch_0x800ce100
    nop
    blez    $t2, branch_0x800ce100
    slti    $at, $t2, 0x80
    bnez    $at, branch_0x800ce050
    lbu     $t8, 0x4bc($sp)
branch_0x800ce100:
    bnez    $a0, branch_0x800ce118
    nop
    lhu     $t3, 0x4bc($sp)
    addiu   $at, $zero, 0x1
    beq     $t3, $at, branch_0x800ce234
    nop
branch_0x800ce118:
    sh      $zero, 0x2a0($sp)
    sw      $zero, 0x29c($sp)
    sh      $zero, 0x2a2($sp)
    sb      $zero, 0x2a4($sp)
    sh      $zero, 0x2a6($sp)
    lbu     $t5, 0x65($s2)
    or      $a0, $s2, $zero
    beqz    $t5, branch_0x800ce154
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s2)
    beqz    $v0, branch_0x800ce154
    nop
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800ce154:
    lw      $t4, 0x5c($s2)
    lw      $a0, 0x4($s2)
    addu    $a2, $t4, $s4
    andi    $t6, $a2, 0xffff
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    or      $a2, $t6, $zero
    jal     Function_0x800ced20
    or      $a3, $s7, $zero
    beqz    $v0, branch_0x800ce18c
    lw      $t7, 0x74($sp)
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)

.globl Function_0x800ce188
Function_0x800ce188: # 0x800ce188
    lw      $t7, 0x74($sp)
branch_0x800ce18c:
    nop
    addiu   $t8, $t7, 0x1
    b       branch_0x800ce234
    sw      $t8, 0x74($sp)
branch_0x800ce19c:
    bnez    $v0, branch_0x800ce1b4
    nop
    lw      $t1, 0x29c($sp)
    nop
    beqz    $t1, branch_0x800ce234
    nop
branch_0x800ce1b4:
    sh      $zero, 0x2a0($sp)
    sw      $zero, 0x29c($sp)
    sh      $zero, 0x2a2($sp)
    sb      $zero, 0x2a4($sp)
    sh      $zero, 0x2a6($sp)
    lbu     $t9, 0x65($s2)
    or      $a0, $s2, $zero
    beqz    $t9, branch_0x800ce1f0
    nop
    jal     Function_0x800cdeb0
    sb      $zero, 0x65($s2)
    beqz    $v0, branch_0x800ce1f0
    nop
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800ce1f0:
    lw      $t2, 0x5c($s2)
    lw      $a0, 0x4($s2)
    addu    $a2, $t2, $s4
    andi    $t3, $a2, 0xffff
    lw      $a1, 0x8($s2)
    sw      $zero, 0x10($sp)
    or      $a2, $t3, $zero
    jal     Function_0x800ced20
    or      $a3, $s7, $zero
    beqz    $v0, branch_0x800ce228
    lw      $t5, 0x74($sp)
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)

.globl Function_0x800ce224
Function_0x800ce224: # 0x800ce224
    lw      $t5, 0x74($sp)
branch_0x800ce228:
    nop
    addiu   $t4, $t5, 0x1
    sw      $t4, 0x74($sp)
branch_0x800ce234:
    lw      $v0, 0x50($s2)
    addiu   $s4, $s4, 0x1
    slt     $at, $s4, $v0
    bnez    $at, branch_0x800cdfb8
    nop
    or      $s4, $zero, $zero
branch_0x800ce24c:
    addiu   $s3, $sp, 0x2bc
    addiu   $s7, $sp, 0x29c
    blez    $v0, branch_0x800ce2e0
    addiu   $fp, $zero, 0x3
branch_0x800ce25c:
    lw      $t6, 0x5c($s2)
    lw      $a0, 0x4($s2)
    addu    $a2, $t6, $s4
    andi    $t7, $a2, 0xffff
    lw      $a1, 0x8($s2)
    or      $a2, $t7, $zero
    jal     Function_0x800ce990
    or      $a3, $s7, $zero
    beqz    $v0, branch_0x800ce28c
    sll     $t8, $s4, 1
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800ce28c:
    lhu     $t9, 0x2a0($sp)
    addiu   $t1, $sp, 0x27c
    beqz    $t9, branch_0x800ce2c8
    addu    $a0, $t8, $t1
    lw      $t2, 0x29c($sp)
    lhu     $t3, 0x2a2($sp)
    beqz    $t2, branch_0x800ce2c8
    nop
    lhu     $t5, 0x62($s2)
    nop
    slt     $at, $t3, $t5
    bnez    $at, branch_0x800ce2c8
    nop
    b       branch_0x800ce2cc
    sh      $t3, 0x0($a0)
branch_0x800ce2c8:
    sh      $zero, 0x0($a0)
branch_0x800ce2cc:
    lw      $t4, 0x50($s2)
    addiu   $s4, $s4, 0x1
    slt     $at, $s4, $t4
    bnez    $at, branch_0x800ce25c
    nop
branch_0x800ce2e0:
    lbu     $t6, 0x64($s2)
    or      $s5, $zero, $zero
    blez    $t6, branch_0x800ce4a8
    addiu   $s7, $sp, 0x4bc
    addiu   $s6, $zero, 0x3
    addiu   $s1, $sp, 0x3bc
    addiu   $s0, $sp, 0x60
branch_0x800ce2fc:
    or      $a0, $s2, $zero
    or      $a1, $s3, $zero
    or      $a2, $zero, $zero
    jal     Function_0x800cdc14
    andi    $a3, $s5, 0xff
    beqz    $v0, branch_0x800ce328
    or      $a1, $s5, $zero
    beq     $v0, $fp, branch_0x800ce328
    nop
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800ce328:
    blez    $s5, branch_0x800ce338
    or      $s4, $zero, $zero
    b       branch_0x800ce340
    addiu   $a2, $zero, 0x1
branch_0x800ce338:
    lw      $a2, 0x60($s2)
    nop
branch_0x800ce340:
    blez    $a2, branch_0x800ce3b4
    andi    $t0, $a2, 0x3
    beqz    $t0, branch_0x800ce378
    or      $a0, $t0, $zero
    sll     $a3, $s4, 1
    addu    $v1, $s1, $a3
    addu    $v0, $s3, $a3
branch_0x800ce35c:
    lhu     $t7, 0x0($v0)
    addiu   $s4, $s4, 0x1
    addiu   $v1, $v1, 0x2
    addiu   $v0, $v0, 0x2
    bne     $a0, $s4, branch_0x800ce35c
    sh      $t7, -0x2($v1)
    beq     $s4, $a2, branch_0x800ce3b4
branch_0x800ce378:
    sll     $a3, $s4, 1
    addu    $v1, $s1, $a3
    addu    $v0, $s3, $a3
branch_0x800ce384:
    lhu     $t1, 0x2($v0)
    lhu     $t9, 0x4($v0)
    lhu     $t2, 0x6($v0)
    lhu     $t8, 0x0($v0)
    addiu   $s4, $s4, 0x4
    addiu   $v1, $v1, 0x8
    addiu   $v0, $v0, 0x8
    sh      $t1, -0x6($v1)
    sh      $t9, -0x4($v1)
    sh      $t2, -0x2($v1)
    bne     $s4, $a2, branch_0x800ce384
    sh      $t8, -0x8($v1)
branch_0x800ce3b4:
    slti    $at, $s4, 0x80
    beqz    $at, branch_0x800ce3d8
    addiu   $a2, $zero, 0x1
    sll     $t5, $s4, 1
    addu    $v1, $s1, $t5
branch_0x800ce3c8:
    addiu   $v1, $v1, 0x2
    sltu    $at, $v1, $s7
    bnez    $at, branch_0x800ce3c8
    sh      $s6, -0x2($v1)
branch_0x800ce3d8:
    lw      $t3, 0x50($s2)
    or      $s4, $zero, $zero
    blez    $t3, branch_0x800ce478
    andi    $a3, $s5, 0xff
    addiu   $a0, $sp, 0x27c
branch_0x800ce3ec:
    lbu     $t4, 0x0($a0)
    nop
    bne     $a1, $t4, branch_0x800ce464
    nop
    lhu     $t6, 0x0($a0)
    lhu     $t7, 0x62($s2)
    nop
    slt     $at, $t6, $t7
    bnez    $at, branch_0x800ce464
    nop
branch_0x800ce414:
    lbu     $v1, 0x1($a0)
    nop
    sll     $v0, $v1, 1
    addu    $t8, $s3, $v0
    lhu     $at, 0x0($t8)
    addu    $t2, $s1, $v0
    sh      $at, 0x0($s0)
    sh      $at, 0x0($t2)
    lhu     $at, 0x0($s0)
    nop
    sh      $at, 0x0($a0)
    lbu     $t7, 0x0($a0)
    nop
    bne     $a1, $t7, branch_0x800ce464
    nop
    lhu     $t8, 0x62($s2)
    andi    $t1, $at, 0xffff
    slt     $at, $t1, $t8
    beqz    $at, branch_0x800ce414
    nop
branch_0x800ce464:
    lw      $t9, 0x50($s2)
    addiu   $s4, $s4, 0x1
    slt     $at, $s4, $t9
    bnez    $at, branch_0x800ce3ec
    addiu   $a0, $a0, 0x2
branch_0x800ce478:
    or      $a0, $s2, $zero
    jal     Function_0x800cdc14
    or      $a1, $s1, $zero
    beqz    $v0, branch_0x800ce494
    addiu   $s5, $s5, 0x1
    b       branch_0x800ce4e0
    lw      $ra, 0x44($sp)
branch_0x800ce494:
    lbu     $t2, 0x64($s2)
    andi    $t5, $s5, 0xff
    slt     $at, $t5, $t2
    bnez    $at, branch_0x800ce2fc
    or      $s5, $t5, $zero
branch_0x800ce4a8:
    lw      $t3, 0x74($sp)
    or      $v0, $zero, $zero
    beqz    $t3, branch_0x800ce4cc
    nop
    lw      $t4, 0x0($s2)
    nop
    ori     $t6, $t4, 0x2
    b       branch_0x800ce4dc
    sw      $t6, 0x0($s2)
branch_0x800ce4cc:
    lw      $t7, 0x0($s2)
    addiu   $at, $zero, 0xfffd
    and     $t1, $t7, $at
    sw      $t1, 0x0($s2)
branch_0x800ce4dc:
    lw      $ra, 0x44($sp)
branch_0x800ce4e0:
    lw      $s0, 0x20($sp)
    lw      $s1, 0x24($sp)
    lw      $s2, 0x28($sp)
    lw      $s3, 0x2c($sp)
    lw      $s4, 0x30($sp)
    lw      $s5, 0x34($sp)
    lw      $s6, 0x38($sp)
    lw      $s7, 0x3c($sp)
    lw      $fp, 0x40($sp)
    jr      $ra
    addiu   $sp, $sp, 0x4c8

.globl Function_0x800ce50c
Function_0x800ce50c: # 0x800ce50c
    addiu   $sp, $sp, 0xfe98
    sw      $s3, 0x24($sp)
    or      $s3, $a0, $zero
    sw      $s4, 0x28($sp)
    or      $s4, $a1, $zero
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    addiu   $a0, $zero, 0x100
    or      $v0, $zero, $zero
    or      $v1, $a1, $zero
branch_0x800ce54c:
    addiu   $v0, $v0, 0x4
    sb      $zero, 0x102($v1)
    sb      $zero, 0x103($v1)
    sb      $zero, 0x104($v1)
    addiu   $v1, $v1, 0x4
    bne     $v0, $a0, branch_0x800ce54c
    sb      $zero, 0xfd($v1)
    addiu   $t6, $zero, 0xff
    sb      $t6, 0x100($s4)
    lbu     $t7, 0x64($s3)
    or      $s7, $zero, $zero
    blez    $t7, branch_0x800ce7bc
    or      $s0, $zero, $zero
    addiu   $fp, $zero, 0x80
    addiu   $s6, $sp, 0x15a
    addiu   $s5, $sp, 0x58
    addiu   $s2, $sp, 0x158
branch_0x800ce590:
    blez    $s0, branch_0x800ce5a0
    or      $a0, $s3, $zero
    b       branch_0x800ce5a8
    addiu   $s1, $zero, 0x1
branch_0x800ce5a0:
    lw      $s1, 0x60($s3)
    nop
branch_0x800ce5a8:
    or      $a1, $s5, $zero
    or      $a2, $zero, $zero
    jal     Function_0x800cdc14
    andi    $a3, $s7, 0xff
    beqz    $v0, branch_0x800ce5d0
    addiu   $at, $zero, 0x3
    beq     $v0, $at, branch_0x800ce5d4
    slti    $at, $s1, 0x80
    b       branch_0x800ce7c4
    lw      $ra, 0x3c($sp)
branch_0x800ce5d0:
    slti    $at, $s1, 0x80
branch_0x800ce5d4:
    beqz    $at, branch_0x800ce7a4
    or      $v0, $s1, $zero
    subu    $v1, $fp, $s1
    andi    $t8, $v1, 0x1
    beqz    $t8, branch_0x800ce680
    sll     $t9, $s1, 1
    addu    $t0, $s5, $t9
    lhu     $at, 0x0($t0)
    nop
    sh      $at, 0x0($s2)
    lw      $t4, 0x60($s3)
    lhu     $t3, 0x158($sp)
    lbu     $t5, 0x158($sp)
    slt     $at, $t3, $t4
    bnez    $at, branch_0x800ce67c
    addiu   $v0, $s1, 0x1
    beq     $s0, $t5, branch_0x800ce67c
    addiu   $v0, $s1, 0x1
    lbu     $t6, 0x159($sp)
    addiu   $t2, $zero, 0x1
    bgez    $t6, branch_0x800ce634
    sra     $t7, $t6, 2
    addiu   $at, $t6, 0x3
    sra     $t7, $at, 2
branch_0x800ce634:
    bgez    $t5, branch_0x800ce648
    andi    $t8, $t5, 0x7
    beqz    $t8, branch_0x800ce648
    nop
    addiu   $t8, $t8, 0xfff8
branch_0x800ce648:
    sll     $t9, $t8, 5
    addu    $v1, $t7, $t9
    addu    $v0, $s4, $v1
    lbu     $t1, 0x101($v0)
    bgez    $s0, branch_0x800ce66c
    andi    $t0, $s0, 0x7
    beqz    $t0, branch_0x800ce66c
    nop
    addiu   $t0, $t0, 0xfff8
branch_0x800ce66c:
    sllv    $t3, $t2, $t0
    or      $t4, $t1, $t3
    sb      $t4, 0x101($v0)
    addiu   $v0, $s1, 0x1
branch_0x800ce67c:
    beq     $v0, $fp, branch_0x800ce7a4
branch_0x800ce680:
    sll     $t6, $v0, 1
    addu    $a1, $s5, $t6
    addiu   $a0, $a1, 0x2
branch_0x800ce68c:
    lhu     $at, 0x0($a1)
    nop
    sh      $at, 0x0($s2)
    lw      $t9, 0x60($s3)
    lhu     $t7, 0x158($sp)
    lbu     $t2, 0x158($sp)
    slt     $at, $t7, $t9
    bnez    $at, branch_0x800ce714
    nop
    beq     $s0, $t2, branch_0x800ce714
    nop
    lbu     $t0, 0x159($sp)
    addiu   $t8, $zero, 0x1
    bgez    $t0, branch_0x800ce6d0
    sra     $t1, $t0, 2
    addiu   $at, $t0, 0x3
    sra     $t1, $at, 2
branch_0x800ce6d0:
    bgez    $t2, branch_0x800ce6e4
    andi    $t3, $t2, 0x7
    beqz    $t3, branch_0x800ce6e4
    nop
    addiu   $t3, $t3, 0xfff8
branch_0x800ce6e4:
    sll     $t4, $t3, 5
    addu    $v1, $t1, $t4
    addu    $v0, $s4, $v1
    lbu     $t6, 0x101($v0)
    bgez    $s0, branch_0x800ce708
    andi    $t5, $s0, 0x7
    beqz    $t5, branch_0x800ce708
    nop
    addiu   $t5, $t5, 0xfff8
branch_0x800ce708:
    sllv    $t7, $t8, $t5
    or      $t9, $t6, $t7
    sb      $t9, 0x101($v0)
branch_0x800ce714:
    lhu     $at, 0x0($a0)
    addiu   $a0, $a0, 0x4
    sh      $at, 0x0($s2)
    lw      $t1, 0x60($s3)
    lhu     $t3, 0x158($sp)
    lbu     $t4, 0x158($sp)
    slt     $at, $t3, $t1
    bnez    $at, branch_0x800ce79c
    nop
    beq     $s0, $t4, branch_0x800ce79c
    nop
    lbu     $t8, 0x159($sp)
    addiu   $t2, $zero, 0x1
    bgez    $t8, branch_0x800ce758
    sra     $t5, $t8, 2
    addiu   $at, $t8, 0x3
    sra     $t5, $at, 2
branch_0x800ce758:
    bgez    $t4, branch_0x800ce76c
    andi    $t6, $t4, 0x7
    beqz    $t6, branch_0x800ce76c
    nop
    addiu   $t6, $t6, 0xfff8
branch_0x800ce76c:
    sll     $t7, $t6, 5
    addu    $v1, $t5, $t7
    addu    $v0, $s4, $v1
    lbu     $t9, 0x101($v0)
    bgez    $s0, branch_0x800ce790
    andi    $t0, $s0, 0x7
    beqz    $t0, branch_0x800ce790
    nop
    addiu   $t0, $t0, 0xfff8
branch_0x800ce790:
    sllv    $t3, $t2, $t0
    or      $t1, $t9, $t3
    sb      $t1, 0x101($v0)
branch_0x800ce79c:
    bne     $a0, $s6, branch_0x800ce68c
    addiu   $a1, $a1, 0x4
branch_0x800ce7a4:
    lbu     $t4, 0x64($s3)
    addiu   $s7, $s7, 0x1
    andi    $s0, $s7, 0xff
    slt     $at, $s0, $t4
    bnez    $at, branch_0x800ce590
    or      $s7, $s0, $zero
branch_0x800ce7bc:
    or      $v0, $zero, $zero
    lw      $ra, 0x3c($sp)
branch_0x800ce7c4:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    lw      $s7, 0x34($sp)
    lw      $fp, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x168

.globl Function_0x800ce7f0
Function_0x800ce7f0: # 0x800ce7f0
    addiu   $sp, $sp, 0xffc8
    sw      $a1, 0x3c($sp)
    lbu     $t8, 0x3c($sp)
    lbu     $t6, 0x3d($sp)
    sw      $s4, 0x28($sp)
    or      $s4, $a0, $zero
    sw      $ra, 0x34($sp)
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    lbu     $t1, 0x64($s4)
    or      $s3, $a2, $zero
    or      $s0, $zero, $zero
    bgez    $t6, branch_0x800ce840
    sra     $t7, $t6, 2
    addiu   $at, $t6, 0x3
    sra     $t7, $at, 2
branch_0x800ce840:
    bgez    $t8, branch_0x800ce854
    andi    $t9, $t8, 0x7
    beqz    $t9, branch_0x800ce854
    nop
    addiu   $t9, $t9, 0xfff8
branch_0x800ce854:
    sll     $t0, $t9, 5
    addu    $s6, $t7, $t0
    blez    $t1, branch_0x800ce964
    or      $s2, $zero, $zero
    or      $v0, $zero, $zero
    addiu   $s5, $zero, 0x3
branch_0x800ce86c:
    lbu     $t2, 0x3c($sp)
    blez    $v0, branch_0x800ce880
    addu    $t3, $s3, $s6
    b       branch_0x800ce888
    addiu   $s1, $zero, 0x1
branch_0x800ce880:
    lw      $s1, 0x60($s4)
    nop
branch_0x800ce888:
    beq     $t2, $v0, branch_0x800ce8b8
    addiu   $t6, $zero, 0x1
    lbu     $t4, 0x101($t3)
    bgez    $v0, branch_0x800ce8a8
    andi    $t5, $v0, 0x7
    beqz    $t5, branch_0x800ce8a8
    nop
    addiu   $t5, $t5, 0xfff8
branch_0x800ce8a8:
    sllv    $t8, $t6, $t5
    and     $t9, $t4, $t8
    beqz    $t9, branch_0x800ce94c
    nop
branch_0x800ce8b8:
    lbu     $t7, 0x100($s3)
    or      $a0, $s4, $zero
    beq     $t7, $v0, branch_0x800ce8f0
    or      $a1, $s3, $zero
    or      $a2, $zero, $zero
    jal     Function_0x800cdc14
    andi    $a3, $s2, 0xff
    beqz    $v0, branch_0x800ce8ec
    nop
    beq     $v0, $s5, branch_0x800ce8ec
    nop
    b       branch_0x800ce96c
    lw      $ra, 0x34($sp)
branch_0x800ce8ec:
    sb      $s2, 0x100($s3)
branch_0x800ce8f0:
    slti    $at, $s0, 0x2
    beqz    $at, branch_0x800ce938
    slti    $at, $s1, 0x80
    beqz    $at, branch_0x800ce938
    sll     $v0, $s1, 1
    addu    $v1, $s3, $v0
    lhu     $t0, 0x3c($sp)
branch_0x800ce90c:
    lhu     $t1, 0x0($v1)
    addiu   $v0, $v0, 0x2
    bne     $t0, $t1, branch_0x800ce924
    slti    $at, $s0, 0x2
    addiu   $s0, $s0, 0x1
    slti    $at, $s0, 0x2
branch_0x800ce924:
    beqz    $at, branch_0x800ce938
    addiu   $v1, $v1, 0x2
    slti    $at, $v0, 0x100
    bnez    $at, branch_0x800ce90c
    lhu     $t0, 0x3c($sp)
branch_0x800ce938:
    slti    $at, $s0, 0x2
    bnez    $at, branch_0x800ce94c
    nop
    b       branch_0x800ce968
    addiu   $v0, $zero, 0x2
branch_0x800ce94c:
    lbu     $t3, 0x64($s4)
    addiu   $s2, $s2, 0x1
    andi    $v0, $s2, 0xff
    slt     $at, $v0, $t3
    bnez    $at, branch_0x800ce86c
    or      $s2, $v0, $zero
branch_0x800ce964:
    or      $v0, $s0, $zero
branch_0x800ce968:
    lw      $ra, 0x34($sp)
branch_0x800ce96c:
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x800ce990
Function_0x800ce990: # 0x800ce990
    addiu   $sp, $sp, 0xff78
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s7, 0x34($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    andi    $s0, $a2, 0xffff
    or      $s1, $a3, $zero
    or      $s2, $a1, $zero
    or      $fp, $a0, $zero
    sw      $s6, 0x30($sp)
    sw      $s5, 0x2c($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $a2, 0x90($sp)
    jal     Function_0x800cb6d0
    addiu   $s7, $zero, 0x2
    addiu   $t6, $zero, 0x2
    lui     $at, %hi(Unknown_0x801da900)
    sb      $t6, %lo(Unknown_0x801da900)($at)
    or      $a0, $s2, $zero
    jal     Function_0x800cebbc
    andi    $a1, $s0, 0xffff
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0xa950
    jal     __osSiRawStartDma
    addiu   $a0, $zero, 0x1
    or      $a0, $fp, $zero
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lui     $s4, 0x801e
    addiu   $s4, $s4, 0xa990
    addiu   $s5, $sp, 0x74
    addiu   $s3, $zero, 0xff
branch_0x800cea20:
    lui     $t7, 0x801e
    addiu   $v0, $t7, 0xa950
    or      $s0, $v0, $zero
branch_0x800cea2c:
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $s4
    bnez    $at, branch_0x800cea2c
    sw      $s3, -0x4($v0)
    lui     $a1, 0x801e
    addiu   $a1, $a1, 0xa950
    sw      $zero, 0x3c($a1)
    jal     __osSiRawStartDma
    or      $a0, $zero, $zero
    or      $a0, $fp, $zero
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    beqz    $s2, branch_0x800cea98
    addiu   $t8, $sp, 0x54
    blez    $s2, branch_0x800cea98
    or      $v1, $zero, $zero
    andi    $a0, $s2, 0x3
    beqz    $a0, branch_0x800cea8c
    or      $v0, $a0, $zero
branch_0x800cea7c:
    addiu   $v1, $v1, 0x1
    bne     $v0, $v1, branch_0x800cea7c
    addiu   $s0, $s0, 0x1
    beq     $v1, $s2, branch_0x800cea98
branch_0x800cea8c:
    addiu   $v1, $v1, 0x4
    bne     $v1, $s2, branch_0x800cea8c
    addiu   $s0, $s0, 0x4
branch_0x800cea98:
    or      $t1, $s0, $zero
    addiu   $t0, $s0, 0x24
branch_0x800ceaa0:
    lwl     $at, 0x0($t1)
    lwr     $at, 0x3($t1)
    addiu   $t1, $t1, 0xc
    sw      $at, 0x0($t8)
    lwl     $at, -0x8($t1)
    lwr     $at, -0x5($t1)
    addiu   $t8, $t8, 0xc
    sw      $at, -0x8($t8)
    lwl     $at, -0x4($t1)
    lwr     $at, -0x1($t1)
    bne     $t1, $t0, branch_0x800ceaa0
    sw      $at, -0x4($t8)
    lwl     $at, 0x0($t1)
    lwr     $at, 0x3($t1)
    nop
    sw      $at, 0x0($t8)
    lbu     $v0, 0x56($sp)
    nop
    andi    $t2, $v0, 0xc0
    sra     $s6, $t2, 4
    bnez    $s6, branch_0x800ceb70
    addiu   $at, $zero, 0x4
    jal     Function_0x800d0c90
    addiu   $a0, $sp, 0x5a
    lbu     $t4, 0x7a($sp)
    or      $a0, $fp, $zero
    beq     $t4, $v0, branch_0x800ceb3c
    addiu   $v0, $sp, 0x54
    jal     Function_0x800c86e8
    or      $a1, $s2, $zero
    beqz    $v0, branch_0x800ceb30
    or      $s6, $v0, $zero
    jal     Function_0x800cb714
    nop
    b       branch_0x800ceb8c
    or      $v0, $s6, $zero
branch_0x800ceb30:
    b       branch_0x800ceb6c
    addiu   $s6, $zero, 0x4

.globl Function_0x800ceb38
Function_0x800ceb38: # 0x800ceb38
    addiu   $v0, $sp, 0x54
branch_0x800ceb3c:
    lbu     $t5, 0x6($v0)
    addiu   $v0, $v0, 0x4
    sb      $t5, 0x0($s1)
    lbu     $t6, 0x3($v0)
    addiu   $s1, $s1, 0x4
    sb      $t6, -0x3($s1)
    lbu     $t7, 0x4($v0)
    nop
    sb      $t7, -0x2($s1)
    lbu     $t9, 0x5($v0)
    bne     $v0, $s5, branch_0x800ceb3c
    sb      $t9, -0x1($s1)
branch_0x800ceb6c:
    addiu   $at, $zero, 0x4
branch_0x800ceb70:
    bne     $s6, $at, branch_0x800ceb80
    slti    $v0, $s7, 0x0
    beqz    $v0, branch_0x800cea20
    addiu   $s7, $s7, 0xffff
branch_0x800ceb80:
    jal     Function_0x800cb714
    nop
    or      $v0, $s6, $zero
branch_0x800ceb8c:
    lw      $ra, 0x3c($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    lw      $s7, 0x34($sp)
    lw      $fp, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x88

.globl Function_0x800cebbc
Function_0x800cebbc: # 0x800cebbc
    addiu   $sp, $sp, 0xffb0
    or      $a3, $a0, $zero
    lui     $t0, 0x801e
    addiu   $t0, $t0, 0xa950
    lui     $a0, 0x801e
    lui     $v0, 0x801e
    sw      $ra, 0x14($sp)
    sw      $a1, 0x54($sp)
    or      $v1, $t0, $zero
    addiu   $v0, $v0, 0xa950
    addiu   $a0, $a0, 0xa990
branch_0x800cebe8:
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a0
    bnez    $at, branch_0x800cebe8
    sw      $zero, -0x4($v0)
    addiu   $t6, $zero, 0x1
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0x3
    addiu   $t9, $zero, 0x21
    addiu   $t1, $zero, 0x2
    lhu     $a0, 0x56($sp)
    sw      $t6, 0x3c($t0)
    sb      $t7, 0x24($sp)
    sb      $t8, 0x25($sp)
    sb      $t9, 0x26($sp)
    sb      $t1, 0x27($sp)
    sw      $v1, 0x4c($sp)
    jal     Function_0x800d0be0
    sw      $a3, 0x50($sp)
    lhu     $t2, 0x56($sp)
    addiu   $t5, $zero, 0xff
    sll     $t3, $t2, 5
    or      $t4, $v0, $t3
    lw      $v1, 0x4c($sp)
    lw      $a3, 0x50($sp)
    sh      $t4, 0x28($sp)
    sb      $t5, 0x4a($sp)
    addiu   $v0, $zero, 0xff
    addiu   $a0, $sp, 0x24
    addiu   $a1, $sp, 0x44
branch_0x800cec5c:
    addiu   $a0, $a0, 0x1
    sltu    $at, $a0, $a1
    bnez    $at, branch_0x800cec5c
    sb      $v0, 0x5($a0)
    beqz    $a3, branch_0x800cecb8
    addiu   $t6, $sp, 0x24
    blez    $a3, branch_0x800cecb8
    or      $a2, $zero, $zero
    andi    $a0, $a3, 0x3
    beqz    $a0, branch_0x800cec9c
    or      $v0, $a0, $zero
branch_0x800cec88:
    addiu   $a2, $a2, 0x1
    sb      $zero, 0x0($v1)
    bne     $v0, $a2, branch_0x800cec88
    addiu   $v1, $v1, 0x1
    beq     $a2, $a3, branch_0x800cecb8
branch_0x800cec9c:
    addiu   $a2, $a2, 0x4
    sb      $zero, 0x1($v1)
    sb      $zero, 0x2($v1)
    sb      $zero, 0x3($v1)
    addiu   $v1, $v1, 0x4
    bne     $a2, $a3, branch_0x800cec9c
    sb      $zero, -0x4($v1)
branch_0x800cecb8:
    or      $t9, $v1, $zero
    addiu   $t8, $t6, 0x24
branch_0x800cecc0:
    lw      $at, 0x0($t6)
    addiu   $t6, $t6, 0xc
    swl     $at, 0x0($t9)
    swr     $at, 0x3($t9)
    lw      $at, -0x8($t6)
    addiu   $t9, $t9, 0xc
    swl     $at, -0x8($t9)
    swr     $at, -0x5($t9)
    lw      $at, -0x4($t6)
    nop
    swl     $at, -0x4($t9)
    bne     $t6, $t8, branch_0x800cecc0
    swr     $at, -0x1($t9)
    lw      $at, 0x0($t6)
    addiu   $t1, $zero, 0xfe
    swl     $at, 0x0($t9)
    swr     $at, 0x3($t9)
    sb      $t1, 0x28($v1)
    lw      $ra, 0x14($sp)
    addiu   $v1, $v1, 0x28
    jr      $ra
    addiu   $sp, $sp, 0x50

.globl Function_0x800ced18
Function_0x800ced18: # 0x800ced18
    nop
    nop

.globl Function_0x800ced20
Function_0x800ced20: # 0x800ced20
    addiu   $sp, $sp, 0xff78
    lw      $t6, 0x98($sp)
    sw      $s7, 0x34($sp)
    sw      $s5, 0x2c($sp)
    sw      $s1, 0x1c($sp)
    sw      $s0, 0x18($sp)
    addiu   $at, $zero, 0x1
    andi    $s0, $a2, 0xffff
    or      $s1, $a1, $zero
    or      $s7, $a0, $zero
    sw      $ra, 0x3c($sp)
    sw      $fp, 0x38($sp)
    sw      $s6, 0x30($sp)
    sw      $s4, 0x28($sp)
    sw      $s3, 0x24($sp)
    sw      $s2, 0x20($sp)
    sw      $a2, 0x90($sp)
    sw      $a3, 0x94($sp)
    beq     $t6, $at, branch_0x800ced8c
    addiu   $s5, $zero, 0x2
    slti    $at, $s0, 0x7
    beqz    $at, branch_0x800ced8c
    or      $v0, $s0, $zero
    beqz    $v0, branch_0x800ced8c
    nop
    b       branch_0x800cef14
    or      $v0, $zero, $zero
branch_0x800ced8c:
    jal     Function_0x800cb6d0
    nop
    addiu   $t7, $zero, 0x3
    lui     $at, %hi(Unknown_0x801da900)
    lw      $a2, 0x94($sp)
    sb      $t7, %lo(Unknown_0x801da900)($at)
    or      $a0, $s1, $zero
    jal     Function_0x800cef44
    andi    $a1, $s0, 0xffff
    lui     $s6, 0x801e
    addiu   $s6, $s6, 0xa950
    or      $a1, $s6, $zero
    jal     __osSiRawStartDma
    addiu   $a0, $zero, 0x1
    or      $a0, $s7, $zero
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    lui     $s3, 0x801e
    addiu   $s3, $s3, 0xa990
    addiu   $fp, $sp, 0x54
    addiu   $s2, $zero, 0xff
branch_0x800cede4:
    lui     $v1, 0x801e
    addiu   $v1, $v1, 0xa950
    or      $s0, $s6, $zero
branch_0x800cedf0:
    addiu   $v1, $v1, 0x4
    sltu    $at, $v1, $s3
    bnez    $at, branch_0x800cedf0
    sw      $s2, -0x4($v1)
    sw      $zero, 0x3c($s6)
    or      $a0, $zero, $zero
    jal     __osSiRawStartDma
    or      $a1, $s6, $zero
    or      $a0, $s7, $zero
    or      $a1, $zero, $zero
    jal     osRecvMesg
    addiu   $a2, $zero, 0x1
    beqz    $s1, branch_0x800cee58
    or      $t1, $fp, $zero
    blez    $s1, branch_0x800cee58
    or      $v0, $zero, $zero
    andi    $a0, $s1, 0x3
    beqz    $a0, branch_0x800cee4c
    or      $v1, $a0, $zero
branch_0x800cee3c:
    addiu   $v0, $v0, 0x1
    bne     $v1, $v0, branch_0x800cee3c
    addiu   $s0, $s0, 0x1
    beq     $v0, $s1, branch_0x800cee58
branch_0x800cee4c:
    addiu   $v0, $v0, 0x4
    bne     $v0, $s1, branch_0x800cee4c
    addiu   $s0, $s0, 0x4
branch_0x800cee58:
    or      $t0, $s0, $zero
    addiu   $t9, $s0, 0x24
branch_0x800cee60:
    lwl     $at, 0x0($t0)
    lwr     $at, 0x3($t0)
    addiu   $t0, $t0, 0xc
    sw      $at, 0x0($t1)
    lwl     $at, -0x8($t0)
    lwr     $at, -0x5($t0)
    addiu   $t1, $t1, 0xc
    sw      $at, -0x8($t1)
    lwl     $at, -0x4($t0)
    lwr     $at, -0x1($t0)
    bne     $t0, $t9, branch_0x800cee60
    sw      $at, -0x4($t1)
    lwl     $at, 0x0($t0)
    lwr     $at, 0x3($t0)
    nop
    sw      $at, 0x0($t1)
    lbu     $v0, 0x56($sp)
    lw      $a0, 0x94($sp)
    andi    $t2, $v0, 0xc0
    sra     $s4, $t2, 4
    bnez    $s4, branch_0x800ceef8
    addiu   $at, $zero, 0x4
    jal     Function_0x800d0c90
    nop
    lbu     $t4, 0x7a($sp)
    or      $a0, $s7, $zero
    beq     $t4, $v0, branch_0x800ceef8
    addiu   $at, $zero, 0x4
    jal     Function_0x800c86e8
    or      $a1, $s1, $zero
    beqz    $v0, branch_0x800ceef0
    or      $s4, $v0, $zero
    jal     Function_0x800cb714
    nop
    b       branch_0x800cef14
    or      $v0, $s4, $zero
branch_0x800ceef0:
    addiu   $s4, $zero, 0x4
    addiu   $at, $zero, 0x4
branch_0x800ceef8:
    bne     $s4, $at, branch_0x800cef08
    slti    $v0, $s5, 0x0
    beqz    $v0, branch_0x800cede4
    addiu   $s5, $s5, 0xffff
branch_0x800cef08:
    jal     Function_0x800cb714
    nop
    or      $v0, $s4, $zero
branch_0x800cef14:
    lw      $ra, 0x3c($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    lw      $s3, 0x24($sp)
    lw      $s4, 0x28($sp)
    lw      $s5, 0x2c($sp)
    lw      $s6, 0x30($sp)
    lw      $s7, 0x34($sp)
    lw      $fp, 0x38($sp)
    jr      $ra
    addiu   $sp, $sp, 0x88

.globl Function_0x800cef44
Function_0x800cef44: # 0x800cef44
    addiu   $sp, $sp, 0xffa8
    sw      $s0, 0x18($sp)
    or      $s0, $a0, $zero
    lui     $t0, 0x801e
    addiu   $t0, $t0, 0xa950
    lui     $a0, 0x801e
    lui     $v0, 0x801e
    sw      $ra, 0x1c($sp)
    sw      $a1, 0x5c($sp)
    or      $v1, $t0, $zero
    addiu   $v0, $v0, 0xa950
    addiu   $a0, $a0, 0xa990
branch_0x800cef74:
    addiu   $v0, $v0, 0x4
    sltu    $at, $v0, $a0
    bnez    $at, branch_0x800cef74
    sw      $zero, -0x4($v0)
    addiu   $t6, $zero, 0x1
    addiu   $t7, $zero, 0xff
    addiu   $t8, $zero, 0x23
    addiu   $t9, $zero, 0x1
    addiu   $t1, $zero, 0x3
    lhu     $a0, 0x5e($sp)
    sw      $t6, 0x3c($t0)
    sb      $t7, 0x2c($sp)
    sb      $t8, 0x2d($sp)
    sb      $t9, 0x2e($sp)
    sb      $t1, 0x2f($sp)
    sw      $v1, 0x54($sp)
    jal     Function_0x800d0be0
    sw      $a2, 0x60($sp)
    lhu     $t2, 0x5e($sp)
    addiu   $t5, $zero, 0xff
    sll     $t3, $t2, 5
    or      $t4, $v0, $t3
    lw      $v1, 0x54($sp)
    lw      $a2, 0x60($sp)
    sh      $t4, 0x30($sp)
    sb      $t5, 0x52($sp)
    addiu   $v0, $sp, 0x4c
    addiu   $a0, $sp, 0x2c
branch_0x800cefe4:
    lbu     $t6, 0x0($a2)
    addiu   $a0, $a0, 0x1
    sltu    $at, $a0, $v0
    addiu   $a2, $a2, 0x1
    bnez    $at, branch_0x800cefe4
    sb      $t6, 0x5($a0)
    beqz    $s0, branch_0x800cf048
    addiu   $t7, $sp, 0x2c
    blez    $s0, branch_0x800cf048
    or      $a3, $zero, $zero
    andi    $a0, $s0, 0x3
    beqz    $a0, branch_0x800cf02c
    or      $v0, $a0, $zero
branch_0x800cf018:
    addiu   $a3, $a3, 0x1
    sb      $zero, 0x0($v1)
    bne     $v0, $a3, branch_0x800cf018
    addiu   $v1, $v1, 0x1
    beq     $a3, $s0, branch_0x800cf048
branch_0x800cf02c:
    addiu   $a3, $a3, 0x4
    sb      $zero, 0x1($v1)
    sb      $zero, 0x2($v1)
    sb      $zero, 0x3($v1)
    addiu   $v1, $v1, 0x4
    bne     $a3, $s0, branch_0x800cf02c
    sb      $zero, -0x4($v1)
branch_0x800cf048:
    or      $t1, $v1, $zero
    addiu   $t9, $t7, 0x24
branch_0x800cf050:
    lw      $at, 0x0($t7)
    addiu   $t7, $t7, 0xc
    swl     $at, 0x0($t1)
    swr     $at, 0x3($t1)
    lw      $at, -0x8($t7)
    addiu   $t1, $t1, 0xc
    swl     $at, -0x8($t1)
    swr     $at, -0x5($t1)
    lw      $at, -0x4($t7)
    nop
    swl     $at, -0x4($t1)
    bne     $t7, $t9, branch_0x800cf050
    swr     $at, -0x1($t1)
    lw      $at, 0x0($t7)
    addiu   $t2, $zero, 0xfe
    swl     $at, 0x0($t1)
    swr     $at, 0x3($t1)
    sb      $t2, 0x28($v1)
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $v1, $v1, 0x28
    jr      $ra
    addiu   $sp, $sp, 0x58

.globl Function_0x800cf0ac
Function_0x800cf0ac: # 0x800cf0ac
    nop

.globl Function_0x800cf0b0
Function_0x800cf0b0: # 0x800cf0b0
    addiu   $sp, $sp, 0xff50
    sw      $ra, 0x1c($sp)
    sw      $a0, 0xb0($sp)
    sw      $a1, 0xb4($sp)
    sw      $a2, 0xb8($sp)
    sw      $a3, 0xbc($sp)
    sw      $s0, 0x18($sp)
    sw      $zero, 0xa4($sp)
branch_0x800cf0d0:
    lw      $t6, 0xb8($sp)
    sw      $t6, 0x74($sp)
    lbu     $t7, 0x0($t6)
    addiu   $t8, $t6, 0x1
    sw      $t8, 0x74($sp)
    slt     $s0, $zero, $t7
    beqz    $s0, branch_0x800cf12c
    sb      $t7, 0x73($sp)
branch_0x800cf0f0:
    lbu     $t9, 0x73($sp)
    addiu   $at, $zero, 0x25
    bne     $t9, $at, branch_0x800cf110
    nop
    lw      $t0, 0x74($sp)
    addiu   $t1, $t0, 0xffff
    b       branch_0x800cf12c
    sw      $t1, 0x74($sp)
branch_0x800cf110:
    lw      $t2, 0x74($sp)
    lbu     $t3, 0x0($t2)
    addiu   $t4, $t2, 0x1
    sw      $t4, 0x74($sp)
    slt     $s0, $zero, $t3
    bnez    $s0, branch_0x800cf0f0
    sb      $t3, 0x73($sp)
branch_0x800cf12c:
    lw      $t5, 0x74($sp)
    lw      $t7, 0xb8($sp)
    subu    $t6, $t5, $t7
    blez    $t6, branch_0x800cf188
    nop
    lw      $t9, 0xb0($sp)
    lw      $a0, 0xb4($sp)
    or      $a1, $t7, $zero
    jalr    $t9
    or      $a2, $t6, $zero
    sw      $v0, 0xb4($sp)
    lw      $t8, 0xb4($sp)
    beqz    $t8, branch_0x800cf180
    nop
    lw      $t0, 0x74($sp)
    lw      $t1, 0xb8($sp)
    lw      $t2, 0xa4($sp)
    subu    $t3, $t0, $t1
    addu    $t4, $t2, $t3
    b       branch_0x800cf188
    sw      $t4, 0xa4($sp)
branch_0x800cf180:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf188:
    lbu     $t5, 0x73($sp)
    bnez    $t5, branch_0x800cf19c
    nop
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf19c:
    lw      $t7, 0x74($sp)
    sw      $zero, 0xa8($sp)
    lui     $a0, 0x800f
    addiu   $t6, $t7, 0x1
    sw      $t6, 0x74($sp)
    sw      $t6, 0xb8($sp)
    lbu     $a1, 0x0($t6)
    jal     Function_0x800d0294
    addiu   $a0, $a0, 0xc3b4
    sw      $v0, 0x6c($sp)
    lw      $t9, 0x6c($sp)
    beqz    $t9, branch_0x800cf228
    nop
branch_0x800cf1d0:
    lw      $t0, 0x6c($sp)
    lui     $t1, 0x800f
    addiu   $t1, $t1, 0xc3b4
    subu    $t2, $t0, $t1
    sll     $t3, $t2, 2
    lui     $t4, 0x800f
    addu    $t4, $t4, $t3
    lw      $t7, 0x74($sp)
    lw      $t4, -0x3c44($t4)
    lw      $t8, 0xa8($sp)
    addiu   $t6, $t7, 0x1
    sw      $t6, 0x74($sp)
    or      $t5, $t8, $t4
    lui     $a0, 0x800f
    sw      $t5, 0xa8($sp)
    lbu     $a1, 0x0($t6)
    jal     Function_0x800d0294
    addiu   $a0, $a0, 0xc3b4
    sw      $v0, 0x6c($sp)
    lw      $t9, 0x6c($sp)
    bnez    $t9, branch_0x800cf1d0
    nop
branch_0x800cf228:
    lw      $t0, 0x74($sp)
    addiu   $at, $zero, 0x2a
    lbu     $t1, 0x0($t0)
    bne     $t1, $at, branch_0x800cf284
    nop
    lw      $t2, 0xbc($sp)
    addiu   $at, $zero, 0xfffc
    addiu   $t3, $t2, 0x3
    and     $t8, $t3, $at
    addiu   $t4, $t8, 0x4
    sw      $t4, 0xbc($sp)
    lw      $t5, 0x0($t8)
    bgez    $t5, branch_0x800cf274
    sw      $t5, 0xa0($sp)
    lw      $t6, 0xa8($sp)
    subu    $t7, $zero, $t5
    sw      $t7, 0xa0($sp)
    ori     $t9, $t6, 0x4
    sw      $t9, 0xa8($sp)
branch_0x800cf274:
    lw      $t0, 0x74($sp)
    addiu   $t1, $t0, 0x1
    b       branch_0x800cf2f8
    sw      $t1, 0x74($sp)
branch_0x800cf284:
    lw      $t2, 0x74($sp)
    sw      $zero, 0xa0($sp)
    lbu     $t3, 0x0($t2)
    slti    $at, $t3, 0x30
    bnez    $at, branch_0x800cf2f8
    slti    $at, $t3, 0x3a
    beqz    $at, branch_0x800cf2f8
    nop
branch_0x800cf2a4:
    lw      $t4, 0xa0($sp)
    slti    $at, $t4, 0x3e7
    beqz    $at, branch_0x800cf2d4
    nop
    lw      $t8, 0x74($sp)
    sll     $t7, $t4, 2
    addu    $t7, $t7, $t4
    lbu     $t5, 0x0($t8)
    sll     $t7, $t7, 1
    addu    $t6, $t5, $t7
    addiu   $t9, $t6, 0xffd0
    sw      $t9, 0xa0($sp)
branch_0x800cf2d4:
    lw      $t0, 0x74($sp)
    addiu   $t1, $t0, 0x1
    sw      $t1, 0x74($sp)
    lbu     $t2, 0x0($t1)
    slti    $at, $t2, 0x30
    bnez    $at, branch_0x800cf2f8
    slti    $at, $t2, 0x3a
    bnez    $at, branch_0x800cf2a4
    nop
branch_0x800cf2f8:
    lw      $t3, 0x74($sp)
    addiu   $at, $zero, 0x2e
    lbu     $t8, 0x0($t3)
    beq     $t8, $at, branch_0x800cf318
    nop
    addiu   $t4, $zero, 0xffff
    b       branch_0x800cf3d4
    sw      $t4, 0x9c($sp)
branch_0x800cf318:
    lw      $t5, 0x74($sp)
    addiu   $at, $zero, 0x2a
    addiu   $t7, $t5, 0x1
    sw      $t7, 0x74($sp)
    lbu     $t6, 0x0($t7)
    bne     $t6, $at, branch_0x800cf360
    nop
    lw      $t9, 0xbc($sp)
    addiu   $at, $zero, 0xfffc
    addiu   $t8, $t7, 0x1
    addiu   $t0, $t9, 0x3
    and     $t1, $t0, $at
    addiu   $t2, $t1, 0x4
    sw      $t2, 0xbc($sp)
    lw      $t3, 0x0($t1)
    sw      $t8, 0x74($sp)
    b       branch_0x800cf3d4
    sw      $t3, 0x9c($sp)
branch_0x800cf360:
    lw      $t4, 0x74($sp)
    sw      $zero, 0x9c($sp)
    lbu     $t5, 0x0($t4)
    slti    $at, $t5, 0x30
    bnez    $at, branch_0x800cf3d4
    slti    $at, $t5, 0x3a
    beqz    $at, branch_0x800cf3d4
    nop
branch_0x800cf380:
    lw      $t6, 0x9c($sp)
    slti    $at, $t6, 0x3e7
    beqz    $at, branch_0x800cf3b0
    nop
    lw      $t9, 0x74($sp)
    sll     $t2, $t6, 2
    addu    $t2, $t2, $t6
    lbu     $t0, 0x0($t9)
    sll     $t2, $t2, 1
    addu    $t1, $t0, $t2
    addiu   $t3, $t1, 0xffd0
    sw      $t3, 0x9c($sp)
branch_0x800cf3b0:
    lw      $t7, 0x74($sp)
    addiu   $t8, $t7, 0x1
    sw      $t8, 0x74($sp)
    lbu     $t4, 0x0($t8)
    slti    $at, $t4, 0x30
    bnez    $at, branch_0x800cf3d4
    slti    $at, $t4, 0x3a
    bnez    $at, branch_0x800cf380
    nop
branch_0x800cf3d4:
    lw      $t5, 0x74($sp)
    lui     $a0, 0x800f
    addiu   $a0, $a0, 0xc3b0
    jal     Function_0x800d0294
    lbu     $a1, 0x0($t5)
    beqz    $v0, branch_0x800cf408
    nop
    lw      $t9, 0x74($sp)
    lbu     $t6, 0x0($t9)
    addiu   $t0, $t9, 0x1
    sw      $t0, 0x74($sp)
    b       branch_0x800cf40c
    sb      $t6, 0xac($sp)
branch_0x800cf408:
    sb      $zero, 0xac($sp)
branch_0x800cf40c:
    lbu     $t2, 0xac($sp)
    addiu   $at, $zero, 0x6c
    bne     $t2, $at, branch_0x800cf440
    nop
    lw      $t1, 0x74($sp)
    addiu   $at, $zero, 0x6c
    lbu     $t3, 0x0($t1)
    bne     $t3, $at, branch_0x800cf440
    nop
    addiu   $t7, $zero, 0x4c
    addiu   $t8, $t1, 0x1
    sb      $t7, 0xac($sp)
    sw      $t8, 0x74($sp)
branch_0x800cf440:
    lw      $t4, 0x74($sp)
    addiu   $a0, $sp, 0x78
    addiu   $a1, $sp, 0xbc
    addiu   $a3, $sp, 0x4c
    jal     Function_0x800cf8dc
    lbu     $a2, 0x0($t4)
    lw      $t5, 0x84($sp)
    lw      $t6, 0x88($sp)
    lw      $t0, 0x8c($sp)
    lw      $t3, 0x90($sp)
    addu    $t9, $t5, $t6
    lw      $t1, 0x94($sp)
    addu    $t2, $t9, $t0
    lw      $t4, 0x98($sp)
    lw      $t6, 0xa0($sp)
    lw      $t0, 0xa8($sp)
    addu    $t7, $t2, $t3
    addu    $t8, $t7, $t1
    addu    $t5, $t8, $t4
    subu    $t9, $t6, $t5
    andi    $t2, $t0, 0x4
    bnez    $t2, branch_0x800cf538
    sw      $t9, 0xa0($sp)
    slt     $t3, $zero, $t9
    beqz    $t3, branch_0x800cf538
    nop
    beqz    $t3, branch_0x800cf538
    sw      $t9, 0x44($sp)
branch_0x800cf4b0:
    lw      $t7, 0x44($sp)
    sltiu   $at, $t7, 0x21
    bnez    $at, branch_0x800cf4cc
    nop
    addiu   $t1, $zero, 0x20
    b       branch_0x800cf4d4
    sw      $t1, 0x48($sp)
branch_0x800cf4cc:
    lw      $t8, 0x44($sp)
    sw      $t8, 0x48($sp)
branch_0x800cf4d4:
    lw      $t4, 0x48($sp)
    blez    $t4, branch_0x800cf524
    nop
    lw      $t9, 0xb0($sp)
    lui     $a1, 0x800f
    addiu   $a1, $a1, 0x8e60
    lw      $a0, 0xb4($sp)
    jalr    $t9
    or      $a2, $t4, $zero
    sw      $v0, 0xb4($sp)
    lw      $t6, 0xb4($sp)
    beqz    $t6, branch_0x800cf51c
    nop
    lw      $t5, 0xa4($sp)
    lw      $t0, 0x48($sp)
    addu    $t2, $t5, $t0
    b       branch_0x800cf524
    sw      $t2, 0xa4($sp)
branch_0x800cf51c:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf524:
    lw      $t3, 0x44($sp)
    lw      $t7, 0x48($sp)
    subu    $t1, $t3, $t7
    bgtz    $t1, branch_0x800cf4b0
    sw      $t1, 0x44($sp)
branch_0x800cf538:
    lw      $t8, 0x84($sp)
    blez    $t8, branch_0x800cf584
    nop
    lw      $t9, 0xb0($sp)
    lw      $a0, 0xb4($sp)
    addiu   $a1, $sp, 0x4c
    jalr    $t9
    or      $a2, $t8, $zero
    sw      $v0, 0xb4($sp)
    lw      $t4, 0xb4($sp)
    beqz    $t4, branch_0x800cf57c
    nop
    lw      $t6, 0xa4($sp)
    lw      $t5, 0x84($sp)
    addu    $t0, $t6, $t5
    b       branch_0x800cf584
    sw      $t0, 0xa4($sp)
branch_0x800cf57c:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf584:
    lw      $t2, 0x88($sp)
    slt     $t3, $zero, $t2
    beqz    $t3, branch_0x800cf624
    nop
    beqz    $t3, branch_0x800cf624
    sw      $t2, 0x3c($sp)
branch_0x800cf59c:
    lw      $t7, 0x3c($sp)
    sltiu   $at, $t7, 0x21
    bnez    $at, branch_0x800cf5b8
    nop
    addiu   $t1, $zero, 0x20
    b       branch_0x800cf5c0
    sw      $t1, 0x40($sp)
branch_0x800cf5b8:
    lw      $t8, 0x3c($sp)
    sw      $t8, 0x40($sp)
branch_0x800cf5c0:
    lw      $t9, 0x40($sp)
    blez    $t9, branch_0x800cf610
    nop
    or      $a2, $t9, $zero
    lw      $t9, 0xb0($sp)
    lui     $a1, 0x800f
    addiu   $a1, $a1, 0x8e84
    jalr    $t9
    lw      $a0, 0xb4($sp)
    sw      $v0, 0xb4($sp)
    lw      $t4, 0xb4($sp)
    beqz    $t4, branch_0x800cf608
    nop
    lw      $t6, 0xa4($sp)
    lw      $t5, 0x40($sp)
    addu    $t0, $t6, $t5
    b       branch_0x800cf610
    sw      $t0, 0xa4($sp)
branch_0x800cf608:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf610:
    lw      $t2, 0x3c($sp)
    lw      $t3, 0x40($sp)
    subu    $t7, $t2, $t3
    bgtz    $t7, branch_0x800cf59c
    sw      $t7, 0x3c($sp)
branch_0x800cf624:
    lw      $t1, 0x8c($sp)
    blez    $t1, branch_0x800cf670
    nop
    lw      $t9, 0xb0($sp)
    lw      $a0, 0xb4($sp)
    lw      $a1, 0x80($sp)
    jalr    $t9
    or      $a2, $t1, $zero
    sw      $v0, 0xb4($sp)
    lw      $t8, 0xb4($sp)
    beqz    $t8, branch_0x800cf668
    nop
    lw      $t4, 0xa4($sp)
    lw      $t6, 0x8c($sp)
    addu    $t5, $t4, $t6
    b       branch_0x800cf670
    sw      $t5, 0xa4($sp)
branch_0x800cf668:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf670:
    lw      $t0, 0x90($sp)
    slt     $t2, $zero, $t0
    beqz    $t2, branch_0x800cf710
    nop
    beqz    $t2, branch_0x800cf710
    sw      $t0, 0x34($sp)
branch_0x800cf688:
    lw      $t3, 0x34($sp)
    sltiu   $at, $t3, 0x21
    bnez    $at, branch_0x800cf6a4
    nop
    addiu   $t7, $zero, 0x20
    b       branch_0x800cf6ac
    sw      $t7, 0x38($sp)
branch_0x800cf6a4:
    lw      $t1, 0x34($sp)
    sw      $t1, 0x38($sp)
branch_0x800cf6ac:
    lw      $t9, 0x38($sp)
    blez    $t9, branch_0x800cf6fc
    nop
    or      $a2, $t9, $zero
    lw      $t9, 0xb0($sp)
    lui     $a1, 0x800f
    addiu   $a1, $a1, 0x8e84
    jalr    $t9
    lw      $a0, 0xb4($sp)
    sw      $v0, 0xb4($sp)
    lw      $t8, 0xb4($sp)
    beqz    $t8, branch_0x800cf6f4
    nop
    lw      $t4, 0xa4($sp)
    lw      $t6, 0x38($sp)
    addu    $t5, $t4, $t6
    b       branch_0x800cf6fc
    sw      $t5, 0xa4($sp)
branch_0x800cf6f4:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf6fc:
    lw      $t0, 0x34($sp)
    lw      $t2, 0x38($sp)
    subu    $t3, $t0, $t2
    bgtz    $t3, branch_0x800cf688
    sw      $t3, 0x34($sp)
branch_0x800cf710:
    lw      $t7, 0x94($sp)
    blez    $t7, branch_0x800cf768
    nop
    lw      $t1, 0x80($sp)
    lw      $t9, 0x8c($sp)
    lw      $a0, 0xb4($sp)
    or      $a2, $t7, $zero
    addu    $a1, $t1, $t9
    lw      $t9, 0xb0($sp)
    jalr    $t9
    nop
    sw      $v0, 0xb4($sp)
    lw      $t8, 0xb4($sp)
    beqz    $t8, branch_0x800cf760
    nop
    lw      $t4, 0xa4($sp)
    lw      $t6, 0x94($sp)
    addu    $t5, $t4, $t6
    b       branch_0x800cf768
    sw      $t5, 0xa4($sp)
branch_0x800cf760:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf768:
    lw      $t0, 0x98($sp)
    slt     $t2, $zero, $t0
    beqz    $t2, branch_0x800cf808
    nop
    beqz    $t2, branch_0x800cf808
    sw      $t0, 0x2c($sp)
branch_0x800cf780:
    lw      $t3, 0x2c($sp)
    sltiu   $at, $t3, 0x21
    bnez    $at, branch_0x800cf79c
    nop
    addiu   $t1, $zero, 0x20
    b       branch_0x800cf7a4
    sw      $t1, 0x30($sp)
branch_0x800cf79c:
    lw      $t7, 0x2c($sp)
    sw      $t7, 0x30($sp)
branch_0x800cf7a4:
    lw      $t9, 0x30($sp)
    blez    $t9, branch_0x800cf7f4
    nop
    or      $a2, $t9, $zero
    lw      $t9, 0xb0($sp)
    lui     $a1, 0x800f
    addiu   $a1, $a1, 0x8e84
    jalr    $t9
    lw      $a0, 0xb4($sp)
    sw      $v0, 0xb4($sp)
    lw      $t8, 0xb4($sp)
    beqz    $t8, branch_0x800cf7ec
    nop
    lw      $t4, 0xa4($sp)
    lw      $t6, 0x30($sp)
    addu    $t5, $t4, $t6
    b       branch_0x800cf7f4
    sw      $t5, 0xa4($sp)
branch_0x800cf7ec:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf7f4:
    lw      $t0, 0x2c($sp)
    lw      $t2, 0x30($sp)
    subu    $t3, $t0, $t2
    bgtz    $t3, branch_0x800cf780
    sw      $t3, 0x2c($sp)
branch_0x800cf808:
    lw      $t1, 0xa8($sp)
    andi    $t7, $t1, 0x4
    beqz    $t7, branch_0x800cf8b8
    nop
    lw      $t9, 0xa0($sp)
    slt     $t8, $zero, $t9
    beqz    $t8, branch_0x800cf8b8
    nop
    beqz    $t8, branch_0x800cf8b8
    sw      $t9, 0x24($sp)
branch_0x800cf830:
    lw      $t4, 0x24($sp)
    sltiu   $at, $t4, 0x21
    bnez    $at, branch_0x800cf84c
    nop
    addiu   $t6, $zero, 0x20
    b       branch_0x800cf854
    sw      $t6, 0x28($sp)
branch_0x800cf84c:
    lw      $t5, 0x24($sp)
    sw      $t5, 0x28($sp)
branch_0x800cf854:
    lw      $t0, 0x28($sp)
    blez    $t0, branch_0x800cf8a4
    nop
    lw      $t9, 0xb0($sp)
    lui     $a1, 0x800f
    addiu   $a1, $a1, 0x8e60
    lw      $a0, 0xb4($sp)
    jalr    $t9
    or      $a2, $t0, $zero
    sw      $v0, 0xb4($sp)
    lw      $t2, 0xb4($sp)
    beqz    $t2, branch_0x800cf89c
    nop
    lw      $t3, 0xa4($sp)
    lw      $t1, 0x28($sp)
    addu    $t7, $t3, $t1
    b       branch_0x800cf8a4
    sw      $t7, 0xa4($sp)
branch_0x800cf89c:
    b       branch_0x800cf8c8
    lw      $v0, 0xa4($sp)
branch_0x800cf8a4:
    lw      $t8, 0x24($sp)
    lw      $t4, 0x28($sp)
    subu    $t6, $t8, $t4
    bgtz    $t6, branch_0x800cf830
    sw      $t6, 0x24($sp)
branch_0x800cf8b8:
    lw      $t5, 0x74($sp)
    addiu   $t0, $t5, 0x1
    b       branch_0x800cf0d0
    sw      $t0, 0xb8($sp)
branch_0x800cf8c8:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0xb0
    jr      $ra
    nop

.globl Function_0x800cf8dc
Function_0x800cf8dc: # 0x800cf8dc
    addiu   $sp, $sp, 0xffc8
    sw      $a0, 0x38($sp)
    lw      $t6, 0x38($sp)
    sw      $ra, 0x24($sp)
    sw      $a1, 0x3c($sp)
    sw      $a2, 0x40($sp)
    sw      $a3, 0x44($sp)
    sw      $s3, 0x20($sp)
    sw      $s2, 0x1c($sp)
    sw      $s1, 0x18($sp)
    sw      $s0, 0x14($sp)
    sw      $zero, 0x20($t6)
    lw      $t7, 0x38($sp)
    lw      $s3, 0x20($t7)
    sw      $s3, 0x1c($t7)
    lw      $t8, 0x38($sp)
    or      $s2, $s3, $zero
    or      $s1, $s2, $zero
    sw      $s2, 0x18($t8)
    lw      $t9, 0x38($sp)
    or      $s0, $s1, $zero
    sw      $s1, 0x14($t9)
    lw      $t0, 0x38($sp)
    sw      $s0, 0x10($t0)
    lw      $t1, 0x38($sp)
    sw      $s0, 0xc($t1)
    lbu     $s0, 0x43($sp)
    slti    $at, $s0, 0x26
    bnez    $at, branch_0x800cf97c
    nop
    addiu   $t2, $s0, 0xffbb
    sltiu   $at, $t2, 0x34
    beqz    $at, branch_0x800d01f0
    nop
    sll     $t2, $t2, 2
    lui     $at, 0x800f
    addu    $at, $at, $t2
    lw      $t2, -0x3c2c($at)
    jr      $t2
    nop
branch_0x800cf97c:
    addiu   $at, $zero, 0x25
    beq     $s0, $at, branch_0x800d01c4
    nop
    b       branch_0x800d01f0
    nop

.globl Function_0x800cf990
Function_0x800cf990: # 0x800cf990
    lw      $t3, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t4, 0x0($t3)
    addiu   $t5, $t4, 0x3
    and     $t6, $t5, $at
    addiu   $t7, $t6, 0x4
    sw      $t7, 0x0($t3)
    lw      $t8, 0x3c($sp)
    lw      $t2, 0x38($sp)
    lw      $t1, 0x44($sp)
    lw      $t9, 0x0($t8)
    lw      $t4, 0xc($t2)
    lw      $t0, -0x4($t9)
    addu    $t5, $t1, $t4
    sb      $t0, 0x0($t5)
    lw      $t6, 0x38($sp)
    lw      $t7, 0xc($t6)
    addiu   $t3, $t7, 0x1
    b       branch_0x800d0218
    sw      $t3, 0xc($t6)

.globl Function_0x800cf9e0
Function_0x800cf9e0: # 0x800cf9e0
    lw      $t8, 0x38($sp)
    addiu   $at, $zero, 0x6c
    lbu     $t9, 0x34($t8)
    bne     $t9, $at, branch_0x800cfa34
    nop
    lw      $t2, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t1, 0x0($t2)
    addiu   $t4, $t1, 0x3
    and     $t0, $t4, $at
    addiu   $t5, $t0, 0x4
    sw      $t5, 0x0($t2)
    lw      $t7, 0x3c($sp)
    lw      $t1, 0x38($sp)
    lw      $t3, 0x0($t7)
    lw      $t6, -0x4($t3)
    or      $t9, $t6, $zero
    sra     $t8, $t6, 31
    sw      $t8, 0x0($t1)
    b       branch_0x800cfac0
    sw      $t9, 0x4($t1)
branch_0x800cfa34:
    lw      $t4, 0x38($sp)
    addiu   $at, $zero, 0x4c
    lbu     $t0, 0x34($t4)
    bne     $t0, $at, branch_0x800cfa84
    nop
    lw      $t5, 0x3c($sp)
    addiu   $at, $zero, 0xfff8
    lw      $t2, 0x0($t5)
    addiu   $t7, $t2, 0x7
    and     $t3, $t7, $at
    addiu   $t6, $t3, 0x8
    sw      $t6, 0x0($t5)
    lw      $t8, 0x3c($sp)
    lw      $t1, 0x38($sp)
    lw      $t9, 0x0($t8)
    lw      $t4, -0x8($t9)
    lw      $t5, -0x4($t9)
    sw      $t4, 0x0($t1)
    b       branch_0x800cfac0
    sw      $t5, 0x4($t1)
branch_0x800cfa84:
    lw      $t0, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t2, 0x0($t0)
    addiu   $t7, $t2, 0x3
    and     $t3, $t7, $at
    addiu   $t6, $t3, 0x4
    sw      $t6, 0x0($t0)
    lw      $t8, 0x3c($sp)
    lw      $t5, 0x38($sp)
    lw      $t9, 0x0($t8)
    lw      $t4, -0x4($t9)
    or      $t3, $t4, $zero
    sra     $t2, $t4, 31
    sw      $t2, 0x0($t5)
    sw      $t3, 0x4($t5)
branch_0x800cfac0:
    lw      $t1, 0x38($sp)
    addiu   $at, $zero, 0x68
    lbu     $t7, 0x34($t1)
    bne     $t7, $at, branch_0x800cfaf8
    nop
    lw      $t7, 0x4($t1)
    lw      $t6, 0x0($t1)
    or      $t0, $t7, $zero
    sll     $t8, $t0, 16
    sra     $t9, $t8, 16
    or      $t5, $t9, $zero
    sra     $t4, $t9, 31
    sw      $t4, 0x0($t1)
    sw      $t5, 0x4($t1)
branch_0x800cfaf8:
    lw      $t2, 0x38($sp)
    lw      $t6, 0x0($t2)
    lw      $t7, 0x4($t2)
    bgtz    $t6, branch_0x800cfb44
    nop
    bltz    $t6, branch_0x800cfb1c
    nop
    b       branch_0x800cfb44
    nop
branch_0x800cfb1c:
    lw      $t0, 0x44($sp)
    lw      $t8, 0xc($t2)
    addiu   $t3, $zero, 0x2d
    addu    $t9, $t0, $t8
    sb      $t3, 0x0($t9)
    lw      $t4, 0x38($sp)
    lw      $t5, 0xc($t4)
    addiu   $t1, $t5, 0x1
    b       branch_0x800cfbb8
    sw      $t1, 0xc($t4)
branch_0x800cfb44:
    lw      $t6, 0x38($sp)
    lw      $t7, 0x30($t6)
    andi    $t2, $t7, 0x2
    beqz    $t2, branch_0x800cfb80
    nop
    lw      $t8, 0x44($sp)
    lw      $t3, 0xc($t6)
    addiu   $t0, $zero, 0x2b
    addu    $t9, $t8, $t3
    sb      $t0, 0x0($t9)
    lw      $t5, 0x38($sp)
    lw      $t1, 0xc($t5)
    addiu   $t4, $t1, 0x1
    b       branch_0x800cfbb8
    sw      $t4, 0xc($t5)
branch_0x800cfb80:
    lw      $t7, 0x38($sp)
    lw      $t2, 0x30($t7)
    andi    $t6, $t2, 0x1
    beqz    $t6, branch_0x800cfbb8
    nop
    lw      $t3, 0x44($sp)
    lw      $t0, 0xc($t7)
    addiu   $t8, $zero, 0x20
    addu    $t9, $t3, $t0
    sb      $t8, 0x0($t9)
    lw      $t1, 0x38($sp)
    lw      $t4, 0xc($t1)
    addiu   $t5, $t4, 0x1
    sw      $t5, 0xc($t1)
branch_0x800cfbb8:
    lw      $t2, 0x38($sp)
    lw      $t7, 0x44($sp)
    lw      $t6, 0xc($t2)
    addu    $t3, $t6, $t7
    sw      $t3, 0x8($t2)
    lbu     $a1, 0x43($sp)
    jal     Function_0x800d0d60
    lw      $a0, 0x38($sp)
    b       branch_0x800d0218
    nop

.globl Function_0x800cfbe0
Function_0x800cfbe0: # 0x800cfbe0
    lw      $t0, 0x38($sp)
    addiu   $at, $zero, 0x6c
    lbu     $t8, 0x34($t0)
    bne     $t8, $at, branch_0x800cfc34
    nop
    lw      $t9, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t4, 0x0($t9)
    addiu   $t5, $t4, 0x3
    and     $t1, $t5, $at
    addiu   $t6, $t1, 0x4
    sw      $t6, 0x0($t9)
    lw      $t7, 0x3c($sp)
    lw      $t8, 0x38($sp)
    lw      $t3, 0x0($t7)
    lw      $t2, -0x4($t3)
    or      $t1, $t2, $zero
    sra     $t0, $t2, 31
    sw      $t0, 0x0($t8)
    b       branch_0x800cfcc0
    sw      $t1, 0x4($t8)
branch_0x800cfc34:
    lw      $t4, 0x38($sp)
    addiu   $at, $zero, 0x4c
    lbu     $t5, 0x34($t4)
    bne     $t5, $at, branch_0x800cfc84
    nop
    lw      $t6, 0x3c($sp)
    addiu   $at, $zero, 0xfff8
    lw      $t9, 0x0($t6)
    addiu   $t7, $t9, 0x7
    and     $t3, $t7, $at
    addiu   $t2, $t3, 0x8
    sw      $t2, 0x0($t6)
    lw      $t0, 0x3c($sp)
    lw      $t4, 0x38($sp)
    lw      $t1, 0x0($t0)
    lw      $t8, -0x8($t1)
    lw      $t9, -0x4($t1)
    sw      $t8, 0x0($t4)
    b       branch_0x800cfcc0
    sw      $t9, 0x4($t4)
branch_0x800cfc84:
    lw      $t5, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t7, 0x0($t5)
    addiu   $t3, $t7, 0x3
    and     $t2, $t3, $at
    addiu   $t6, $t2, 0x4
    sw      $t6, 0x0($t5)
    lw      $t0, 0x3c($sp)
    lw      $t9, 0x38($sp)
    lw      $t1, 0x0($t0)
    lw      $t8, -0x4($t1)
    or      $t5, $t8, $zero
    sra     $t4, $t8, 31
    sw      $t4, 0x0($t9)
    sw      $t5, 0x4($t9)
branch_0x800cfcc0:
    lw      $t7, 0x38($sp)
    addiu   $at, $zero, 0x68
    lbu     $t3, 0x34($t7)
    bne     $t3, $at, branch_0x800cfcf8
    nop
    lw      $t3, 0x4($t7)
    lw      $t2, 0x0($t7)
    addiu   $t8, $zero, 0x0
    or      $t6, $t3, $zero
    andi    $t0, $t6, 0xffff
    or      $t9, $t0, $zero
    sw      $t9, 0x4($t7)
    b       branch_0x800cfd24
    sw      $t8, 0x0($t7)
branch_0x800cfcf8:
    lw      $t1, 0x38($sp)
    lbu     $t4, 0x34($t1)
    bnez    $t4, branch_0x800cfd24
    nop
    lw      $t3, 0x4($t1)
    lw      $t2, 0x0($t1)
    addiu   $t6, $zero, 0x0
    or      $t5, $t3, $zero
    or      $t7, $t5, $zero
    sw      $t7, 0x4($t1)
    sw      $t6, 0x0($t1)
branch_0x800cfd24:
    lw      $t0, 0x38($sp)
    lw      $t8, 0x30($t0)
    andi    $t9, $t8, 0x8
    beqz    $t9, branch_0x800cfd9c
    nop
    lw      $t2, 0x44($sp)
    lw      $t3, 0xc($t0)
    addiu   $t4, $zero, 0x30
    addiu   $at, $zero, 0x78
    addu    $t5, $t2, $t3
    sb      $t4, 0x0($t5)
    lw      $t6, 0x38($sp)
    lw      $t7, 0xc($t6)
    addiu   $t1, $t7, 0x1
    sw      $t1, 0xc($t6)
    lbu     $t8, 0x43($sp)
    beq     $t8, $at, branch_0x800cfd74
    addiu   $at, $zero, 0x58
    bne     $t8, $at, branch_0x800cfd9c
    nop
branch_0x800cfd74:
    lw      $t2, 0x38($sp)
    lw      $t0, 0x44($sp)
    lbu     $t9, 0x43($sp)
    lw      $t3, 0xc($t2)
    addu    $t4, $t0, $t3
    sb      $t9, 0x0($t4)
    lw      $t5, 0x38($sp)
    lw      $t7, 0xc($t5)
    addiu   $t1, $t7, 0x1
    sw      $t1, 0xc($t5)
branch_0x800cfd9c:
    lw      $t6, 0x38($sp)
    lw      $t2, 0x44($sp)
    lw      $t8, 0xc($t6)
    addu    $t0, $t8, $t2
    sw      $t0, 0x8($t6)
    lbu     $a1, 0x43($sp)
    jal     Function_0x800d0d60
    lw      $a0, 0x38($sp)
    b       branch_0x800d0218
    nop

.globl Function_0x800cfdc4
Function_0x800cfdc4: # 0x800cfdc4
    lw      $t3, 0x38($sp)
    addiu   $at, $zero, 0x4c
    lbu     $t9, 0x34($t3)
    bne     $t9, $at, branch_0x800cfe68
    nop
    lw      $t4, 0x3c($sp)
    lw      $t7, 0x0($t4)
    andi    $t1, $t7, 0x1
    beqz    $t1, branch_0x800cfe04
    nop
    addiu   $t5, $t7, 0x7
    sw      $t5, 0x0($t4)
    lw      $t8, 0x3c($sp)
    lw      $s0, 0x0($t8)
    b       branch_0x800cfe58
    addiu   $s0, $s0, 0xffea
branch_0x800cfe04:
    lw      $t2, 0x3c($sp)
    lw      $t0, 0x0($t2)
    andi    $t6, $t0, 0x2
    beqz    $t6, branch_0x800cfe30
    nop
    addiu   $t3, $t0, 0xa
    sw      $t3, 0x0($t2)
    lw      $t9, 0x3c($sp)
    lw      $s1, 0x0($t9)
    b       branch_0x800cfe54
    addiu   $s1, $s1, 0xffd8
branch_0x800cfe30:
    lw      $t1, 0x3c($sp)
    addiu   $at, $zero, 0xfff8
    lw      $t7, 0x0($t1)
    addiu   $t5, $t7, 0x7
    and     $t4, $t5, $at
    addiu   $t8, $t4, 0x8
    sw      $t8, 0x0($t1)
    lw      $t6, 0x3c($sp)
    lw      $s1, 0x0($t6)
branch_0x800cfe54:
    or      $s0, $s1, $zero
branch_0x800cfe58:
    ldc1    $4, -0x8($16)
    lw      $t0, 0x38($sp)
    b       branch_0x800cfef4
    sdc1    $4, 0x0($8)
branch_0x800cfe68:
    lw      $t3, 0x3c($sp)
    lw      $t2, 0x0($t3)
    andi    $t9, $t2, 0x1
    beqz    $t9, branch_0x800cfe94
    nop
    addiu   $t7, $t2, 0x7
    sw      $t7, 0x0($t3)
    lw      $t5, 0x3c($sp)
    lw      $s2, 0x0($t5)
    b       branch_0x800cfee8
    addiu   $s2, $s2, 0xffea
branch_0x800cfe94:
    lw      $t4, 0x3c($sp)
    lw      $t8, 0x0($t4)
    andi    $t1, $t8, 0x2
    beqz    $t1, branch_0x800cfec0
    nop
    addiu   $t6, $t8, 0xa
    sw      $t6, 0x0($t4)
    lw      $t0, 0x3c($sp)
    lw      $s3, 0x0($t0)
    b       branch_0x800cfee4
    addiu   $s3, $s3, 0xffd8
branch_0x800cfec0:
    lw      $t9, 0x3c($sp)
    addiu   $at, $zero, 0xfff8
    lw      $t2, 0x0($t9)
    addiu   $t7, $t2, 0x7
    and     $t3, $t7, $at
    addiu   $t5, $t3, 0x8
    sw      $t5, 0x0($t9)
    lw      $t1, 0x3c($sp)
    lw      $s3, 0x0($t1)
branch_0x800cfee4:
    or      $s2, $s3, $zero
branch_0x800cfee8:
    ldc1    $6, -0x8($18)
    lw      $t8, 0x38($sp)
    sdc1    $6, 0x0($24)
branch_0x800cfef4:
    lw      $t6, 0x38($sp)
    lhu     $t4, 0x0($t6)
    andi    $t0, $t4, 0x8000
    beqz    $t0, branch_0x800cff30
    nop
    lw      $t7, 0x44($sp)
    lw      $t3, 0xc($t6)
    addiu   $t2, $zero, 0x2d
    addu    $t5, $t7, $t3
    sb      $t2, 0x0($t5)
    lw      $t9, 0x38($sp)
    lw      $t1, 0xc($t9)
    addiu   $t8, $t1, 0x1
    b       branch_0x800cffa4
    sw      $t8, 0xc($t9)
branch_0x800cff30:
    lw      $t4, 0x38($sp)
    lw      $t0, 0x30($t4)
    andi    $t6, $t0, 0x2
    beqz    $t6, branch_0x800cff6c
    nop
    lw      $t3, 0x44($sp)
    lw      $t2, 0xc($t4)
    addiu   $t7, $zero, 0x2b
    addu    $t5, $t3, $t2
    sb      $t7, 0x0($t5)
    lw      $t1, 0x38($sp)
    lw      $t8, 0xc($t1)
    addiu   $t9, $t8, 0x1
    b       branch_0x800cffa4
    sw      $t9, 0xc($t1)
branch_0x800cff6c:
    lw      $t0, 0x38($sp)
    lw      $t6, 0x30($t0)
    andi    $t4, $t6, 0x1
    beqz    $t4, branch_0x800cffa4
    nop
    lw      $t2, 0x44($sp)
    lw      $t7, 0xc($t0)
    addiu   $t3, $zero, 0x20
    addu    $t5, $t2, $t7
    sb      $t3, 0x0($t5)
    lw      $t8, 0x38($sp)
    lw      $t9, 0xc($t8)
    addiu   $t1, $t9, 0x1
    sw      $t1, 0xc($t8)
branch_0x800cffa4:
    lw      $t6, 0x38($sp)
    lw      $t0, 0x44($sp)
    lw      $t4, 0xc($t6)
    addu    $t2, $t4, $t0
    sw      $t2, 0x8($t6)
    lbu     $a1, 0x43($sp)
    jal     Function_0x800d1060
    lw      $a0, 0x38($sp)
    b       branch_0x800d0218
    nop

.globl Function_0x800cffcc
Function_0x800cffcc: # 0x800cffcc
    lw      $t7, 0x38($sp)
    addiu   $at, $zero, 0x68
    lbu     $t3, 0x34($t7)
    bne     $t3, $at, branch_0x800d0018
    nop
    lw      $t5, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t9, 0x0($t5)
    addiu   $t1, $t9, 0x3
    and     $t8, $t1, $at
    addiu   $t4, $t8, 0x4
    sw      $t4, 0x0($t5)
    lw      $t0, 0x3c($sp)
    lw      $t2, 0x38($sp)
    lw      $s0, 0x0($t0)
    lw      $t6, 0x2c($t2)
    lw      $t7, -0x4($s0)
    b       branch_0x800d0218
    sh      $t6, 0x0($t7)
branch_0x800d0018:
    lw      $t3, 0x38($sp)
    addiu   $at, $zero, 0x6c
    lbu     $t9, 0x34($t3)
    bne     $t9, $at, branch_0x800d0064
    nop
    lw      $t1, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t8, 0x0($t1)
    addiu   $t4, $t8, 0x3
    and     $t5, $t4, $at
    addiu   $t0, $t5, 0x4
    sw      $t0, 0x0($t1)
    lw      $t2, 0x3c($sp)
    lw      $t6, 0x38($sp)
    lw      $s0, 0x0($t2)
    lw      $t7, 0x2c($t6)
    lw      $t3, -0x4($s0)
    b       branch_0x800d0218
    sw      $t7, 0x0($t3)
branch_0x800d0064:
    lw      $t9, 0x38($sp)
    addiu   $at, $zero, 0x4c
    lbu     $t8, 0x34($t9)
    bne     $t8, $at, branch_0x800d00bc
    nop
    lw      $t4, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    addiu   $t8, $zero, 0x0
    lw      $t5, 0x0($t4)
    addiu   $t0, $t5, 0x3
    and     $t1, $t0, $at
    addiu   $t2, $t1, 0x4
    sw      $t2, 0x0($t4)
    lw      $t6, 0x3c($sp)
    lw      $t7, 0x38($sp)
    lw      $s0, 0x0($t6)
    lw      $t3, 0x2c($t7)
    lw      $t5, -0x4($s0)
    or      $t9, $t3, $zero
    sw      $t9, 0x4($t5)
    b       branch_0x800d0218
    sw      $t8, 0x0($t5)
branch_0x800d00bc:
    lw      $t0, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t1, 0x0($t0)
    addiu   $t2, $t1, 0x3
    and     $t4, $t2, $at
    addiu   $t6, $t4, 0x4
    sw      $t6, 0x0($t0)
    lw      $t7, 0x3c($sp)
    lw      $t3, 0x38($sp)
    lw      $s0, 0x0($t7)
    lw      $t8, 0x2c($t3)
    lw      $t9, -0x4($s0)
    b       branch_0x800d0218
    sw      $t8, 0x0($t9)

.globl Function_0x800d00f4
Function_0x800d00f4: # 0x800d00f4
    lw      $t5, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    addiu   $a1, $zero, 0x78
    lw      $t1, 0x0($t5)
    addiu   $t2, $t1, 0x3
    and     $t4, $t2, $at
    addiu   $t6, $t4, 0x4
    sw      $t6, 0x0($t5)
    lw      $t0, 0x3c($sp)
    lw      $t1, 0x38($sp)
    lw      $t7, 0x0($t0)
    lw      $t3, -0x4($t7)
    or      $t9, $t3, $zero
    sra     $t8, $t3, 31
    sw      $t8, 0x0($t1)
    sw      $t9, 0x4($t1)
    lw      $t2, 0x38($sp)
    lw      $t6, 0x44($sp)
    lw      $t4, 0xc($t2)
    addu    $t5, $t4, $t6
    sw      $t5, 0x8($t2)
    jal     Function_0x800d0d60
    lw      $a0, 0x38($sp)
    b       branch_0x800d0218
    nop

.globl Function_0x800d0158
Function_0x800d0158: # 0x800d0158
    lw      $t0, 0x3c($sp)
    addiu   $at, $zero, 0xfffc
    lw      $t7, 0x0($t0)
    addiu   $t3, $t7, 0x3
    and     $t8, $t3, $at
    addiu   $t9, $t8, 0x4
    sw      $t9, 0x0($t0)
    lw      $t1, 0x3c($sp)
    lw      $t5, 0x38($sp)
    lw      $t4, 0x0($t1)
    lw      $t6, -0x4($t4)
    sw      $t6, 0x8($t5)
    lw      $t2, 0x38($sp)
    jal     Function_0x800d026c
    lw      $a0, 0x8($t2)
    lw      $t7, 0x38($sp)
    sw      $v0, 0x14($t7)
    lw      $t3, 0x38($sp)
    lw      $t8, 0x24($t3)
    bltz    $t8, branch_0x800d0218
    nop
    lw      $t9, 0x14($t3)
    slt     $at, $t8, $t9
    beqz    $at, branch_0x800d0218
    nop
    b       branch_0x800d0218
    sw      $t8, 0x14($t3)
branch_0x800d01c4:
    lw      $t4, 0x38($sp)
    lw      $t1, 0x44($sp)
    addiu   $t0, $zero, 0x25
    lw      $t6, 0xc($t4)
    addu    $t5, $t1, $t6
    sb      $t0, 0x0($t5)
    lw      $t2, 0x38($sp)
    lw      $t7, 0xc($t2)
    addiu   $t9, $t7, 0x1
    b       branch_0x800d0218
    sw      $t9, 0xc($t2)
branch_0x800d01f0:
    lw      $t4, 0x38($sp)
    lw      $t3, 0x44($sp)
    lbu     $t8, 0x43($sp)
    lw      $t1, 0xc($t4)
    addu    $t6, $t3, $t1
    sb      $t8, 0x0($t6)
    lw      $t0, 0x38($sp)
    lw      $t5, 0xc($t0)
    addiu   $t7, $t5, 0x1
    sw      $t7, 0xc($t0)
branch_0x800d0218:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    lw      $s2, 0x1c($sp)
    lw      $s3, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x800d0234
Function_0x800d0234: # 0x800d0234
    nop
    nop
    nop

.globl memcpy
memcpy: # 0x800d0240
    or      $v0, $a0, $zero
    beqz    $a2, branch_0x800d0264
    or      $v1, $a1, $zero
branch_0x800d024c:
    lbu     $t6, 0x0($v1)
    addiu   $a2, $a2, 0xffff
    addiu   $v0, $v0, 0x1
    addiu   $v1, $v1, 0x1
    bnez    $a2, branch_0x800d024c
    sb      $t6, -0x1($v0)
branch_0x800d0264:
    jr      $ra
    or      $v0, $a0, $zero

.globl Function_0x800d026c
Function_0x800d026c: # 0x800d026c
    lbu     $t6, 0x0($a0)
    or      $v1, $a0, $zero
    beqz    $t6, branch_0x800d028c
    nop
    lbu     $t7, 0x1($v1)
branch_0x800d0280:
    addiu   $v1, $v1, 0x1
    bnezl   $t7, branch_0x800d0280
    lbu     $t7, 0x1($v1)
branch_0x800d028c:
    jr      $ra
    subu    $v0, $v1, $a0

.globl Function_0x800d0294
Function_0x800d0294: # 0x800d0294
    lbu     $v1, 0x0($a0)
    andi    $t6, $a1, 0xff
    andi    $v0, $a1, 0xff
    beql    $t6, $v1, branch_0x800d02cc
    or      $v0, $a0, $zero
branch_0x800d02a8:
    bnezl   $v1, branch_0x800d02bc
    lbu     $v1, 0x1($a0)
    jr      $ra
    or      $v0, $zero, $zero

.globl Function_0x800d02b8
Function_0x800d02b8: # 0x800d02b8
    lbu     $v1, 0x1($a0)
branch_0x800d02bc:
    addiu   $a0, $a0, 0x1
    bne     $v0, $v1, branch_0x800d02a8
    nop
    or      $v0, $a0, $zero
branch_0x800d02cc:
    jr      $ra
    nop

.globl Function_0x800d02d4
Function_0x800d02d4: # 0x800d02d4
    nop
    nop
    nop

.globl osJamMesg
osJamMesg: # 0x800d02e0
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x28($sp)
    sw      $a1, 0x2c($sp)
    sw      $a2, 0x30($sp)
    sw      $s1, 0x18($sp)
    jal     __osDisableInt
    sw      $s0, 0x14($sp)
    lw      $t6, 0x28($sp)
    or      $s0, $v0, $zero
    lw      $t7, 0x8($t6)
    lw      $t8, 0x10($t6)
    slt     $at, $t7, $t8
    bnez    $at, branch_0x800d0378
    nop
branch_0x800d031c:
    lw      $t9, 0x30($sp)
    addiu   $at, $zero, 0x1
    bne     $t9, $at, branch_0x800d0350
    nop
    lui     $t1, 0x800f
    lw      $t1, -0x7270($t1)
    addiu   $t0, $zero, 0x8
    sh      $t0, 0x10($t1)
    lw      $a0, 0x28($sp)
    jal     Function_0x800caf30
    addiu   $a0, $a0, 0x4
    b       branch_0x800d0360
    nop
branch_0x800d0350:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    b       branch_0x800d041c
    addiu   $v0, $zero, 0xffff
branch_0x800d0360:
    lw      $t2, 0x28($sp)
    lw      $t3, 0x8($t2)
    lw      $t4, 0x10($t2)
    slt     $at, $t3, $t4
    beqz    $at, branch_0x800d031c
    nop
branch_0x800d0378:
    lw      $t5, 0x28($sp)
    lw      $t6, 0xc($t5)
    lw      $t7, 0x10($t5)
    addu    $t8, $t6, $t7
    addiu   $t9, $t8, 0xffff
    div     $zero, $t9, $t7
    mfhi    $t0
    sw      $t0, 0xc($t5)
    lw      $t2, 0x28($sp)
    lw      $t1, 0x2c($sp)
    bnez    $t7, branch_0x800d03ac
    nop
    break   0x7
branch_0x800d03ac:
    addiu   $at, $zero, 0xffff
    bne     $t7, $at, branch_0x800d03c4
    lui     $at, 0x8000
    bne     $t9, $at, branch_0x800d03c4
    nop
    break   0x6
branch_0x800d03c4:
    lw      $t4, 0xc($t2)
    lw      $t3, 0x14($t2)
    sll     $t6, $t4, 2
    addu    $t8, $t3, $t6
    sw      $t1, 0x0($t8)
    lw      $t9, 0x28($sp)
    lw      $t7, 0x8($t9)
    addiu   $t0, $t7, 0x1
    sw      $t0, 0x8($t9)
    lw      $t5, 0x28($sp)
    lw      $t2, 0x0($t5)
    lw      $t4, 0x0($t2)
    beqz    $t4, branch_0x800d0410
    nop
    jal     Function_0x800cb008
    or      $a0, $t5, $zero
    or      $s1, $v0, $zero
    jal     osStartThread
    or      $a0, $s1, $zero
branch_0x800d0410:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    or      $v0, $zero, $zero
branch_0x800d041c:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x14($sp)
    lw      $s1, 0x18($sp)
    jr      $ra
    addiu   $sp, $sp, 0x28


.globl osPiGetCmdQueue
osPiGetCmdQueue: # 0x800d0430
    lui     $t6, %hi(Unknown_0x800e8d30)
    lw      $t6, %lo(Unknown_0x800e8d30)($t6)
    bnez    $t6, branch_0x800d0448
    nop

    jr      $ra
    or      $v0, $zero, $zero

branch_0x800d0448:
    lui     $v0, %hi(Unknown_0x800e8d38)
    lw      $v0, %lo(Unknown_0x800e8d38)($v0)
    jr      $ra
    nop


.globl Function_0x800d0458
Function_0x800d0458: # 0x800d0458
    nop
    nop

.globl Function_0x800d0460
Function_0x800d0460: # 0x800d0460
    lui     $t6, 0xa450
    lw      $a0, 0xc($t6)
    lui     $at, 0x8000
    addiu   $sp, $sp, 0xfff8
    and     $t7, $a0, $at
    beqz    $t7, branch_0x800d0484
    nop
    b       branch_0x800d0488
    addiu   $v0, $zero, 0x1
branch_0x800d0484:
    or      $v0, $zero, $zero
branch_0x800d0488:
    jr      $ra
    addiu   $sp, $sp, 0x8

.globl Function_0x800d0490
Function_0x800d0490: # 0x800d0490
    srl     $t6, $a0, 24
    srl     $t8, $a0, 16
    srl     $t0, $a0, 8
    andi    $t7, $t6, 0xff
    andi    $t9, $t8, 0xff
    andi    $t1, $t0, 0xff
    andi    $t2, $a0, 0xff
    sb      $t7, 0x0($a1)
    sb      $t9, 0x1($a1)
    sb      $t1, 0x2($a1)
    jr      $ra
    sb      $t2, 0x3($a1)

.globl Function_0x800d04c0
Function_0x800d04c0: # 0x800d04c0
    lbu     $t6, 0x0($a0)
    addiu   $sp, $sp, 0xfff8
    andi    $t7, $t6, 0xff
    sll     $t8, $t7, 24
    sw      $t8, 0x4($sp)
    lbu     $t9, 0x1($a0)
    andi    $t0, $t9, 0xff
    sll     $t1, $t0, 16
    or      $t2, $t8, $t1
    sw      $t2, 0x4($sp)
    lbu     $t3, 0x2($a0)
    andi    $t4, $t3, 0xff
    sll     $t5, $t4, 8
    or      $t6, $t2, $t5
    sw      $t6, 0x4($sp)
    lbu     $t7, 0x3($a0)
    andi    $t9, $t7, 0xff
    or      $t0, $t6, $t9
    sw      $t0, 0x4($sp)
    addiu   $sp, $sp, 0x8
    jr      $ra
    or      $v0, $t0, $zero

.globl Function_0x800d0518
Function_0x800d0518: # 0x800d0518
    addiu   $sp, $sp, 0xffe0
    lbu     $t6, 0x1c($sp)
    sw      $a1, 0x24($sp)
    lw      $t9, 0x24($sp)
    andi    $t7, $t6, 0xff3f
    ori     $t8, $t7, 0x80
    andi    $t2, $t8, 0xff
    andi    $t0, $t9, 0x3
    andi    $t1, $t0, 0x3
    andi    $t3, $t2, 0xfffc
    sb      $t8, 0x1c($sp)
    or      $t4, $t1, $t3
    sw      $ra, 0x14($sp)
    sw      $a0, 0x20($sp)
    sb      $t4, 0x1c($sp)
    blez    $t9, branch_0x800d058c
    sw      $zero, 0x18($sp)
branch_0x800d055c:
    lw      $t5, 0x20($sp)
    lw      $t6, 0x18($sp)
    addu    $t7, $t5, $t6
    lbu     $t0, 0x0($t7)
    addu    $t8, $sp, $t6
    sb      $t0, 0x1d($t8)
    lw      $t2, 0x18($sp)
    lw      $t3, 0x24($sp)
    addiu   $t1, $t2, 0x1
    slt     $at, $t1, $t3
    bnez    $at, branch_0x800d055c
    sw      $t1, 0x18($sp)
branch_0x800d058c:
    addiu   $t4, $sp, 0x1c
    lw      $t9, 0x0($t4)
    lui     $t5, 0xc000
    jal     __osGetCause
    sw      $t9, 0x0($t5)
    andi    $t7, $v0, 0x2000
    bnez    $t7, branch_0x800d05c0
    nop
branch_0x800d05ac:
    jal     __osGetCause
    nop
    andi    $t0, $v0, 0x2000
    beqz    $t0, branch_0x800d05ac
    nop
branch_0x800d05c0:
    lui     $t6, 0xc000
    sw      $zero, 0xc($t6)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x800d05d8
Function_0x800d05d8: # 0x800d05d8
    lui     $t6, 0x800f
    lw      $t6, -0x713c($t6)
    addiu   $sp, $sp, 0xffd8
    sw      $ra, 0x14($sp)
    sw      $a0, 0x28($sp)
    bnez    $t6, branch_0x800d0630
    sw      $a1, 0x2c($sp)
    jal     __osGetCause
    nop
    andi    $t7, $v0, 0x2000
    bnez    $t7, branch_0x800d061c
    nop
branch_0x800d0608:
    jal     __osGetCause
    nop
    andi    $t8, $v0, 0x2000
    beqz    $t8, branch_0x800d0608
    nop
branch_0x800d061c:
    lui     $t9, 0xc000
    sw      $zero, 0xc($t9)
    addiu   $t0, $zero, 0x1
    lui     $at, 0x800f
    sw      $t0, -0x713c($at)
branch_0x800d0630:
    lw      $t1, 0x2c($sp)
    addiu   $at, $zero, 0x3
    sw      $zero, 0x24($sp)
    div     $zero, $t1, $at
    mfhi    $t2
    subu    $t3, $t1, $t2
    sw      $t2, 0x1c($sp)
    blez    $t3, branch_0x800d0680
    sw      $t3, 0x20($sp)
branch_0x800d0654:
    lw      $t4, 0x28($sp)
    lw      $t5, 0x24($sp)
    addiu   $a1, $zero, 0x3
    jal     Function_0x800d0518
    addu    $a0, $t4, $t5
    lw      $t6, 0x24($sp)
    lw      $t8, 0x20($sp)
    addiu   $t7, $t6, 0x3
    slt     $at, $t7, $t8
    bnez    $at, branch_0x800d0654
    sw      $t7, 0x24($sp)
branch_0x800d0680:
    lw      $t9, 0x1c($sp)
    blez    $t9, branch_0x800d06a0
    nop
    lw      $t0, 0x28($sp)
    lw      $t1, 0x20($sp)
    or      $a1, $t9, $zero
    jal     Function_0x800d0518
    addu    $a0, $t0, $t1
branch_0x800d06a0:
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x800d06b0
Function_0x800d06b0: # 0x800d06b0
    addiu   $sp, $sp, 0xffe0
    lui     $a0, 0x801e
    sw      $ra, 0x14($sp)
    addiu   $a0, $a0, 0xaa50
    jal     Function_0x800d04c0
    addiu   $a0, $a0, 0x1
    lui     $a0, 0x801e
    addiu   $a0, $a0, 0xaa50
    sw      $v0, 0x1c($sp)
    jal     Function_0x800d04c0
    addiu   $a0, $a0, 0x5
    sw      $v0, 0x18($sp)
    lw      $a1, 0x18($sp)
    jal     Function_0x800d05d8
    lw      $a0, 0x1c($sp)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x800d06fc
Function_0x800d06fc: # 0x800d06fc
    addiu   $sp, $sp, 0xffe8
    lui     $a0, 0x801e
    sw      $ra, 0x14($sp)
    addiu   $a0, $a0, 0xab50
    addiu   $a0, $a0, 0x20
    jal     Function_0x800d05d8
    addiu   $a1, $zero, 0x190
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop

.globl Function_0x800d0728
Function_0x800d0728: # 0x800d0728
    addiu   $sp, $sp, 0xffd0
    sw      $a0, 0x30($sp)
    lw      $t6, 0x30($sp)
    sw      $ra, 0x1c($sp)
    sw      $s0, 0x18($sp)
    addiu   $t7, $sp, 0x28
    sw      $t6, 0x0($t7)
    lbu     $t8, 0x28($sp)
    sw      $zero, 0x2c($sp)
    andi    $t9, $t8, 0x3
    beqz    $t9, branch_0x800d07a8
    nop
branch_0x800d0758:
    lw      $t0, 0x2c($sp)
    lui     $t2, 0x800f
    lw      $t2, -0x714c($t2)
    addu    $t1, $sp, $t0
    lbu     $t1, 0x29($t1)
    lui     $t3, 0x800f
    lw      $t3, -0x714c($t3)
    lui     $at, 0x801e
    lw      $t5, 0x2c($sp)
    lbu     $t7, 0x28($sp)
    addu    $at, $at, $t2
    sb      $t1, -0x55b0($at)
    lui     $at, 0x800f
    addiu   $t4, $t3, 0x1
    sw      $t4, -0x714c($at)
    addiu   $t6, $t5, 0x1
    andi    $t8, $t7, 0x3
    sltu    $at, $t6, $t8
    bnez    $at, branch_0x800d0758
    sw      $t6, 0x2c($sp)
branch_0x800d07a8:
    lbu     $t0, 0x28($sp)
    lui     $t9, 0x800f
    lw      $t9, -0x7148($t9)
    lui     $s0, 0x800f
    lw      $s0, -0x7150($s0)
    andi    $t1, $t0, 0x3
    lui     $at, 0x800f
    subu    $t2, $t9, $t1
    beqz    $s0, branch_0x800d07e4
    sw      $t2, -0x7148($at)
    addiu   $at, $zero, 0x1
    beq     $s0, $at, branch_0x800d0870
    nop
    b       branch_0x800d08d8
    nop
branch_0x800d07e4:
    addiu   $t3, $sp, 0x28
    lbu     $s0, 0x1($t3)
    addiu   $at, $zero, 0x1
    beq     $s0, $at, branch_0x800d0808
    addiu   $at, $zero, 0x2
    beq     $s0, $at, branch_0x800d0830
    nop
    b       branch_0x800d0854
    nop
branch_0x800d0808:
    lbu     $t5, 0x28($sp)
    addiu   $t4, $zero, 0x1
    lui     $at, 0x800f
    sw      $t4, -0x7150($at)
    addiu   $t6, $zero, 0x9
    andi    $t7, $t5, 0x3
    subu    $t8, $t6, $t7
    lui     $at, 0x800f
    b       branch_0x800d08f0
    sw      $t8, -0x7148($at)
branch_0x800d0830:
    jal     Function_0x800d06fc
    nop
    lui     $at, 0x800f
    sw      $zero, -0x7150($at)
    lui     $at, 0x800f
    sw      $zero, -0x714c($at)
    lui     $at, 0x800f
    b       branch_0x800d08f0
    sw      $zero, -0x7148($at)
branch_0x800d0854:
    lui     $at, 0x800f
    sw      $zero, -0x7150($at)
    lui     $at, 0x800f
    sw      $zero, -0x714c($at)
    lui     $at, 0x800f
    b       branch_0x800d08f0
    sw      $zero, -0x7148($at)
branch_0x800d0870:
    lui     $t0, 0x800f
    lw      $t0, -0x7148($t0)
    bgtz    $t0, branch_0x800d08f0
    nop
    lui     $t9, 0x801e
    addiu   $t9, $t9, 0xaa50
    lbu     $t1, 0x0($t9)
    addiu   $at, $zero, 0x1
    bne     $t1, $at, branch_0x800d08bc
    nop
    jal     Function_0x800d06b0
    nop
    lui     $at, 0x800f
    sw      $zero, -0x7150($at)
    lui     $at, 0x800f
    sw      $zero, -0x714c($at)
    lui     $at, 0x800f
    b       branch_0x800d08f0
    sw      $zero, -0x7148($at)
branch_0x800d08bc:
    lui     $at, 0x800f
    sw      $zero, -0x7150($at)
    lui     $at, 0x800f
    sw      $zero, -0x714c($at)
    lui     $at, 0x800f
    b       branch_0x800d08f0
    sw      $zero, -0x7148($at)
branch_0x800d08d8:
    lui     $at, 0x800f
    sw      $zero, -0x7150($at)
    lui     $at, 0x800f
    sw      $zero, -0x714c($at)
    lui     $at, 0x800f
    sw      $zero, -0x7148($at)
branch_0x800d08f0:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl Function_0x800d0904
Function_0x800d0904: # 0x800d0904
    nop
    nop
    nop

.globl __osSyncPutChars
__osSyncPutChars: # 0x800d0910
    addiu   $sp, $sp, 0xffd8
    sw      $a0, 0x28($sp)
    lw      $t6, 0x28($sp)
    lbu     $t0, 0x24($sp)
    sw      $a1, 0x2c($sp)
    andi    $t7, $t6, 0x3
    lw      $t3, 0x2c($sp)
    sll     $t8, $t7, 6
    andi    $t9, $t8, 0xc0
    andi    $t1, $t0, 0xff3f
    or      $t2, $t9, $t1
    andi    $t6, $t2, 0xff
    andi    $t4, $t3, 0x3
    andi    $t5, $t4, 0x3
    andi    $t7, $t6, 0xfffc
    sb      $t2, 0x24($sp)
    or      $t8, $t5, $t7
    sw      $ra, 0x14($sp)
    sw      $a2, 0x30($sp)
    sb      $t8, 0x24($sp)
    blez    $t3, branch_0x800d0998
    sw      $zero, 0x20($sp)
branch_0x800d0968:
    lw      $t0, 0x30($sp)
    lw      $t9, 0x20($sp)
    addu    $t1, $t0, $t9
    lbu     $t4, 0x0($t1)
    addu    $t2, $sp, $t9
    sb      $t4, 0x25($t2)
    lw      $t6, 0x20($sp)
    lw      $t7, 0x2c($sp)
    addiu   $t5, $t6, 0x1
    slt     $at, $t5, $t7
    bnez    $at, branch_0x800d0968
    sw      $t5, 0x20($sp)
branch_0x800d0998:
    lui     $a0, 0x800f
    jal     __osAtomicDec
    addiu   $a0, $a0, 0x8ec4
    bnez    $v0, branch_0x800d09c0
    nop
branch_0x800d09ac:
    lui     $a0, 0x800f
    jal     __osAtomicDec
    addiu   $a0, $a0, 0x8ec4
    beqz    $v0, branch_0x800d09ac
    nop
branch_0x800d09c0:
    jal     __osDisableInt
    nop
    sw      $v0, 0x1c($sp)
    addiu   $t8, $sp, 0x24
    lw      $t3, 0x0($t8)
    lui     $t0, 0xc000
    jal     __osGetCause
    sw      $t3, 0x0($t0)
    andi    $t1, $v0, 0x2000
    bnez    $t1, branch_0x800d0a00
    nop
branch_0x800d09ec:
    jal     __osGetCause
    nop
    andi    $t4, $v0, 0x2000
    beqz    $t4, branch_0x800d09ec
    nop
branch_0x800d0a00:
    lui     $t9, 0xc000
    sw      $zero, 0xc($t9)
    lui     $t2, 0x800f
    lw      $t2, -0x713c($t2)
    lui     $at, 0x800f
    lw      $a0, 0x1c($sp)
    addiu   $t6, $t2, 0x1
    jal     __osRestoreInt
    sw      $t6, -0x713c($at)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x28
    jr      $ra
    nop

.globl Function_0x800d0a34
Function_0x800d0a34: # 0x800d0a34
    nop
    nop
    nop
    mfc0    $9, $12
    andi    $v0, $t1, 0xff01
    lui     $t2, 0xa430
    lw      $t2, 0xc($t2)
    sll     $t2, $t2, 16
    or      $v0, $v0, $t2
    lui     $at, 0x3f
    and     $t0, $a0, $at
    srl     $t0, $t0, 15
    lui     $t2, 0x800f
    addu    $t2, $t2, $t0
    lhu     $t2, -0x3b50($t2)
    lui     $at, 0xa430
    sw      $t2, 0xc($at)
    andi    $t0, $a0, 0xff01
    lui     $at, 0xffff
    ori     $at, $at, 0xff
    and     $t1, $t1, $at
    or      $t1, $t1, $t0
    mtc0    $9, $12
    nop
    nop
    jr      $ra
    nop

.globl osDestroyThread
osDestroyThread: # 0x800d0aa0
    addiu   $sp, $sp, 0xffc8
    sw      $ra, 0x24($sp)
    sw      $a0, 0x38($sp)
    sw      $s2, 0x20($sp)
    sw      $s1, 0x1c($sp)
    jal     __osDisableInt
    sw      $s0, 0x18($sp)
    lw      $t6, 0x38($sp)
    or      $s0, $v0, $zero
    bnez    $t6, branch_0x800d0adc
    nop
    lui     $t7, 0x800f
    lw      $t7, -0x7270($t7)
    b       branch_0x800d0afc
    sw      $t7, 0x38($sp)
branch_0x800d0adc:
    lw      $t8, 0x38($sp)
    addiu   $at, $zero, 0x1
    lhu     $t9, 0x10($t8)
    beq     $t9, $at, branch_0x800d0afc
    nop
    lw      $a0, 0x8($t8)
    jal     __osDequeueThread
    or      $a1, $t8, $zero
branch_0x800d0afc:
    lui     $t0, 0x800f
    lw      $t0, -0x7274($t0)
    lw      $t1, 0x38($sp)
    bne     $t0, $t1, branch_0x800d0b20
    nop
    lw      $t2, 0xc($t0)
    lui     $at, 0x800f
    b       branch_0x800d0b5c
    sw      $t2, -0x7274($at)
branch_0x800d0b20:
    lui     $s1, 0x800f
    lw      $s1, -0x7274($s1)
    lw      $s2, 0xc($s1)
    beqz    $s2, branch_0x800d0b5c
    nop
branch_0x800d0b34:
    lw      $t3, 0x38($sp)
    bne     $s2, $t3, branch_0x800d0b4c
    nop
    lw      $t4, 0xc($t3)
    b       branch_0x800d0b5c
    sw      $t4, 0xc($s1)
branch_0x800d0b4c:
    or      $s1, $s2, $zero
    lw      $s2, 0xc($s1)
    bnez    $s2, branch_0x800d0b34
    nop
branch_0x800d0b5c:
    lui     $t6, 0x800f
    lw      $t6, -0x7270($t6)
    lw      $t5, 0x38($sp)
    bne     $t5, $t6, branch_0x800d0b78
    nop
    jal     Function_0x800cb018
    nop
branch_0x800d0b78:
    jal     __osRestoreInt
    or      $a0, $s0, $zero
    lw      $ra, 0x24($sp)
    lw      $s0, 0x18($sp)
    lw      $s1, 0x1c($sp)
    lw      $s2, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x38

.globl Function_0x800d0b98
Function_0x800d0b98: # 0x800d0b98
    nop
    nop

.globl __osSetCompare
__osSetCompare: # 0x800d0ba0
    mtc0    $4, $11
    jr      $ra
    nop

.globl Function_0x800d0bac
Function_0x800d0bac: # 0x800d0bac
    nop

.globl __osSiDeviceBusy
__osSiDeviceBusy: # 0x800d0bb0
    lui     $t6, 0xa480
    lw      $a0, 0x18($t6)
    addiu   $sp, $sp, 0xfff8
    andi    $t7, $a0, 0x3
    beqz    $t7, branch_0x800d0bd0
    nop
    b       branch_0x800d0bd4
    addiu   $v0, $zero, 0x1
branch_0x800d0bd0:
    or      $v0, $zero, $zero
branch_0x800d0bd4:
    jr      $ra
    addiu   $sp, $sp, 0x8

.globl Function_0x800d0bdc
Function_0x800d0bdc: # 0x800d0bdc
    nop

.globl Function_0x800d0be0
Function_0x800d0be0: # 0x800d0be0
    addiu   $sp, $sp, 0xfff0
    andi    $a0, $a0, 0xffff
    sb      $zero, 0xf($sp)
    sw      $zero, 0x8($sp)
branch_0x800d0bf0:
    lbu     $t6, 0xf($sp)
    andi    $t7, $t6, 0x10
    beqz    $t7, branch_0x800d0c0c
    nop
    addiu   $t8, $zero, 0x15
    b       branch_0x800d0c10
    sb      $t8, 0xe($sp)
branch_0x800d0c0c:
    sb      $zero, 0xe($sp)
branch_0x800d0c10:
    lbu     $t9, 0xf($sp)
    andi    $t1, $a0, 0x400
    sll     $t0, $t9, 1
    beqz    $t1, branch_0x800d0c2c
    sb      $t0, 0xf($sp)
    b       branch_0x800d0c30
    addiu   $a1, $zero, 0x1
branch_0x800d0c2c:
    or      $a1, $zero, $zero
branch_0x800d0c30:
    lbu     $t2, 0xf($sp)
    lw      $t0, 0x8($sp)
    lbu     $t7, 0xe($sp)
    andi    $t3, $a1, 0xff
    sll     $t5, $a0, 1
    or      $t4, $t2, $t3
    or      $a0, $t5, $zero
    andi    $t8, $t4, 0xff
    addiu   $t1, $t0, 0x1
    slti    $at, $t1, 0x10
    sb      $t4, 0xf($sp)
    andi    $t6, $a0, 0xffff
    xor     $t9, $t8, $t7
    sw      $t1, 0x8($sp)
    or      $a0, $t6, $zero
    bnez    $at, branch_0x800d0bf0
    sb      $t9, 0xf($sp)
    lbu     $v0, 0xf($sp)
    addiu   $sp, $sp, 0x10
    andi    $t2, $v0, 0x1f
    or      $v0, $t2, $zero
    andi    $t3, $v0, 0xff
    jr      $ra
    or      $v0, $t3, $zero

.globl Function_0x800d0c90
Function_0x800d0c90: # 0x800d0c90
    addiu   $sp, $sp, 0xfff0
    sb      $zero, 0xf($sp)
    sw      $zero, 0x8($sp)
branch_0x800d0c9c:
    addiu   $t6, $zero, 0x7
    sw      $t6, 0x4($sp)
branch_0x800d0ca4:
    lbu     $t7, 0xf($sp)
    andi    $t8, $t7, 0x80
    beqz    $t8, branch_0x800d0cc0
    nop
    addiu   $t9, $zero, 0x85
    b       branch_0x800d0cc4
    sb      $t9, 0xe($sp)
branch_0x800d0cc0:
    sb      $zero, 0xe($sp)
branch_0x800d0cc4:
    lbu     $t0, 0xf($sp)
    lw      $t2, 0x8($sp)
    addiu   $at, $zero, 0x20
    sll     $t1, $t0, 1
    bne     $t2, $at, branch_0x800d0ce8
    sb      $t1, 0xf($sp)
    andi    $t3, $t1, 0xff
    b       branch_0x800d0d1c
    sb      $t3, 0xf($sp)
branch_0x800d0ce8:
    lw      $t5, 0x4($sp)
    lbu     $t4, 0x0($a0)
    addiu   $t6, $zero, 0x1
    sllv    $t7, $t6, $t5
    and     $t8, $t4, $t7
    beqz    $t8, branch_0x800d0d0c
    nop
    b       branch_0x800d0d10
    addiu   $a1, $zero, 0x1
branch_0x800d0d0c:
    or      $a1, $zero, $zero
branch_0x800d0d10:
    lbu     $t9, 0xf($sp)
    or      $t0, $t9, $a1
    sb      $t0, 0xf($sp)
branch_0x800d0d1c:
    lw      $t6, 0x4($sp)
    lbu     $t2, 0xf($sp)
    lbu     $t1, 0xe($sp)
    addiu   $t5, $t6, 0xffff
    sw      $t5, 0x4($sp)
    xor     $t3, $t2, $t1
    bgez    $t5, branch_0x800d0ca4
    sb      $t3, 0xf($sp)
    lw      $t4, 0x8($sp)
    addiu   $a0, $a0, 0x1
    addiu   $t7, $t4, 0x1
    slti    $at, $t7, 0x21
    bnez    $at, branch_0x800d0c9c
    sw      $t7, 0x8($sp)
    lbu     $v0, 0xf($sp)
    jr      $ra
    addiu   $sp, $sp, 0x10

.globl Function_0x800d0d60
Function_0x800d0d60: # 0x800d0d60
    addiu   $sp, $sp, 0xff90
    sw      $a1, 0x74($sp)
    lbu     $t6, 0x77($sp)
    addiu   $at, $zero, 0x58
    sw      $ra, 0x24($sp)
    sw      $a0, 0x70($sp)
    bne     $t6, $at, branch_0x800d0d90
    sw      $s0, 0x20($sp)
    lui     $t7, 0x800f
    addiu   $t7, $t7, 0x8f84
    b       branch_0x800d0d9c
    sw      $t7, 0x54($sp)
branch_0x800d0d90:
    lui     $t8, 0x800f
    addiu   $t8, $t8, 0x8f70
    sw      $t8, 0x54($sp)
branch_0x800d0d9c:
    lbu     $t9, 0x77($sp)
    addiu   $at, $zero, 0x6f
    bne     $t9, $at, branch_0x800d0db8
    nop
    addiu   $t0, $zero, 0x8
    b       branch_0x800d0de0
    sw      $t0, 0x50($sp)
branch_0x800d0db8:
    lbu     $t1, 0x77($sp)
    addiu   $at, $zero, 0x78
    beq     $t1, $at, branch_0x800d0dd8
    addiu   $at, $zero, 0x58
    beq     $t1, $at, branch_0x800d0dd8
    nop
    b       branch_0x800d0ddc
    addiu   $s0, $zero, 0xa
branch_0x800d0dd8:
    addiu   $s0, $zero, 0x10
branch_0x800d0ddc:
    sw      $s0, 0x50($sp)
branch_0x800d0de0:
    lw      $t3, 0x70($sp)
    addiu   $t2, $zero, 0x18
    sw      $t2, 0x4c($sp)
    lbu     $t6, 0x77($sp)
    lw      $t5, 0x4($t3)
    lw      $t4, 0x0($t3)
    addiu   $at, $zero, 0x64
    sw      $t5, 0x44($sp)
    beq     $t6, $at, branch_0x800d0e14
    sw      $t4, 0x40($sp)
    addiu   $at, $zero, 0x69
    bne     $t6, $at, branch_0x800d0e58
    nop
branch_0x800d0e14:
    lw      $t7, 0x70($sp)
    lw      $t8, 0x0($t7)
    lw      $t9, 0x4($t7)
    bgtz    $t8, branch_0x800d0e58
    nop
    bltz    $t8, branch_0x800d0e38
    nop
    b       branch_0x800d0e58
    nop
branch_0x800d0e38:
    lw      $t0, 0x40($sp)
    lw      $t1, 0x44($sp)
    nor     $t2, $t0, $zero
    sltiu   $at, $t1, 0x1
    addu    $t2, $t2, $at
    subu    $t3, $zero, $t1
    sw      $t3, 0x44($sp)
    sw      $t2, 0x40($sp)
branch_0x800d0e58:
    lw      $t4, 0x40($sp)
    lw      $t5, 0x44($sp)
    bnez    $t4, branch_0x800d0e80
    nop
    bnez    $t5, branch_0x800d0e80
    nop
    lw      $t6, 0x70($sp)
    lw      $t7, 0x24($t6)
    beqz    $t7, branch_0x800d0ebc
    nop
branch_0x800d0e80:
    lw      $s0, 0x4c($sp)
    lw      $t8, 0x50($sp)
    lw      $a0, 0x40($sp)
    addiu   $s0, $s0, 0xffff
    sw      $s0, 0x4c($sp)
    lw      $a1, 0x44($sp)
    or      $a3, $t8, $zero
    jal     Function_0x800cc50c
    sra     $a2, $t8, 31
    lw      $t0, 0x54($sp)
    or      $t9, $v1, $zero
    addu    $t3, $sp, $s0
    addu    $t1, $t9, $t0
    lbu     $t2, 0x0($t1)
    sb      $t2, 0x58($t3)
branch_0x800d0ebc:
    lw      $t4, 0x50($sp)
    lw      $a0, 0x40($sp)
    lw      $a1, 0x44($sp)
    or      $a3, $t4, $zero
    jal     Function_0x800cc548
    sra     $a2, $t4, 31
    lw      $t5, 0x70($sp)
    sw      $v0, 0x0($t5)
    sw      $v1, 0x4($t5)
    lw      $t6, 0x70($sp)
    lw      $t8, 0x0($t6)
    lw      $t9, 0x4($t6)
    bltz    $t8, branch_0x800d0fa8
    nop
    bgtz    $t8, branch_0x800d0f04
    nop
    beqz    $t9, branch_0x800d0fa8
    nop
branch_0x800d0f04:
    lw      $t7, 0x4c($sp)
    blez    $t7, branch_0x800d0fa8
    nop
branch_0x800d0f10:
    lw      $t0, 0x70($sp)
    lw      $t1, 0x50($sp)
    addiu   $a0, $sp, 0x30
    lw      $a2, 0x0($t0)
    lw      $a3, 0x4($t0)
    or      $t3, $t1, $zero
    sra     $t2, $t1, 31
    sw      $t2, 0x10($sp)
    jal     lldiv
    sw      $t3, 0x14($sp)
    lw      $t6, 0x70($sp)
    lw      $t4, 0x30($sp)
    lw      $t5, 0x34($sp)
    sw      $t4, 0x0($t6)
    sw      $t5, 0x4($t6)
    lw      $t9, 0x3c($sp)
    lw      $s0, 0x4c($sp)
    lw      $t0, 0x54($sp)
    or      $t7, $t9, $zero
    addiu   $s0, $s0, 0xffff
    sw      $s0, 0x4c($sp)
    addu    $t1, $t7, $t0
    lbu     $t2, 0x0($t1)
    addu    $t3, $sp, $s0
    lw      $t8, 0x38($sp)
    sb      $t2, 0x58($t3)
    lw      $t4, 0x70($sp)
    lw      $t6, 0x0($t4)
    lw      $t7, 0x4($t4)
    bltz    $t6, branch_0x800d0fa8
    nop
    bgtz    $t6, branch_0x800d0f9c
    nop
    beqz    $t7, branch_0x800d0fa8
    nop
branch_0x800d0f9c:
    lw      $t5, 0x4c($sp)
    bgtz    $t5, branch_0x800d0f10
    nop
branch_0x800d0fa8:
    lw      $t8, 0x4c($sp)
    lw      $t1, 0x70($sp)
    addiu   $t9, $zero, 0x18
    subu    $t0, $t9, $t8
    sw      $t0, 0x14($t1)
    lw      $t2, 0x70($sp)
    lw      $t3, 0x4c($sp)
    addiu   $t4, $sp, 0x58
    lw      $a0, 0x8($t2)
    lw      $a2, 0x14($t2)
    jal     memcpy
    addu    $a1, $t3, $t4
    lw      $t6, 0x70($sp)
    lw      $t7, 0x14($t6)
    lw      $t5, 0x24($t6)
    slt     $at, $t7, $t5
    beqz    $at, branch_0x800d0ff8
    nop
    subu    $t9, $t5, $t7
    sw      $t9, 0x10($t6)
branch_0x800d0ff8:
    lw      $t8, 0x70($sp)
    lw      $t0, 0x24($t8)
    bgez    $t0, branch_0x800d104c
    nop
    lw      $t1, 0x30($t8)
    addiu   $at, $zero, 0x10
    andi    $t3, $t1, 0x14
    bne     $t3, $at, branch_0x800d104c
    nop
    lw      $t4, 0x28($t8)
    lw      $t2, 0xc($t8)
    lw      $t7, 0x10($t8)
    lw      $t6, 0x14($t8)
    subu    $t5, $t4, $t2
    subu    $t9, $t5, $t7
    subu    $t0, $t9, $t6
    blez    $t0, branch_0x800d104c
    sw      $t0, 0x4c($sp)
    lw      $t1, 0x10($t8)
    addu    $t3, $t1, $t0
    sw      $t3, 0x10($t8)
branch_0x800d104c:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x20($sp)
    addiu   $sp, $sp, 0x70
    jr      $ra
    nop

.globl Function_0x800d1060
Function_0x800d1060: # 0x800d1060
    addiu   $sp, $sp, 0xff68
    sw      $a0, 0x98($sp)
    lw      $t7, 0x98($sp)
    addiu   $t6, $sp, 0x78
    sw      $ra, 0x24($sp)
    sw      $a1, 0x9c($sp)
    sw      $s1, 0x20($sp)
    sw      $s0, 0x1c($sp)
    sw      $t6, 0x74($sp)
    ldc1    $4, 0x0($15)
    sdc1    $4, 0x68($29)
    lw      $t8, 0x24($t7)
    bgez    $t8, branch_0x800d10a4
    nop
    addiu   $t9, $zero, 0x6
    b       branch_0x800d10d8
    sw      $t9, 0x24($t7)
branch_0x800d10a4:
    lw      $t0, 0x98($sp)
    lw      $t1, 0x24($t0)
    bnez    $t1, branch_0x800d10d8
    nop
    lbu     $t2, 0x9f($sp)
    addiu   $at, $zero, 0x67
    beq     $t2, $at, branch_0x800d10cc
    addiu   $at, $zero, 0x47
    bne     $t2, $at, branch_0x800d10d8
    nop
branch_0x800d10cc:
    lw      $t4, 0x98($sp)
    addiu   $t3, $zero, 0x1
    sw      $t3, 0x24($t4)
branch_0x800d10d8:
    addiu   $a0, $sp, 0x62
    jal     Function_0x800d1660
    lw      $a1, 0x98($sp)
    sh      $v0, 0x66($sp)
    lh      $t5, 0x66($sp)
    blez    $t5, branch_0x800d1138
    addiu   $at, $zero, 0x2
    bne     $t5, $at, branch_0x800d1108
    nop
    lui     $s0, 0x800f
    b       branch_0x800d1110
    addiu   $s0, $s0, 0xc578
branch_0x800d1108:
    lui     $s0, 0x800f
    addiu   $s0, $s0, 0xc57c
branch_0x800d1110:
    lw      $t6, 0x98($sp)
    addiu   $t8, $zero, 0x3
    or      $a1, $s0, $zero
    sw      $t8, 0x14($t6)
    lw      $t9, 0x98($sp)
    lw      $a0, 0x8($t6)
    jal     memcpy
    lw      $a2, 0x14($t9)
    b       branch_0x800d164c
    nop
branch_0x800d1138:
    lh      $t7, 0x66($sp)
    bnez    $t7, branch_0x800d1150
    nop
    sh      $zero, 0x64($sp)
    b       branch_0x800d1630
    sh      $zero, 0x62($sp)
branch_0x800d1150:
    ldc1    $6, 0x68($29)
    mtc1    $zero, $t1
    mtc1    $zero, $t0
    nop
    c.lt.d $f6, $f8
    nop
    bc1f    branch_0x800d1178
    nop
    neg.d   $f10, $f6
    sdc1    $10, 0x68($29)
branch_0x800d1178:
    lh      $t0, 0x62($sp)
    addiu   $at, $zero, 0x7597
    multu   $t0, $at
    lui     $at, 0x1
    ori     $at, $at, 0x86a0
    mflo    $t1
    nop
    nop
    div     $zero, $t1, $at
    mflo    $t2
    addiu   $t3, $t2, 0xfffc
    sll     $t4, $t3, 16
    sra     $t5, $t4, 16
    bgez    $t5, branch_0x800d1238
    sh      $t3, 0x62($sp)
    sll     $t6, $t3, 16
    sra     $t9, $t6, 16
    addiu   $t8, $zero, 0x3
    subu    $t7, $t8, $t9
    addiu   $at, $zero, 0xfffc
    and     $t0, $t7, $at
    sw      $t0, 0x58($sp)
    lw      $t2, 0x58($sp)
    subu    $t1, $zero, $t0
    sh      $t1, 0x62($sp)
    blez    $t2, branch_0x800d12cc
    sw      $zero, 0x5c($sp)
branch_0x800d11e4:
    lw      $t4, 0x58($sp)
    andi    $t5, $t4, 0x1
    beqz    $t5, branch_0x800d1214
    nop
    lw      $t3, 0x5c($sp)
    lui     $at, 0x800f
    ldc1    $16, 0x68($29)
    sll     $t6, $t3, 3
    addu    $at, $at, $t6
    ldc1    $18, -0x3ad0($1)
    mul.d   $f4, $f16, $f18
    sdc1    $4, 0x68($29)
branch_0x800d1214:
    lw      $t8, 0x58($sp)
    lw      $t7, 0x5c($sp)
    sra     $t9, $t8, 1
    addiu   $t0, $t7, 0x1
    sw      $t0, 0x5c($sp)
    bgtz    $t9, branch_0x800d11e4
    sw      $t9, 0x58($sp)
    b       branch_0x800d12cc
    nop
branch_0x800d1238:
    lh      $t1, 0x62($sp)
    blez    $t1, branch_0x800d12cc
    lui     $at, 0x3ff0
    mtc1    $at, $t1
    addiu   $at, $zero, 0xfffc
    and     $t2, $t1, $at
    mtc1    $zero, $t0
    sll     $t4, $t2, 16
    sra     $t5, $t4, 16
    sh      $t2, 0x62($sp)
    sw      $t5, 0x58($sp)
    sw      $zero, 0x5c($sp)
    blez    $t5, branch_0x800d12bc
    sdc1    $8, 0x50($29)
branch_0x800d1270:
    lw      $t3, 0x58($sp)
    andi    $t6, $t3, 0x1
    beqz    $t6, branch_0x800d12a0
    nop
    lw      $t8, 0x5c($sp)
    lui     $at, 0x800f
    ldc1    $6, 0x50($29)
    sll     $t7, $t8, 3
    addu    $at, $at, $t7
    ldc1    $10, -0x3ad0($1)
    mul.d   $f16, $f6, $f10
    sdc1    $16, 0x50($29)
branch_0x800d12a0:
    lw      $t0, 0x58($sp)
    lw      $t1, 0x5c($sp)
    sra     $t9, $t0, 1
    addiu   $t2, $t1, 0x1
    sw      $t2, 0x5c($sp)
    bgtz    $t9, branch_0x800d1270
    sw      $t9, 0x58($sp)
branch_0x800d12bc:
    ldc1    $18, 0x68($29)
    ldc1    $4, 0x50($29)
    div.d   $f8, $f18, $f4
    sdc1    $8, 0x68($29)
branch_0x800d12cc:
    lbu     $t4, 0x9f($sp)
    addiu   $at, $zero, 0x66
    bne     $t4, $at, branch_0x800d12e8
    nop
    lh      $s0, 0x62($sp)
    b       branch_0x800d12ec
    addiu   $s0, $s0, 0xa
branch_0x800d12e8:
    addiu   $s0, $zero, 0x6
branch_0x800d12ec:
    lw      $t5, 0x98($sp)
    lw      $t3, 0x24($t5)
    addu    $t6, $s0, $t3
    sw      $t6, 0x4c($sp)
    lw      $t8, 0x4c($sp)
    slti    $at, $t8, 0x14
    bnez    $at, branch_0x800d1314
    nop
    addiu   $t7, $zero, 0x13
    sw      $t7, 0x4c($sp)
branch_0x800d1314:
    lw      $t1, 0x74($sp)
    addiu   $t0, $zero, 0x30
    sb      $t0, 0x0($t1)
    lw      $t2, 0x74($sp)
    lw      $t4, 0x4c($sp)
    addiu   $t9, $t2, 0x1
    blez    $t4, branch_0x800d1460
    sw      $t9, 0x74($sp)
    mtc1    $zero, $a3
    mtc1    $zero, $a2
    ldc1    $10, 0x68($29)
    c.lt.d $f6, $f10
    nop
    bc1f    branch_0x800d1460
    nop
branch_0x800d1350:
    ldc1    $16, 0x68($29)
    lw      $t6, 0x4c($sp)
    trunc.w.d   $f18, $f16
    addiu   $t8, $t6, 0xfff8
    sw      $t8, 0x4c($sp)
    mfc1    $t3, $s2
    blez    $t8, branch_0x800d138c
    sw      $t3, 0x44($sp)
    mtc1    $t3, $a0
    lui     $at, 0x800f
    ldc1    $10, -0x3a78($1)
    cvt.d.w $f8, $f4
    sub.d   $f6, $f16, $f8
    mul.d   $f18, $f6, $f10
    sdc1    $18, 0x68($29)
branch_0x800d138c:
    lw      $t7, 0x74($sp)
    lw      $t2, 0x44($sp)
    addiu   $t1, $zero, 0x8
    addiu   $t0, $t7, 0x8
    sw      $t0, 0x74($sp)
    blez    $t2, branch_0x800d13fc
    sw      $t1, 0x48($sp)
    addiu   $t9, $zero, 0x7
    sw      $t9, 0x48($sp)
branch_0x800d13b0:
    addiu   $a0, $sp, 0x3c
    lw      $a1, 0x44($sp)
    jal     Function_0x800d1fa0
    addiu   $a2, $zero, 0xa
    lw      $t4, 0x74($sp)
    lw      $t6, 0x40($sp)
    addiu   $t5, $t4, 0xffff
    sw      $t5, 0x74($sp)
    addiu   $t8, $t6, 0x30
    sb      $t8, 0x0($t5)
    lw      $t3, 0x3c($sp)
    sw      $t3, 0x44($sp)
    lw      $t7, 0x44($sp)
    blez    $t7, branch_0x800d13fc
    nop
    lw      $t0, 0x48($sp)
    addiu   $t1, $t0, 0xffff
    bgez    $t1, branch_0x800d13b0
    sw      $t1, 0x48($sp)
branch_0x800d13fc:
    lw      $t2, 0x48($sp)
    addiu   $t9, $t2, 0xffff
    bltz    $t9, branch_0x800d1430
    sw      $t9, 0x48($sp)
branch_0x800d140c:
    lw      $t4, 0x74($sp)
    addiu   $t8, $zero, 0x30
    addiu   $t6, $t4, 0xffff
    sw      $t6, 0x74($sp)
    sb      $t8, 0x0($t6)
    lw      $t5, 0x48($sp)
    addiu   $t3, $t5, 0xffff
    bgez    $t3, branch_0x800d140c
    sw      $t3, 0x48($sp)
branch_0x800d1430:
    lw      $t7, 0x74($sp)
    lw      $t1, 0x4c($sp)
    addiu   $t0, $t7, 0x8
    blez    $t1, branch_0x800d1460
    sw      $t0, 0x74($sp)
    mtc1    $zero, $a1
    mtc1    $zero, $a0
    ldc1    $16, 0x68($29)
    c.lt.d $f4, $f16
    nop
    bc1t    branch_0x800d1350
    nop
branch_0x800d1460:
    lw      $t2, 0x74($sp)
    lh      $t5, 0x62($sp)
    addiu   $t9, $sp, 0x78
    subu    $t4, $t2, $t9
    addiu   $t8, $t4, 0xffff
    addiu   $t6, $t9, 0x1
    addiu   $t3, $t5, 0x7
    sw      $t8, 0x4c($sp)
    sh      $t3, 0x62($sp)
    sw      $t6, 0x74($sp)
    lbu     $t7, 0x1($t9)
    addiu   $at, $zero, 0x30
    bne     $t7, $at, branch_0x800d14cc
    nop
branch_0x800d1498:
    lw      $t8, 0x74($sp)
    lw      $t0, 0x4c($sp)
    lh      $t2, 0x62($sp)
    addiu   $t6, $t8, 0x1
    addiu   $t1, $t0, 0xffff
    addiu   $t4, $t2, 0xffff
    sw      $t6, 0x74($sp)
    sh      $t4, 0x62($sp)
    sw      $t1, 0x4c($sp)
    lbu     $t5, 0x0($t6)
    addiu   $at, $zero, 0x30
    beq     $t5, $at, branch_0x800d1498
    nop
branch_0x800d14cc:
    lbu     $t3, 0x9f($sp)
    addiu   $at, $zero, 0x66
    bne     $t3, $at, branch_0x800d14e8
    nop
    lh      $s0, 0x62($sp)
    b       branch_0x800d1510
    addiu   $s0, $s0, 0x1
branch_0x800d14e8:
    lbu     $t9, 0x9f($sp)
    addiu   $at, $zero, 0x65
    beq     $t9, $at, branch_0x800d1500
    addiu   $at, $zero, 0x45
    bne     $t9, $at, branch_0x800d1508
    nop
branch_0x800d1500:
    b       branch_0x800d150c
    addiu   $s1, $zero, 0x1
branch_0x800d1508:
    or      $s1, $zero, $zero
branch_0x800d150c:
    or      $s0, $s1, $zero
branch_0x800d1510:
    lw      $t7, 0x98($sp)
    lw      $t2, 0x4c($sp)
    lw      $t0, 0x24($t7)
    addu    $t1, $s0, $t0
    sh      $t1, 0x64($sp)
    lh      $t4, 0x64($sp)
    slt     $at, $t2, $t4
    beqz    $at, branch_0x800d1538
    nop
    sh      $t2, 0x64($sp)
branch_0x800d1538:
    lh      $t8, 0x64($sp)
    blez    $t8, branch_0x800d1630
    nop
    lw      $t6, 0x4c($sp)
    slt     $at, $t8, $t6
    beqz    $at, branch_0x800d1578
    nop
    lw      $t5, 0x74($sp)
    addu    $t3, $t8, $t5
    lbu     $t9, 0x0($t3)
    slti    $at, $t9, 0x35
    bnez    $at, branch_0x800d1578
    nop
    addiu   $t7, $zero, 0x39
    b       branch_0x800d1580
    sb      $t7, 0x3b($sp)
branch_0x800d1578:
    addiu   $t0, $zero, 0x30
    sb      $t0, 0x3b($sp)
branch_0x800d1580:
    lh      $t1, 0x64($sp)
    lw      $t2, 0x74($sp)
    lbu     $t5, 0x3b($sp)
    addiu   $t4, $t1, 0xffff
    sw      $t1, 0x34($sp)
    sw      $t4, 0x34($sp)
    addu    $t6, $t4, $t2
    lbu     $t8, 0x0($t6)
    bne     $t8, $t5, branch_0x800d15d8
    nop
branch_0x800d15a8:
    lw      $t7, 0x34($sp)
    lh      $t3, 0x64($sp)
    lw      $t1, 0x74($sp)
    addiu   $t0, $t7, 0xffff
    addiu   $t9, $t3, 0xffff
    sw      $t0, 0x34($sp)
    sh      $t9, 0x64($sp)
    addu    $t4, $t0, $t1
    lbu     $t2, 0x0($t4)
    lbu     $t6, 0x3b($sp)
    beq     $t2, $t6, branch_0x800d15a8
    nop
branch_0x800d15d8:
    lbu     $t8, 0x3b($sp)
    addiu   $at, $zero, 0x39
    bne     $t8, $at, branch_0x800d1600
    nop
    lw      $t5, 0x74($sp)
    lw      $t3, 0x34($sp)
    addu    $t9, $t5, $t3
    lbu     $t7, 0x0($t9)
    addiu   $t0, $t7, 0x1
    sb      $t0, 0x0($t9)
branch_0x800d1600:
    lw      $t1, 0x34($sp)
    bgez    $t1, branch_0x800d1630
    nop
    lw      $t4, 0x74($sp)
    lh      $t6, 0x64($sp)
    lh      $t5, 0x62($sp)
    addiu   $t2, $t4, 0xffff
    addiu   $t8, $t6, 0x1
    addiu   $t3, $t5, 0x1
    sh      $t3, 0x62($sp)
    sh      $t8, 0x64($sp)
    sw      $t2, 0x74($sp)
branch_0x800d1630:
    lh      $t7, 0x62($sp)
    lw      $a0, 0x98($sp)
    lbu     $a1, 0x9f($sp)
    lw      $a2, 0x74($sp)
    lh      $a3, 0x64($sp)
    jal     Function_0x800d1740
    sw      $t7, 0x10($sp)
branch_0x800d164c:
    lw      $ra, 0x24($sp)
    lw      $s0, 0x1c($sp)
    lw      $s1, 0x20($sp)
    jr      $ra
    addiu   $sp, $sp, 0x98

.globl Function_0x800d1660
Function_0x800d1660: # 0x800d1660
    addiu   $sp, $sp, 0xfff0
    sw      $a1, 0xc($sp)
    lw      $t6, 0xc($sp)
    addiu   $at, $zero, 0x7ff
    lhu     $t7, 0x0($t6)
    andi    $t8, $t7, 0x7ff0
    sra     $t9, $t8, 4
    sll     $t0, $t9, 16
    sra     $t1, $t0, 16
    bne     $t1, $at, branch_0x800d16e4
    sh      $t9, 0xa($sp)
    sh      $zero, 0x0($a0)
    lw      $t2, 0xc($sp)
    lhu     $t3, 0x0($t2)
    andi    $t4, $t3, 0xf
    bnez    $t4, branch_0x800d16c8
    nop
    lhu     $t5, 0x2($t2)
    bnez    $t5, branch_0x800d16c8
    nop
    lhu     $t6, 0x4($t2)
    bnez    $t6, branch_0x800d16c8
    nop
    lhu     $t7, 0x6($t2)
    beqz    $t7, branch_0x800d16d0
    nop
branch_0x800d16c8:
    b       branch_0x800d16d4
    addiu   $a2, $zero, 0x2
branch_0x800d16d0:
    addiu   $a2, $zero, 0x1
branch_0x800d16d4:
    sll     $v0, $a2, 16
    sra     $t8, $v0, 16
    b       branch_0x800d1738
    or      $v0, $t8, $zero
branch_0x800d16e4:
    lh      $t9, 0xa($sp)
    blez    $t9, branch_0x800d171c
    nop
    lw      $t0, 0xc($sp)
    addiu   $at, $zero, 0x800f
    addiu   $v0, $zero, 0xffff
    lhu     $t1, 0x0($t0)
    and     $t3, $t1, $at
    ori     $t4, $t3, 0x3ff0
    sh      $t4, 0x0($t0)
    lh      $t5, 0xa($sp)
    addiu   $t6, $t5, 0xfc02
    b       branch_0x800d1738
    sh      $t6, 0x0($a0)
branch_0x800d171c:
    lh      $t2, 0xa($sp)
    bgez    $t2, branch_0x800d1730
    nop
    b       branch_0x800d1738
    addiu   $v0, $zero, 0x2
branch_0x800d1730:
    sh      $zero, 0x0($a0)
    or      $v0, $zero, $zero
branch_0x800d1738:
    jr      $ra
    addiu   $sp, $sp, 0x10

.globl Function_0x800d1740
Function_0x800d1740: # 0x800d1740
    addiu   $sp, $sp, 0xffd0
    sw      $a3, 0x3c($sp)
    lh      $t7, 0x3e($sp)
    addiu   $t6, $zero, 0x2e
    sw      $ra, 0x1c($sp)
    sw      $a0, 0x30($sp)
    sw      $a1, 0x34($sp)
    sw      $a2, 0x38($sp)
    sw      $s0, 0x18($sp)
    bgtz    $t7, branch_0x800d1780
    sb      $t6, 0x2f($sp)
    lui     $t9, 0x800f
    addiu   $t9, $t9, 0xc580
    addiu   $t8, $zero, 0x1
    sh      $t8, 0x3e($sp)
    sw      $t9, 0x38($sp)
branch_0x800d1780:
    lbu     $t0, 0x37($sp)
    addiu   $at, $zero, 0x66
    beq     $t0, $at, branch_0x800d17c4
    addiu   $at, $zero, 0x67
    beq     $t0, $at, branch_0x800d17a0
    addiu   $at, $zero, 0x47
    bne     $t0, $at, branch_0x800d1af0
    nop
branch_0x800d17a0:
    lh      $t1, 0x42($sp)
    slti    $at, $t1, 0xfffc
    bnez    $at, branch_0x800d1af0
    nop
    lw      $t2, 0x30($sp)
    lw      $t3, 0x24($t2)
    slt     $at, $t1, $t3
    beqz    $at, branch_0x800d1af0
    nop
branch_0x800d17c4:
    lh      $t4, 0x42($sp)
    lbu     $t6, 0x37($sp)
    addiu   $at, $zero, 0x66
    addiu   $t5, $t4, 0x1
    beq     $t6, $at, branch_0x800d1830
    sh      $t5, 0x42($sp)
    lw      $t7, 0x30($sp)
    lw      $t8, 0x30($t7)
    andi    $t9, $t8, 0x8
    bnez    $t9, branch_0x800d1808
    nop
    lh      $t0, 0x3e($sp)
    lw      $t2, 0x24($t7)
    slt     $at, $t0, $t2
    beqz    $at, branch_0x800d1808
    nop
    sw      $t0, 0x24($t7)
branch_0x800d1808:
    lw      $t1, 0x30($sp)
    lh      $t4, 0x42($sp)
    lw      $t3, 0x24($t1)
    subu    $t5, $t3, $t4
    sw      $t5, 0x24($t1)
    lw      $t6, 0x30($sp)
    lw      $t8, 0x24($t6)
    bgez    $t8, branch_0x800d1830
    nop
    sw      $zero, 0x24($t6)
branch_0x800d1830:
    lh      $t9, 0x42($sp)
    bgtz    $t9, branch_0x800d194c
    nop
    lw      $t0, 0x30($sp)
    addiu   $t2, $zero, 0x30
    lw      $t7, 0x8($t0)
    lw      $t3, 0x14($t0)
    addu    $t4, $t7, $t3
    sb      $t2, 0x0($t4)
    lw      $t5, 0x30($sp)
    lw      $t1, 0x14($t5)
    addiu   $t8, $t1, 0x1
    sw      $t8, 0x14($t5)
    lw      $t6, 0x30($sp)
    lw      $t9, 0x24($t6)
    bgtz    $t9, branch_0x800d1884
    nop
    lw      $t0, 0x30($t6)
    andi    $t7, $t0, 0x8
    beqz    $t7, branch_0x800d18ac
    nop
branch_0x800d1884:
    lw      $t2, 0x30($sp)
    lbu     $t3, 0x2f($sp)
    lw      $t4, 0x8($t2)
    lw      $t1, 0x14($t2)
    addu    $t8, $t4, $t1
    sb      $t3, 0x0($t8)
    lw      $t5, 0x30($sp)
    lw      $t9, 0x14($t5)
    addiu   $t6, $t9, 0x1
    sw      $t6, 0x14($t5)
branch_0x800d18ac:
    lw      $t0, 0x30($sp)
    lh      $t2, 0x42($sp)
    lw      $t7, 0x24($t0)
    subu    $t4, $zero, $t2
    slt     $at, $t7, $t4
    beqz    $at, branch_0x800d18d0
    nop
    subu    $t1, $zero, $t7
    sh      $t1, 0x42($sp)
branch_0x800d18d0:
    lh      $t3, 0x42($sp)
    lw      $t9, 0x30($sp)
    subu    $t8, $zero, $t3
    sw      $t8, 0x18($t9)
    lw      $t6, 0x30($sp)
    lh      $t0, 0x42($sp)
    lw      $t5, 0x24($t6)
    addu    $t2, $t5, $t0
    sw      $t2, 0x24($t6)
    lw      $t4, 0x30($sp)
    lh      $t1, 0x3e($sp)
    lw      $t7, 0x24($t4)
    slt     $at, $t7, $t1
    beqz    $at, branch_0x800d1910
    nop
    sh      $t7, 0x3e($sp)
branch_0x800d1910:
    lw      $t3, 0x30($sp)
    lh      $s0, 0x3e($sp)
    lw      $a1, 0x38($sp)
    lw      $t8, 0x8($t3)
    lw      $t9, 0x14($t3)
    sw      $s0, 0x1c($t3)
    or      $a2, $s0, $zero
    jal     memcpy
    addu    $a0, $t8, $t9
    lw      $t5, 0x30($sp)
    lh      $t2, 0x3e($sp)
    lw      $t0, 0x24($t5)
    subu    $t6, $t0, $t2
    b       branch_0x800d1dc0
    sw      $t6, 0x20($t5)
branch_0x800d194c:
    lh      $t4, 0x3e($sp)
    lh      $t1, 0x42($sp)
    slt     $at, $t4, $t1
    beqz    $at, branch_0x800d19fc
    nop
    lw      $t7, 0x30($sp)
    lw      $a1, 0x38($sp)
    or      $a2, $t4, $zero
    lw      $t8, 0x8($t7)
    lw      $t9, 0x14($t7)
    jal     memcpy
    addu    $a0, $t8, $t9
    lw      $t3, 0x30($sp)
    lh      $t2, 0x3e($sp)
    lw      $t0, 0x14($t3)
    addu    $t6, $t0, $t2
    sw      $t6, 0x14($t3)
    lh      $t1, 0x3e($sp)
    lh      $t5, 0x42($sp)
    lw      $t8, 0x30($sp)
    subu    $t7, $t5, $t1
    sw      $t7, 0x18($t8)
    lw      $t9, 0x30($sp)
    lw      $t4, 0x24($t9)
    bgtz    $t4, branch_0x800d19c4
    nop
    lw      $t0, 0x30($t9)
    andi    $t2, $t0, 0x8
    beqz    $t2, branch_0x800d19ec
    nop
branch_0x800d19c4:
    lw      $t3, 0x30($sp)
    lbu     $t6, 0x2f($sp)
    lw      $t5, 0x8($t3)
    lw      $t1, 0x14($t3)
    addu    $t7, $t5, $t1
    sb      $t6, 0x0($t7)
    lw      $t8, 0x30($sp)
    lw      $t4, 0x1c($t8)
    addiu   $t9, $t4, 0x1
    sw      $t9, 0x1c($t8)
branch_0x800d19ec:
    lw      $t0, 0x30($sp)
    lw      $t2, 0x24($t0)
    b       branch_0x800d1dc0
    sw      $t2, 0x20($t0)
branch_0x800d19fc:
    lw      $t3, 0x30($sp)
    lw      $a1, 0x38($sp)
    lh      $a2, 0x42($sp)
    lw      $t5, 0x8($t3)
    lw      $t1, 0x14($t3)
    jal     memcpy
    addu    $a0, $t5, $t1
    lw      $t6, 0x30($sp)
    lh      $t4, 0x42($sp)
    lw      $t7, 0x14($t6)
    addu    $t9, $t7, $t4
    sw      $t9, 0x14($t6)
    lh      $t8, 0x3e($sp)
    lh      $t2, 0x42($sp)
    lw      $t3, 0x30($sp)
    subu    $t0, $t8, $t2
    sh      $t0, 0x3e($sp)
    lw      $t5, 0x24($t3)
    bgtz    $t5, branch_0x800d1a5c
    nop
    lw      $t1, 0x30($t3)
    andi    $t7, $t1, 0x8
    beqz    $t7, branch_0x800d1a84
    nop
branch_0x800d1a5c:
    lw      $t9, 0x30($sp)
    lbu     $t4, 0x2f($sp)
    lw      $t6, 0x8($t9)
    lw      $t8, 0x14($t9)
    addu    $t2, $t6, $t8
    sb      $t4, 0x0($t2)
    lw      $t0, 0x30($sp)
    lw      $t5, 0x14($t0)
    addiu   $t3, $t5, 0x1
    sw      $t3, 0x14($t0)
branch_0x800d1a84:
    lw      $t1, 0x30($sp)
    lh      $t9, 0x3e($sp)
    lw      $t7, 0x24($t1)
    slt     $at, $t7, $t9
    beqz    $at, branch_0x800d1aa0
    nop
    sh      $t7, 0x3e($sp)
branch_0x800d1aa0:
    lw      $t6, 0x30($sp)
    lh      $t2, 0x42($sp)
    lw      $t5, 0x38($sp)
    lw      $t8, 0x8($t6)
    lw      $t4, 0x14($t6)
    lh      $a2, 0x3e($sp)
    addu    $a1, $t2, $t5
    jal     memcpy
    addu    $a0, $t8, $t4
    lw      $t3, 0x30($sp)
    lh      $t1, 0x3e($sp)
    lw      $t0, 0x14($t3)
    addu    $t9, $t0, $t1
    sw      $t9, 0x14($t3)
    lw      $t7, 0x30($sp)
    lh      $t8, 0x3e($sp)
    lw      $t6, 0x24($t7)
    subu    $t4, $t6, $t8
    b       branch_0x800d1dc0
    sw      $t4, 0x18($t7)
branch_0x800d1af0:
    lbu     $t2, 0x37($sp)
    addiu   $at, $zero, 0x67
    beq     $t2, $at, branch_0x800d1b08
    addiu   $at, $zero, 0x47
    bne     $t2, $at, branch_0x800d1b6c
    nop
branch_0x800d1b08:
    lw      $t0, 0x30($sp)
    lh      $t5, 0x3e($sp)
    lw      $t1, 0x24($t0)
    slt     $at, $t5, $t1
    beqz    $at, branch_0x800d1b24
    nop
    sw      $t5, 0x24($t0)
branch_0x800d1b24:
    lw      $t9, 0x30($sp)
    lw      $t3, 0x24($t9)
    addiu   $t6, $t3, 0xffff
    sw      $t6, 0x24($t9)
    lw      $t8, 0x30($sp)
    lw      $t4, 0x24($t8)
    bgez    $t4, branch_0x800d1b48
    nop
    sw      $zero, 0x24($t8)
branch_0x800d1b48:
    lbu     $t7, 0x37($sp)
    addiu   $at, $zero, 0x67
    bne     $t7, $at, branch_0x800d1b64
    nop
    addiu   $t2, $zero, 0x65
    b       branch_0x800d1b6c
    sb      $t2, 0x37($sp)
branch_0x800d1b64:
    addiu   $t1, $zero, 0x45
    sb      $t1, 0x37($sp)
branch_0x800d1b6c:
    lw      $t3, 0x30($sp)
    lw      $t5, 0x38($sp)
    lw      $t6, 0x8($t3)
    lw      $t9, 0x14($t3)
    lbu     $t0, 0x0($t5)
    addu    $t4, $t6, $t9
    sb      $t0, 0x0($t4)
    lw      $t8, 0x30($sp)
    lw      $t7, 0x14($t8)
    addiu   $t2, $t7, 0x1
    sw      $t2, 0x14($t8)
    lw      $t1, 0x38($sp)
    lw      $t3, 0x30($sp)
    addiu   $t5, $t1, 0x1
    sw      $t5, 0x38($sp)
    lw      $t6, 0x24($t3)
    bgtz    $t6, branch_0x800d1bc4
    nop
    lw      $t9, 0x30($t3)
    andi    $t0, $t9, 0x8
    beqz    $t0, branch_0x800d1bec
    nop
branch_0x800d1bc4:
    lw      $t7, 0x30($sp)
    lbu     $t4, 0x2f($sp)
    lw      $t2, 0x8($t7)
    lw      $t8, 0x14($t7)
    addu    $t1, $t2, $t8
    sb      $t4, 0x0($t1)
    lw      $t5, 0x30($sp)
    lw      $t6, 0x14($t5)
    addiu   $t3, $t6, 0x1
    sw      $t3, 0x14($t5)
branch_0x800d1bec:
    lw      $t9, 0x30($sp)
    lw      $t0, 0x24($t9)
    blez    $t0, branch_0x800d1c68
    nop
    lh      $t7, 0x3e($sp)
    addiu   $t2, $t7, 0xffff
    sh      $t2, 0x3e($sp)
    lw      $t8, 0x24($t9)
    sll     $t4, $t2, 16
    sra     $t1, $t4, 16
    slt     $at, $t8, $t1
    beqz    $at, branch_0x800d1c24
    nop
    sh      $t8, 0x3e($sp)
branch_0x800d1c24:
    lw      $t6, 0x30($sp)
    lw      $a1, 0x38($sp)
    lh      $a2, 0x3e($sp)
    lw      $t3, 0x8($t6)
    lw      $t5, 0x14($t6)
    jal     memcpy
    addu    $a0, $t3, $t5
    lw      $t0, 0x30($sp)
    lh      $t9, 0x3e($sp)
    lw      $t7, 0x14($t0)
    addu    $t2, $t7, $t9
    sw      $t2, 0x14($t0)
    lw      $t4, 0x30($sp)
    lh      $t8, 0x3e($sp)
    lw      $t1, 0x24($t4)
    subu    $t6, $t1, $t8
    sw      $t6, 0x18($t4)
branch_0x800d1c68:
    lw      $t3, 0x30($sp)
    lbu     $t2, 0x37($sp)
    lw      $t5, 0x8($t3)
    lw      $t7, 0x14($t3)
    addu    $t9, $t5, $t7
    sw      $t9, 0x38($sp)
    sb      $t2, 0x0($t9)
    lw      $t0, 0x38($sp)
    lh      $t8, 0x42($sp)
    addiu   $t1, $t0, 0x1
    bltz    $t8, branch_0x800d1cb0
    sw      $t1, 0x38($sp)
    addiu   $t6, $zero, 0x2b
    sb      $t6, 0x0($t1)
    lw      $t4, 0x38($sp)
    addiu   $t3, $t4, 0x1
    b       branch_0x800d1cd4
    sw      $t3, 0x38($sp)
branch_0x800d1cb0:
    lw      $t7, 0x38($sp)
    addiu   $t5, $zero, 0x2d
    sb      $t5, 0x0($t7)
    lw      $t2, 0x38($sp)
    lh      $t0, 0x42($sp)
    addiu   $t9, $t2, 0x1
    subu    $t8, $zero, $t0
    sw      $t9, 0x38($sp)
    sh      $t8, 0x42($sp)
branch_0x800d1cd4:
    lh      $t6, 0x42($sp)
    slti    $at, $t6, 0x64
    bnez    $at, branch_0x800d1d54
    slti    $at, $t6, 0x3e8
    bnez    $at, branch_0x800d1d1c
    addiu   $at, $zero, 0x3e8
    div     $zero, $t6, $at
    lw      $t3, 0x38($sp)
    mflo    $t1
    addiu   $t4, $t1, 0x30
    sb      $t4, 0x0($t3)
    lh      $t2, 0x42($sp)
    lw      $t5, 0x38($sp)
    div     $zero, $t2, $at
    mfhi    $t9
    addiu   $t7, $t5, 0x1
    sw      $t7, 0x38($sp)
    sh      $t9, 0x42($sp)
branch_0x800d1d1c:
    lh      $t0, 0x42($sp)
    addiu   $at, $zero, 0x64
    lw      $t1, 0x38($sp)
    div     $zero, $t0, $at
    mflo    $t8
    addiu   $t6, $t8, 0x30
    sb      $t6, 0x0($t1)
    lh      $t5, 0x42($sp)
    lw      $t4, 0x38($sp)
    div     $zero, $t5, $at
    mfhi    $t7
    addiu   $t3, $t4, 0x1
    sw      $t3, 0x38($sp)
    sh      $t7, 0x42($sp)
branch_0x800d1d54:
    lh      $t2, 0x42($sp)
    addiu   $at, $zero, 0xa
    lw      $t8, 0x38($sp)
    div     $zero, $t2, $at
    mflo    $t9
    addiu   $t0, $t9, 0x30
    sb      $t0, 0x0($t8)
    lh      $t4, 0x42($sp)
    lw      $t6, 0x38($sp)
    div     $zero, $t4, $at
    mfhi    $t3
    sll     $t5, $t3, 16
    sra     $t7, $t5, 16
    addiu   $t1, $t6, 0x1
    sw      $t1, 0x38($sp)
    sh      $t3, 0x42($sp)
    addiu   $t2, $t7, 0x30
    sb      $t2, 0x0($t1)
    lw      $t9, 0x38($sp)
    lw      $t8, 0x30($sp)
    addiu   $t0, $t9, 0x1
    sw      $t0, 0x38($sp)
    lw      $t4, 0x14($t8)
    lw      $t6, 0x8($t8)
    addu    $t3, $t6, $t4
    subu    $t5, $t0, $t3
    sw      $t5, 0x1c($t8)
branch_0x800d1dc0:
    lw      $t7, 0x30($sp)
    addiu   $at, $zero, 0x10
    lw      $t2, 0x30($t7)
    andi    $t1, $t2, 0x14
    bne     $t1, $at, branch_0x800d1e1c
    nop
    lw      $t9, 0xc($t7)
    lw      $t6, 0x14($t7)
    lw      $t0, 0x18($t7)
    lw      $t5, 0x1c($t7)
    lw      $t2, 0x20($t7)
    addu    $t4, $t9, $t6
    addu    $t3, $t4, $t0
    addu    $t8, $t3, $t5
    addu    $t1, $t8, $t2
    sw      $t1, 0x28($sp)
    lw      $t9, 0x28($t7)
    slt     $at, $t1, $t9
    beqz    $at, branch_0x800d1e1c
    nop
    lw      $t6, 0x28($t7)
    subu    $t4, $t6, $t1
    sw      $t4, 0x10($t7)
branch_0x800d1e1c:
    lw      $ra, 0x1c($sp)
    lw      $s0, 0x18($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl __osGetCause
__osGetCause: # 0x800d1e30
    mfc0    $2, $13
    jr      $ra
    nop

.globl Function_0x800d1e3c
Function_0x800d1e3c: # 0x800d1e3c
    nop

.globl __osAtomicDec
__osAtomicDec: # 0x800d1e40
    addiu   $sp, $sp, 0xffe0
    sw      $ra, 0x14($sp)
    jal     __osDisableInt
    sw      $a0, 0x20($sp)
    lw      $t6, 0x20($sp)
    sw      $v0, 0x1c($sp)
    lw      $t7, 0x0($t6)
    beqz    $t7, branch_0x800d1e78
    nop
    addiu   $t8, $t7, 0xffff
    sw      $t8, 0x0($t6)
    addiu   $t9, $zero, 0x1
    b       branch_0x800d1e7c
    sw      $t9, 0x18($sp)
branch_0x800d1e78:
    sw      $zero, 0x18($sp)
branch_0x800d1e7c:
    jal     __osRestoreInt
    lw      $a0, 0x1c($sp)
    lw      $ra, 0x14($sp)
    lw      $v0, 0x18($sp)
    addiu   $sp, $sp, 0x20
    jr      $ra
    nop

.globl Function_0x800d1e98
Function_0x800d1e98: # 0x800d1e98
    nop
    nop

.globl lldiv
lldiv: # 0x800d1ea0
    addiu   $sp, $sp, 0xffd0
    sw      $a0, 0x30($sp)
    sw      $ra, 0x14($sp)
    sw      $a2, 0x38($sp)
    sw      $a3, 0x3c($sp)
    or      $a0, $a2, $zero
    or      $a1, $a3, $zero
    lw      $a3, 0x44($sp)
    jal     Function_0x800cc5ec
    lw      $a2, 0x40($sp)
    sw      $v0, 0x20($sp)
    sw      $v1, 0x24($sp)
    lw      $a0, 0x40($sp)
    lw      $a1, 0x44($sp)
    or      $a2, $v0, $zero
    jal     Function_0x800cc648
    or      $a3, $v1, $zero
    lw      $t6, 0x38($sp)
    lw      $t7, 0x3c($sp)
    lw      $t0, 0x20($sp)
    subu    $t8, $t6, $v0
    sltu    $at, $t7, $v1
    subu    $t8, $t8, $at
    subu    $t9, $t7, $v1
    sw      $t9, 0x2c($sp)
    sw      $t8, 0x28($sp)
    bgtz    $t0, branch_0x800d1f68
    lw      $t1, 0x24($sp)
    bltz    $t0, branch_0x800d1f20
    nop
    b       branch_0x800d1f6c
    addiu   $t0, $sp, 0x20
branch_0x800d1f20:
    bltzl   $t8, branch_0x800d1f6c
    addiu   $t0, $sp, 0x20
    bgtz    $t8, branch_0x800d1f38
    addiu   $t3, $t1, 0x1
    beqzl   $t9, branch_0x800d1f6c
    addiu   $t0, $sp, 0x20
branch_0x800d1f38:
    lw      $t4, 0x40($sp)
    lw      $t5, 0x44($sp)
    sltiu   $at, $t3, 0x1
    addu    $t2, $t0, $at
    subu    $t6, $t8, $t4
    sltu    $at, $t9, $t5
    subu    $t6, $t6, $at
    subu    $t7, $t9, $t5
    sw      $t2, 0x20($sp)
    sw      $t3, 0x24($sp)
    sw      $t7, 0x2c($sp)
    sw      $t6, 0x28($sp)
branch_0x800d1f68:
    addiu   $t0, $sp, 0x20
branch_0x800d1f6c:
    lw      $v0, 0x30($sp)
    lw      $at, 0x0($t0)
    sw      $at, 0x0($v0)
    lw      $t3, 0x4($t0)
    sw      $t3, 0x4($v0)
    lw      $at, 0x8($t0)
    sw      $at, 0x8($v0)
    lw      $t3, 0xc($t0)
    sw      $t3, 0xc($v0)
    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x30
    jr      $ra
    nop

.globl Function_0x800d1fa0
Function_0x800d1fa0: # 0x800d1fa0
    div     $zero, $a1, $a2
    mflo    $v0
    addiu   $sp, $sp, 0xfff8
    bnez    $a2, branch_0x800d1fb8
    nop
    break   0x7
branch_0x800d1fb8:
    addiu   $at, $zero, 0xffff
    bne     $a2, $at, branch_0x800d1fd0
    lui     $at, 0x8000
    bne     $a1, $at, branch_0x800d1fd0
    nop
    break   0x6
branch_0x800d1fd0:
    multu   $a2, $v0
    sw      $v0, 0x0($sp)
    addiu   $t7, $sp, 0x0
    mflo    $t6
    subu    $v1, $a1, $t6
    bgez    $v0, branch_0x800d2008
    sw      $v1, 0x4($sp)
    sw      $v0, 0x0($sp)
    blez    $v1, branch_0x800d2008
    sw      $v1, 0x4($sp)
    addiu   $v0, $v0, 0x1
    subu    $v1, $v1, $a2
    sw      $v1, 0x4($sp)
    sw      $v0, 0x0($sp)
branch_0x800d2008:
    lw      $at, 0x0($t7)
    or      $v0, $a0, $zero
    sw      $at, 0x0($a0)
    lw      $t0, 0x4($t7)
    addiu   $sp, $sp, 0x8
    jr      $ra
    sw      $t0, 0x4($a0)
