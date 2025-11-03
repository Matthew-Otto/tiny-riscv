`include "defines.svh"

module core (
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

    // control
    logic [31:0] PC;     // current PC
    logic [31:0] PC_p4;  // next PC
    logic        flush;
    logic        fetch_stall;
    logic        lsu_en;
    logic        reg_we;

    logic [3:0]  rs1;
    logic [3:0]  rs2;
    logic [3:0]  rd;
    logic [3:0]  ld_rd;
    logic [3:0]  rd_mux;
    
    logic        is_alu_op;
    alu_op_t     alu_op;
    comp_t       comp_op;
    logic        subtract;
    logic        shift_right;
    logic        shift_arith;
    logic        is_imm;
    logic        is_auipc;
    
    logic        is_load_op;
    load_op_t    load_op;
    logic        is_store_op;
    store_op_t   store_op;
    logic        ld_valid;
    
    logic        is_br_type;
    br_type_t    br_type;
    logic        is_jump_op;
    
    
    // data
    logic [31:0] rs1_data;
    logic [31:0] rs2_data;
    
    logic [31:0] rd_data;
    logic [31:0] alu_rd_data;
    logic [31:0] ld_rd_data;

    logic [31:0] imm_b;
    logic [31:0] imm_i;
    logic [31:0] imm_s;
    logic [31:0] imm_u;
    logic [31:0] imm_j;



    control control_i (
        .flush,
        .is_alu_op,
        .ld_valid,
        .fetch_stall,
        .reg_we,
        .lsu_en
    );

    // PC calc / front-end
    fetch fetch_i (
        .clk,
        .rst,
        .fetch_stall,
        .is_br_type,
        .br_type,
        .take_branch(alu_rd_data[0]),
        .rs1_data,
        .imm_b,
        .imm_i,
        .imm_j,
        .i_addr,
        .PC_f(PC_p4),
        .PC_e(PC),
        .flush
    );

    // Decode
    decode decode_i (
        .instr(i_rd_data),
        .rd,
        .rs1,
        .rs2,
        .is_alu_op,
        .alu_op,
        .comp_op,
        .subtract,
        .shift_right,
        .shift_arith,
        .is_auipc,
        .is_load_op,
        .load_op,
        .is_store_op,
        .store_op,
        .is_br_type,
        .br_type,
        .is_jump_op,
        .is_imm,
        .imm_b,
        .imm_i,
        .imm_s,
        .imm_u,
        .imm_j
    );

    // execution unit
    ALU ALU_i (
        .alu_op,
        .is_imm,
        .is_store_op,
        .is_auipc,
        .comp_op,
        .subtract,
        .shift_right,
        .shift_arith,
        .rs1_data,
        .rs2_data,
        .imm_i,
        .imm_u,
        .imm_s,
        .PC,
        .rd_data(alu_rd_data)
    );

    // load / store
    LSU LSU_i (
        .clk,
        .rst,
        .lsu_en,
        .rd,
        .addr(alu_rd_data),
        .is_load_op,
        .is_store_op,
        .load_op,
        .store_op,
        .rs2_data,
        .ld_valid,
        .ld_rd,
        .ld_rd_data,
        .d_addr,
        .d_we,
        .d_wr_data,
        .d_rd_data
    );

    assign rd_mux = ld_valid ? ld_rd : rd;

    assign rd_data = is_jump_op ? PC_p4
                   : ld_valid ? ld_rd_data 
                   : alu_rd_data;

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
