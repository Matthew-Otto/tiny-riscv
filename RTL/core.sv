`include "defines.svh"

module core (
    input  logic        clk,
    input  logic        rst,
    // instruction port
    output logic [31:0] i_addr,
    input  logic [31:0] i_rd_data,
    // data port
    output logic [1:0]  d_we,
    output logic [31:0] d_addr,
    output logic [31:0] d_wr_data,
    input  logic [31:0] d_rd_data
);

    // control
    logic        stall;
    logic [31:0] instr_f;
    br_op_t      br_op;
    logic        is_br_op;
    alu_op_t     alu_op;
    logic        is_alu_op;
    ls_op_t      ls_op;
    logic        is_ls_op;
    logic        is_imm;
    logic        reg_we;
    logic        is_ld_op2;
    logic [4:0]  ld_rd_addr;
    
    // data
    logic [4:0]  rd_addr;
    logic [31:0] rd_data;
    logic [4:0]  rs1_addr;
    logic [4:0]  rs2_addr;
    logic [31:0] rs1_data;
    logic [31:0] rs2_data;

    logic [31:0] br_rd_data;
    logic [31:0] alu_rd_data;
    logic [31:0] ls_rd_data;

    logic [31:0] imm_b;
    logic [31:0] imm_i;
    logic [31:0] imm_s;
    logic [31:0] imm_u;
    logic [31:0] imm_j;

    assign instr_f = i_rd_data;

    assign stall = is_ld_op2;

    // BR
    BRU BRU_i (
        .clk,
        .rst,
        .br_op,
        .is_br_op,
        .stall,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .imm_b,
        .imm_j,
        .rd_data(br_rd_data),
        .PC(i_addr)
    );

    // DE
    decode decode_i (
        .instr(instr_f),
        .rd(rd_addr),
        .rs1(rs1_addr),
        .rs2(rs2_addr),
        .br_op,
        .is_br_op,
        .alu_op,
        .is_alu_op,
        .ls_op,
        .is_ls_op,
        .is_imm,
        .reg_we,
        .imm_b,
        .imm_i,
        .imm_s,
        .imm_u,
        .imm_j
    );

    // EX
    ALU ALU_i (
        .alu_op,
        .is_imm,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .rd_data(alu_rd_data)
    );

    // LS
    LSU LSU_i (
        .clk,
        .rst,
        .ls_op,
        .is_ls_op,
        .rd_addr,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .imm_s,
        .is_ld_op2,
        .ld_rd_addr,
        .ld_data(ls_rd_data),
        .d_we,
        .d_addr,
        .d_wr_data,
        .d_rd_data
    );

    always_comb begin
        case ({is_br_op, is_ld_op2})
            2'b10 : rd_data = br_rd_data;
            2'b01 : rd_data = ls_rd_data;
            default: rd_data = alu_rd_data;
        endcase
    end

    regfile regfile_i (
        .clk,
        .we(reg_we),
        .rd_addr(is_ld_op2 ? ld_rd_addr : rd_addr),
        .rd_data,
        .rs1_addr,
        .rs2_addr,
        .rs1_data,
        .rs2_data
    );


endmodule : core
