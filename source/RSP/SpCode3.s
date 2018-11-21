

.include "source/constants.s"
.include "source/RSP/constantsRSP.s"


# data of the RSP (0x800d3530 - 0x8dd30)

.set noreorder

.section .textrsp3, "ax"


.globl Function_0x4001080
Function_0x4001080: # 0x4001080
    addi    $t8, $zero, 0x360
    addi    $s7, $zero, 0xf90
    lw      $gp, 0x30($at)
    lw      $k1, 0x34($at)
    mfc0    $a1, CMD_STATUS
    andi    $a0, $a1, 0x1
    beqz    $a0, branch_3_0x40010b4
    andi    $a0, $a1, 0x100
    beqz    $a0, branch_3_0x40010b4
    nop
branch_0x40010a8:
    mfc0    $a0, CMD_STATUS
    andi    $a0, $a0, 0x100
    bgtz    $a0, branch_0x40010a8
branch_3_0x40010b4:
    nop
    jal     Function_0x4001150
    nop
    addi    $v0, $zero, 0xf
    addi    $at, $zero, 0x320
branch_0x40010c8:
    sw      $zero, 0x0($at)
    bgtz    $v0, branch_0x40010c8
    addi    $v0, $v0, -0x1

.globl Function_0x40010d4
Function_0x40010d4: # 0x40010d4
    mfc0    $v0, DMA_BUSY
    bnez    $v0, Function_0x40010d4
    addi    $sp, $zero, 0x380
    mtc0    $zero, SP_RESERVED
branch_0x40010e4:
    lw      $k0, 0x0($sp)
    lw      $t9, 0x4($sp)
    srl     $at, $k0, 23
    andi    $at, $at, 0xfe
    addi    $gp, $gp, 0x8
    addi    $k1, $k1, -0x8
    addi    $sp, $sp, 0x8
    addi    $fp, $fp, -0x8
    add     $v0, $zero, $at
    lh      $v0, %lo(JumpTable_0x04000010)($v0)
    jr      $v0
    nop

.globl Function_0x4001114
Function_0x4001114: # 0x4001114
    break   0x0

.globl Function_0x4001118
Function_0x4001118: # 0x4001118
    bgtz    $fp, branch_0x40010e4
    nop
    blez    $k1, branch_0x4001138
    nop
    jal     Function_0x4001150
    nop
    j       Function_0x40010d4
    nop
branch_0x4001138:
    ori     $at, $zero, 0x4000
    mtc0    $at, SP_STATUS
    break   0x0
    nop
branch_0x4001148:
    b       branch_0x4001148
    nop

.globl Function_0x4001150
Function_0x4001150: # 0x4001150
    addi    $a1, $ra, 0x0
    add     $v0, $zero, $gp
    addi    $v1, $k1, 0x0
    addi    $a0, $v1, -0x140
    blez    $a0, branch_0x400116c
    addi    $at, $zero, 0x380
    addi    $v1, $zero, 0x140
branch_0x400116c:
    addi    $fp, $v1, 0x0
    jal     Function_0x4001184
    addi    $v1, $v1, -0x1
    addi    $sp, $zero, 0x380
    jr      $a1
    nop

.globl Function_0x4001184
Function_0x4001184: # 0x4001184
    mfc0    $a0, SP_RESERVED
    bnez    $a0, Function_0x4001184
    nop
branch_0x4001190:
    mfc0    $a0, DMA_FULL
    bnez    $a0, branch_0x4001190
    nop
    mtc0    $at, DMA_CACHE
    mtc0    $v0, DMA_DRAM
    mtc0    $v1, DMA_READ_LENGTH
    jr      $ra
    nop

.globl Function_0x40011b0
Function_0x40011b0: # 0x40011b0
    mfc0    $a0, SP_RESERVED
    bnez    $a0, Function_0x40011b0
    nop
branch_0x40011bc:
    mfc0    $a0, DMA_FULL
    bnez    $a0, branch_0x40011bc
    nop
    mtc0    $at, DMA_CACHE
    mtc0    $v0, DMA_DRAM
    mtc0    $v1, DMA_WRITE_LENGTH
    jr      $ra
    nop

.globl Function_0x40011dc
Function_0x40011dc: # 0x40011dc
    andi    $v1, $t9, 0xffff
    beqz    $v1, Function_0x4001118
    addi    $a0, $zero, 0x5c0
    andi    $v0, $k0, 0xffff
    add     $v0, $v0, $a0
    vxor    vec1, vec1, vec1, 0
    addi    $v1, $v1, -0x10
branch_0x40011f8:
    sdv     vec1, 0, 0, v0
    sdv     vec1, 0, 1, v0
    addi    $v0, $v0, 0x10
    bgtz    $v1, branch_0x40011f8
    addi    $v1, $v1, -0x10
    j       Function_0x4001118
    nop

.globl Function_0x4001214
Function_0x4001214: # 0x4001214
    lhu     $v1, 0x4($t8)
    beqz    $v1, Function_0x4001118
    sll     $v0, $t9, 8
    srl     $v0, $v0, 8
    srl     $a0, $t9, 24
    sll     $a0, $a0, 2
    lw      $a1, 0x320($a0)
    add     $v0, $v0, $a1
    lhu     $at, 0x0($t8)
    jal     Function_0x4001184
    addi    $v1, $v1, -0x1
