
/* Input:
a0: SpTaskPtr
*/
.globl Function_0x80046c30
Function_0x80046c30: # 0x80046c30
    lui     $v0, %hi(__datamain_end)
    addiu   $v0, $v0, %lo(__datamain_end)
    lui     $v1, %hi(__rspcode1_start)
    addiu   $t6, $zero, 0x1
    lui     $t7, %hi(__rspcode1_end)
    addiu   $v0, $v0, 0xf
    addiu   $at, $zero, 0xfff0
    addiu   $v1, $v1, %lo(__rspcode1_start)
    sw      $t6, SpTask_0($a0)
    addiu   $t7, $t7, %lo(__rspcode1_end)
    lui     $t9, %hi(__rspcode2_start)
    lui     $t1, %hi(__rspdata2_start)
    lui     $t3, %hi(Unknown_0x80046400)
    and     $t5, $v0, $at
    lui     $a1, %hi(Unknown_0x80151618)
    subu    $t8, $t7, $v1
    addiu   $t9, $t9, %lo(__rspcode2_start)
    addiu   $t0, $zero, 0x1000
    addiu   $t1, $t1, %lo(__rspdata2_start)
    addiu   $t2, $zero, 0x800
    addiu   $t3, $t3, %lo(Unknown_0x80046400)
    addiu   $t4, $zero, 0x400
    addiu   $t6, $t5, 0x6000
    addiu   $a1, $a1, %lo(Unknown_0x80151618)
    sw      $zero, SpTask_4($a0)
    sw      $v1, SpTask_DRAM($a0)
    sw      $t8, SpTask_length($a0)
    sw      $t9, SpTask_CodeDRAM($a0)
    sw      $t0, SpTask_14($a0)
    sw      $t1, SpTask_DataDRAM($a0)
    sw      $t2, SpTask_DataSize($a0)
    sw      $t3, SpTask_20($a0)
    sw      $t4, SpTask_24($a0)
    sw      $t5, SpTask_28($a0)
    sw      $t6, SpTask_2c($a0)
    lw      $t7, 0x0($a1)
    lui     $t8, %hi(Unknown_0x801516a4)
    lui     $t3, %hi(Unknown_0x80045800)
    sw      $t7, SpTask_30($a0)
    lw      $t9, 0x0($a1)
    lw      $t8, %lo(Unknown_0x801516a4)($t8)
    addiu   $t3, $t3, %lo(Unknown_0x80045800)
    addiu   $t4, $zero, 0xc00
    subu    $t0, $t8, $t9
    sra     $t1, $t0, 3
    sll     $t2, $t1, 3
    sw      $t2, SpTask_34($a0)
    sw      $t3, SpTask_38($a0)
    jr      $ra
    sw      $t4, SpTask_3c($a0)


/* Input:
a0: SpTaskPtr
*/
.globl Function_0x80046cf8
Function_0x80046cf8: # 0x80046cf8
    lui     $at, %hi(Unknown_0x80154014_SpTaskPtr)
    addiu   $sp, $sp, -0x18
    sw      $a0, %lo(Unknown_0x80154014_SpTaskPtr)($at)
    sw      $ra, 0x14($sp)
    lui     $a0, %hi(Unknown_0x80153e90)
    addiu   $a0, $a0, %lo(Unknown_0x80153e90)
    addiu   $a1, $zero, 0x15
    jal     osSendMesg
    or      $a2, $zero, $zero

    lw      $ra, 0x14($sp)
    addiu   $sp, $sp, 0x18
    jr      $ra
    nop


.globl Function_0x80046d2c
Function_0x80046d2c: # 0x80046d2c
    lui     $v1, %hi(Unknown_0x8011f640)
    addiu   $v1, $v1, %lo(Unknown_0x8011f640)
    lw      $t6, 0x0($v1)
    lui     $t9, %hi(Unknown_0x80151620)
    addiu   $t9, $t9, %lo(Unknown_0x80151620)
    xori    $t7, $t6, 0x1
    sll     $t1, $t7, 2
    subu    $t1, $t1, $t7
    sll     $t1, $t1, 3
    addu    $t1, $t1, $t7
    sll     $t1, $t1, 7
    subu    $t1, $t1, $t7
    sll     $t8, $t7, 6
    sll     $t1, $t1, 2
    sw      $t7, 0x0($v1)
    addu    $t0, $t8, $t9
    lui     $at, %hi(Unknown_0x801516a0_SpTaskPtr)
    addu    $t1, $t1, $t7
    lui     $t2, %hi(Unknown_0x8011f648)
    lui     $a0, %hi(Unknown_0x80151618)
    sw      $t0, %lo(Unknown_0x801516a0_SpTaskPtr)($at)
    addiu   $t2, $t2, %lo(Unknown_0x8011f648)
    sll     $t1, $t1, 3
    addiu   $a0, $a0, %lo(Unknown_0x80151618)
    addu    $t3, $t1, $t2
    sw      $t3, 0x0($a0)
    lui     $at, %hi(Unknown_0x801516a4)
    jr      $ra
    sw      $t3, %lo(Unknown_0x801516a4)($at)
