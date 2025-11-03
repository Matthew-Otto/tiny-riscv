    .section .text
    .global _start
_start:
    ############################################
    # Memory Test
    ############################################

    # x1 contains base address of where to store results in memory
    la x1, result

    la x2, test_pattern
    lw x2, 0(x2)

    bgt x1, x2, fail

    sb x2, 0(x1)         # store EF @ 0x1000000
    sh x2, 4(x1)         # store BEEF @ 0x1000004
    sw x2, 8(x1)         # store DEADBEEF @ 0x1000008

    lb x3, 8(x1)         # load EF into x3
    lh x4, 8(x1)         # load BEEF into x4
    lw x5, 8(x1)         # load DEADBEEF into x5
    addi x1, x1, 12      # update mem addr

    sw x3, 0(x1)
    sw x4, 4(x1)
    sw x5, 8(x1)
    addi x1, x1, 12      # update mem addr

    ############################################
    # Arithmetic tests
    ############################################
    li x2, 0x10          # 16
    li x3, 0x20          # 32
    li x4, 0x5           # 5
    li x5, -3            # -3 (0xFFFFFFFD)
    li x6, 0             # 0

    add x7, x2, x3       # x7 = 48
    sub x8, x3, x2       # x8 = 16
    addi x9, x8, -8      # x9 = 8

    ############################################
    # Logical tests
    ############################################
    and x10, x2, x3      # x10 = 0
    or  x11, x2, x4      # x11 = 0x30
    xor x12, x2, x3      # x12 = 0x30
    sll x13, x4, x2      # x13 = 5 << 16 = 0x00050000
    srl x14, x3, x4      # x14 = 0x20 >> 5 = 1
    sra x15, x5, x4      # x15 = -3 >> 5 = 0xFFFFFFFF

    ############################################
    # Comparisons
    ############################################
    slt  x3, x5, x2      # x3 = 1  (-3 < 16)
    sltu x4, x5, x2      # x4 = 0  (unsigned compare)

    ############################################
    # Store results
    ############################################
    sw x2, 0(x1)
    sw x3, 4(x1)
    sw x4, 8(x1)
    sw x5, 12(x1)
    sw x6, 16(x1)
    sw x7, 20(x1)
    sw x8, 24(x1)
    sw x9, 28(x1)
    sw x10, 32(x1)
    sw x11, 36(x1)
    sw x12, 40(x1)
    sw x13, 44(x1)
    sw x14, 48(x1)
    sw x15, 52(x1)

    ############################################
    # Branch tests
    ############################################
    beq x11, x7, fail     # should not branch
    bne x11, x7, branch_ok

fail:
    li  x12, 0xBAD
    j done

branch_ok:
    li  x12, 0xACE        # success marker

done:
    # Store test result to memory for checking in sim
    la   x13, result
    sw   x12, 0(x13)
    ebreak

############################################
# Data section
############################################
    .section .data
test_pattern:
    .word 0xDEADBEEF
result:
    .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