branch_0x4001240:
    mfc0    $at, DMA_BUSY
    bnez    $at, branch_0x4001240
    nop
    j       Function_0x4001118
    mtc0    $zero, SP_RESERVED

.globl Function_0x4001254
Function_0x4001254: # 0x4001254
    lhu     $v1, 0x4($t8)
    beqz    $v1, Function_0x4001118
    sll     $v0, $t9, 8
    srl     $v0, $v0, 8
    srl     $a0, $t9, 24
    sll     $a0, $a0, 2
    lw      $a1, 0x320($a0)
    add     $v0, $v0, $a1
    lhu     $at, 0x2($t8)
    jal     Function_0x40011b0
    addi    $v1, $v1, -0x1
branch_0x4001280:
    mfc0    $at, DMA_BUSY
    bnez    $at, branch_0x4001280
    nop
    j       Function_0x4001118
    mtc0    $zero, SP_RESERVED

.globl Function_0x4001294
Function_0x4001294: # 0x4001294
    sll     $v0, $t9, 8
    srl     $v0, $v0, 8
    srl     $a0, $t9, 24
    sll     $a0, $a0, 2
    lw      $a1, 0x320($a0)
    add     $v0, $v0, $a1
    addi    $at, $zero, 0x4c0
    andi    $v1, $k0, 0xffff
    jal     Function_0x4001184
    addi    $v1, $v1, -0x1
branch_0x40012bc:
    mfc0    $at, DMA_BUSY
    bnez    $at, branch_0x40012bc
    nop
    j       Function_0x4001118
    mtc0    $zero, SP_RESERVED

.globl Function_0x40012d0
Function_0x40012d0: # 0x40012d0
    sll     $v1, $t9, 8
    srl     $v1, $v1, 8
    srl     $v0, $t9, 24
    sll     $v0, $v0, 2
    add     $a0, $zero, $v0
    j       Function_0x4001118
    sw      $v1, 0x320($a0)

.globl Function_0x40012ec
Function_0x40012ec: # 0x40012ec
    addi    $at, $k0, 0x5c0
    srl     $v0, $t9, 16
    addi    $v0, $v0, 0x5c0
    srl     $a0, $k0, 16
    andi    $a0, $a0, 0x8
    bgtz    $a0, branch_0x4001318
    addi    $v1, $t9, 0x5c0
    sh      $at, 0x0($t8)
    sh      $v0, 0x2($t8)
    j       Function_0x4001118
    sh      $t9, 0x4($t8)
branch_0x4001318:
    sh      $v1, 0xe($t8)
    sh      $at, 0xa($t8)
    j       Function_0x4001118
    sh      $v0, 0xc($t8)

.globl Function_0x4001328
Function_0x4001328: # 0x4001328
    srl     $v0, $k0, 16
    andi    $at, $v0, 0x8
    beqz    $at, branch_0x4001344
    andi    $at, $v0, 0x4
    sh      $k0, 0x1c($t8)
    j       Function_0x4001118
    sh      $t9, 0x1e($t8)
branch_0x4001344:
    beqz    $at, branch_0x4001364
    andi    $at, $v0, 0x2
    beqz    $at, branch_0x400135c
    nop
    j       Function_0x4001118
    sh      $k0, 0x6($t8)
branch_0x400135c:
    j       Function_0x4001118
    sh      $k0, 0x8($t8)
branch_0x4001364:
    beqz    $at, branch_0x400137c
    srl     $at, $t9, 16
    sh      $k0, 0x10($t8)
    sh      $at, 0x12($t8)
    j       Function_0x4001118
    sh      $t9, 0x14($t8)
branch_0x400137c:
    sh      $k0, 0x16($t8)
    sh      $at, 0x18($t8)
    j       Function_0x4001118
    sh      $t9, 0x1a($t8)

.globl Function_0x400138c
Function_0x400138c: # 0x400138c
    lhu     $at, 0x4($t8)
    lhu     $a0, 0x2($t8)
    beqz    $at, Function_0x4001118
    andi    $v1, $t9, 0xffff
    addi    $v1, $v1, 0x5c0
    srl     $v0, $t9, 16
    addi    $v0, $v0, 0x5c0
branch_0x40013a8:
    lqv     vec1, 0, 0, v0
    lqv     vec2, 0, 0, v1
    ssv     vec1, 0, 0, a0
    ssv     vec2, 0, 1, a0
    ssv     vec1, 2, 2, a0
    ssv     vec2, 2, 3, a0
    ssv     vec1, 4, 4, a0
    ssv     vec2, 4, 5, a0
    ssv     vec1, 6, 6, a0
    ssv     vec2, 6, 7, a0
    ssv     vec1, 8, 8, a0
    ssv     vec2, 8, 9, a0
    ssv     vec1, 10, 10, a0
    ssv     vec2, 10, 11, a0
    ssv     vec1, 12, 12, a0
    ssv     vec2, 12, 13, a0
    ssv     vec1, 14, 14, a0
    ssv     vec2, 14, 15, a0
    addi    $at, $at, -0x10
    addi    $v0, $v0, 0x10
    addi    $v1, $v1, 0x10
    bgtz    $at, branch_0x40013a8
    addi    $a0, $a0, 0x20
    j       Function_0x4001118
    nop

