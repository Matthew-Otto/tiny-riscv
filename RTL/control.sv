// Generate control signals for core

module control (
    input  logic        is_br_op,
    input  logic        is_alu_op,
    input  logic        is_ls_op,
    input  logic        ls_load_ready,

    input  logic [3:0]  rs1,
    input  logic [3:0]  rs2,
    input  logic [3:0]  rd,
    input  logic [3:0]  ld_rd,

    // function unit control
    output logic        lsu_en,

    // Bypass
    output logic        rs1_ld_bypass,
    output logic        rs2_ld_bypass,

    // Reg Write
    output logic        reg_we,
    output logic [3:0]  rd_mux
);

    assign rs1_ld_bypass = (ls_load_ready && (rs1 == ld_rd));
    assign rs2_ld_bypass = (ls_load_ready && (rs2 == ld_rd));

    // TODO
    assign reg_we = is_alu_op | ls_load_ready; 
    assign rd_mux = ls_load_ready ? ld_rd : rd;
    // end TODO

    logic data_hazard;
    logic load_hazard;

    assign load_hazard = (rs1 == ld_rd) || (rs2 == ld_rd);

endmodule : control