// Generate control signals for core

module control (
    input  logic        flush,
    input  logic        is_writeback,
    input  logic        ld_valid,
    input  logic [4:0]  rs1,
    input  logic [4:0]  rs2,
    input  logic [4:0]  ld_rd,

    output logic        fetch_stall,
    output logic        reg_we,
    output logic        st_en,
    output logic        ld_en
);

    logic data_hazard;

    assign data_hazard = ld_valid & ((rs1 == ld_rd) | (rs2 == ld_rd));
    
    assign reg_we = ~flush & (is_writeback | ld_valid); 

    assign st_en = ~(flush | data_hazard);
    assign ld_en = ~flush;

    assign fetch_stall = (ld_valid & is_writeback) | data_hazard;



endmodule : control