.globl Function_0x400140c
Function_0x400140c: # 0x400140c
    andi    $at, $t9, 0xffff
    beqz    $at, Function_0x4001118
    andi    $v0, $k0, 0xffff
    addi    $v0, $v0, 0x5c0
    srl     $v1, $t9, 16
    addi    $v1, $v1, 0x5c0
branch_0x4001424:
    ldv     vec1, 0, 0, v0
    ldv     vec2, 0, 8, v0
    addi    $at, $at, -0x10
    addi    $v0, $v0, 0x10
    sdv     vec1, 0, 0, v1
    sdv     vec2, 0, 1, v1
    bgtz    $at, branch_0x4001424
    addi    $v1, $v1, 0x10
    j       Function_0x4001118
    nop

.globl Function_0x400144c
Function_0x400144c: # 0x400144c
    sll     $at, $t9, 8
    srl     $at, $at, 8
    srl     $v1, $t9, 24
    sll     $v1, $v1, 2
    lw      $v0, 0x320($v1)
    add     $at, $at, $v0
    sw      $at, 0x10($t8)
    j       Function_0x4001118
    nop

.globl Function_0x4001470
Function_0x4001470: # 0x4001470
    lqv     vec31, 0, 0, zero
    vxor    vec27, vec27, vec27, 0
    lhu     $s5, 0x0($t8)
    vxor    vec25, vec25, vec25, 0
    vxor    vec24, vec24, vec24, 0
    addi    $s4, $s5, 0x1
    lhu     $s3, 0x2($t8)
    vxor    vec13, vec13, vec13, 0
    vxor    vec14, vec14, vec14, 0
    lhu     $s2, 0x4($t8)
    vxor    vec15, vec15, vec15, 0
    lui     $at, 0xff
    vxor    vec16, vec16, vec16, 0
    ori     $at, $at, 0xffff
    vxor    vec17, vec17, vec17, 0
    and     $s1, $t9, $at
    vxor    vec18, vec18, vec18, 0
    srl     $v0, $t9, 24
    vxor    vec19, vec19, vec19, 0
    sll     $v0, $v0, 2
    lw      $v1, 0x320($v0)
    add     $s1, $s1, $v1
    sqv     vec27, 0, 0, s3
    sqv     vec27, 0, 1, s3
    srl     $at, $k0, 16
    andi    $at, $at, 0x1
    bgtz    $at, branch_0x400150c
    srl     $at, $k0, 16
    andi    $at, $at, 0x2
    beq     $zero, $at, branch_0x40014f0
    addi    $v0, $s1, 0x0
    lw      $v0, 0x10($t8)
branch_0x40014f0:
    addi    $at, $s3, 0x0
    jal     Function_0x4001184
    addi    $v1, $zero, 0x1f
branch_0x40014fc:
    mfc0    $a1, DMA_BUSY
    bnez    $a1, branch_0x40014fc
    nop
    mtc0    $zero, SP_RESERVED
branch_0x400150c:
    addi    $s0, $zero, 0x30
    addi    $t7, $zero, 0x4c0
    ldv     vec25, 0, 0, s0
    ldv     vec24, 8, 0, s0
    ldv     vec23, 0, 8, s0
    ldv     vec23, 8, 8, s0
    lqv     vec27, 0, 1, s3
    addi    $s3, $s3, 0x20
    beqz    $s2, branch_0x40016e8
    ldv     vec1, 0, 0, s4
    lbu     $at, 0x0($s5)
    andi    $t3, $at, 0xf
    sll     $t3, $t3, 5
    vand    vec3, vec25, vec1, 8
    add     $t5, $t3, $t7
    vand    vec4, vec24, vec1, 9
    srl     $t6, $at, 4
    vand    vec5, vec25, vec1, 10
    addi    $v0, $zero, 0xc
    vand    vec6, vec24, vec1, 11
    sub     $t6, $v0, $t6
    addi    $v0, $t6, -0x1
    addi    $v1, $zero, 0x1
    sll     $v1, $v1, 15
    srlv    $a0, $v1, $v0
    mtc2_   a0, vec22, 0
    lqv     vec21, 0, 0, t5
    lqv     vec20, 0, 1, t5
    addi    $t5, $t5, -0x2
    lrv     vec19, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec18, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec17, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec16, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec15, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec14, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec13, 0, 2, t5
branch_0x40015b4:
    addi    $s4, $s4, 0x9
    vmudn   vec30, vec3, vec23, 0
    addi    $s5, $s5, 0x9
    vmadn   vec30, vec4, vec23, 0
    ldv     vec1, 0, 0, s4
    vmudn   vec29, vec5, vec23, 0
    lbu     $at, 0x0($s5)
    vmadn   vec29, vec6, vec23, 0
    blez    $t6, branch_0x40015e4
    andi    $t3, $at, 0xf
    vmudm   vec30, vec30, vec22, 8
    vmudm   vec29, vec29, vec22, 8
