module regfile (
    input  logic        clk,
    input  logic        we,
    input  logic [3:0]  rd,
    input  logic [31:0] rd_data,
    input  logic [3:0]  rs1,
    input  logic [3:0]  rs2,
    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data
);

    logic [31:0] regs [15:1];

    always_ff @(posedge clk) begin
        if (we && |rd)
            regs[rd] <= rd_data;
    end

    assign rs1_data = (rs1 == 0) ? '0 : regs[rs1];
    assign rs2_data = (rs2 == 0) ? '0 : regs[rs2];

endmodule : regfile
