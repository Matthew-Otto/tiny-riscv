`include "defines.svh"

module core (
    input  logic        clk,
    input  logic        rst,
    // instruction port
    output logic [31:0] i_addr,
    input  logic [31:0] i_rd_data,
    // data port
    output logic [31:0] d_addr,
    output logic [1:0]  d_we,
    output logic [31:0] d_wr_data,
    input  logic [31:0] d_rd_data
);

    // control
    logic [31:0] PC;     // current PC
    logic [31:0] PC_p4;  // next PC

    logic        is_alu_op;
    logic        is_br_op;
    logic        is_ls_op;
    logic        ls_load_ready;
    logic        lsu_en;
    logic        rs1_ld_bypass;
    logic        rs2_ld_bypass;
    logic        reg_we;
    logic        alu_rd_sel;
    logic        lsu_rd_sel;
    logic        bru_rd_sel;

    br_op_t      br_op;
    alu_op_t     alu_op;
    ls_op_t      ls_op;
    logic        is_imm;

    logic [3:0]  rd;
    logic [3:0]  ld_rd;
    logic [3:0]  rd_mux;
    
    // data
    logic [3:0]  rs1;
    logic [3:0]  rs2;
    logic [31:0] rs1_data;
    logic [31:0] rs2_data;

    logic [31:0] rd_data;
    logic [31:0] alu_rd_data;
    logic [31:0] lsu_rd_data;
    logic [31:0] bru_rd_data;

    logic [31:0] imm_b;
    logic [31:0] imm_i;
    logic [31:0] imm_s;
    logic [31:0] imm_u;
    logic [31:0] imm_j;



    control control_i (
        .is_br_op,
        .is_alu_op,
        .is_ls_op,
        .ls_load_ready,
        .rs1,
        .rs2,
        .rd,
        .ld_rd,
        .lsu_en,
        .rs1_ld_bypass,
        .rs2_ld_bypass,
        .reg_we,
        .rd_mux
    );

    // PC calc
    fetch fetch_i (
        .clk,
        .rst,
        .i_addr,
        .PC_f(PC_p4),
        .PC_e(PC)
    );

    // DE
    decode decode_i (
        .instr(i_rd_data),
        .rd,
        .rs1,
        .rs2,
        .br_op,
        .is_br_op,
        .alu_op,
        .is_alu_op,
        .ls_op,
        .is_ls_op,
        .is_imm,
        .imm_b,
        .imm_i,
        .imm_s,
        .imm_u,
        .imm_j
    );

    // execution
    ALU ALU_i (
        .alu_op,
        .is_imm,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .imm_u,
        .PC,
        .rd_data(alu_rd_data)
    );

    // load / store
    LSU LSU_i (
        .clk,
        .rst,
        .lsu_en,
        .ls_op,
        .rd,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .imm_s,
        .ls_load_ready,
        .ld_rd,
        .rd_data(lsu_rd_data),
        .d_we,
        .d_addr,
        .d_wr_data,
        .d_rd_data
    );

    // branch / jump
    BRU BRU_i (
        .clk,
        .rst,
        .br_op,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .imm_b,
        .imm_j,
        .rd_data(bru_rd_data),
        .PC(i_addr)
    );

    // TODO: one-hot MUX
    always_comb begin
        if (ls_load_ready)
            rd_data = lsu_rd_data;
        else if (is_alu_op)
            rd_data = alu_rd_data;
        else
            rd_data = bru_rd_data;
    end
    

    regfile regfile_i (
        .clk,
        .we(reg_we),
        .rd(rd_mux),
        .rd_data,
        .rs1,
        .rs2,
        .rs1_data,
        .rs2_data
    );

endmodule : core