branch_0x40015e4:
    sll     $t3, $t3, 5
    vand    vec3, vec25, vec1, 8
    add     $t5, $t3, $t7
    vand    vec4, vec24, vec1, 9
    vand    vec5, vec25, vec1, 10
    vand    vec6, vec24, vec1, 11
    srl     $t6, $at, 4
    vmudh   vec2, vec21, vec27, 14
    addi    $v0, $zero, 0xc
    vmadh   vec2, vec20, vec27, 15
    sub     $t6, $v0, $t6
    vmadh   vec2, vec19, vec30, 8
    addi    $v0, $t6, -0x1
    vmadh   vec2, vec18, vec30, 9
    addi    $v1, $zero, 0x1
    vmadh   vec2, vec17, vec30, 10
    sll     $v1, $v1, 15
    vmadh   vec2, vec16, vec30, 11
    srlv    $a0, $v1, $v0
    vmadh   vec28, vec15, vec30, 12
    mtc2_   a0, vec22, 0
    vmadh   vec2, vec14, vec30, 13
    vmadh   vec2, vec13, vec30, 14
    vmadh   vec2, vec30, vec31, 13
    vsar    vec26, vec7, vec28, 9
    vsar    vec28, vec7, vec28, 8
    vmudn   vec2, vec26, vec31, 12
    vmadh   vec28, vec28, vec31, 12
    vmudh   vec2, vec19, vec29, 8
    addi    $t4, $t5, -0x2
    vmadh   vec2, vec18, vec29, 9
    lrv     vec19, 0, 2, t4
    vmadh   vec2, vec17, vec29, 10
    addi    $t4, $t4, -0x2
    vmadh   vec2, vec16, vec29, 11
    lrv     vec18, 0, 2, t4
    vmadh   vec2, vec15, vec29, 12
    addi    $t4, $t4, -0x2
    vmadh   vec2, vec14, vec29, 13
    lrv     vec17, 0, 2, t4
    vmadh   vec2, vec13, vec29, 14
    addi    $t4, $t4, -0x2
    vmadh   vec2, vec29, vec31, 13
    lrv     vec16, 0, 2, t4
    vmadh   vec2, vec21, vec28, 14
    addi    $t4, $t4, -0x2
    vmadh   vec2, vec20, vec28, 15
    lrv     vec15, 0, 2, t4
    vsar    vec26, vec7, vec27, 9
    addi    $t4, $t4, -0x2
    vsar    vec27, vec7, vec27, 8
    lrv     vec14, 0, 2, t4
    addi    $t4, $t4, -0x2
    lrv     vec13, 0, 2, t4
    lqv     vec21, 0, 0, t5
    vmudn   vec2, vec26, vec31, 12
    lqv     vec20, 0, 1, t5
    vmadh   vec27, vec27, vec31, 12
    addi    $s2, $s2, -0x20
    sdv     vec28, 0, 0, s3
    sdv     vec28, 8, 1, s3
    sdv     vec27, 0, 2, s3
    sdv     vec27, 8, 3, s3
    bgtz    $s2, branch_0x40015b4
    addi    $s3, $s3, 0x20
branch_0x40016e8:
    addi    $at, $s3, -0x20
    addi    $v0, $s1, 0x0
    jal     Function_0x40011b0
    addi    $v1, $zero, 0x1f
branch_0x40016f8:
    mfc0    $a1, DMA_BUSY
    bnez    $a1, branch_0x40016f8
    nop
    j       Function_0x4001118
    mtc0    $zero, SP_RESERVED

.globl Function_0x400170c
Function_0x400170c: # 0x400170c
    lqv     vec31, 0, 0, zero
    vxor    vec28, vec28, vec28, 0
    lhu     $s5, 0x0($t8)
    vxor    vec17, vec17, vec17, 0
    lhu     $s4, 0x2($t8)
    vxor    vec18, vec18, vec18, 0
    lhu     $s3, 0x4($t8)
    vxor    vec19, vec19, vec19, 0
    beqz    $s3, branch_0x4001874
    andi    $t6, $k0, 0xffff
    mtc2_   t6, vec31, 10
    sll     $t6, $t6, 2
    mtc2_   t6, vec16, 0
    lui     $at, 0xff
    vxor    vec20, vec20, vec20, 0
    ori     $at, $at, 0xffff
    vxor    vec21, vec21, vec21, 0
    and     $s2, $t9, $at
    vxor    vec22, vec22, vec22, 0
    srl     $v0, $t9, 24
    vxor    vec23, vec23, vec23, 0
    sll     $v0, $v0, 2
    lw      $v1, 0x320($v0)
    add     $s2, $s2, $v1
    slv     vec28, 0, 0, s7
    srl     $at, $k0, 16
    andi    $at, $at, 0x1
    bgtz    $at, branch_0x40017a0
    nop
    addi    $at, $s7, 0x0
    addi    $v0, $s2, 0x0
    jal     Function_0x4001184
    addi    $v1, $zero, 0x7
branch_0x4001790:
    mfc0    $a1, DMA_BUSY
    bnez    $a1, branch_0x4001790
    nop
    mtc0    $zero, SP_RESERVED
