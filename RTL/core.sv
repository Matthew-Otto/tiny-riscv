module core (
    input  logic        clk,
    input  logic        rst,
    input  logic [31:0] init_PC,
    
    output logic [31:0] mem_addr,
    input  logic [31:0] read_data,
    output logic [31:0] write_data,
    output logic        wr_en
);

    logic [31:0] PC, next_PC;

    always_ff @(posedge clk, posedge rst) begin
        if (rst) PC <= init_PC;
        else PC <= next_PC;
    end

    // FE

    // DE

    // EX

    // LS


endmodule : core
