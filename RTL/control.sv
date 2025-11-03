// Generate control signals for core

module control (
    input  logic        flush,
    input  logic        is_alu_op,
    input  logic        ld_valid,

    output logic        fetch_stall,
    output logic        reg_we,
    output logic        lsu_en
);

    assign reg_we = ~flush & (is_alu_op | ld_valid); 

    assign lsu_en = ~flush;

    assign fetch_stall = ld_valid & is_alu_op;

endmodule : control