branch_0x40017a0:
    addi    $t5, $zero, 0x4c0
    addi    $at, $zero, 0x4
    mtc2_   at, vec14, 0
    lqv     vec24, 0, 1, t5
    vmudm   vec16, vec24, vec16, 8
    ldv     vec28, 8, 0, s7
    sqv     vec16, 0, 1, t5
    lqv     vec25, 0, 0, t5
    addi    $t5, $t5, -0x2
    lrv     vec23, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec22, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec21, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec20, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec19, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec18, 0, 2, t5
    addi    $t5, $t5, -0x2
    lrv     vec17, 0, 2, t5
    ldv     vec30, 0, 0, s5
    ldv     vec30, 8, 8, s5
branch_0x4001800:
    vmudh   vec16, vec25, vec28, 14
    addi    $s5, $s5, 0x10
    vmadh   vec16, vec24, vec28, 15
    addi    $s3, $s3, -0x10
    vmadh   vec16, vec23, vec30, 8
    vmadh   vec16, vec22, vec30, 9
    vmadh   vec16, vec21, vec30, 10
    vmadh   vec16, vec20, vec30, 11
    vmadh   vec28, vec19, vec30, 12
    vmadh   vec16, vec18, vec30, 13
    vmadh   vec16, vec17, vec30, 14
    vmadh   vec16, vec30, vec31, 13
    ldv     vec30, 0, 0, s5
    vsar    vec26, vec15, vec28, 9
    ldv     vec30, 8, 8, s5
    vsar    vec28, vec15, vec28, 8
    vmudn   vec16, vec26, vec14, 8
    vmadh   vec28, vec28, vec14, 8
    sdv     vec28, 0, 0, s4
    sdv     vec28, 8, 1, s4
    bgtz    $s3, branch_0x4001800
    addi    $s4, $s4, 0x10
    addi    $at, $s4, -0x8
    addi    $v0, $s2, 0x0
    jal     Function_0x40011b0
    addi    $v1, $zero, 0x7
branch_0x4001868:
    mfc0    $a1, DMA_BUSY
    bnez    $a1, branch_0x4001868
    nop
branch_0x4001874:
    j       Function_0x4001118
    mtc0    $zero, SP_RESERVED

.globl Function_0x400187c
Function_0x400187c: # 0x400187c
    lh      $t0, 0x0($t8)
    lh      $s3, 0x2($t8)
    lh      $s2, 0x4($t8)
    lui     $a0, 0xff
    ori     $a0, $a0, 0xffff
    and     $v0, $t9, $a0
    srl     $a1, $t9, 24
    sll     $a1, $a1, 2
    lw      $a2, 0x320($a1)
    add     $v0, $v0, $a2
    addi    $at, $s7, 0x0
    sw      $v0, 0x40($s7)
    addi    $v1, $zero, 0x1f
    srl     $a3, $k0, 16
    andi    $t2, $a3, 0x1
    bgtz    $t2, branch_0x40018dc
    nop
    jal     Function_0x4001184
    nop
branch_0x40018c8:
    mfc0    $at, DMA_BUSY
    bnez    $at, branch_0x40018c8
    nop
    j       Function_0x40018e8
    mtc0    $zero, SP_RESERVED
branch_0x40018dc:
    sh      $zero, 0x8($s7)
    vxor    vec16, vec16, vec16, 0
    sdv     vec16, 0, 0, s7

.globl Function_0x40018e8
Function_0x40018e8: # 0x40018e8
    andi    $t2, $a3, 0x2
    beqz    $t2, branch_0x4001908
    nop
    lh      $t3, 0xa($s7)
    lqv     vec3, 0, 1, s7
    sdv     vec3, 0, 126, t0
    sdv     vec3, 8, 127, t0
    sub     $t0, $t0, $t3
branch_0x4001908:
    addi    $t0, $t0, -0x8
    lsv     vec23, 14, 8, s7
    ldv     vec16, 0, 0, s7
    sdv     vec16, 0, 0, t0
    mtc2_   t0, vec18, 4
    addi    $t2, $zero, 0xc0
    mtc2_   t2, vec18, 6
    mtc2_   k0, vec18, 8
    addi    $t2, $zero, 0x40
    mtc2_   t2, vec18, 10
    addi    $t1, $zero, 0x40
    lqv     vec31, 0, 1, t1
    lqv     vec25, 0, 0, t1
    vmacu   vec25, vec25, vec31, 0
    lqv     vec30, 0, 2, t1
    lqv     vec29, 0, 3, t1
    lqv     vec28, 0, 4, t1
    lqv     vec27, 0, 5, t1
    lqv     vec26, 0, 6, t1
    vmacu   vec25, vec25, vec31, 0
    lqv     vec24, 0, 7, t1
    addi    $s5, $s7, 0x20
    addi    $s4, $s7, 0x30
    vxor    vec22, vec22, vec22, 0
    vmudm   vec23, vec31, vec23, 15
    vmadm   vec22, vec25, vec18, 12
    vmadn   vec23, vec31, vec30, 8
    vmudn   vec21, vec31, vec18, 10
    vmadn   vec21, vec22, vec30, 10
    vmudl   vec17, vec23, vec18, 13
    vmudn   vec17, vec17, vec30, 12
    vmadn   vec17, vec31, vec18, 11
    lqv     vec25, 0, 0, t1
    sqv     vec21, 0, 0, s5
    sqv     vec17, 0, 0, s4
    ssv     vec23, 7, 4, s7
    lh      $s1, 0x0($s5)
    lh      $t1, 0x0($s4)
    lh      $t5, 0x8($s5)
    lh      $a1, 0x8($s4)
    lh      $s0, 0x2($s5)
    lh      $t0, 0x2($s4)
    lh      $t4, 0xa($s5)
    lh      $a0, 0xa($s4)
    lh      $t7, 0x4($s5)
    lh      $a3, 0x4($s4)
    lh      $t3, 0xc($s5)
    lh      $v1, 0xc($s4)
    lh      $t6, 0x6($s5)
    lh      $a2, 0x6($s4)
    lh      $t2, 0xe($s5)
    lh      $v0, 0xe($s4)

