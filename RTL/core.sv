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
    logic [31:0] instr_f;
    alu_op_t     alu_op;
    logic        is_imm;

    // data
    logic [4:0]  rd_addr;
    logic [31:0] rd_data;
    logic [4:0]  rs1_addr;
    logic [4:0]  rs2_addr;
    logic [31:0] rs1_data;
    logic [31:0] rs2_data;


    // FE
    always_ff @(posedge clk, posedge rst) begin
        if (rst) PC <= '0;
        else PC <= next_PC;
    end

    assign i_addr = PC;
    assign instr_f = i_rd_data;


    // DE
    decode decode_i (
        .instr(instr_f),
        .rd(rd_addr),
        .rs1(rs1_addr),
        .rs2(rs2_addr),
        .alu_op,
        .is_imm
    );


    // EX
    alu alu_i (
        .clk,
        .rst,
        .alu_op,
        .is_imm,
        .rs1_data,
        .rs2_data,
        .imm_i(),
        .rd_data()
    );

    
    // LS


    regfile regfile_i (
        .clk,
        .we(),
        .rd_addr,
        .rd_data,
        .rs1_addr,
        .rs2_addr,
        .rs1_data,
        .rs2_data
    );


endmodule : core
