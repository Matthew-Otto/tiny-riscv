// Top module that includes a register file for simulation

module top (
    input  logic        clk,
    input  logic        rst,
    // instruction port
    output logic [31:0] i_addr,
    input  logic [31:0] i_rd_data,
    // data port
    output logic [31:0] d_addr,
    output logic [3:0]  d_we,
    output logic [31:0] d_wr_data,
    input  logic [31:0] d_rd_data
);

    logic        we;
    logic [4:0]  rd;
    logic [31:0] rd_data;
    logic [4:0]  rs1;
    logic [4:0]  rs2;
    logic [31:0] rs1_data;
    logic [31:0] rs2_data;

    core core (
        .clk,
        .rst,
        .i_addr,
        .i_rd_data,
        .d_addr,
        .d_we,
        .d_wr_data,
        .d_rd_data,
        .we,
        .rd,
        .rd_data,
        .rs1,
        .rs2,
        .rs1_data,
        .rs2_data
    );

    regfile regfile_i (
        .clk,
        .we,
        .rd,
        .rd_data,
        .rs1,
        .rs2,
        .rs1_data,
        .rs2_data
    );

endmodule : top