.globl Function_0x40019d8
Function_0x40019d8: # 0x40019d8
    ldv     vec16, 0, 0, s1
    vmudm   vec23, vec31, vec23, 15
    ldv     vec15, 0, 0, t1
    vmadh   vec23, vec31, vec22, 15
    ldv     vec16, 8, 0, t5
    vmadm   vec22, vec25, vec18, 12
    ldv     vec15, 8, 0, a1
    vmadn   vec23, vec31, vec30, 8
    ldv     vec14, 0, 0, s0
    vmudn   vec21, vec31, vec18, 10
    ldv     vec13, 0, 0, t0
    vmadn   vec21, vec22, vec30, 10
    ldv     vec14, 8, 0, t4
    vmudl   vec17, vec23, vec18, 13
    ldv     vec13, 8, 0, a0
    ldv     vec12, 0, 0, t7
    ldv     vec11, 0, 0, a3
    ldv     vec12, 8, 0, t3
    vmudn   vec17, vec17, vec30, 12
    ldv     vec11, 8, 0, v1
    ldv     vec10, 0, 0, t6
    ldv     vec9, 0, 0, a2
    vmadn   vec17, vec31, vec18, 11
    ldv     vec10, 8, 0, t2
    vmulf   vec8, vec16, vec15, 0
    ldv     vec9, 8, 0, v0
    vmulf   vec7, vec14, vec13, 0
    sqv     vec21, 0, 0, s5
    vmulf   vec6, vec12, vec11, 0
    sqv     vec17, 0, 0, s4
    lh      $s1, 0x0($s5)
    vmulf   vec5, vec10, vec9, 0
    lh      $t1, 0x0($s4)
    vmadd   vec8, vec8, vec8, 3
    lh      $t5, 0x8($s5)
    vmadd   vec7, vec7, vec7, 3
    lh      $a1, 0x8($s4)
    vmadd   vec6, vec6, vec6, 3
    lh      $s0, 0x2($s5)
    vmadd   vec5, vec5, vec5, 3
    lh      $t0, 0x2($s4)
    vmadd   vec8, vec8, vec8, 6
    lh      $t4, 0xa($s5)
    vmadd   vec7, vec7, vec7, 6
    lh      $a0, 0xa($s4)
    vmadd   vec6, vec6, vec6, 6
    lh      $t7, 0x4($s5)
    vmadd   vec5, vec5, vec5, 6
    lh      $a3, 0x4($s4)
    vmudn   vec4, vec29, vec8, 4
    lh      $t3, 0xc($s5)
    vmadn   vec4, vec28, vec7, 4
    lh      $v1, 0xc($s4)
    vmadn   vec4, vec27, vec6, 4
    lh      $t6, 0x6($s5)
    vmadn   vec4, vec26, vec5, 4
    lh      $a2, 0x6($s4)
    lh      $t2, 0xe($s5)
    addi    $s2, $s2, -0x10
    sqv     vec4, 0, 0, s3
    blez    $s2, branch_0x4001ad8
    lh      $v0, 0xe($s4)
    j       Function_0x40019d8
    addi    $s3, $s3, 0x10
branch_0x4001ad8:
    ssv     vec23, 0, 4, s7
    ldv     vec16, 0, 0, s1
    sdv     vec16, 0, 0, s7
    lh      $a2, 0x0($t8)
    addi    $s1, $s1, 0x8
    sub     $a1, $s1, $a2
    andi    $a0, $a1, 0xf
    sub     $s1, $s1, $a0
    beqz    $a0, branch_0x4001b04
    addi    $a3, $zero, 0x10
    sub     $a0, $a3, $a0
branch_0x4001b04:
    sh      $a0, 0xa($s7)
    ldv     vec3, 0, 0, s1
    ldv     vec3, 8, 8, s1
    sqv     vec3, 0, 1, s7
    lw      $v0, 0x40($s7)
    addi    $at, $s7, 0x0
    jal     Function_0x40011b0
    addi    $v1, $zero, 0x1f
branch_0x4001b24:
    mfc0    $a1, DMA_BUSY
    bnez    $a1, branch_0x4001b24
    nop
    j       Function_0x4001118
    mtc0    $zero, SP_RESERVED

.globl Function_0x4001b38
Function_0x4001b38: # 0x4001b38
    lui     $a0, 0xff
    ori     $a0, $a0, 0xffff
    and     $v0, $t9, $a0
    srl     $a1, $t9, 24
    sll     $a1, $a1, 2
    lw      $a2, 0x320($a1)
    add     $v0, $v0, $a2
    addi    $at, $s7, 0x0
    addi    $v1, $zero, 0x4f
    vxor    vec0, vec0, vec0, 0
    addi    $t3, $zero, 0x40
    lqv     vec31, 0, 1, t3
    lqv     vec10, 0, 0, zero
    srl     $t4, $k0, 16
    andi    $t2, $t4, 0x1
    beqz    $t2, branch_0x4001b84
    lqv     vec24, 0, 1, t8
    j       Function_0x4001bb0
    nop
