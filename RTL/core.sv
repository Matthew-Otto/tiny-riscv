`include "defines.svh"

module core (
    input  logic        clk,
    input  logic        rst,
    // instruction port
    output logic [31:0] i_addr,
    input  logic [31:0] i_rd_data,
    // data port
    output logic        d_we,
    output logic [31:0] d_addr,
    output logic [31:0] d_wr_data,
    input  logic [31:0] d_rd_data
);

    // control
    logic [31:0] PC, next_PC;
    logic [31:0] branch_target;
    logic        branch_taken;
    logic [31:0] instr_f;
    br_op_t      br_op;
    alu_op_t     alu_op;
    alu_op_t     ls_op;
    logic        is_imm;
    logic        reg_we;

    // data
    logic [4:0]  rd_addr;
    logic [31:0] rd_data;
    logic [4:0]  rs1_addr;
    logic [4:0]  rs2_addr;
    logic [31:0] rs1_data;
    logic [31:0] rs2_data;

    logic [31:0] imm_b;
    logic [31:0] imm_i;
    logic [31:0] imm_s;
    logic [31:0] imm_u;
    logic [31:0] imm_j;


    // FE
    always_ff @(posedge clk, posedge rst) begin
        if (rst) PC <= '0;
        else     PC <= next_PC;
    end

    always_comb begin
        if (branch_taken)
            next_PC = branch_target;
        else
            next_PC = PC + 4;
    end



    assign i_addr = PC;
    assign instr_f = i_rd_data;


    // DE
    decode decode_i (
        .instr(instr_f),
        .rd(rd_addr),
        .rs1(rs1_addr),
        .rs2(rs2_addr),
        .br_op,
        .alu_op,
        .is_imm,
        .reg_we,
        .imm_b,
        .imm_i,
        .imm_s,
        .imm_u,
        .imm_j
    );

    // BR target calc
    BRU BRU_i (
        .br_op,
        .rs1_data,
        .rs2_data,
        .imm_b,
        .branch_taken,
        .PC,
        .branch_target
    );

    // EX
    ALU ALU_i (
        .alu_op,
        .is_imm,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .rd_data
    );


    // LS
    LSU LSU_i (
        .clk,
        .rst,
        .ls_op,
        .rs1_data,
        .imm_u,
        .imm_i,
        .d_we,
        .d_addr,
        .d_wr_data
    );


    regfile regfile_i (
        .clk,
        .rst,
        .we(reg_we),
        .rd_addr,
        .rd_data,
        .rs1_addr,
        .rs2_addr,
        .rs1_data,
        .rs2_data
    );


endmodule : core