branch_0x4001b84:
    jal     Function_0x4001184
    nop
branch_0x4001b8c:
    mfc0    $a1, DMA_BUSY
    bnez    $a1, branch_0x4001b8c
    nop
    mtc0    $zero, SP_RESERVED
    lqv     vec20, 0, 0, s7
    lqv     vec21, 0, 1, s7
    lqv     vec18, 0, 2, s7
    lqv     vec19, 0, 3, s7
    lqv     vec24, 0, 4, s7

.globl Function_0x4001bb0
Function_0x4001bb0: # 0x4001bb0
    lh      $t5, 0x0($t8)
    lh      $s3, 0x2($t8)
    lh      $s2, 0xa($t8)
    lh      $s1, 0xc($t8)
    lh      $s0, 0xe($t8)
    lh      $t6, 0x4($t8)
    addi    $t7, $zero, 0x10
    mfc2_   s5, vec24, 2
    mfc2_   s4, vec24, 8
    andi    $t1, $t4, 0x8
    bgtz    $t1, branch_0x4001bec
    nop
    addi    $s1, $s7, 0x50
    add     $s0, $zero, $s1
    addi    $t7, $zero, 0x0
branch_0x4001bec:
    beqz    $t2, branch_0x4001cf0
    lqv     vec30, 0, 7, t3
    lqv     vec17, 0, 0, t5
    lqv     vec29, 0, 0, s3
    lqv     vec27, 0, 0, s1
    vxor    vec21, vec21, vec21, 0
    lsv     vec20, 14, 6, t8
    vmudm   vec23, vec20, vec24, 10
    vmadh   vec22, vec20, vec24, 9
    vmadn   vec23, vec31, vec0, 8
    vsubc   vec23, vec23, vec21, 0
    vmacu   vec22, vec22, vec20, 0
    vmudl   vec23, vec30, vec23, 15
    vmadn   vec23, vec30, vec22, 15
    vmadm   vec22, vec31, vec0, 8
    vmadm   vec21, vec31, vec21, 15
    vmadh   vec20, vec31, vec20, 15
    bgtz    $s5, branch_0x4001c44
    vmadn   vec21, vec31, vec0, 8
    vge     vec20, vec20, vec24, 8
    j       Function_0x4001c48
    nop
branch_0x4001c44:
    vcl     vec20, vec20, vec24, 8

.globl Function_0x4001c48
Function_0x4001c48: # 0x4001c48
    vmulf   vec16, vec20, vec24, 14
    vmulf   vec15, vec20, vec24, 15
    vmulf   vec29, vec29, vec10, 14
    vmacf   vec29, vec17, vec16, 0
    vmulf   vec27, vec27, vec10, 14
    vmacf   vec27, vec17, vec15, 0
    sqv     vec29, 0, 0, s3
    sqv     vec27, 0, 0, s1
    lqv     vec28, 0, 0, s2
    lqv     vec26, 0, 0, s0
    vxor    vec19, vec19, vec19, 0
    lsv     vec18, 14, 8, t8
    vmudm   vec23, vec18, vec24, 13
    vmadh   vec22, vec18, vec24, 12
    vmadn   vec23, vec31, vec0, 8
    vsubc   vec23, vec23, vec19, 0
    vmacu   vec22, vec22, vec18, 0
    vmudl   vec23, vec30, vec23, 15
    vmadn   vec23, vec30, vec22, 15
    vmadm   vec22, vec31, vec0, 8
    vmadm   vec19, vec31, vec19, 15
    vmadh   vec18, vec31, vec18, 15
    bgtz    $s4, branch_0x4001cb4
    vmadn   vec19, vec31, vec0, 8
    vge     vec18, vec18, vec24, 11
    j       Function_0x4001cb8
    nop
branch_0x4001cb4:
    vcl     vec18, vec18, vec24, 11

.globl Function_0x4001cb8
Function_0x4001cb8: # 0x4001cb8
    vmulf   vec16, vec18, vec24, 14
    vmulf   vec15, vec18, vec24, 15
    vmulf   vec28, vec28, vec10, 14
    vmacf   vec28, vec17, vec16, 0
    vmulf   vec26, vec26, vec10, 14
    vmacf   vec26, vec17, vec15, 0
    sqv     vec28, 0, 0, s2
    sqv     vec26, 0, 0, s0
    addi    $t6, $t6, -0x10
    addi    $t5, $t5, 0x10
    addi    $s3, $s3, 0x10
    addi    $s2, $s2, 0x10
    add     $s1, $s1, $t7
    add     $s0, $s0, $t7
branch_0x4001cf0:
    vmudl   vec23, vec21, vec24, 10
    vmadm   vec23, vec20, vec24, 10
    vmadn   vec23, vec21, vec24, 9
    vmadh   vec20, vec20, vec24, 9
    vmadn   vec21, vec31, vec0, 8

.globl Function_0x4001d04
Function_0x4001d04: # 0x4001d04
    bgtz    $s5, branch_0x4001d30
    lqv     vec17, 0, 0, t5
    vge     vec20, vec20, vec24, 8
    vmudl   vec23, vec19, vec24, 13
    vmadm   vec23, vec18, vec24, 13
    vmadn   vec23, vec19, vec24, 12
    lqv     vec29, 0, 0, s3
    vmadh   vec18, vec18, vec24, 12
    lqv     vec27, 0, 0, s1
    j       Function_0x4001d50
    vmadn   vec19, vec31, vec0, 8
branch_0x4001d30:
    vcl     vec20, vec20, vec24, 8
    vmudl   vec23, vec19, vec24, 13
    vmadm   vec23, vec18, vec24, 13
    vmadn   vec23, vec19, vec24, 12
    lqv     vec29, 0, 0, s3
    vmadh   vec18, vec18, vec24, 12
    lqv     vec27, 0, 0, s1
    vmadn   vec19, vec31, vec0, 8

.globl Function_0x4001d50
Function_0x4001d50: # 0x4001d50
    vmulf   vec16, vec20, vec24, 14
    sqv     vec20, 0, 0, s7
    vmulf   vec15, vec20, vec24, 15
    sqv     vec21, 0, 1, s7
    vmulf   vec29, vec29, vec10, 14
    vmacf   vec29, vec17, vec16, 0
    lqv     vec28, 0, 0, s2
    vmulf   vec27, vec27, vec10, 14
    lqv     vec26, 0, 0, s0
    vmacf   vec27, vec17, vec15, 0
    bgtz    $s4, branch_0x4001da0
    sqv     vec29, 0, 0, s3
    vge     vec18, vec18, vec24, 11
    vmudl   vec23, vec21, vec24, 10
    sqv     vec27, 0, 0, s1
    vmadm   vec23, vec20, vec24, 10
    vmadn   vec23, vec21, vec24, 9
    vmadh   vec20, vec20, vec24, 9
    j       Function_0x4001dbc
    vmadn   vec21, vec31, vec0, 8
branch_0x4001da0:
    vcl     vec18, vec18, vec24, 11
    vmudl   vec23, vec21, vec24, 10
    sqv     vec27, 0, 0, s1
    vmadm   vec23, vec20, vec24, 10
    vmadn   vec23, vec21, vec24, 9
    vmadh   vec20, vec20, vec24, 9
    vmadn   vec21, vec31, vec0, 8

.globl Function_0x4001dbc
Function_0x4001dbc: # 0x4001dbc
    vmulf   vec16, vec18, vec24, 14
    addi    $t6, $t6, -0x10
    vmulf   vec15, vec18, vec24, 15
    addi    $s3, $s3, 0x10
    vmulf   vec28, vec28, vec10, 14
    add     $s1, $s1, $t7
    vmacf   vec28, vec17, vec16, 0
    addi    $t5, $t5, 0x10
    vmulf   vec26, vec26, vec10, 14
    vmacf   vec26, vec17, vec15, 0
    sqv     vec28, 0, 0, s2
    addi    $s2, $s2, 0x10
    blez    $t6, branch_0x4001dfc
    sqv     vec26, 0, 0, s0
    j       Function_0x4001d04
    add     $s0, $s0, $t7
branch_0x4001dfc:
    sqv     vec18, 0, 2, s7
    sqv     vec19, 0, 3, s7
    sqv     vec24, 0, 4, s7
    jal     Function_0x40011b0
    addi    $v1, $zero, 0x4f
branch_0x4001e10:
    mfc0    $a1, DMA_BUSY
    bnez    $a1, branch_0x4001e10
    nop
    j       Function_0x4001118
    mtc0    $zero, SP_RESERVED

.globl Function_0x4001e24
Function_0x4001e24: # 0x4001e24
    lqv     vec31, 0, 0, zero
    lhu     $s2, 0x4($t8)
    beqz    $s2, branch_0x4001e94
    nop
    andi    $s3, $t9, 0xffff
    addi    $s3, $s3, 0x5c0
    srl     $s4, $t9, 16
    addi    $s4, $s4, 0x5c0
    andi    $s1, $k0, 0xffff
    mtc2_   s1, vec30, 0
    lqv     vec27, 0, 0, s3
    lqv     vec29, 0, 0, s4
    lqv     vec26, 0, 1, s3
    lqv     vec28, 0, 1, s4
branch_0x4001e5c:
    vmulf   vec27, vec27, vec31, 14
    addi    $s2, $s2, -0x20
    vmacf   vec27, vec29, vec30, 8
    addi    $s4, $s4, 0x20
    sqv     vec27, 0, 0, s3
    vmulf   vec26, vec26, vec31, 14
    lqv     vec29, 0, 0, s4
    vmacf   vec26, vec28, vec30, 8
    lqv     vec28, 0, 1, s4
    sqv     vec26, 0, 1, s3
    addi    $s3, $s3, 0x20
    lqv     vec27, 0, 0, s3
    bgtz    $s2, branch_0x4001e5c
    lqv     vec26, 0, 1, s3
branch_0x4001e94:
    j       Function_0x4001118
    nop

.globl Function_0x4001e9c
Function_0x4001e9c: # 0x4001e9c
    nop
    nop
    nop
